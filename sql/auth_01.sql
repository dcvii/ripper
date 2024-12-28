SELECT 'CREATE AUTHENTICATION ' || auth_name || ' METHOD ''' || auth_method || '''' ||
 CASE WHEN auth_host_type = 'HOSTSSL' THEN ' HOST TLS' WHEN auth_host_type = 'HOSTNOSSL' THEN ' HOST NO TLS' ELSE ' ' || auth_host_type END ||
 DECODE(auth_host_address, '', '', ' ''' || auth_host_address || '''') || ';' 
FROM client_auth /*+ Create the Authentication Records */
UNION ALL
SELECT 'ALTER AUTHENTICATION ' || auth_name || ' PRIORITY ' || auth_priority || ';'
 FROM client_auth /*+ Set Priority for each Authentication Record */ 
UNION ALL
SELECT 'ALTER AUTHENTICATION ' || auth_name || CASE WHEN is_auth_enabled::VARCHAR = 'True' THEN ' ENABLE' ELSE ' DISABLE' END || ';'
 FROM client_auth /*+ Enable/Disable Authentication Records */
UNION ALL
SELECT 'ALTER AUTHENTICATION ' || auth_name || ' SET ' || auth_parameter_name || ' = ''' || auth_parameter_value || ''';'
 FROM client_auth_params /*+ Set Parameters for Authentication Records */
WHERE auth_parameter_name <> ''; 




