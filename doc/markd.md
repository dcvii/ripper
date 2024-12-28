```
     name      | is_internal | query_budget_MB | memorysize | maxmemorysize | plannedconcurrency | execution_parallelism | max_concurrency | queuetimeout | runtimecap | cascadeto  | priority | assigned_users | query_cnt |             since             | count
---------------+-------------+-----------------+------------+---------------+--------------------+-----------------------+-----------------+--------------+------------+------------+----------+----------------+-----------+-------------------------------+-------
diuser_pool   | f           |            3644 | 0%         | 50%           | AUTO               | AUTO                  |                 | 00:05        |            |            |        0 |                |         0 | 2022-03-22 09:30:29.684324-04 |     4
large_pool    | f           |             874 | 20G        |               | AUTO               | AUTO                  |                 | 00:05        | 00:15      |            |        0 |                |         0 | 2022-03-22 09:30:29.684324-04 |     4
small_pool    | f           |             437 | 10G        |               | AUTO               | AUTO                  |                 | 00:05        | 00:03      | large_pool |        0 |                |         0 | 2022-03-22 09:30:29.684324-04 |     4
tevauser_pool | f           |            5466 | 0%         | 75%           | AUTO               | AUTO                  |                 | 00:05        |            |            |        0 |                |         0 | 2022-03-22 09:30:29.684324-04 |     4
 
select get_config_parameter('AnalyzeRowCountInterval');
select get_config_parameter('CascadeResourcePoolAlwaysReplan');
select set_config_parameter('AnalyzeRowCountInterval', 43200); 
select set_config_parameter('CascadeResourcePoolAlwaysReplan', 1);
grant usage on resource pool small_pool to public;
alter resource pool small_pool MEMORYSIZE '1G' PLANNEDCONCURRENCY 1 RUNTIMECAP '1 sec' MAXCONCURRENCY 50;
-- alter resource pool small_pool MEMORYSIZE '10G' PLANNEDCONCURRENCY AUTO RUNTIMECAP '3 min' MAXCONCURRENCY NONE;
alter resource pool large_pool MEMORYSIZE '4G' PLANNEDCONCURRENCY 1;
-- alter resource pool large_pool MEMORYSIZE '20G' PLANNEDCONCURRENCY AUTO;
select 'alter user '||user_name||' set RESOURCE POOL = ''small_pool'';' from users where resource_pool ilike 'general';

```