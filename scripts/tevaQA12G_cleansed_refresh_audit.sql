select table_schema, table_name, row_count, audit_init_epoch, audit_init_ts from migration.audit where table_schema = 'cleansed';
