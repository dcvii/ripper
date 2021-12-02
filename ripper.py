import vertica_python
import os
import sys
import logging

# Abstract
# The idea here is to have something that rips through a bunch of sql as fast as possible
# while logging everything and catching errors


def run_ripper(fname):

    sql=[]
    fspec = 'scripts/'+fname
    sql = open(fspec,'r')
    # for this_line in infile:
    #     print(this_line)
    #     execute
    

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
        for cmd in sql:
            print(cmd.rstrip())
            try:
                cur.execute(cmd)
            except:
                print('FAIL')
                logging.error("SQL Query Failure")
                rec = 0
            else:
                rec = cur.fetchone()
            finally:
                logging.info('-----')
                logging.info(cmd.rstrip())
                logging.info("records: %s", rec)


fname = (sys.argv[1])
lname = 'log/'+fname+'.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
run_ripper(fname)