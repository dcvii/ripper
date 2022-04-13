EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/user_agent') AS SELECT * FROM brdbeer.user_agent;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/page_dimension') AS SELECT * FROM brdbeer.page_dimension;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/brdbeer/session_dim') AS SELECT * FROM brdbeer.session_dim;
