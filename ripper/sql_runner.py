import vertica_python
import os
import sys
import logging
import pandas as pd
import csv
import numpy as np
import re



def vert_conn(cfg):
    if cfg == 'tgt':
        conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}
    else:
        conn_info = {'host': os.getenv("SRC_DB_HOST"), 
        'port': os.getenv("SRC_DB_PORT"), 
        'user': os.getenv("SRC_DB_USERNAME"), 
        'password': os.getenv("SRC_DB_PASSWORD"), 
        'database': os.getenv("SRC_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}
    return conn_info


def chunkify(fname):
    print('chunking multi sql into command set')
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


def run_multi_sql(cset,config):
 

    conn_info = vert_conn(config['conn_type'])
    print('running multi sql')

    print("connection:", conn_info['host'])
    bucket_key = config['bucket_key']

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
    return results


def run_single_file_sql(config):
 
    conn_info = vert_conn(config['conn_type'])
    print('running single file sql')

    print("connection:", conn_info['host'])
   # bucket_key = config['bucket_key']
  

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
    return results

