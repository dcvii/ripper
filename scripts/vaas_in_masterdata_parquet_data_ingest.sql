COPY masterdata.lsad_lkp FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/lsad_lkp/*' PARQUET;
COPY masterdata.alteryx_input FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/alteryx_input/*' PARQUET;
COPY masterdata.places_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/places_src/*' PARQUET;
COPY masterdata.names_01_src FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/masterdata/names_01_src/*' PARQUET;
