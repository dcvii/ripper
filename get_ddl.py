# copy data out to s3 bucket specified

import os
import sys
import logging


from ripper.sql_runner import chunk_filter, chunkify, run_multi_sql, run_single_file_sql, run_migration_table, is_valid_schema

schema = sys.argv[1] or None
if is_valid_schema(schema):

    bucket_key = os.getenv('TARGET_BUCKET_KEY')
    lname = 'log/get_'+bucket_key+'_'+schema+'_ddl.log'
    logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

    cmd = "select export_objects('','"+schema+"');\n"
    
    fspec = "scripts/"+bucket_key+"_"+schema+"_get_ddl.sql"
    f = open(fspec,'w')
    f.write(cmd)
    f.close

    cset = []
    cset.append(cmd)
    config = {'in_fspec': fspec, 'log': lname, 'export_type': 'parquet', 'schema': schema,
         'conn_type': 'src', 'function': 'ddl', 'bucket_key': bucket_key}
    result_set = run_multi_sql(cset,config)

    fspec = "scripts/"+bucket_key+"_"+schema+"_raw_ddl.sql"
    f = open(fspec, 'w')

    for row in result_set:
        item = row[0]

        outstring = item
        #print(outstring)
        outstring+="\n"
        f.write(outstring)

    f.close()
    print("raw ddl export file written: ",fspec)

   # this returns a large set of characters not lines
    config = {'filter': 'PROJECTION|MANAGED EXTERNAL|MARK_DESIGN|SEQUENCE', 'fname': fspec}
    filtered_results = chunk_filter(config)


    fspec = "scripts/"+bucket_key+"_"+schema+"_out_ddl.sql"
    f = open(fspec, 'w')
    f.write(''.join(filtered_results)) #wonky conversion to a string
    f.close()
    print("filtered ddl export file written: ",fspec)

else:
    print('invalid schema')


