# this should filter out everything but views

import os
import sys
import logging


from ripper.sql_runner import chunk_filter, chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema


bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_custom_ddl.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

fspec = 'scripts/'+bucket_key+'_public_custom_ddl.sql'
# this returns a large set of characters not lines
config = {'filter': 'PROJECTION|MANAGED EXTERNAL|MARK_DESIGN|SEQUENCE|TABLE|FUNCTION|WSMP_ADMIN_ORA', 'fname': fspec}
filtered_results = chunk_filter(config)


fspec = 'scripts/'+bucket_key+'_public_custom_out_ddl.sql'
f = open(fspec, 'w')
f.write(''.join(filtered_results)) #wonky conversion to a string
f.close()
print("filtered ddl export file written: ",fspec)



