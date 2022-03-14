select 'COPY '||table_schema||'.'||table_name||' FROM VERTICA teva.' ||table_schema ||'.'|| table_name ||';' as cmd from migration.source_schemas where table_schema = 'metadata' order by row_count;
