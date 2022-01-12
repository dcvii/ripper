import vertica_python
import os
import sys
import logging
import pandas as pd
import csv


def run_getter(config):
 

    conn_info = {'host': os.getenv("DB_HOST"), 
        'port': os.getenv("DB_PORT"), 
        'user': os.getenv("DB_USERNAME"), 
        'password': os.getenv("DB_PASSWORD"), 
        'database': os.getenv("DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        sql = open(config['in_fspec'], 'r')
        cmd = ''
        for line in sql:
            cmd += line
        
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

    bucket = os.getenv("S3_BUCKET")
    bucket_key = os.getenv("BUCKET_KEY")
    # what are the results.
    fspec = "scripts/"+bucket_key+"_out_"+config['export_type']+".sql"
    f = open(fspec, 'w')

    for row in results:
        schema, table, ct = row

        target = " (directory='"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"')"
        outstring = "EXPORT TO "+config['export_type']+target+" AS SELECT * FROM "+"'"+schema+"."+table+"';"
        print(outstring)
        outstring+="\n"
        f.write(outstring)

    f.close()

   


lname = 'log/get_full_schemas.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

h = {'in_fspec': 'sql/get_all_parquet.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'parquet', 'export_dest': 'local'}
run_getter(h)

# h = {'in_fspec': 'sql/get_all_parquet.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'csv' ,'export_dest': 'local'}
# run_getter('csv')
