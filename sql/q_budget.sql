select rp.name,(query_budget_kb/1024)::int query_budget_MB,memorysize,maxmemorysize,plannedconcurrency,
execution_parallelism,max_concurrency,queuetimeout,runtimecap,rp.cascadeto,rp.is_internal,count(*)
from resource_pool_status rps
join resource_pools rp on (rp.name=rps.pool_name)
where not rp.is_internal or rp.name='general'
group by 1,2,3,4,5,6,7,8,9,10,11 order by 11,1;