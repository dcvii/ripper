EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/cops/event_flx_keys') AS SELECT * FROM cops.event_flx_keys;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/cops/event_flx') AS SELECT * FROM cops.event_flx;
