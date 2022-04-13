EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/migration/target_grants') AS SELECT * FROM migration.target_grants;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/migration/grants_src') AS SELECT * FROM migration.grants_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/migration/target_grants_src') AS SELECT * FROM migration.target_grants_src;
