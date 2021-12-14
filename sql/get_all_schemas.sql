select 
    table_schema,
    table_name,
    row_count
from
    migration.source_schemas
    where is_partitioned is false
order by 1,3;
