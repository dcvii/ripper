import cmd
import vertica_python
import os
import sys
import logging
import pandas as pd
import csv
import numpy as np
import re


def parse_file(fname):
    print('parsing catalog file')
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
 
    print('writing target catalog')
    conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
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
                    #logging.info("records: %s", rcnt)
            
        cur.close()
    punt_file.close()

    # df.to_csv(config['out_fspec'], header=None, index=None, sep=' ', mode='a')
    # print("third file written")


   
home = "/Users/mbowen/devcode/PYDEV/ripper/"
bucket_key = os.getenv("TARGET_BUCKET_KEY")

lname = "log/put_"+bucket_key+"_export.log"
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


f = 'scripts/vaasdemo_out_parquet.sql'
#f = 'scripts/tevaQA_catalog.sql'
cmd_set = parse_file(f)
run_sql(cmd_set,bucket_key)