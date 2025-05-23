# copy data out to s3 bucket specified

import os
import sys
import logging


from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema

schema = sys.argv[1] or None
bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_'+schema+'.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


if is_valid_schema(schema):


    cmd_set = chunkify('scripts/'+bucket_key+'_out_'+schema+'_parquet.sql')
    config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'parquet', 'schema': schema,
         'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cmd_set,config)

else:
    print('invalid schema for',bucket_key)


