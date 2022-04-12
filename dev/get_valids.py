import os
import logging
import sys

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_valid_schemas.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

## WATCH YOUR TARGETS
config = {'in_fspec': 'sql/valids.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

item = 'hcos'

if [item] in result_set:
    print('whao')

    

fspec = "scripts/"+bucket_key+"_out_valids.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("valid schemas target file written:",fspec)

