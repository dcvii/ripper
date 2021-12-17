import vertica_python
import os
import sys
import logging
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE
import regex as re

# Abstract
# This will chunk sql statements to be run but taking an input list and parsing for statement delimiters

def isEmpty(line):
    return len(line.strip())<1

def isComment(line):
    m = re.search(r"^\s?--",line)
    return m != None

def isEnd(line):
    m = re.search(r"\S?;\s?$",line)
    return m != None

def valid_lines(f):
    for l in f:
        if (not isEmpty(l)) and (not isComment(l)):
            yield l

def get_chunks(fspec):
    i = 0
    c = 0
    sql = {}
    h = {}
    cmds = []
    with open(fspec, 'r') as file:
        for line in valid_lines(file):

            if isEnd(line):
                c+=1  #new chunk
                i = 0 #reset line
                e = True
            else:
                i+=1 #another line in the same chunk
                e = False
            
            h = {'chunk': c, 'line': i, 'sql': line, 'end': e}
            logging.info("chunk: {} line: {} end: {} {}".format(c,i,h['end'],line.strip()))
            
            cmds.append(h)
        
            
        print("number of chunks: ", c)
        file.close()

    return cmds

def run_sql(cset):

    ## open error file for punted failed statements
    with open('scripts/failed.sql','w') as punt_file:

        ## create single connection to run statements from the command set
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
        
            ## break full command set from the file into executable sql statements
            sql =''
            for cmd in cset:
                l = cmd['line']
                s = cmd['sql']
                c = cmd['chunk']
                sql+= s
                if l == 0:       
                    try:
                        print("statement: ",sql)
                        cur.execute(sql)
                    except:
                        print('FAIL')
                        logging.error("SQL Query Failure")
                        rec = 0
                        punt_file.write(sql)

                    else:                   
                        rec = cur.fetchall()
                        print("PASS: {} recs".format(rec))
                    finally:
                        logging.info('-----')
                        logging.info(sql.rstrip())
                        logging.info("records: %s", rec)
                        sql =''
    punt_file.close()
    
def main():

    lname = 'log/chunker.log'
    logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
    cmd_set = get_chunks('scripts/short.sql')
    run_sql(cmd_set)


        #print(s)
main()
    
