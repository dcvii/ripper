EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/survey/opioid_src') AS SELECT * FROM survey.opioid_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/survey/hcahps_src') AS SELECT * FROM survey.hcahps_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/survey/general_info_src') AS SELECT * FROM survey.general_info_src;
