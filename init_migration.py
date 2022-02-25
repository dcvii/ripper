import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


lname = 'log/init_migration.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('sql/migration_ddl.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_multi_sql(cmd_set,config)

config = {'in_fspec': 'sql/insert_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/user_ddl.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_sql(config)


config = {'in_fspec': 'sql/odd_parms_01.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_02.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_03.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_04.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_05.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_06.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_07.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_08.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)

config = {'in_fspec': 'sql/odd_parms_10.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'bucket_key': os.getenv('SRC_BUCKET_KEY')}
result_set = run_single_file_commit_sql(config)