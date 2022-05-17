
ALTER TABLE metadata.tmp_DSC_debug OWNER TO Databurst_Updt;
GRANT TRUNCATE ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;
GRANT REFERENCES ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;
GRANT DELETE ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;
GRANT UPDATE ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;
GRANT SELECT ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;
GRANT INSERT ON metadata.tmp_DSC_debug TO Databurst_Updt WITH GRANT OPTION;