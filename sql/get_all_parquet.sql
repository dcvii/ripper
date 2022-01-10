select 
    table_schema,
    table_name,
    row_count
from
    migration.source_schemas
    where is_partitioned is false
    and export_type = 'PARQUET'
order by 1,3;
