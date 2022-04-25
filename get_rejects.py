# copy data out to s3 bucket specified

import os
import sys
import logging


from ripper.sql_runner import chunk_filter, chunkify, get_vv_string, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema


schema = sys.argv[1] or None
database = os.getenv('SRC_DB_DATABASE')
bucket_key = os.getenv('TARGET_BUCKET_KEY')
lname = 'log/get_'+bucket_key+'_'+schema+'_rejects.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

if is_valid_schema(schema):
   
    # cmd = "select 'copy '||table_schema||'.'||table_name||' select * from VERTICA teva.'||table_schema||'.'||table_name||' where epoch > '||audit_init_epoch||'; commit;' as cmd from migration.updated_source_schemas where table_schema = 'metadata';"
    # cmd = "select 'copy '||table_schema||'.'||table_name||' select * from VERTICA "+database+".'||table_schema||'.'||table_name||' where epoch > '||audit_init_epoch||'; commit;\n' as cmd from migration.updated_source_schemas where table_schema = '"+schema+"';"
    cmd = "select 'COPY /*'||src_row_count||'*/ '||table_schema||'.'||table_name||' FROM VERTICA "+database+".' ||table_schema ||'.'|| table_name ||';\n' as cmd from migration.audit where table_schema = '"+schema+"' and src_row_count > coalesce(tgt_row_count,0) order by src_row_count;"


    fspec = "scripts/"+bucket_key+"_"+schema+"_get_rejects.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close

    cset = []
    cset.append(cmd)
    config = {'in_fspec': fspec, 'log': lname, 'export_type': 'v2v', 'schema': schema,
         'conn_type': 'tgt', 'function': 'rejects', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cset,config)

    # now rewrite the same file and 
    fspec = "scripts/"+bucket_key+"_"+schema+"_rejects_v2v.sql"
    f = open(fspec, 'w')
    f.write(get_vv_string())
    ct = 0
    for row in result_set:
        ct += 1
        item = row[0]

        f.write(item)

    f.close()
    print(ct, "rejects")
    print("rejects record file written: ",fspec)


else:
    print('invalid schema')


###  select 'copy '||table_schema||'.'||table_name||' select * from VERTICA teva.'||table_schema||'.'||table_name||' where epoch > '||audit_init_epoch||'; commit;' as cmd from migration.updated_source_schemas where table_schema = 'metadata';