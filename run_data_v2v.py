import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_teva_schema

schema = sys.argv[1] or None
if is_valid_teva_schema(schema):

    lname = 'log/migrate_tevaQA_'+schema+'_v2v.log'
    bucket_key = os.getenv('TARGET_BUCKET_KEY')
    logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


    cmd_set = chunkify('scripts/tevaQA_'+schema+'_v2v.sql')
    config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'parquet', 'schema': schema,
         'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cmd_set,config)

else:
    print('invalid schema')