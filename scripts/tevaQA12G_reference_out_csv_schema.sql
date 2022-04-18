select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'reference' order by 1,3;
