select
		distinct table_schema
	from 
		v_catalog.columns
		where table_schema not like 'v_%'
		order by 1;
	
