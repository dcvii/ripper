import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table


lname = 'log/migrate_tevaQA_odd.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('scripts/tevaQAodd_parms.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'bucket_key': bucket_key, 'function' : 'odd' }
result_set = run_multi_sql(cmd_set,config)

