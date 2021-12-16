import vertica_python
import os
import sys
import logging
import pandas as pd
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE
import regex as re

# Abstract
# This will chunk sql statements to be run but taking an input list and parsing for statement delimiters

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


def query_chunks(qset):
    
    for v in qset.keys():
        print(qset[v])



lname = 'log/chunker.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
h = get_chunks()
# print(h)


sql =''
for cmd in h:
    l = cmd['line']
    s = cmd['sql']
    c = cmd['chunk']
    if l == 0:       
        print('----chunk: ',c)
        sql+= s
        print(s)
        process_sql(sql)
        sql =''
    else:
        sql+= s
        print(s)

    


# for qset in h:
#     print(qset)
#     for v in qset.values():
#         print(v)

