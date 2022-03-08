import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table


lname = 'log/migrate_tevaQA_alt_data_csv.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

config = {'in_fspec': 'sql/schemata.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

