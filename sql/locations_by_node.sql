SELECT DISTINCT 'CREATE LOCATION ''' || location_path || ''' NODE ''' || node_name || '''' || DECODE(sharing_type, 'SHARED', ' SHARED', '') || ' USAGE ''USER'' LABEL ''' || location_label || ''';' FROM storage_locations WHERE location_usage = 'USER' AND NOT is_retired ORDER BY 1;

