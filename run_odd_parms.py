import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table


lname = 'log/migrate_odd.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'src_table': 'migration.odd_parms_vw', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': bucket_key}
result_set = run_migration_table(config)

fspec = "scripts/"+bucket_key+"odd_parms.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("oddparms file written:",fspec)


