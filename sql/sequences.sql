select 
'CREATE SEQUENCE IF NOT EXISTS '||sequence_schema||'.'||sequence_name||' START WITH '||current_value||';' as cmd
from sequences where identity_table_name is null

union all

select 
'ALTER SEQUENCE IF EXISTS '||sequence_schema||'.'||sequence_name||' OWNER '||owner_name||';' as cmd
from sequences where identity_table_name is null ;