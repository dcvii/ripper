import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_get_pools.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'in_fspec': 'sql/rpcreate.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'schema': 'all_schemas','bucket_key': bucket_key}
result_set = run_single_file_sql(config)


config = {'in_fspec': 'sql/rpalter.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'schema': 'all_schemas','bucket_key': bucket_key}
result_set += run_single_file_sql(config)

fspec = "scripts/"+bucket_key+"_out_pools.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("pools file written:",fspec)


