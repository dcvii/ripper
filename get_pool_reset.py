
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


lname = 'log/get_pool_reset.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'in_fspec': 'sql/pool_reset.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)



fspec = "scripts/"+bucket_key+"_out_pool_reset.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("authentication file written:",fspec)


