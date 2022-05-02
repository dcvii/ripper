create schema if not exists migration;

create table if not exists migration.target_grants (
id    integer,
script varchar(500),
processed  boolean,
ts_run_date timestamp
);

-- create table if not exists migration.data_exports (
-- id    integer,
-- rowcnt	integer,
-- schema_nm	varchar(50),
-- table_nm	varchar(75),
-- script varchar(500),
-- processed  boolean,
-- ts_run_date timestamp
-- );


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
    export_type varchar(20),
    audit_phase_name varchar(50),
    audit_init_epoch int,
    audit_init_ts timestamp,
    update_ts timestamp
);

truncate table migration.source_schemas;


-- Parquet Schemas


-- all schemas to csv

insert into migration.source_schemas

select 
 tables.table_schema,
 tables.table_name,
 is_partitioned,
 row_count,
 partition_expression,
'CSV'::varchar(20) as export_type,
null::varchar(50) as audit_phase_name,
null::int as audit_init_epoch,
null::timestamp as audit_init_ts,
now()::timestamp as update_ts
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

create or replace view migration.grants

as select "sql" from migration.grants_src
order by grant_order, principal_name asc;



-- dbparms & other odd objects

-- CREATE TABLE if not exists migration.odd_parms_src
-- (
--     grant_order int,
--     sql varchar(50000),
--     object_type varchar(8192),
--     object_name varchar(512)
-- );

-- create or replace view migration.odd_parms_vw
-- as select sql from migration.odd_parms_src
-- order by grant_order asc;


-- truncate table migration.odd_parms_src;


-- ### audit stuff

CREATE TABLE if not exists migration.audit
(
    table_schema varchar(128),
    table_name varchar(128),
    src_row_count int,
    tgt_row_count int,
    audit_phase_name varchar(50),
    audit_init_ts timestamp,
    audit_init_epoch int,
    export_type varchar(20),
    export_status varchar(25),
    export_success boolean,
    export_ts timestamp,
    update_ts timestamp

);

create or replace view migration.updated_source_schemas as
select table_schema, table_name, row_count, audit_init_epoch, audit_init_ts from migration.source_schemas
where  ((select last_good_epoch from system) - audit_init_epoch < 20000 );


create or replace view migration.current_row_counts as

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

