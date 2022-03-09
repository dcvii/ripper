import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table


def run_each_getter(config):
 

    conn_info = {'host': os.getenv("SRC_DB_HOST"), 
        'port': os.getenv("SRC_DB_PORT"), 
        'user': os.getenv("SRC_DB_USERNAME"), 
        'password': os.getenv("SRC_DB_PASSWORD"), 
        'database': os.getenv("SRC_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        sql = open(config['in_fspec'], 'r')
        cmd = config['cmd']
    
        
        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0

        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = df.shape[0]
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()

    ## create script for running directly

    bucket = os.getenv("SRC_S3_BUCKET")
    bucket_key = os.getenv("SRC_BUCKET_KEY")
    # what are the results.
    fspec = "scripts/"+bucket_key+"_out_"+config['function']+"_"+config['export_type']+".sql"
    f = open(fspec, 'w')

    for row in results:
        schema, table, ct = row

        target = " (directory='"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"')"
        outstring = "EXPORT TO "+config['export_type'].upper()+target+" AS SELECT * FROM "+schema+"."+table+";"
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    f.close()
    print(config['export_type']+" export file written:",fspec)

    ## create input for data_exports table

    fspec = "scripts/"+bucket_key+"_in_"+config['function']+"_"+config['export_type']+"_data_ingest.sql"
    if config['export_type']=='parquet':
        param = 'PARQUET'
    else:
        param = ''

    f = open(fspec, 'w')

    x_id = 0
    for row in results:
        schema, table, ct = row
     
        s3_source = "'"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"/*'"
        script = "COPY "+schema+"."+table+" FROM "+s3_source+" "+param+";\n"
        f.write(script)
    
    f.close()
    print(config['export_type'],"ingest file written:",fspec)


lname = 'log/get_each_schema.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

config = {'in_fspec': 'sql/schemata.sql', 'out_fspec': 'sql/blah.sql',
         'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

#print(result_set)


for row in result_set:
    s = row
    schema = s[0]
    cmd = "select table_schema, table_name, row_count from migration.source_schemas where table_schema = '"+schema+"' order by 1,3;\n" 
    
    fspec = "scripts/"+bucket_key+"_"+schema+"_out_"+config['export_type']+"_"+"schema.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close
    h = {'in_fspec': fspec, 'out_fspec': 'sql/blah.sql', 'cmd': cmd,
             'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': schema, 'bucket_key': bucket_key}
    run_each_getter(h)

