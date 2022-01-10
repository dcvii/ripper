create RESOURCE_POOL large_pool MEMORYSIZE 50G RUNTIMECAP '15 minutes'; 
create RESOURCE_POOL small_pool MEMORYSIZE 20G RUNTIMECAP '3 minutes' cascade to large_pool;


