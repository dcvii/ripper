import vertica_python
import os
import sys
import logging
import pandas as pd
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

            h = {'chunk': c, 'line': i, 'sql': line, 'end': isEnd(line)}
            logging.info("chunk: {} line: {} end: {} {}".format(c,i,h['end'],line.strip()))
            
            cmds.append(h)

            if h['end']:
                c+=1  #new chunk
                i = 0 #reset line
            else:
                i+=1 #another line in the same chunk
        
            
        print("number of chunks: ", c)
        file.close()

    # for cmd in cmds:
    #     print(cmd)

    return cmds


def process_sql(stmt):
    
    print("statement: ",stmt)


lname = 'log/chunker.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
h = get_chunks('scripts/blah.sql')
# print(h)


sql =''
for cmd in h:
    l = cmd['line']
    s = cmd['sql']
    c = cmd['chunk']
    sql+= s
    if l == 0:       
        #print('----chunk: ',c)
        #print(s)
        process_sql(sql)
        sql =''

        #print(s)

    


# for qset in h:
#     print(qset)
#     for v in qset.values():
#         print(v)

