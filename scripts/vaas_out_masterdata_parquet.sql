EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/lsad_lkp') AS SELECT * FROM masterdata.lsad_lkp;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/alteryx_input') AS SELECT * FROM masterdata.alteryx_input;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/places_src') AS SELECT * FROM masterdata.places_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/names_01_src') AS SELECT * FROM masterdata.names_01_src;
