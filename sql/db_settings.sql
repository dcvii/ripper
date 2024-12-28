-- alter database non-default settinhs
select
'ALTER DATABASE DEFAULT SET ' || parameter_name || ' = ' || current_value || ';' as cmd
 FROM configuration_parameters 
 WHERE current_value <> default_value 
    AND restart_level = 'DATABASE'
    AND parameter_name != 'DefaultIdleSessionTimeout'  -- note that default value doesn't exist for this parameter
 ORDER BY 1;