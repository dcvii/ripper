
truncate table migration.target_grants_src;
-- truncate table migration.grants_rejects;

copy migration.target_grants_src from local
'/Users/mbowen/devcode/PYDEV/ripper/out.csv'
WITH DELIMITER ',' ENCLOSED BY '"' rejectmax 0
REJECTED DATA AS TABLE migration.grants_rejects;