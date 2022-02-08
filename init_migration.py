import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.multi_multi import chunkify


def run_getter(fspec):
 

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

        sql = open(fspec, 'r')
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
            # df = pd.DataFrame(results)
            # rcnt = df.shape[0]
        finally:
            logging.info('-----')
            #logging.info(sql.rstrip())
            #logging.info("records: %s", rcnt)
        
    cur.close()

    


lname = 'log/init_migration.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('sql/migration_ddl.sql')
#run_getter('scripts/load_grants.sql')


