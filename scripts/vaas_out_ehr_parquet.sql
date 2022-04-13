EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/departments_src') AS SELECT * FROM ehr.departments_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/hospitals_src') AS SELECT * FROM ehr.hospitals_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/patients_src') AS SELECT * FROM ehr.patients_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/encounters_src') AS SELECT * FROM ehr.encounters_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/icd_nine_lkp_src') AS SELECT * FROM ehr.icd_nine_lkp_src;
EXPORT TO PARQUET (directory='s3://vertica-mbowen-us-west-2-migrator/vaas/ehr/accounts_src') AS SELECT * FROM ehr.accounts_src;
