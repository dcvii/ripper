import os
import shutil 
import logging
import pandas as pd
import glob

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql

def dir_wipe(target):
    for f in glob.glob(target):
        print('clearing out:', target)
        os.remove(f)

def dir_move(src,dest):
    for f in glob.glob(src):
        shutil.move(f,dest)

bucket_key = os.getenv('SRC_BUCKET_KEY')
home = os.getenv("MIGRATION_HOME")
sql_glob = home+'scripts/*.sql'
log_glob = home+'log/*.log'
dest = home+'archive/'

# print('clearing logs')
# dir_move(log_glob,dest)
# print('clearing scripts')
# dir_move(sql_glob,dest)
# dir_wipe(sql_glob)

lname = 'log/init_next_phase.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


## source side
print('source configuration')

# print('B. Refreshing source_schemas')
# cmd_set = chunkify('sql/init_next_phase_ddl.sql')
# config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src_commit', 'schema': 'all_schemas','function':'ddl', 'bucket_key': bucket_key}
# result_set = run_multi_sql(cmd_set,config)

## epoch reset
config = {'in_fspec': 'sql/get_epochs.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'epochs', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

fspec = "scripts/"+bucket_key+"_out_epochs.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("epochs file written:",fspec)


cset = chunkify('scripts/'+bucket_key+'_out_epochs.sql')
config = {'in_fspec': 'nil', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': 'access', 'schema': 'all_schemas', 'bucket_key': bucket_key}
result_set = run_multi_sql(cset, config)


# config = {'in_fspec': 'sql/get_users_only.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'users', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/insert_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'grants', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/user_ddl.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'user', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/get_epochs.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src','schema': 'all_schemas','function':'epochs', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)


## target side

# print('target configuration')
# cmd_set = chunkify('sql/migration_ddl.sql')
# config = {'in_fspec': 'sql/get_all_csv.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt', 'schema': 'all_schemas','function':'ddl', 'bucket_key': bucket_key}
# result_set = run_multi_sql(cmd_set,config)

# config = {'in_fspec': 'sql/get_users_only.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','schema': 'all_schemas','function':'users', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/insert_grants.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','schema': 'all_schemas','function':'grants', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/user_ddl.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','schema': 'all_schemas','function':'user', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/audit_01.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','schema': 'all_schemas','function':'audit', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)

# config = {'in_fspec': 'sql/audit_02.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'tgt','schema': 'all_schemas','function':'audit', 'bucket_key': bucket_key}
# result_set = run_single_file_sql(config)
