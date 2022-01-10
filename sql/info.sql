
select 
	*
from 
(
select 
	transaction_id, 
	statement_id, 
	sum(counter_value) rows_produced
  from execution_engine_profiles
   where counter_name   = 'rows produced'
   and operator_name in ('StorageUnion')
   group by 1,2
) A natural join
(
select 
	transaction_id, 
	statement_id, 
	now()-transaction_start duration,
	current_statement
  from sessions
 where 
	current_statement like 'EXPORT TO PARQUET%' OR 
	current_statement like 'EXPORT TO DELIMITED%' OR 
	current_statement like 'SELECT s3export(%'
) B;



select 
	schema_name, 
	table_name, 
	now() - load_start::timestamptz duration,
	accepted_row_count, 
	rejected_row_count, 
	parse_complete_percent, 
	sort_complete_percent
  from load_streams
 where is_executing;

