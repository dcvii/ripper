import cmd
import vertica_python
import os
import sys
import logging
import pandas as pd
import numpy as np
import re


def parse_file(fname):
    print('parsing source catalog file')
    ct = 0
    cmds = 0
    with open(fname) as file:
        lines = file.read()
        chunks = []
        cmd = ''

        for this_line in lines:
            ct += 1
            cmd += this_line
            m0 = re.search(r';',this_line)
            if m0 != None:                
                chunks.append(cmd)
                cmd = ''
            else:
                cmds += 1
     
           
        print(ct,'lines found')
        print(cmds, 'commands found')
        return chunks


def run_sql(cset,bucket_key):
 
    print('writing source data exports')
    conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    fspec = "scripts/failed_"+bucket_key+"_v2v_export.sql"
    with open(fspec,'w') as punt_file:

        #multi multi

        with vertica_python.connect(**conn_info) as conn:
            cur = conn.cursor()

            for cmd in cset:

                try:
                    print(cmd)
                    cur.execute(cmd)
                    
                except:
                    print('FAILED')
                    logging.error("SQL Query Failure")
                    punt_file.write(cmd)

                else:
                    print('PASSED')
                    results = cur.fetchall()
                    df = pd.DataFrame(results)
                    forkrcnt = df.shape[0]
                    print(results)
                finally:
                    logging.info('-----')
                    logging.info(cmd)
                    #rcnt = results
                    #logging.info("records: %s", rcnt)
                    logging.info(results)
            
        cur.close()
    punt_file.close()

    # df.to_csv(config['out_fspec'], header=None, index=None, sep=' ', mode='a')
    # print("third file written")

   
home = "/Users/mbowen/devcode/PYDEV/ripper/"
bucket_key = os.getenv("TARGET_BUCKET_KEY")

lname = "log/put_"+bucket_key+"_v2v_export.log"
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


f = 'scripts/vaasdemo_v2v.sql'
cmd_set = parse_file(f)
run_sql(cmd_set,bucket_key)