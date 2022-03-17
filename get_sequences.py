import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/'+bucket_key+'_get_sequences.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

config = {'in_fspec': 'sql/sequences.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)


fspec = "scripts/"+bucket_key+"_out_sequences.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("sequence script written:",fspec)



