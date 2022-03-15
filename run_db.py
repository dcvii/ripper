

import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql,run_single_file_commit_sql, run_migration_table


bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/'+bucket_key+'_run_db_settings.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'in_fspec': 'scripts/'+bucket_key+'_out_db_settings.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'function': 'pools', 'bucket_key': bucket_key}
result_set = run_single_file_commit_sql(config)



