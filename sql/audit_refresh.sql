-- update tgt_rows
update migration.audit a 
set tgt_row_count = c.row_count,
update_ts = sysdate() 
from migration.current_row_counts c 
where a.table_schema = c.table_schema and a.table_name = c.table_name and a.tgt_row_count <> c.row_count;

update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'partial'
where src_row_count > tgt_row_count
and tgt_row_count is not null 
and tgt_row_count <> 0;

update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'overload'
where src_row_count < tgt_row_count;

update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'reject'
where tgt_row_count = 0;

update migration.audit 
set update_ts = sysdate(),
export_success = true,
export_status = 'good'
where tgt_row_count = src_row_count;

commit;
