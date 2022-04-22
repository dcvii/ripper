import vertica_python
import os
import logging
import pandas as pd
import glob

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

def dir_wipe(target):
    for f in glob.glob(target):
        print('clearing out:', target)
        os.remove(f)


bucket_key = os.getenv('SRC_BUCKET_KEY')


lname = 'log/init_epochs.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


## source side
print('source configuration')


config = {'in_fspec': 'sql/get_epochs.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'epochs', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)


fspec = "scripts/"+bucket_key+"_out_epochs.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("epochs file written:",fspec)
