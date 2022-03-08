select sql from migration.users_only_src
where grant_order in (0,1) order by 1 asc;