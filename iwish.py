# Your connection code here...
import vertica_python
import os
import sys
import logging
import pandas as pd
from vertica_python.vertica.cursor import DEFAULT_BUFFER_SIZE
import regex as re




with open('test1.sql', 'r') as sql_file:
    result_iterator = cur.execute(sql_file.read(), multi=True)
    for res in result_iterator:
        print("Running query: ", res)  # Will print out a short representation of the query
        print(f"Affected {res.rowcount} rows" )


