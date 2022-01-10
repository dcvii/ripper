select count(*) from ehr.encounters_src;
select count(*) from ehr.encounters_src;

create schema if not exists migration;

create table if not exists migration.target_grants (
id    integer,
script varchar(500),
processed  boolean,
ts_run_date timestamp
);

select shit from mike;

select count(*) from -- ehr.encounte_src;
select count(*) from ehr.encounters_src;