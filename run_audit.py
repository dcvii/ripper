import os
import sys
import logging


from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema


schema = sys.argv[1] or None
bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_'+schema+'_audit.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


if is_valid_schema(schema):

    #step one run all for the schema

    cmd_set = chunkify('scripts/'+bucket_key+'_'+schema+'_audit.sql')
    config = {'in_fspec': 'nil', 'log': lname, 'export_type': 'parquet', 'schema': schema,
         'conn_type': 'tgt_commit', 'function': 'v2v', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cmd_set,config)

else:
    print('invalid schema')