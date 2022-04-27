update migration.audit a 
set tgt_row_count = c.row_count,
update_ts = sysdate() 
from migration.current_row_counts c 
where a.table_schema = c.table_schema and a.table_name = c.table_name and a.tgt_row_count <> c.row_count;