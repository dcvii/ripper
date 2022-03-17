import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table

bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_table_only.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('scripts/tevaQA_table_only_catalog.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','function': 'tables_only', 'bucket_key': bucket_key}
result_set = run_multi_sql(cmd_set,config)


