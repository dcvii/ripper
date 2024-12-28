
-- this should run on source during init_migration
-- it can be run a second time each day at the beginning of data migration

select
    'update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from '|| table_schema || '.' || table_name || ') where table_schema = '''|| table_schema ||''' and table_name = '''|| table_name ||'''; commit;' as cmd 
from migration.source_schemas; 

