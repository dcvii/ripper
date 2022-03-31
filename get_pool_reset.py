
import os
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


lname = 'log/get_pool_reset.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


## WATCH YOUR TARGETS

config = {'in_fspec': 'sql/pool_reset_01.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/pool_reset_02.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'bucket_key': bucket_key}
result_set += run_single_file_sql(config)



fspec = "scripts/"+bucket_key+"_out_pool_reset.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("pool reset file written:",fspec)


