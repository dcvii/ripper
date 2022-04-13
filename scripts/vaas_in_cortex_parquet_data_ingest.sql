COPY cortex.iata_xref FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/cortex/iata_xref/*' PARQUET;
COPY cortex.new_flight FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/cortex/new_flight/*' PARQUET;
COPY cortex.for_mike FROM 's3://vertica-mbowen-us-west-2-migrator/vaas/cortex/for_mike/*' PARQUET;
