select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'ingestion_reference' order by 1,3;
