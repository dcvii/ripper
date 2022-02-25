-- alter database non-default settinhs
insert into migration.odd_parms_src
SELECT 10,
 'ALTER DATABASE DEFAULT SET ' || parameter_name || ' = ''' || current_value || '''' || ';' sql ,
 'Database Settings', null
 FROM configuration_parameters WHERE current_value <> default_value AND restart_level = 'DATABASE' ORDER BY 2;

