select distinct 'DROP SCHEMA IF EXISTS '||table_schema||' CASCADE;' from migration.source_schemas;
