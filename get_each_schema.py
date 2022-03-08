import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.sql_runner import chunkify, run_multi_sql, run_single_file_sql, run_migration_table


lname = 'log/get_each_schema.log'
bucket_key = os.getenv('TARGET_BUCKET_KEY')
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

config = {'in_fspec': 'sql/schemata.sql', 'out_fspec': 'sql/blah.sql',
         'log': lname, 'export_type': 'csv', 'conn_type': 'src', 'function': 'csv', 'bucket_key': bucket_key}
result_set = run_single_file_sql(config)

print(result_set)


# fspec = "scripts/"+bucket_key+"_in_"+config['export_type']+"_data_ingest.sql"
# if config['export_type']=='parquet':
#     param = 'PARQUET'
# else:
#     param = ''

# f = open(fspec, 'w')

# x_id = 0
# for row in results:
#     schema, table, ct = row
    
#     s3_source = "'"+bucket+"/"+bucket_key+"/"+schema+"/"+table+"/*'"
#     script = "COPY "+schema+"."+table+" FROM "+s3_source+" "+param+";\n"
#     f.write(script)

# f.close()
# print(config['export_type'],"ingest file written:",fspec)