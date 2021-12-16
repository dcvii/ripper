import vertica_python
import os
import sys
import logging
import pandas as pd
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE
import regex as re

# Abstract
# This will chunk sql statements to be run but taking an input list and parsing for statement delimiters

def chunker(stream):
    l = len(stream)


def get_chunks():
    i = 0
    c = 0
    sql = {}
    chunk = {}
    lines = []
    with open('scripts/blah.sql', 'r') as file:
        for line in file:

            logging.info("line: {} {}".format(i,line.strip()))
            sql[i] = line.strip()
            lines.append(sql)

            m0 = re.search(r";$",line)
            if m0 != None:         
                chunk[c] = lines
                c+=1
                lines.clear()
            i+=1
        
        print("number of chunks: ", c)
        file.close()
    
    return chunk


def query_chunks(qset):
    
    for v in qset.keys():
        print(qset[v])



lname = 'log/chunker.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
h = get_chunks()

for qset in h:
    print(qset)
    for v in qset.values():
        print(v)

