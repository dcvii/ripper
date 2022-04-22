with 
(select table_schema, table_name, row_count from migration.source_schemas where table_schema = 'payerspine') as src 

select table_schema, table_name, row_count, (select max(epoch) from )



update migration.audit



select table_schema, export_success, count(*) from migration.audit
where export_ts is not null
group by 1,2
order by 1;


create table migration.audit_tmp as select * from migration.audit;

CREATE TABLE if not exists migration.audit
(
    table_schema varchar(128),
    table_name varchar(128),
    src_row_count int,
    tgt_row_count int,
    audit_init_ts timestamp,
    audit_init_epoch int,
    export_type varchar(20),
    export_cmd varchar(512),
    export_success boolean,
    export_ts timestamp,
    update_ts timestamp

);



insert into migration.audit 
    (table_schema, table_name, src_row_count,
    tgt_row_count,audit_init_ts, export_type,
    export_cmd, export_success, export_ts)
(select 
    table_schema, table_name, src_row_count,
    tgt_row_count,audit_init_ts, export_type,
    export_cmd, export_success, export_ts

    from migration.audit_tmp);

