EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/migration/users_only_src') AS SELECT * FROM migration.users_only_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/migration/grants_src') AS SELECT * FROM migration.grants_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/migration/user_src') AS SELECT * FROM migration.user_src;
