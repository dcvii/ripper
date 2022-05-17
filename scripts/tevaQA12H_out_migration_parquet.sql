EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12H/migration/source_schemas_history') AS SELECT * FROM migration.source_schemas_history;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12H/migration/users_only_src') AS SELECT * FROM migration.users_only_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12H/migration/grants_src') AS SELECT * FROM migration.grants_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12H/migration/user_src') AS SELECT * FROM migration.user_src;
