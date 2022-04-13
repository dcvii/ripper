COPY brdbeer.user_agent FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/user_agent/*' PARQUET;
COPY brdbeer.page_dimension FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/page_dimension/*' PARQUET;
COPY brdbeer.session_dim FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/session_dim/*' PARQUET;
