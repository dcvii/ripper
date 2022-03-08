EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/migration/odd_parms_src') AS SELECT * FROM migration.odd_parms_src;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/migration/grants_src') AS SELECT * FROM migration.grants_src;
