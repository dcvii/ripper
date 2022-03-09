import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql,run_single_file_commit_sql, run_migration_table


lname = 'log/migrate_tevaQA_run_sequences.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

cset = chunkify('scripts/tevaQA_out_sequences.sql')
config = {'in_fspec': 'nil', 'log': lname, 'export_type': 'csv', 'schema': 'all_schemas',
    'conn_type': 'tgt', 'function': 'pools', 'bucket_key': bucket_key}
result_set = run_multi_sql(cset, config)



