SELECT 'CREATE ACCESS POLICY ON ' || table_name ||
         DECODE(policy_type, 'Column Policy', ' FOR COLUMN ' || column_name || ' ', ' FOR ROWS WHERE ') ||
         expression || 
      
         DECODE(is_policy_enabled, 'Enabled', ' ENABLE', ' DISABLE')|| ';'
  FROM access_policy
 ORDER BY 1; 
