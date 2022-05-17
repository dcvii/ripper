-- special grants 2022-05-16
GRANT INSERT ON metadata.workflow_log TO Databurst_Updt;
GRANT SELECT ON metadata.workflow_log TO Databurst_Updt;

create schema raw;
grant all on schema raw to Databurst_Updt;