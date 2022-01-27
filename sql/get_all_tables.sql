select 
    table_schema,
    table_name,
    row_count
from
    migration.source_schemas

order by 1,3;
