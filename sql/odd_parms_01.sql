insert into migration.odd_parms_src
SELECT 1,
	'ALTER DATABASE DEFAULT SET ' || parameter_name || ' = ''' || current_value || '''' || ';' ,
	'Database Parms',	null
	FROM configuration_parameters WHERE current_value <> default_value AND restart_level = 'DATABASE' ORDER BY 2
	;
