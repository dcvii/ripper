COPY segment.retail FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/segment/retail/*' PARQUET;
COPY segment.online_sales FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/segment/online_sales/*' PARQUET;
