COPY ehr.departments_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/departments_src/*' PARQUET;
COPY ehr.hospitals_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/hospitals_src/*' PARQUET;
COPY ehr.patients_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/patients_src/*' PARQUET;
COPY ehr.encounters_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/encounters_src/*' PARQUET;
COPY ehr.icd_nine_lkp_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/icd_nine_lkp_src/*' PARQUET;
COPY ehr.accounts_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/ehr/accounts_src/*' PARQUET;
