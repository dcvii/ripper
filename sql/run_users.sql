select sql from migration.users_only_src
where grant_order =1; -- create users only, not roles