select sql from migration.grants_src
where sql ilike '%GRANT%' and
principal_name in (
select name from roles);