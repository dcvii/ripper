CREATE SCHEMA migration;


CREATE TABLE migration.target_grants
(
    id int,
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);


CREATE TABLE migration.target_grants_src
(
    id int,
    script varchar(500)
);


CREATE TABLE migration.source_schemas
(
    table_schema varchar(128),
    table_name varchar(128),
    is_partitioned boolean,
    row_count int,
    partition_expression varchar(8192),
    export_type varchar(20)
);


CREATE TABLE migration.data_exports
(
    id int,
    rowcnt int,
    schema_nm varchar(50),
    table_nm varchar(75),
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);


CREATE TABLE migration.odd_parms_src
(
    grant_order int,
    sql varchar(50000),
    object_type varchar(8192),
    object_name varchar(512)
);


CREATE TABLE migration.grants_src
(
    grant_order int,
    principal_name varchar(128),
    sql varchar(50000),
    object_type varchar(8192),
    object_name varchar(512)
);


CREATE TABLE migration.user_src
(
    grant_order int,
    principal_name varchar(128),
    sql varchar(33195),
    object_type varchar(8192),
    object_name varchar(257)
);


CREATE TABLE migration.users_only_src
(
    grant_order int,
    principal_name varchar(128),
    sql varchar(33195),
    object_type varchar(8192),
    object_name varchar(257)
);


CREATE  VIEW migration.grants AS
 SELECT grants_src.sql
 FROM migration.grants_src
 ORDER BY grants_src.grant_order,
          grants_src.principal_name;

CREATE  VIEW migration.odd_parms_vw AS
 SELECT odd_parms_src.sql
 FROM migration.odd_parms_src
 ORDER BY odd_parms_src.grant_order;

CREATE  VIEW migration.users_only_vw AS
((( SELECT 0 AS grant_order,
        vr.name AS principal_name,
        ((('CREATE ROLE "'::varchar(13) || vr.name) || '"'::varchar(1)) || ';'::varchar(1)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM v_internal.vs_roles vr
 WHERE ((NOT vr.predefined_role) AND (vr.ldapdn = ''::varchar)) UNION ALL  SELECT 1 AS grant_order,
        users.user_name AS principal_name,
        (((((((((((('CREATE USER "'::varchar(13) || users.user_name) || '"'::varchar(1)) || CASE users.is_locked WHEN NULLSEQUAL true THEN ' ACCOUNT LOCK'::varchar(13) ELSE ''::varchar END) || CASE users.grace_period WHEN NULLSEQUAL 'undefined'::varchar(9) THEN ''::varchar ELSE ((' GRACEPERIOD  '''::varchar(15) || users.grace_period) || ''''::varchar(1)) END) || CASE users.idle_session_timeout WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' IDLESESSIONTIMEOUT '''::varchar(21) || users.idle_session_timeout) || ''''::varchar(1)) END) || CASE users.max_connections WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE (((' MAXCONNECTIONS '::varchar(16) || users.max_connections) || ' ON '::varchar(4)) || users.connection_limit_mode) END) || CASE users.memory_cap_kb WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' MEMORYCAP '''::varchar(12) || users.memory_cap_kb) || 'K'''::varchar(2)) END) || CASE users.resource_pool WHEN NULLSEQUAL 'general'::varchar(7) THEN ''::varchar ELSE (' RESOURCE POOL '::varchar(15) || users.resource_pool) END) || CASE users.run_time_cap WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' RUNTIMECAP '''::varchar(13) || users.run_time_cap) || ''''::varchar(1)) END) || CASE users.search_path WHEN NULLSEQUAL ''::varchar THEN ''::varchar ELSE (' SEARCH_PATH '::varchar(13) || users.search_path) END) || CASE users.temp_space_cap_kb WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' TEMPSPACECAP '''::varchar(15) || users.temp_space_cap_kb) || 'K'''::varchar(2)) END) || ';'::varchar(1)) AS sql,
        foo.object_type,
        foo.object_name
 FROM ( SELECT grants.grantee,
        grants.object_type,
        grants.object_schema,
        grants.object_name,
        grants.object_id,
        v_txtindex.StringTokenizerDelim(CASE grants.privileges_description WHEN NULLSEQUAL ''::varchar THEN ','::varchar(1) ELSE grants.privileges_description END, ','::varchar(1)) OVER (PARTITION BY grants.grantee, grants.object_type, grants.object_schema, grants.object_name, grants.object_id) AS ( words )
 FROM v_catalog.grants) foo
 ORDER BY CASE replace(btrim(foo.words, ' '::varchar(1)), '*'::varchar(1), ''::varchar) WHEN 'USAGE'::varchar(5) THEN 1 ELSE 2 END)) UNION ALL  SELECT 3 AS grant_order,
        users.user_name AS principal_name,
        (((('ALTER USER "'::varchar(12) || users.user_name) || '"'::varchar(1)) || CASE users.default_roles WHEN NULLSEQUAL ''::varchar THEN ''::varchar ELSE (' DEFAULT ROLE '::varchar(14) || replace(users.default_roles, '*'::varchar(1), ''::varchar)) END) || ';'::varchar(1)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM v_catalog.users
 WHERE (users.default_roles <> ''::varchar)) UNION ALL  SELECT 4 AS grant_order,
        foo.user_name AS principal_name,
        (((('GRANT '::varchar(6) || replace(btrim(foo.words, ' '::varchar(1)), '*'::varchar(1), ''::varchar)) || ' TO '::varchar(4)) || foo.user_name) || ' WITH ADMIN OPTION;'::varchar(19)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM ( SELECT users.user_name,
        v_txtindex.StringTokenizerDelim(CASE users.all_roles WHEN NULLSEQUAL ''::varchar THEN ','::varchar(1) ELSE users.all_roles END, ','::varchar(1)) OVER (PARTITION BY users.user_name) AS ( words )
 FROM v_catalog.users
 WHERE (users.all_roles <> ''::varchar)) foo
 WHERE (instr(foo.words, '*'::varchar(1), 1, 1) > 0);

CREATE  VIEW migration.user_ddl AS
((((((((( SELECT 0 AS grant_order,
        vr.name AS principal_name,
        ((('CREATE ROLE "'::varchar(13) || vr.name) || '"'::varchar(1)) || ';'::varchar(1)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM v_internal.vs_roles vr
 WHERE ((NOT vr.predefined_role) AND (vr.ldapdn = ''::varchar)) UNION ALL  SELECT 1 AS grant_order,
        users.user_name AS principal_name,
        (((((((((((('CREATE USER "'::varchar(13) || users.user_name) || '"'::varchar(1)) || CASE users.is_locked WHEN NULLSEQUAL true THEN ' ACCOUNT LOCK'::varchar(13) ELSE ''::varchar END) || CASE users.grace_period WHEN NULLSEQUAL 'undefined'::varchar(9) THEN ''::varchar ELSE ((' GRACEPERIOD  '''::varchar(15) || users.grace_period) || ''''::varchar(1)) END) || CASE users.idle_session_timeout WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' IDLESESSIONTIMEOUT '''::varchar(21) || users.idle_session_timeout) || ''''::varchar(1)) END) || CASE users.max_connections WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE (((' MAXCONNECTIONS '::varchar(16) || users.max_connections) || ' ON '::varchar(4)) || users.connection_limit_mode) END) || CASE users.memory_cap_kb WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' MEMORYCAP '''::varchar(12) || users.memory_cap_kb) || 'K'''::varchar(2)) END) || CASE users.resource_pool WHEN NULLSEQUAL 'general'::varchar(7) THEN ''::varchar ELSE (' RESOURCE POOL '::varchar(15) || users.resource_pool) END) || CASE users.run_time_cap WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' RUNTIMECAP '''::varchar(13) || users.run_time_cap) || ''''::varchar(1)) END) || CASE users.search_path WHEN NULLSEQUAL ''::varchar THEN ''::varchar ELSE (' SEARCH_PATH '::varchar(13) || users.search_path) END) || CASE users.temp_space_cap_kb WHEN NULLSEQUAL 'unlimited'::varchar(9) THEN ''::varchar ELSE ((' TEMPSPACECAP '''::varchar(15) || users.temp_space_cap_kb) || 'K'''::varchar(2)) END) || ';'::varchar(1)) AS sql,
        foo.object_type,
        foo.object_name
 FROM ( SELECT grants.grantee,
        grants.object_type,
        grants.object_schema,
        grants.object_name,
        grants.object_id,
        v_txtindex.StringTokenizerDelim(CASE grants.privileges_description WHEN NULLSEQUAL ''::varchar THEN ','::varchar(1) ELSE grants.privileges_description END, ','::varchar(1)) OVER (PARTITION BY grants.grantee, grants.object_type, grants.object_schema, grants.object_name, grants.object_id) AS ( words )
 FROM v_catalog.grants) foo
 ORDER BY CASE replace(btrim(foo.words, ' '::varchar(1)), '*'::varchar(1), ''::varchar) WHEN 'USAGE'::varchar(5) THEN 1 ELSE 2 END)) UNION ALL  SELECT 3 AS grant_order,
        users.user_name AS principal_name,
        (((('ALTER USER "'::varchar(12) || users.user_name) || '"'::varchar(1)) || CASE users.default_roles WHEN NULLSEQUAL ''::varchar THEN ''::varchar ELSE (' DEFAULT ROLE '::varchar(14) || replace(users.default_roles, '*'::varchar(1), ''::varchar)) END) || ';'::varchar(1)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM v_catalog.users
 WHERE (users.default_roles <> ''::varchar)) UNION ALL  SELECT 4 AS grant_order,
        foo.user_name AS principal_name,
        (((('GRANT '::varchar(6) || replace(btrim(foo.words, ' '::varchar(1)), '*'::varchar(1), ''::varchar)) || ' TO '::varchar(4)) || foo.user_name) || ' WITH ADMIN OPTION;'::varchar(19)) AS sql,
        'NONE'::varchar(4) AS object_type,
        'NONE'::varchar(4) AS object_name
 FROM ( SELECT users.user_name,
        v_txtindex.StringTokenizerDelim(CASE users.all_roles WHEN NULLSEQUAL ''::varchar THEN ','::varchar(1) ELSE users.all_roles END, ','::varchar(1)) OVER (PARTITION BY users.user_name) AS ( words )
 FROM v_catalog.users
 WHERE (users.all_roles <> ''::varchar)) foo
 WHERE (instr(foo.words, '*'::varchar(1), 1, 1) > 0)) UNION ALL  SELECT 5 AS grant_order,
        'public'::varchar(6) AS principal_name,
        ((('ALTER SCHEMA '::varchar(13) || vs_schemata.name) || ' DEFAULT '::varchar(9)) || CASE WHEN vs_schemata.defaultinheritprivileges THEN 'INCLUDE PRIVILEGES;'::varchar(19) ELSE 'EXCLUDE PRIVILEGES;'::varchar(19) END) AS sql,
        'SCHEMA'::varchar(6) AS object_type,
        vs_schemata.name AS object_name
 FROM v_internal.vs_schemata
 WHERE (NOT vs_schemata.issys)) UNION ALL  SELECT 6 AS grant_order,
        'public'::varchar(6) AS principal_name,
        (((('ALTER DATABASE '::varchar(15) || databases.database_name) || ' SET disableinheritedprivileges = '::varchar(34)) || vs_configuration_parameters.current_value) || ';'::varchar(1)) AS sql,
        'DATABASE'::varchar(8) AS object_type,
        databases.database_name AS object_name
 FROM (v_internal.vs_configuration_parameters CROSS  JOIN v_catalog.databases)
 WHERE (vs_configuration_parameters.parameter_name = 'DisableInheritedPrivileges'::varchar(26))) UNION ALL  SELECT 7 AS grant_order,
        'public'::varchar(6) AS principal_name,
        (((('ALTER TABLE '::varchar(12) || tables.table_schema) || '.'::varchar(1)) || tables.table_name) || CASE WHEN vs_tables.inheritprivileges THEN ' INCLUDE PRIVILEGES;'::varchar(20) ELSE ' EXCLUDE PRIVILEGES;'::varchar(20) END) AS sql,
        'TABLE'::varchar(5) AS object_type,
        ((tables.table_schema || '.'::varchar(1)) || tables.table_name) AS object_name
 FROM (v_internal.vs_tables JOIN v_catalog.tables ON ((tables.table_id = vs_tables.oid)))) UNION ALL  SELECT 8 AS grant_order,
        'public'::varchar(6) AS principal_name,
        (((('ALTER VIEW '::varchar(11) || views.table_schema) || '.'::varchar(1)) || views.table_name) || CASE WHEN views.inherit_privileges THEN ' INCLUDE PRIVILEGES;'::varchar(20) ELSE ' EXCLUDE PRIVILEGES; '::varchar(21) END) AS sql,
        'TABLE'::varchar(5) AS object_type,
        ((views.table_schema || '.'::varchar(1)) || views.table_name) AS object_name
 FROM v_catalog.views) UNION ALL  SELECT 9 AS grant_order,
        tables.owner_name AS principal_name,
        (((((('ALTER TABLE '::varchar(12) || tables.table_schema) || '.'::varchar(1)) || tables.table_name) || ' OWNER TO '::varchar(10)) || tables.owner_name) || ';'::varchar(1)) AS sql,
        'TABLE'::varchar(5) AS object_type,
        ((tables.table_schema || '.'::varchar(1)) || tables.table_name) AS object_name
 FROM v_catalog.tables) UNION ALL  SELECT 10 AS grant_order,
        views.owner_name AS principal_name,
        (((((('ALTER VIEW '::varchar(11) || views.table_schema) || '.'::varchar(1)) || views.table_name) || ' OWNER TO '::varchar(10)) || views.owner_name) || ';'::varchar(1)) AS sql,
        'TABLE'::varchar(5) AS object_type,
        ((views.table_schema || '.'::varchar(1)) || views.table_name) AS object_name
 FROM v_catalog.views;