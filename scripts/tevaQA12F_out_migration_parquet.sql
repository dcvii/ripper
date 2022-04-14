EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/migration/users_only_src') AS SELECT * FROM migration.users_only_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/migration/user_src') AS SELECT * FROM migration.user_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/migration/grants_src') AS SELECT * FROM migration.grants_src;
