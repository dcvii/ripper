import vertica_python
import os
import sys
import logging
import pandas as pd
import numpy as np
from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, get_vv_string


def run_v2v(config):
 

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

    ## create script for running directly

    bucket = os.getenv("SRC_S3_BUCKET")
    bucket_key = os.getenv("SRC_BUCKET_KEY")
    database = os.getenv("SRC_DB_DATABASE")
    # what are the results.
    fspec = "scripts/"+bucket_key+"_v2v.sql"
    f = open(fspec, 'w')

    f.write(config['connection'])

    for row in results:
        schema, table, ct = row

        target = " (directory='"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"')"
        outstring = "COPY "+schema+"."+table+" FROM VERTICA "+database+"."+schema+"."+table+";"
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    sql = "DISCONNECT "+database+";\n"
    f.write(sql)
    f.close()
    print("vertica to vertica export file written: ",fspec)



def run_getter(config):
 

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

    ## create script for running directly

    bucket = os.getenv("SRC_S3_BUCKET")
    bucket_key = os.getenv("SRC_BUCKET_KEY")
    # what are the results.
    fspec = "scripts/"+bucket_key+"_out_"+config['export_type']+".sql"
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

    fspec = "scripts/"+bucket_key+"_in_"+config['export_type']+"_data_ingest.sql"
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

   


def get_catalog(config):
 

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

        sql = open(config['in_fspec'], 'r')
        cmd = ''
        for line in sql:
            cmd += line
        #print(sql.rstrip())
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
            #logging.info(sql.rstrip())
            logging.info("records: %s", rcnt)
        
    cur.close()

    df.to_csv(config['out_fspec'], header=None, index=None, sep=' ', mode='a')
    print("catalog file written:",config['out_fspec'])


  
home = os.getenv("MIGRATION_HOME")
bucket_key = os.getenv("SRC_BUCKET_KEY")

lname = 'log/get_full_schemas.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

h = {'in_fspec': 'sql/get_all_parquet.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'parquet', 'export_dest': 'local'}
run_getter(h)

h = {'in_fspec': 'sql/get_all_csv.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'csv', 'export_dest': 'local'}
run_getter(h)

h = {'in_fspec': 'sql/get_all_tables.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'connection': get_vv_string(), 'export_dest': 'local'}
run_v2v(h)

h = {'in_fspec': 'sql/catalog.sql', 'out_fspec': home+"scripts/"+bucket_key+"_catalog.sql", 'export_type': 'parquet', 'export_dest': 'local'}
get_catalog(h)

print("Rembember to edit the catalog file")
print("Next run put_schema")