CREATE LOCATION 's3://vaas-migrator' SHARED USAGE 'USER' LABEL 'six-account';
GRANT ALL ON LOCATION 's3://vaas-migrator' TO dbadmin;
