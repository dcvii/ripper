import vertica_python
import os
import sys
import logging
import pandas as pd
import csv
import numpy as np


def loader(config):

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

    ## create script for running directly

    bucket = os.getenv("S3_BUCKET")
    bucket_key = os.getenv("BUCKET_KEY")
    # what are the results.
    fspec = "scripts/"+bucket_key+"_out_"+config['export_type']+".sql"
    f = open(fspec, 'w')

    for row in results:
        schema, table, ct = row

        target = " (directory='"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"')"
        outstring = "EXPORT TO "+config['export_type']+target+" AS SELECT * FROM "+"'"+schema+"."+table+"';"
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    f.close()
    print("first file written")

    ## create input for data_exports table

    fspec = "scripts/data_exports.sql"
    f = open(fspec, 'w')

    x_id = 0
    for row in results:
        schema, table, ct = row
        # x_id += 1
        # xid = str(x_id)
        target = " (directory='"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"')"
        script = "EXPORT TO "+config['export_type']+target+" AS SELECT * FROM "+"'"+schema+"."+table+"';"
        outstring = f'{ct}'+","+schema+","+table+","+script+"\n"
        f.write(outstring)
    
    f.close()
    print("second file written")


def get_catalog(config):
 

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
    print("third file written")


   
home = "/Users/mbowen/devcode/PYDEV/ripper/"
bucket_key = os.getenv("BUCKET_KEY")

lname = 'log/get_full_schemas.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

h = {'in_fspec': 'sql/get_all_parquet.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'parquet', 'export_dest': 'local'}
run_getter(h)

h = {'in_fspec': 'sql/catalog.sql', 'out_fspec': home+"scripts/"+bucket_key+"_catalog.sql", 'export_type': 'parquet', 'export_dest': 'local'}
get_catalog(h)

