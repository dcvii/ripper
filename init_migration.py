import vertica_python
import os
import sys
import logging
import pandas as pd


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

    fspec = 'sql/raw.sql'
    f = open(fspec, 'w')
    x_id = 0
    for row in results:
        order_id, area, cmd, object_type, opbject_name = row
     
       
        #script = str(order_id)+","+cmd+";\n"
        script = cmd+";\n"
        f.write(script)
    f.close()


    # df.rename(columns = {0: "index", 1: "rank", 2: "sqltxt"})
    # df.infer_objects()
   # df = df.astype(str)

    #print(df.info)
    print('writing grant script for target')
    # d2 = df.pop(2)
    # d2.to_csv('scripts/target_grants.csv')




lname = 'log/get_grants.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


run_getter('sql/grants.sql')
#run_getter('scripts/load_grants.sql')


