import os
import sys
import logging


from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema



bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/migrate_'+bucket_key+'_audit_refresh.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


# fname = 'sql/audit_refresh.sql'
# cset = []
# cset = chunkify(fname)

# config = {'in_fspec': fspec, 'log': lname, 'export_type': 'v2v', 'schema': 'all',
#         'conn_type': 'src', 'function': 'ddl', 'bucket_key': bucket_key}
# result_set = run_multi_sql(cset,config)
# #step one run all for the schema

cmd_set = []
cmd_set = chunkify('sql/audit_refresh.sql')
config = {'in_fspec': 'nil', 'log': lname, 'export_type': 'parquet', 'schema': 'all',
        'conn_type': 'tgt', 'function': 'audit_refresh', 'bucket_key': bucket_key}
result_set = run_multi_sql(cmd_set,config)

