EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/cortex/iata_xref') AS SELECT * FROM cortex.iata_xref;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/cortex/new_flight') AS SELECT * FROM cortex.new_flight;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/cortex/for_mike') AS SELECT * FROM cortex.for_mike;
