-- alter resource pools step three



insert into migration.odd_parms_src   
SELECT 6, 'ALTER RESOURCE POOL ' || name || ' FOR SUBCLUSTER ' || subcluster_name ||
         DECODE(memorysize, '', '', ' MEMORYSIZE ''' || memorysize || '''') ||
         DECODE(maxmemorysize, '', '', ' MAXMEMORYSIZE ''' || maxmemorysize || '''') ||
         DECODE(maxquerymemorysize, '', '', ' MAXQUERYMEMORYSIZE ''' || maxquerymemorysize || '''') || ';',
		 'Resource Pools', null
    FROM subcluster_resource_pool_overrides
;
