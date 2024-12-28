-- modify resource pools

insert into migration.odd_parms_src 
SELECT 4, 'ALTER RESOURCE pool ' || name || ' CASCADE TO ' || cascadeto || ';',
'Resource Pools', null
  FROM resource_pools
WHERE NOT is_internal
   AND cascadeto IS NOT NULL
ORDER BY 2;
