select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'hcos' order by 1,3;
