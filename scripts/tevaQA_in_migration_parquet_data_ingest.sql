COPY migration.odd_parms_src FROM 's3://teva-export-buckt/tevaQA/migration/odd_parms_src/*' PARQUET;
COPY migration.users_only_src FROM 's3://teva-export-buckt/tevaQA/migration/users_only_src/*' PARQUET;
COPY migration.user_src FROM 's3://teva-export-buckt/tevaQA/migration/user_src/*' PARQUET;
COPY migration.grants_src FROM 's3://teva-export-buckt/tevaQA/migration/grants_src/*' PARQUET;
