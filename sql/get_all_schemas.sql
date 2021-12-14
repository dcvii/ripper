select 
    table_schema,
    table_name
from
    migration.source_schemas
    where is_partitioned is false;
