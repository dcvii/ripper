COPY migration.odd_parms_src FROM 's3://teva-export-buckt/tevaQA12/migration/odd_parms_src/*' PARQUET;
COPY migration.users_only_src FROM 's3://teva-export-buckt/tevaQA12/migration/users_only_src/*' PARQUET;
COPY migration.user_src FROM 's3://teva-export-buckt/tevaQA12/migration/user_src/*' PARQUET;
COPY migration.grants_src FROM 's3://teva-export-buckt/tevaQA12/migration/grants_src/*' PARQUET;
