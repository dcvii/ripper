CREATE LOCATION 's3://vertica-mbowen-us-west-2-migrator' SHARED USAGE 'USER' LABEL 'six-account';
GRANT ALL ON LOCATION 's3://vertica-mbowen-us-west-2-migrator' TO dbadmin;
