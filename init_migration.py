import vertica_python
import os
import logging
import pandas as pd
import glob

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

def dir_wipe(target):
    for f in glob.glob(target):
        print('clearing out:', target)
        os.remove(f)


bucket_key = os.getenv('SRC_BUCKET_KEY')
home = os.getenv("MIGRATION_HOME")
sql_glob = home+'scripts/'+bucket_key+'*.sql'
dir_wipe(sql_glob)

lname = 'log/init_migration.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('sql/migration_ddl.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'schema': 'all_schemas','function':'ddl', 'bucket_key': bucket_key}
result_set = run_multi_sql(cmd_set,config)

config = {'in_fspec': 'sql/get_users_only.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'users', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/insert_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'grants', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/user_ddl.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'user', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)


# config = {'in_fspec': 'sql/odd_parms_03.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd03', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/odd_parms_04.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd04', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/odd_parms_05.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd05', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/odd_parms_06.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd06', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/odd_parms_07.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd07', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/odd_parms_08.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit','schema': 'all_schemas','function':'odd08', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

