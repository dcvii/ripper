COPY cops.event_flx_keys FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/cops/event_flx_keys/*' PARQUET;
COPY cops.event_flx FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/cops/event_flx/*' PARQUET;
