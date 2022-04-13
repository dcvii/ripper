COPY survey.opioid_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/survey/opioid_src/*' PARQUET;
COPY survey.hcahps_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/survey/hcahps_src/*' PARQUET;
COPY survey.general_info_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/survey/general_info_src/*' PARQUET;
