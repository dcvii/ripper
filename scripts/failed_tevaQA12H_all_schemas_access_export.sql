
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IMS ID ISSUE_AUSTEDO_10262020) where table_schema = 'sandbox' and table_name = 'IMS ID ISSUE_AUSTEDO_10262020';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.MA Missing STATE) where table_schema = 'sandbox' and table_name = 'MA Missing STATE';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS TARGET FILE) where table_schema = 'sandbox' and table_name = 'SYNEOS TARGET FILE';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.J_CHUNG_HCP DEA-2) where table_schema = 'sandbox' and table_name = 'J_CHUNG_HCP DEA-2';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS TERRs MISSING IMS IDs) where table_schema = 'sandbox' and table_name = 'SYNEOS TERRs MISSING IMS IDs';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS MISSING IMSIDs) where table_schema = 'sandbox' and table_name = 'SYNEOS MISSING IMSIDs';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.digital-affinity) where table_schema = 'sandbox' and table_name = 'digital-affinity';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IMS ID ISSUES_AJOVY10262020) where table_schema = 'sandbox' and table_name = 'IMS ID ISSUES_AJOVY10262020';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.KNIPPER QVARs IDs1033) where table_schema = 'sandbox' and table_name = 'KNIPPER QVARs IDs1033';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.Returns_IQVIA ) where table_schema = 'sandbox' and table_name = 'Returns_IQVIA ';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.MediCal HCPs) where table_schema = 'sandbox' and table_name = 'MediCal HCPs';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.QNASL_MRKT IMSID_ALL) where table_schema = 'sandbox' and table_name = 'QNASL_MRKT IMSID_ALL';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IQVIA OPTUM OUTLETS11032020) where table_schema = 'sandbox' and table_name = 'IQVIA OPTUM OUTLETS11032020';
update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.TN Mising HCPS for TN IC) where table_schema = 'sandbox' and table_name = 'TN Mising HCPS for TN IC';

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IMS ID ISSUE_AUSTEDO_10262020) where table_schema = 'sandbox' and table_name = 'IMS ID ISSUE_AUSTEDO_10262020';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.MA Missing STATE) where table_schema = 'sandbox' and table_name = 'MA Missing STATE';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS TARGET FILE) where table_schema = 'sandbox' and table_name = 'SYNEOS TARGET FILE';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.J_CHUNG_HCP DEA-2) where table_schema = 'sandbox' and table_name = 'J_CHUNG_HCP DEA-2';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS TERRs MISSING IMS IDs) where table_schema = 'sandbox' and table_name = 'SYNEOS TERRs MISSING IMS IDs';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.SYNEOS MISSING IMSIDs) where table_schema = 'sandbox' and table_name = 'SYNEOS MISSING IMSIDs';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.digital-affinity) where table_schema = 'sandbox' and table_name = 'digital-affinity';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IMS ID ISSUES_AJOVY10262020) where table_schema = 'sandbox' and table_name = 'IMS ID ISSUES_AJOVY10262020';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.KNIPPER QVARs IDs1033) where table_schema = 'sandbox' and table_name = 'KNIPPER QVARs IDs1033';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.Returns_IQVIA ) where table_schema = 'sandbox' and table_name = 'Returns_IQVIA ';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.MediCal HCPs) where table_schema = 'sandbox' and table_name = 'MediCal HCPs';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.QNASL_MRKT IMSID_ALL) where table_schema = 'sandbox' and table_name = 'QNASL_MRKT IMSID_ALL';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.IQVIA OPTUM OUTLETS11032020) where table_schema = 'sandbox' and table_name = 'IQVIA OPTUM OUTLETS11032020';
-- FAIL

-- update migration.source_schemas set audit_init_ts = now(),  audit_init_epoch =  (select max(epoch) from sandbox.TN Mising HCPS for TN IC) where table_schema = 'sandbox' and table_name = 'TN Mising HCPS for TN IC';