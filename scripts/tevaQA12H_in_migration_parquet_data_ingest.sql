COPY migration.source_schemas_history FROM 's3://teva-export-buckt/tevaQA12H/migration/source_schemas_history/*' PARQUET;
COPY migration.users_only_src FROM 's3://teva-export-buckt/tevaQA12H/migration/users_only_src/*' PARQUET;
COPY migration.grants_src FROM 's3://teva-export-buckt/tevaQA12H/migration/grants_src/*' PARQUET;
COPY migration.user_src FROM 's3://teva-export-buckt/tevaQA12H/migration/user_src/*' PARQUET;
