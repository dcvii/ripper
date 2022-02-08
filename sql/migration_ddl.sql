create schema if not exists migration;

create table if not exists migration.target_grants (
id    integer,
script varchar(500),
processed  boolean,
ts_run_date timestamp
);

create table if not exists migration.data_exports (
id    integer,
rowcnt	integer,
schema_nm	varchar(50),
table_nm	varchar(75),
script varchar(500),
processed  boolean,
ts_run_date timestamp
);


create table if not exists migration.target_grants_src (
id    integer,
script varchar(500)
);

CREATE TABLE if not exists migration.source_schemas
(
    table_schema varchar(128),
    table_name varchar(128),
    is_partitioned boolean,
    row_count int,
    partition_expression varchar(8192),
    export_type varchar(20)
);

truncate table migration.source_schemas;


-- Parquet Schemas

insert into migration.source_schemas
select 
 tables.table_schema,
 tables.table_name,
 is_partitioned,
 row_count,
 partition_expression,
 'PARQUET'::varchar(20) as export_type
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
	group by 
		table_schema, 
		table_name

	minus

	select
		distinct table_schema, table_name
	from 
		v_catalog.columns 
	where
		data_type in ('time', 'timetz', 'interval', 'row','set')
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

order by 1,4,3;

-- csv schemas

insert into migration.source_schemas

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
		data_type in ('time', 'timetz', 'interval','set','row')
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

order by 4,1,2,3;

CREATE TABLE if not exists migration.grants_src
(
    grant_order int,
    principal_name varchar(128),
    sql varchar(50000),
    object_type varchar(8192),
    object_name varchar(512)
);

truncate table migration.grants_src;
