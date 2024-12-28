-- run aftter init_migration

select table_schema, count(*) as table_count from migration.source_schemas
group by 1 order by 2 asc;

