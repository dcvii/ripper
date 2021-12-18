select 
 tables.table_schema,
 tables.table_name,
 is_partitioned,
 row_count,
 partition_expression,
'CSV'::varchar(20) as export_type
from
(
	select 
		table_schema,
		table_name,
		partition_expression,
		table_definition,
		length(partition_expression)>0 is_partitioned  

	from 
		v_catalog.tables 
	where 
		length(table_definition) = 0 -- skip external tables
		and not is_system_table      -- not system table
		and not is_temp_table        -- not temp table
) tables 
natural join
( 
	select
		distinct table_schema, table_name
	from 
		v_catalog.columns 
	where
		data_type in ('time', 'timetz', 'interval')
		OR
	        numeric_precision > 38
	group by 
		table_schema, 
		table_name
	

	
) col_types 
natural join
(
SELECT 
	table_schema,
	table_name,
        NVL(CASE WHEN NOT is_segmented THEN (row_count / node_cnt)::INT ELSE row_count END, 0) row_count
FROM (SELECT t.table_schema,
                       t.table_name,
                       ps.projection_name,
                       (SELECT MIN(is_segmented)
                          FROM projections p
                         WHERE p.projection_name = ps.projection_name
                           AND p.projection_schema = ps.anchor_table_schema) is_segmented,
                       node_cnt,
                       SUM(ps.row_count - NVL(dv.deleted_row_count, 0)) row_count
                  FROM v_catalog.tables t
                  LEFT JOIN projection_storage ps
                    ON t.table_id = ps.anchor_table_id
                  LEFT JOIN delete_vectors dv
                    ON dv.node_name = ps.node_name
                   AND dv.schema_name = ps.anchor_table_schema
                   AND dv.projection_name = ps.projection_name
                 CROSS JOIN (SELECT COUNT(1) node_cnt FROM nodes WHERE node_type = 'PERMANENT') n
                 GROUP BY 1, 2, 3, 4, 5
                 LIMIT 1 OVER(PARTITION BY t.table_schema, t.table_name ORDER BY 1)) foo
) row_count
WHERE row_count > 0

order by 4,1,2,3
