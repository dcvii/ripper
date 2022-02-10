# run_grants.py
# This follows get_grants
# Firslty, init_


import cmd
import vertica_python
import os
import sys
import logging
import pandas as pd
import csv
import numpy as np
import re
import boto3

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql




   
home = "/Users/mbowen/devcode/PYDEV/ripper/"
bucket_key = os.getenv("SRC_BUCKET_KEY")

lname = "log/put_"+bucket_key+"_export.log"
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

token_set = get_token()
f = 'scripts/vaasdemo_out_parquet.sql'
#f = 'scripts/tevaQA_catalog.sql'
cmd_set = token_set + parse_file(f)
run_sql(cmd_set,bucket_key)