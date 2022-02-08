import cmd
import vertica_python
import os
import sys
import logging
import pandas as pd
import csv
import numpy as np
import re
import boto3

def get_token():

    print('getting session token')
    sql = []
    client = boto3.client('sts')

    token = client.get_session_token()
    access_key_id = token['Credentials']['AccessKeyId']
    secret_access_key = token['Credentials']['SecretAccessKey']
    session_token = token['Credentials']['SessionToken']
    #expiration = token['Credentials']['Expiration']

    sql.append("ALTER SESSION SET AWSAuth = '"+access_key_id+":"+secret_access_key+"'; ")
    sql.append("ALTER SESSION SET AWSSessionToken = '"+session_token+"';")
    sql.append("SELECT * FROM configuration_parameters where parameter_name ilike '%AWS%';")
    #  print(sql)
    return sql

def parse_file(fname):
    print('parsing source catalog file')
    ct = 0
    with open(fname) as file:
        lines = file.read()
        chunks = []
        cmd = ''

        for this_line in lines:
            cmd += this_line
            m0 = re.search(r';',this_line)
            if m0 != None:                
                chunks.append(cmd)
                ct += 1
                cmd = ''
     
           
        print(ct,'commands found')
        return chunks


def run_sql(cset,bucket_key):
 
    print('writing source data exports')
    conn_info = {'host': os.getenv("SRC_DB_HOST"), 
        'port': os.getenv("SRC_DB_PORT"), 
        'user': os.getenv("SRC_DB_USERNAME"), 
        'password': os.getenv("SRC_DB_PASSWORD"), 
        'database': os.getenv("SRC_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    fspec = "scripts/failed_"+bucket_key+"_export.sql"
    with open(fspec,'w') as punt_file:

        #multi multi

        with vertica_python.connect(**conn_info) as conn:
            cur = conn.cursor()

            for cmd in cset:

                try:
                    cur.execute(cmd)
                except:
                    print('FAIL')
                    print(cmd)
                    logging.error("SQL Query Failure")
                    punt_file.write(cmd)

                else:
                    results = cur.fetchall()
                    df = pd.DataFrame(results)
                    rcnt = df.shape[0]
                finally:
                    logging.info('-----')
                    logging.info(cmd)
                    logging.info("records: %s", rcnt)
            
        cur.close()
    punt_file.close()

    # df.to_csv(config['out_fspec'], header=None, index=None, sep=' ', mode='a')
    # print("third file written")


   
home = "/Users/mbowen/devcode/PYDEV/ripper/"
bucket_key = os.getenv("SRC_BUCKET_KEY")

lname = "log/put_"+bucket_key+"_export.log"
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

token_set = get_token()
f = 'scripts/vaasdemo_out_parquet.sql'
#f = 'scripts/tevaQA_catalog.sql'
cmd_set = token_set + parse_file(f)
run_sql(cmd_set,bucket_key)