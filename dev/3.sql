insert into migration.audit
    (table_schema, table_name, src_row_count, tgt_row_count, export_type, export_success, export_ts)
 
    select 
    table_schema, table_name, src_row_count, tgt_row_count, export_type, export_success, export_ts
    from migration.audit_tmp; commit;