
import os
import sys
import logging


from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql,run_single_file_commit_sql, run_migration_table


bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_run_users.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

cset = chunkify('scripts/'+bucket_key+'_out_users.sql')
config = {'in_fspec': 'nil', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'function': 'users', 'schema': 'all_schemas', 'bucket_key': bucket_key}
result_set = run_multi_sql(cset, config)



