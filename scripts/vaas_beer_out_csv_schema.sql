select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'beer' order by 1,3;
