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
    chunk = {}
    lines = []
    with open('sql/grants.sql', 'r') as file:
        for line in file:

            print("line: ",i,line)
            lines+= line

            m0 = re.search(r";$",line)
            if m0 != None:         
                chunk[c] = lines
                c+=1
                lines = []
            i+=1
        
        print("number of chunks: ", c)
        file.close()
    
    for cc in chunk:
        print(cc, chunk[cc])
   


lname = 'log/chunker.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')
get_chunks()
