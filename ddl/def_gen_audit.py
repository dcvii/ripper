def gen_audit(config):

    if config['audit'] == 'v2v':
        audit_record = "update migration.audit set export_ts = sysdate(), export_success = true, export_cmd = '"+sql+"', export_type = 'V2V'," 
        audit_record += " tgt_row_count = (select count(*) from "+schema+"."+table+")"
        audit_record += " where table_schema = '"+schema+"' and table_name = '"+table+"';"
