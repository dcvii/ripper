SELECT 'DROP SCHEMA ' || schema_name || ' CASCADE;' FROM schemata WHERE schema_name <> 'public';
