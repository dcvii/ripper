SELECT 'ALTER DATABASE DEFAULT SET ' || parameter_name || ' = ''' || current_value || '''' || ';' sql FROM configuration_parameters WHERE current_value <> default_value AND restart_level = 'DATABASE' ORDER BY 1;

