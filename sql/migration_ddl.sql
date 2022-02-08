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


-- grant stuff

create table if not exists migration.grants_src as 


(
SELECT 0 as grant_order,
       name principal_name,
       'CREATE ROLE "' || name || '"' ||    ';' AS sql,
       'NONE' AS object_type,
       'NONE' AS object_name
  FROM v_internal.vs_roles vr
 WHERE NOT vr.predefined_role -- Exclude system roles
   AND ldapdn = ''            -- Limit to NON-LDAP created roles
)
UNION ALL
(
  SELECT 1, -- CREATE USERs
         user_name,
         'CREATE USER "' || user_name || '"' ||
         DECODE(is_locked, TRUE, ' ACCOUNT LOCK', '') ||
         DECODE(grace_period, 'undefined', '', ' GRACEPERIOD  ''' || grace_period || '''') ||
         DECODE(idle_session_timeout, 'unlimited', '', ' IDLESESSIONTIMEOUT ''' || idle_session_timeout || '''') ||
         DECODE(max_connections, 'unlimited', '', ' MAXCONNECTIONS ' || max_connections || ' ON ' || connection_limit_mode) ||
         DECODE(memory_cap_kb, 'unlimited', '', ' MEMORYCAP ''' || memory_cap_kb || 'K''') ||
         DECODE(profile_name, 'default', '', ' PROFILE ' || profile_name) ||
         DECODE(resource_pool, 'general', '', ' RESOURCE POOL ' || resource_pool) ||
         DECODE(run_time_cap, 'unlimited', '', ' RUNTIMECAP ''' || run_time_cap || '''') ||
         DECODE(search_path, '', '', ' SEARCH_PATH ' || search_path) ||
         DECODE(temp_space_cap_kb, 'unlimited', '', ' TEMPSPACECAP ''' || temp_space_cap_kb || 'K''') || ';' AS sql,
         'NONE' AS object_type,
         'NONE' AS object_name
    FROM v_catalog.users
   WHERE NOT is_super_user -- Exclude database superuser
     AND ldap_dn = ''      -- Limit to NON-LDAP created users
)
UNION ALL
(
  SELECT 2, -- GRANTs
         grantee,
         'GRANT ' || REPLACE(TRIM(BOTH ' ' FROM words), '*', '') ||
         CASE
           WHEN object_type = 'RESOURCEPOOL' THEN ' ON RESOURCE POOL '
           WHEN object_type = 'STORAGELOCATION' THEN ' ON LOCATION '
           WHEN object_type = 'CLIENTAUTHENTICATION' THEN 'AUTHENTICATION '
           WHEN object_type IN ('DATABASE', 'LIBRARY', 'MODEL', 'SEQUENCE', 'SCHEMA') THEN ' ON ' || object_type || ' '
           WHEN object_type = 'PROCEDURE' THEN (SELECT ' ON ' || CASE REPLACE(procedure_type, 'User Defined ', '')
                                                                   WHEN 'Transform' THEN 'TRANSFORM FUNCTION '
                                                                   WHEN 'Aggregate' THEN 'AGGREGATE FUNCTION '
                                                                   WHEN 'Analytic' THEN 'ANALYTIC FUNCTION '
                                                                   ELSE UPPER(REPLACE(procedure_type, 'User Defined ', '')) || ' '
                                                                 END
                                                  FROM vs_procedures
                                                 WHERE proc_oid = object_id)
           WHEN object_type = 'ROLE' THEN ''
           ELSE ' ON '
         END ||
         NVL2(object_schema, object_schema || '.', '') || CASE WHEN object_type = 'STORAGELOCATION' THEN (SELECT '''' || location_path || ''' ON ' || node_name FROM storage_locations WHERE location_id = object_id) ELSE object_name END ||
         CASE
           WHEN object_type = 'PROCEDURE' THEN (SELECT CASE WHEN procedure_argument_types = '' OR procedure_argument_types = 'Any' THEN '()' ELSE '(' || procedure_argument_types || ')' END
                                                  FROM vs_procedures
                                                 WHERE proc_oid = object_id)
           ELSE ''
         END ||
         ' TO ' || grantee ||
         CASE WHEN INSTR(words, '*') > 0 THEN ' WITH GRANT OPTION' ELSE '' END
         || ';',
         object_type,
         object_name
  FROM (SELECT grantee, object_type, object_schema, object_name, object_id,
                 v_txtindex.StringTokenizerDelim(DECODE(privileges_description, '', ',' , privileges_description), ',')
                   OVER (PARTITION BY grantee, object_type, object_schema, object_name, object_id)
          FROM v_catalog.grants) foo
 ORDER BY CASE REPLACE(TRIM(BOTH ' ' FROM words), '*', '') WHEN 'USAGE' THEN 1 ELSE 2 END
)
UNION ALL
(
  SELECT 3, -- Default ROLEs
         user_name,
         'ALTER USER "' || user_name || '"' ||
           DECODE(default_roles, '', '', ' DEFAULT ROLE ' || REPLACE(default_roles, '*', ''))  || ';' ,
         'NONE' AS object_type,
         'NONE' AS object_name
    FROM v_catalog.users
   WHERE default_roles <> ''
)
UNION ALL -- GRANTs WITH ADMIN OPTION
(
  SELECT 4, user_name, 'GRANT ' || REPLACE(TRIM(BOTH ' ' FROM words), '*', '') || ' TO ' || user_name || ' WITH ADMIN OPTION;',
         'NONE' AS object_type ,
         'NONE' AS object_name
    FROM (SELECT user_name, v_txtindex.StringTokenizerDelim(DECODE(all_roles, '', ',', all_roles), ',') OVER (PARTITION BY user_name)
            FROM v_catalog.users
           WHERE all_roles <> '') foo
   WHERE INSTR(words, '*') > 0
)
UNION ALL
(
  SELECT 5, 'public', 'ALTER SCHEMA ' || name || ' DEFAULT ' || CASE WHEN defaultinheritprivileges THEN 'INCLUDE PRIVILEGES;' ELSE 'EXCLUDE PRIVILEGES;' END, 'SCHEMA', name
    FROM v_internal.vs_schemata
   WHERE NOT issys -- Exclude system schemas
)
UNION ALL
(
  SELECT 6, 'public', 'ALTER DATABASE ' || database_name ||  ' SET disableinheritedprivileges = ' || current_value || ';',
         'DATABASE', database_name
    FROM v_internal.vs_configuration_parameters
   CROSS JOIN v_catalog.databases
   WHERE parameter_name = 'DisableInheritedPrivileges'
)
UNION ALL -- TABLE PRIV INHERITENCE
(
  SELECT 7, 'public' , 'ALTER TABLE ' || table_schema || '.' || table_name ||
         CASE WHEN inheritprivileges THEN ' INCLUDE PRIVILEGES;' ELSE ' EXCLUDE PRIVILEGES;' END,
         'TABLE' AS object_type,
         table_schema || '.' || table_name AS object_name
    FROM v_internal.vs_tables
    JOIN v_catalog.tables ON (table_id = oid)
)
UNION ALL -- VIEW PRIV INHERITENCE
(
  SELECT 8, 'public', 'ALTER VIEW ' || table_schema || '.' || table_name || CASE WHEN inherit_privileges THEN ' INCLUDE PRIVILEGES;' ELSE ' EXCLUDE PRIVILEGES; ' END,
         'TABLE' AS object_type, table_schema || '.' || table_name AS object_name
    FROM v_catalog.views
)
UNION ALL
(
  SELECT 9, owner_name, 'ALTER TABLE ' || table_schema || '.' || table_name || ' OWNER TO ' || owner_name || ';',
         'TABLE', table_schema || '.' || table_name
    FROM v_catalog.tables
)
UNION ALL
(
  SELECT 10, owner_name, 'ALTER VIEW ' || table_schema || '.' || table_name || ' OWNER TO ' || owner_name || ';', 'TABLE',
         table_schema || '.' || table_name
    FROM v_catalog.views
);




