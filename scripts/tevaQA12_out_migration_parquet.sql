EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/migration/users_only_src') AS SELECT * FROM migration.users_only_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/migration/user_src') AS SELECT * FROM migration.user_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/migration/grants_src') AS SELECT * FROM migration.grants_src;
