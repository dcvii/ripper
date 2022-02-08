import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


lname = 'log/init_migration.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('sql/migration_ddl.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_multi_sql(cmd_set,config)


config = {'in_fspec': 'sql/insert_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_sql(cmd_set,config)
