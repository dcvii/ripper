import vertica_python
import os
import sys
import logging
import pandas as pd
import csv


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

        sql = open('sql/get_all_schemas.sql', 'r')
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

    # df.rename(columns = {0: "index", 1: "rank", 2: "sqltxt"})
    df.infer_objects()
   # df = df.astype(str)

    #print(df.info)
    print('writing file')
    #d2 = df.pop(2)
    print(df.to_string(index=False, header=False))
    scratch = df.to_string(index=False, header=False)
    f = open('blah.csv','w')
    f.write(scratch)
    f.close

    # using csv library
    f = open('vert.csv','w')
    writer = csv.writer(f, delimiter='|', lineterminator='\n')
    for line in scratch:
        writer.writerow(line)
    
    df.to_csv('out_schema.csv')
   
    # s = []
    # with open('test.out', 'wt') as f:
    #     for _, value in df.iloc[3].iteritem():
    #         print(value, file=f)
    #         #s.append = row.astype(str)

def putter():
    # take out.csv and coput into table. 

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

        sql = 'copy migration.target_grants from local '



lname = 'log/get_schemas.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

run_getter()

