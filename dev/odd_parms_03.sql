
-- resource Pools

insert into migration.odd_parms_src 
SELECT 3, 'CREATE RESOURCE POOL ' || name ||
         NVL2(subcluster_name, ' FOR SUBCLUSTER ' || subcluster_name, '') ||
         DECODE(memorysize, '', '', ' MEMORYSIZE ''' || memorysize || '''') ||
         DECODE(maxmemorysize, '', '', ' MAXMEMORYSIZE ''' || maxmemorysize || '''') ||
         DECODE(maxquerymemorysize, '', '', ' MAXQUERYMEMORYSIZE ''' || maxquerymemorysize || '''') ||
         ' EXECUTIONPARALLELISM ' || executionparallelism ||
         ' PRIORITY ' || priority ||
         ' RUNTIMEPRIORITY ' || runtimepriority ||
         ' RUNTIMEPRIORITYTHRESHOLD ' || runtimeprioritythreshold ||
         ' QUEUETIMEOUT ''' || queuetimeout || '''' || 
         ' PLANNEDCONCURRENCY ' || plannedconcurrency || 
         NVL2(maxconcurrency, ' MAXCONCURRENCY ' || maxconcurrency, '') ||
         NVL2(runtimecap, ' RUNTIMECAP ''' || runtimecap || '''', '') ||
         DECODE(cpuaffinityset, '', '', ' CPUAFFINITYSET ''' || cpuaffinityset || '''') ||
         ' CPUAFFINITYMODE ' || cpuaffinitymode || ';',
		 'Resource Pools', null
    FROM resource_pools
   WHERE NOT is_internal
   ORDER BY 2;