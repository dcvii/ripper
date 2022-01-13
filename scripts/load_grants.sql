truncate table migration.target_grants_src;

COPY migration.target_grants_src
FROM
    LOCAL '/Users/mdcb/devcode/PYDEV/ripper/scripts/target_grants.csv' with delmiter ',' rejectmax 1;

truncate table migration.target_grants;

insert into
    migration.target_grants
select
    id,
    script,
    false :: boolean,
    null
from
    migration.target_grants_src;