insert into migration.odd_parms_src
-- SELECT 2,'CREATE ACCESS POLICY ON ' || table_name ||
--          DECODE(policy_type, 'Column Policy', ' FOR COLUMN ' || column_name || ' ', ' FOR ROWS WHERE ') ||
--          expression || 
--          DECODE(trust_grants, true, ' GRANT TRUSTED ', '') ||
--          DECODE(is_policy_enabled, 'Enabled', ' ENABLE', ' DISABLE')|| ';', 'Access Policy', null
--   FROM access_policy
--  ORDER BY 2; 


SELECT 2,'CREATE ACCESS POLICY ON ' || table_name ||
         DECODE(policy_type, 'Column Policy', ' FOR COLUMN ' || column_name || ' ', ' FOR ROWS WHERE GRANT TRUSTED') ||
         expression ||  DECODE(is_policy_enabled, 'Enabled', ' ENABLE', ' DISABLE')|| ';', 'Access Policy', null
  FROM access_policy
 ORDER BY 2; 