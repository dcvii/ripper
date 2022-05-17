select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'veeva' order by 1,3;
