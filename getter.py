import vertica_python
import os
import sys
import logging
import pandas as pd
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE

# Abstract
# The idea here is to have something that rips through a bunch of sql as fast as possible
# while logging everything and catching errors

def pull_grants(cur):

    s = open('sql/grants.sql', 'r')
    return df




def run_getter(fname):

    sql=[]
    fspec = 'scripts/'+fname
    sql = open(fspec,'r')
    # for this_line in infile:
    #     print(this_line)
    #     execute
    cmds = sql.len()
    

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

        df = pull_grants(cur)

        if cmds < 1024:
            for cmd in sql:
                print(cmd.rstrip())
                try:
                    cur.execute(cmd)
                except:
                    print('FAIL')
                    logging.error("SQL Query Failure")
                    rec = 0
                else:
                    rec = cur.fetchall()
                finally:
                    logging.info('-----')
                    logging.info(cmd.rstrip())
                    logging.info("records: %s", rec)
        else:
            print("File is too large")


fname = (sys.argv[1])
lname = 'log/'+fname+'.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
run_getter(fname)