import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, get_vv_string


def run_each_v2v(config):
 

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
        # sql = open(config['in_fspec'], 'r')
        # cmd = ''
        # for line in sql:
        #     cmd += line
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
    database = os.getenv("SRC_DB_DATABASE")
    function = config['function']
    # what are the results.
    fspec = "scripts/"+bucket_key+"_"+function+"_v2v.sql"
    f = open(fspec, 'w') 

    f.write(config['connection'])

    for row in results:
        item = row[0]

        outstring = item
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    sql = "DISCONNECT "+database+";\n"
    f.write(sql)
    f.close()
    print("vertica to vertica export file written: ",fspec)

def run_each_ddl(config):
 

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
        # sql = open(config['in_fspec'], 'r')
        # cmd = ''
        # for line in sql:
        #     cmd += line
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
    database = os.getenv("SRC_DB_DATABASE")
    function = config['function']
    # what are the results.
    fspec = "scripts/"+bucket_key+"_"+function+"_ddl.sql"
    f = open(fspec, 'w')

    for row in results:
        item = row[0]

        outstring = item
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    f.close()
    print("ddl export file written: ",fspec)



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
database = os.getenv('SRC_DB_DATABASE')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

config = {'in_fspec': 'sql/valids.sql', 'out_fspec': 'sql/blah.sql',
         'log': lname, 'export_type': 'parquet', 'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

#print(result_set)


for row in result_set:
    s = row
    schema = s[0]
    cmd = "select table_schema, table_name, row_count from migration.source_schemas where table_schema = '"+schema+"' order by 1,3;\n" 
    
    fspec = "scripts/"+bucket_key+"_"+schema+"_out_csv_"+"schema.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close
    h = {'in_fspec': fspec, 'out_fspec': 'sql/blah.sql', 'cmd': cmd,
             'log': lname, 'export_type': 'parquet', 'conn_type': 'src', 'function': schema, 'bucket_key': bucket_key}
    run_each_getter(h)




    # freaking interpolation! so i hard coded the source database
    # cmd = "select 'COPY '||table_schema||'.'||table_name||' FROM VERTICA ' ||table_schema ||'.'|| table_name ||';' as cmd from migration.source_schemas where table_schema = '"+schema+"' order by row_count;\n"
    # cmd = "select 'COPY '||table_schema||'.'||table_name||' FROM VERTICA '"+database+"||table_schema ||'.'|| table_name ||';' as cmd from migration.source_schemas where table_schema = '"+schema+"' order by row_count;\n"
    cmd = "select 'COPY /*'||row_count||'*/ '||table_schema||'.'||table_name||' FROM VERTICA teva.' ||table_schema ||'.'|| table_name ||';' as cmd from migration.source_schemas where table_schema = '"+schema+"' order by row_count;\n"

    fspec = "scripts/"+bucket_key+"_"+schema+"_out_v2v_"+"schema.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close

    h = {'in_fspec': fspec, 'out_fspec': 'sql/blah.sql', 'cmd': cmd,
             'log': lname, 'export_type': 'csv', 'conn_type': 'v2v', 'connection': get_vv_string(),'function': schema, 'bucket_key': bucket_key}
    run_each_v2v(h)

