import os
import logging

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_db_settings.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


config = {'in_fspec': 'sql/db_settings.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'schema': 'all_schemas','bucket_key': bucket_key}
result_set = run_single_file_sql(config)

config = {'in_fspec': 'sql/ldaplink.sql', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'schema': 'all_schemas','bucket_key': bucket_key}
result_set += run_single_file_sql(config)



fspec = "scripts/"+bucket_key+"_out_db_settings.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("db settings file written:",fspec)


