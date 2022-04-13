COPY migration.target_grants FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/migration/target_grants/*' PARQUET;
COPY migration.grants_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/migration/grants_src/*' PARQUET;
COPY migration.target_grants_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/migration/target_grants_src/*' PARQUET;
