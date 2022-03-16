
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_roles.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'in_fspec': 'sql/roles.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/role_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': bucket_key}
result_set += run_single_file_sql(config)



fspec = "scripts/"+bucket_key+"_out_roles.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row[0]
    
    script = cmd+"\n"
    f.write(script)

f.close()
print("access policy file written:",fspec)


