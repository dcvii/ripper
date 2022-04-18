COPY migration.users_only_src FROM 's3://teva-export-buckt/tevaQA12G/migration/users_only_src/*' PARQUET;
COPY migration.grants_src FROM 's3://teva-export-buckt/tevaQA12G/migration/grants_src/*' PARQUET;
COPY migration.user_src FROM 's3://teva-export-buckt/tevaQA12G/migration/user_src/*' PARQUET;
