SELECT 'ALTER DATABASE DEFAULT SET ' || parameter_name || ' = ''' || current_value || ''';' FROM vs_configuration_parameters WHERE parameter_name ILIKE '%ldap%';


