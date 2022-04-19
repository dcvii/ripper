
table = 'ims_hcos_business'
schema = 'hcos'
sql = 'select blah from whatver;'

cmd = "update migration.audit set export_ts = sysdate(), export_success = true, export_cmd = '"+sql+"', export_type = 'V2V'," 
cmd += " tgt_row_count = (select count(*) from "+schema+"."+table+")"
cmd += " where table_schema = '"+schema+"' and table_name = '"+table+"';"


    #cmd = "select 'COPY /*'||row_count||'*/ '||table_schema||'.'||table_name||' FROM VERTICA teva.' ||table_schema ||'.'|| table_name ||';' as cmd from migration.source_schemas where table_schema = '"+schema+"' order by row_count;\n"


export_type = 'v2v'

cmd = "select 'UPDATE MIGRATION.AUDIT SET export_ts = sysdate(),  src_row_count = '||\'row_count\'||' where table_schema = '"+schema+"' and table_name = '||table_name||';' as cmd from migration.source_schemas where table_schema = '"+schema+"' order by row_count ;"
#
#cmd = "select table_schema, table_name, row_count from migration.source_schemas where table_schema = '"+schema+"' order by 3;\n"

print(cmd)