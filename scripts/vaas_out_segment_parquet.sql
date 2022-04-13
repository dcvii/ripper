EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/segment/retail') AS SELECT * FROM segment.retail;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/segment/online_sales') AS SELECT * FROM segment.online_sales;
