import os
import logging


from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql


lname = 'log/get_grants.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

cmd_set = chunkify('sql/get_grants.sql')
config = {'schema': 'all_schemas', 'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': 'grants', 'bucket_key': bucket_key}
result_set = run_multi_sql(cmd_set,config)



fspec = "scripts/"+bucket_key+"_out_grants.sql"
f = open(fspec, 'w')

for row in result_set:
    cmd = row
    
    script = cmd[0]+"\n"
    f.write(script)

f.close()
print("grant file written:",fspec)


