

insert into migration.source_schemas_history

select 
    table_schema ,
    table_name ,
    is_partitioned ,
    row_count ,
    partition_expression ,
    export_type ,
    'tevaQA12G' as audit_phase_name , 
    audit_init_epoch ,
    audit_init_ts ,
    now() as update_ts  
    
    from migration.source_schemas; commit;


create table migration.source_schemas_tmp as select * from migration.source_schemas_history;

drop table migration.source_schemas;

