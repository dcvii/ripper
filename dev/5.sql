  select a.table_schema, a."table_name", a.src_row_count, a.tgt_row_count, crc."row_count" as current from migration.audit a 
  join migration.current_row_counts as crc 
  on (a.table_schema = crc.table_schema and a.table_name = crc.table_name and a.tgt_row_count <> crc."row_count")
  where a.table_schema = 'cleansed';

  