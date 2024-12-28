select
    'select table_schema, table_name,  (select max(epoch) from ' || table_schema || '.' || table_name || ') as max_epoch from migration.source_schemas where table_schema = ''' || table_schema || ''' and table_name = ''' || table_name || ''';' as cmd
from
    migration.source_schemas;