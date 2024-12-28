-- user ddl 

CREATE OR REPLACE VIEW migration.users_only_vw AS
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

