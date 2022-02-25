-- rpalter

insert into migration.odd_parms_src 
SELECT 5, 'ALTER RESOURCE POOL ' || rp.name ||
         DECODE(NVL2(rp.memorysize,rp.memorysize,''), NVL2(rpd.memorysize,rpd.memorysize,''), '', ' MEMORYSIZE ''' || rp.memorysize || '''') ||
         DECODE(NVL2(rp.maxmemorysize,rp.maxmemorysize,''), NVL2(rpd.maxmemorysize,rpd.maxmemorysize,''), '', ' MAXMEMORYSIZE ''' || rp.maxmemorysize || '''') ||
         DECODE(NVL2(rp.maxquerymemorysize,rp.maxquerymemorysize,''), NVL2(rpd.maxquerymemorysize,rpd.maxquerymemorysize,''), '', ' MAXQUERYMEMORYSIZE ''' || rp.maxquerymemorysize || '''') ||
         DECODE(NVL2(rp.executionparallelism,rp.executionparallelism,''), NVL2(rpd.executionparallelism,rpd.executionparallelism,''), '', ' EXECUTIONPARALLELISM ' || rp.executionparallelism) ||
         DECODE(rp.priority, rpd.priority, '', ' PRIORITY ' || rp.priority) ||
         DECODE(NVL2(rp.runtimepriority,rp.runtimepriority,''), NVL2(rpd.runtimepriority,rpd.runtimepriority,''), '', ' RUNTIMEPRIORITY ' || rp.runtimepriority) ||
         DECODE(rp.runtimeprioritythreshold, rpd.runtimeprioritythreshold, '', ' RUNTIMEPRIORITYTHRESHOLD ' || rp.runtimeprioritythreshold) ||
         DECODE(rp.queuetimeout, rpd.queuetimeout, '', ' QUEUETIMEOUT ' || rp.queuetimeout) ||
         DECODE(NVL2(rp.plannedconcurrency,rp.plannedconcurrency,''), NVL2(rpd.plannedconcurrency,rpd.plannedconcurrency,''), '', ' PLANNEDCONCURRENCY ' || rp.plannedconcurrency) ||
         DECODE(rp.maxconcurrency, rpd.maxconcurrency, '', ' MAXCONCURRENCY ''' || rp.maxconcurrency || '''') ||
         DECODE(rp.runtimecap, rpd.runtimecap, '', ' RUNTIMECAP ''' || rp.runtimecap || '''') ||
         DECODE(NVL2(rp.cpuaffinityset,rp.cpuaffinityset,''), NVL2(rpd.cpuaffinityset,rpd.cpuaffinityset,''), '', ' CPUAFFINITYSET ''' || rp.cpuaffinityset || '''') ||
         DECODE(NVL2(rp.cpuaffinitymode,rp.cpuaffinitymode,''), NVL2(rpd.cpuaffinitymode,rpd.cpuaffinitymode,''), '', ' CPUAFFINITYMODE ' || rp.cpuaffinitymode) || ';', 
		 'Resource Pools', null
    FROM resource_pools rp
    join resource_pool_defaults rpd
      on rp.pool_id = rpd.pool_id
     and rp.is_internal
     and rp.name <> 'metadata'
   WHERE NOT (
         NVL2(rp.memorysize,rp.memorysize,'') = NVL2(rpd.memorysize,rpd.memorysize,'')
     AND NVL2(rp.maxmemorysize,rp.maxmemorysize,'') = NVL2(rpd.maxmemorysize,rpd.maxmemorysize,'')
     AND NVL2(rp.maxquerymemorysize,rp.maxquerymemorysize,'') = NVL2(rpd.maxquerymemorysize,rpd.maxquerymemorysize,'')
     AND NVL2(rp.executionparallelism,rp.executionparallelism,'') = NVL2(rpd.executionparallelism,rpd.executionparallelism,'')
     AND rp.priority <=> rpd.priority
     AND NVL2(rp.runtimepriority,rp.runtimepriority,'') = NVL2(rpd.runtimepriority,rpd.runtimepriority,'')
     AND rp.runtimeprioritythreshold <=> rpd.runtimeprioritythreshold
     AND rp.queuetimeout <=> rpd.queuetimeout
     AND NVL2(rp.plannedconcurrency,rp.plannedconcurrency,'') = NVL2(rpd.plannedconcurrency,rpd.plannedconcurrency,'')
     AND rp.maxconcurrency <=> rpd.maxconcurrency
     AND rp.runtimecap <=> rpd.runtimecap
     AND NVL2(rp.cpuaffinityset,rp.cpuaffinityset,'') = NVL2(rpd.cpuaffinityset,rpd.cpuaffinityset,'')
     AND NVL2(rp.cpuaffinitymode,rp.cpuaffinitymode,'') = NVL2(rpd.cpuaffinitymode,rpd.cpuaffinitymode,'') )
   ORDER BY 2;