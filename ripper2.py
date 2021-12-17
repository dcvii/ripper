import vertica_python
import os
import sys
import logging
import pandas as pd
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE
import regex as re

# Abstract
# This will chunk sql statements to be run but taking an input list and parsing for statement delimiters

def run_sql(query_set):

## set connection
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

        for cmd in query_set:
            print(cmd)
            try:
                cur.execute(cmd)
            except:
                print('FAIL')
                logging.error("SQL Query Failure")
                rec = 0
            else:
                print("PASS")
                rec = cur.fetchall()
            finally:
                logging.info('-----')
                logging.info(cmd.rstrip())
                logging.info("records: %s", rec)



def get_chunks():
    i = 0
    c = 0
    sql = {}
    h = {}
    cmds = []
    with open('scripts/blah.sql', 'r') as file:
        for line in file:

            logging.info("chunk: {} line: {} {}".format(c,i,line.strip()))
            h = {'chunk':c, 'line': i, 'sql': line.strip()}

            m0 = re.search(r";$",line)
            if m0 != None:         
                c+=1  #new chunk
                i = 0 #reset line
            else:
                i+=1 #another line in the same chunk
        
            cmds.append(h)
        print("number of chunks: ", c)
        file.close()

    # for cmd in cmds:
    #     print(cmd)

    return cmds


def dechunk(mystuff):

    cset = []
    sql =''
    for cmd in mystuff:
        l = cmd['line']
        s = cmd['sql']
        c = cmd['chunk']
        if l == 0:       
            #print('----chunk: ',c)
            sql+= s
            #print(s)
            cset.append(sql)+'\n'
            sql =''
        else:
            sql+= s
            #print(s)

    return cset



lname = 'log/chunker.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
h = get_chunks()

cmd_set = dechunk(h)

print(cmd_set)
run_sql(cmd_set)
