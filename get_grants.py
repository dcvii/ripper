import vertica_python
import os
import sys
import logging
import pandas as pd


def run_getter():
 

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

        sql = open('sql/grants.sql', 'r')
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

    df.rename(columns = {0: "index", 1: "rank", 2: "sqltxt"})
    df[[3]] = df[[3]].astype(str)

    s = []
    with open('test.out', 'wt') as f:
        for _, row in df.iloc[:, 2:3].iterrows():
            print(row, file=f)
            #s.append = row.astype(str)




lname = 'log/grants.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

run_getter()

