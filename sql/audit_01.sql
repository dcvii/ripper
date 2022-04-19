-- should run from the target

CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;

truncate table migration.source_schemas;
truncate table migration.audit;
COPY migration.source_schemas
    (table_schema, table_name, row_count)
 
    FROM VERTICA teva.migration.source_schemas
    (table_schema, table_name, row_count);

    COPY migration.audit
    (table_schema, table_name, src_row_count)
 
    FROM VERTICA teva.migration.source_schemas
    (table_schema, table_name, row_count);
disconnect teva;


