# copy data out to s3 bucket specified

import os
import sys
import logging


from ripper.sql_runner import chunk_filter, chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema


schema = sys.argv[1] or None
bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_'+schema+'_audit.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

if is_valid_schema(schema):
   

    cmd = "select table_schema, table_name, row_count from migration.source_schemas where table_schema = '"+schema+"';\n"
    
    fspec = "scripts/"+bucket_key+"_"+schema+"_get_audit.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close

    cset = []
    cset.append(cmd)
    config = {'in_fspec': fspec, 'log': lname, 'export_type': 'parquet', 'schema': schema,
         'conn_type': 'src', 'function': 'ddl', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cset,config)

    # now rewrite the same file and 
    fspec = "scripts/"+bucket_key+"_"+schema+"_audit.sql"
    f = open(fspec, 'w')

    # f.write(result_set)
    for row in result_set:
        schema, table, ct = row

        audit_record = "update migration.audit set export_ts = sysdate(), export_success = true, export_type = 'V2V'," 
        audit_record += " tgt_row_count = (select count(*) from "+schema+"."+table+")"
        audit_record += " where table_schema = '"+schema+"' and table_name = '"+table+"';\n"
        # print(audit_record)
        f.write(audit_record)

    f.close()
    print("audit record file written: ",fspec)


else:
    print('invalid schema')


