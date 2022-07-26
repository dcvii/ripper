CREATE SCHEMA payerspine;


CREATE  VIEW payerspine.v_survey_target AS
 SELECT survey_target.id,
        survey_target.ownerid,
        survey_target.isdeleted,
        survey_target.name,
        survey_target.recordtypeid,
        survey_target.createddate,
        survey_target.createdbyid,
        survey_target.lastmodifieddate,
        survey_target.lastmodifiedbyid,
        survey_target.systemmodstamp,
        survey_target.mayedit,
        survey_target.islocked,
        survey_target.lastvieweddate,
        survey_target.lastreferenceddate,
        survey_target.account_display_name_vod__c,
        survey_target.account_vod__c,
        survey_target.channels_vod__c,
        survey_target.end_date_vod__c,
        survey_target.entity_reference_id_vod__c,
        survey_target.external_id_vod__c,
        survey_target.language_vod__c,
        survey_target.lock_vod__c,
        survey_target.mobile_id_vod__c,
        survey_target.no_autoassign_vod__c,
        survey_target.not_completed_vod__c,
        survey_target.region_vod__c,
        survey_target.segment_vod__c,
        survey_target.start_date_vod__c,
        survey_target.status_vod__c,
        survey_target.survey_vod__c,
        survey_target.territory_vod__c,
        survey_target.zvod_address_vod__c,
        survey_target.zvod_specialty_vod__c,
        survey_target.score_vod__c,
        survey_target.coach_vod__c,
        survey_target.Employee_vod__c,
        survey_target.Review_date_vod__c,
        survey_target.report_status_vod__c,
        survey_target.file_id,
        survey_target.record_id
 FROM veeva.survey_target
 WHERE (survey_target.file_id = ( SELECT max(survey_target.file_id) AS MAX
 FROM veeva.survey_target));

CREATE  VIEW payerspine.vw_curr_month_ftf_formularies_cdw AS
 SELECT (replace(replace(btrim(ftf_formularies.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_formularies.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_formularies.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(ftf_formularies.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(ftf_formularies.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(ftf_formularies.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(ftf_formularies.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW payerspine.vw_curr_month_ftf_health_plan_geography_cdw AS
 SELECT (replace(replace(btrim(ftf_health_plan_geography.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(ftf_health_plan_geography.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        ftf_health_plan_geography.lives_coverage
 FROM cleansed.ftf_health_plan_geography
 WHERE (ftf_health_plan_geography.file_id IN ( SELECT max(ftf_health_plan_geography.file_id) AS max
 FROM cleansed.ftf_health_plan_geography));

CREATE  VIEW payerspine.vw_curr_month_ftf_pbms_cdw AS
 SELECT (replace(replace(btrim(ftf_pbms.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_pbms.pbm_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_id,
        replace(replace(btrim(ftf_pbms.pbm), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm,
        (replace(replace(btrim(ftf_pbms.pbm_function_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_function_id,
        replace(replace(btrim(ftf_pbms.pbm_function), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function
 FROM cleansed.ftf_pbms
 WHERE (ftf_pbms.file_id IN ( SELECT max(ftf_pbms.file_id) AS max
 FROM cleansed.ftf_pbms));

CREATE  VIEW payerspine.vw_curr_month_ftf_restrictions_cdw AS
 SELECT (replace(replace(btrim(ftf_restrictions_v2.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_restrictions_v2.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_restrictions_v2.restriction_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_code,
        ftf_restrictions_v2.restriction_detail_id,
        replace(replace(btrim(ftf_restrictions_v2.restriction_detail_text), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_detail_text,
        replace(replace(btrim(ftf_restrictions_v2.restriction_addtnl_information_1), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_1,
        replace(replace(btrim(ftf_restrictions_v2.restriction_addtnl_information_2), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_2,
        replace(replace(btrim(ftf_restrictions_v2.step_count), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS step_count,
        replace(replace(btrim(ftf_restrictions_v2.pa_form), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pa_form,
        replace(replace(btrim(ftf_restrictions_v2.indication), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS indication,
        replace(replace(btrim(ftf_restrictions_v2.grouped_restriction_level), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS grouped_restriction_level
 FROM cleansed.ftf_restrictions_v2
 WHERE (ftf_restrictions_v2.file_id IN ( SELECT max(ftf_restrictions_v2.file_id) AS max
 FROM cleansed.ftf_restrictions_v2));

CREATE  VIEW payerspine.vw_curr_month_ims_plan_xref_cdw AS
 SELECT (replace(replace(btrim(ims_plan_xref.payer_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_num,
        replace(replace(btrim(ims_plan_xref.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(ims_plan_xref.plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_num,
        (replace(replace(btrim(ims_plan_xref.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(ims_plan_xref.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(ims_plan_xref.model), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS model,
        replace(replace(btrim(ims_plan_xref.city), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS city,
        replace(replace(btrim(ims_plan_xref.hq_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS hq_state,
        replace(replace(btrim(ims_plan_xref.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        ims_plan_xref.months_with_data
 FROM cleansed.ims_plan_xref
 WHERE (ims_plan_xref.file_id IN ( SELECT max(ims_plan_xref.file_id) AS max
 FROM cleansed.ims_plan_xref));

CREATE  VIEW payerspine.vw_curr_month_ims_pbm_xref_cdw AS
 SELECT replace(replace(btrim(ims_pbm_xref.pbm_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_name,
        (replace(replace(btrim(ims_pbm_xref.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(ims_pbm_xref.xref_to_payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS xref_to_payer_plan_num,
        replace(replace(btrim(ims_pbm_xref.ipd_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_id,
        replace(replace(btrim(ims_pbm_xref.ipd_type), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_type,
        replace(replace(btrim(ims_pbm_xref.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        ims_pbm_xref.pbm_num,
        ims_pbm_xref.ims_processor_num
 FROM cleansed.ims_pbm_xref
 WHERE (ims_pbm_xref.file_id IN ( SELECT max(ims_pbm_xref.file_id) AS max
 FROM cleansed.ims_pbm_xref));

CREATE  VIEW payerspine.vw_curr_month_ftf_ims_bridge_cdw AS
 SELECT replace(replace(btrim(ftf_ims_bridge.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(ftf_ims_bridge.code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS code,
        replace(replace(btrim(ftf_ims_bridge.name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS name,
        replace(replace(btrim(ftf_ims_bridge.state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS state,
        replace(replace(btrim(ftf_ims_bridge.comments), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS comments,
        (replace(replace(btrim(ftf_ims_bridge.plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_id,
        replace(replace(btrim(ftf_ims_bridge.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(ftf_ims_bridge.provider_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_name,
        replace(replace(btrim(ftf_ims_bridge.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name
 FROM cleansed.ftf_ims_bridge
 WHERE (ftf_ims_bridge.file_id IN ( SELECT max(ftf_ims_bridge.file_id) AS max
 FROM cleansed.ftf_ims_bridge));

CREATE  VIEW payerspine.vw_prev_month_ftf_formularies_cdw AS
 SELECT (replace(replace(btrim(ftf_formularies.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_formularies.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_formularies.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(ftf_formularies.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(ftf_formularies.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(ftf_formularies.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(ftf_formularies.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_formularies.file_id
 FROM cleansed.ftf_formularies
 GROUP BY ftf_formularies.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ftf_health_plan_geography_cdw AS
 SELECT (replace(replace(btrim(ftf_health_plan_geography.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(ftf_health_plan_geography.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        ftf_health_plan_geography.lives_coverage
 FROM cleansed.ftf_health_plan_geography
 WHERE (ftf_health_plan_geography.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plan_geography.file_id
 FROM cleansed.ftf_health_plan_geography
 GROUP BY ftf_health_plan_geography.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ftf_pbms_cdw AS
 SELECT (replace(replace(btrim(ftf_pbms.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_pbms.pbm_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_id,
        replace(replace(btrim(ftf_pbms.pbm), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm,
        (replace(replace(btrim(ftf_pbms.pbm_function_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_function_id,
        replace(replace(btrim(ftf_pbms.pbm_function), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function
 FROM cleansed.ftf_pbms
 WHERE (ftf_pbms.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_pbms.file_id
 FROM cleansed.ftf_pbms
 GROUP BY ftf_pbms.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ftf_restrictions_cdw AS
 SELECT (replace(replace(btrim(ftf_restrictions_v2.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_restrictions_v2.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_restrictions_v2.restriction_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_code,
        ftf_restrictions_v2.restriction_detail_id,
        replace(replace(btrim(ftf_restrictions_v2.restriction_detail_text), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_detail_text,
        replace(replace(btrim(ftf_restrictions_v2.restriction_addtnl_information_1), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_1,
        replace(replace(btrim(ftf_restrictions_v2.restriction_addtnl_information_2), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_2,
        replace(replace(btrim(ftf_restrictions_v2.step_count), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS step_count,
        replace(replace(btrim(ftf_restrictions_v2.pa_form), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pa_form,
        replace(replace(btrim(ftf_restrictions_v2.indication), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS indication,
        replace(replace(btrim(ftf_restrictions_v2.grouped_restriction_level), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS grouped_restriction_level
 FROM cleansed.ftf_restrictions_v2
 WHERE (ftf_restrictions_v2.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 GROUP BY ftf_restrictions_v2.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ims_plan_xref_cdw AS
 SELECT (replace(replace(btrim(ims_plan_xref.payer_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_num,
        replace(replace(btrim(ims_plan_xref.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(ims_plan_xref.plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_num,
        (replace(replace(btrim(ims_plan_xref.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(ims_plan_xref.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(ims_plan_xref.model), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS model,
        replace(replace(btrim(ims_plan_xref.city), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS city,
        replace(replace(btrim(ims_plan_xref.hq_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS hq_state,
        replace(replace(btrim(ims_plan_xref.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        ims_plan_xref.months_with_data
 FROM cleansed.ims_plan_xref
 WHERE (ims_plan_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_plan_xref.file_id
 FROM cleansed.ims_plan_xref
 GROUP BY ims_plan_xref.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ims_pbm_xref_cdw AS
 SELECT replace(replace(btrim(ims_pbm_xref.pbm_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_name,
        (replace(replace(btrim(ims_pbm_xref.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(ims_pbm_xref.xref_to_payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS xref_to_payer_plan_num,
        replace(replace(btrim(ims_pbm_xref.ipd_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_id,
        replace(replace(btrim(ims_pbm_xref.ipd_type), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_type,
        replace(replace(btrim(ims_pbm_xref.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        ims_pbm_xref.pbm_num,
        ims_pbm_xref.ims_processor_num
 FROM cleansed.ims_pbm_xref
 WHERE (ims_pbm_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_pbm_xref.file_id
 FROM cleansed.ims_pbm_xref
 GROUP BY ims_pbm_xref.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_prev_month_ftf_ims_bridge_cdw AS
 SELECT replace(replace(btrim(ftf_ims_bridge.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(ftf_ims_bridge.code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS code,
        replace(replace(btrim(ftf_ims_bridge.name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS name,
        replace(replace(btrim(ftf_ims_bridge.state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS state,
        replace(replace(btrim(ftf_ims_bridge.comments), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS comments,
        (replace(replace(btrim(ftf_ims_bridge.plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_id,
        replace(replace(btrim(ftf_ims_bridge.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(ftf_ims_bridge.provider_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_name,
        replace(replace(btrim(ftf_ims_bridge.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name
 FROM cleansed.ftf_ims_bridge
 WHERE (ftf_ims_bridge.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_ims_bridge.file_id
 FROM cleansed.ftf_ims_bridge
 GROUP BY ftf_ims_bridge.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_iqvia_plan_change AS
 SELECT a.entity AS "Change Type",
        a.id AS ID,
        a.name AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM ((((((((((( SELECT 'Payer'::varchar(5) AS entity,
        curr_month_ims_plan_xref.payer_num AS id,
        curr_month_ims_plan_xref.payer_name AS name,
        'Added'::varchar(5) AS status
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ANTI  JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        prev_month_ims_plan_xref.payer_num AS id,
        prev_month_ims_plan_xref.payer_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ANTI  JOIN payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num)))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        vw_curr_month_ims_plan_xref_cdw.payer_num AS id,
        vw_curr_month_ims_plan_xref_cdw.payer_name AS name,
        'Changed to'::varchar(10) AS status
 FROM payerspine.vw_curr_month_ims_plan_xref_cdw
 WHERE (vw_curr_month_ims_plan_xref_cdw.payer_num IN ( SELECT curr_month_ims_plan_xref.payer_num
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num) AND (curr_month_ims_plan_xref.payer_name <> prev_month_ims_plan_xref.payer_name))))))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        vw_prev_month_ims_plan_xref_cdw.payer_num AS id,
        vw_prev_month_ims_plan_xref_cdw.payer_name AS name,
        'Changed from'::varchar(12) AS status
 FROM payerspine.vw_prev_month_ims_plan_xref_cdw
 WHERE (vw_prev_month_ims_plan_xref_cdw.payer_num IN ( SELECT prev_month_ims_plan_xref.payer_num
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num) AND (curr_month_ims_plan_xref.payer_name <> prev_month_ims_plan_xref.payer_name))))))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        curr_month_ims_plan_xref.payer_plan_num AS id,
        curr_month_ims_plan_xref.plan_name AS name,
        'Added'::varchar(5) AS status
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ANTI  JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num)))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        prev_month_ims_plan_xref.payer_plan_num AS id,
        prev_month_ims_plan_xref.plan_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ANTI  JOIN payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num)))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        vw_curr_month_ims_plan_xref_cdw.payer_plan_num AS id,
        vw_curr_month_ims_plan_xref_cdw.plan_name AS name,
        'Changed to'::varchar(10) AS status
 FROM payerspine.vw_curr_month_ims_plan_xref_cdw
 WHERE (vw_curr_month_ims_plan_xref_cdw.payer_plan_num IN ( SELECT curr_month_ims_plan_xref.payer_plan_num
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num) AND (curr_month_ims_plan_xref.plan_name <> prev_month_ims_plan_xref.plan_name))))))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        vw_prev_month_ims_plan_xref_cdw.payer_plan_num AS id,
        vw_prev_month_ims_plan_xref_cdw.plan_name AS name,
        'Changed from'::varchar(12) AS status
 FROM payerspine.vw_prev_month_ims_plan_xref_cdw
 WHERE (vw_prev_month_ims_plan_xref_cdw.payer_plan_num IN ( SELECT prev_month_ims_plan_xref.payer_plan_num
 FROM (payerspine.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN payerspine.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num) AND (curr_month_ims_plan_xref.plan_name <> prev_month_ims_plan_xref.plan_name))))))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        curr_month_ims_pbm_xref.payer_plan_num AS id,
        curr_month_ims_pbm_xref.pbm_name AS name,
        'Added'::varchar(5) AS status
 FROM (payerspine.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref ANTI  JOIN payerspine.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON ((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num)))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        prev_month_ims_pbm_xref.payer_plan_num AS id,
        prev_month_ims_pbm_xref.pbm_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (payerspine.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ANTI  JOIN payerspine.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref ON ((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num)))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        vw_curr_month_ims_pbm_xref_cdw.payer_plan_num AS id,
        vw_curr_month_ims_pbm_xref_cdw.pbm_name AS name,
        'Changed to'::varchar(10) AS status
 FROM payerspine.vw_curr_month_ims_pbm_xref_cdw
 WHERE (vw_curr_month_ims_pbm_xref_cdw.payer_plan_num IN ( SELECT curr_month_ims_pbm_xref.payer_plan_num
 FROM (payerspine.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref JOIN payerspine.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON (((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num) AND (curr_month_ims_pbm_xref.pbm_name <> prev_month_ims_pbm_xref.pbm_name))))))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        vw_prev_month_ims_pbm_xref_cdw.payer_plan_num AS id,
        vw_prev_month_ims_pbm_xref_cdw.pbm_name AS name,
        'Changed from'::varchar(12) AS status
 FROM payerspine.vw_prev_month_ims_pbm_xref_cdw
 WHERE (vw_prev_month_ims_pbm_xref_cdw.payer_plan_num IN ( SELECT prev_month_ims_pbm_xref.payer_plan_num
 FROM (payerspine.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref JOIN payerspine.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON (((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num) AND (curr_month_ims_pbm_xref.pbm_name <> prev_month_ims_pbm_xref.pbm_name))))))) a
 ORDER BY a.entity,
          a.status,
          a.id,
          a.name;

CREATE  VIEW payerspine.vw_curr_month_ftf_health_plans_cdw AS
 SELECT (replace(replace(btrim(ftf_health_plans.formularyf_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS formularyf_id,
        (replace(replace(btrim(ftf_health_plans.provider_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS provider_id,
        replace(replace(btrim(ftf_health_plans.provider), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider,
        (replace(replace(btrim(ftf_health_plans.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(ftf_health_plans.health_plan), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan,
        (replace(replace(btrim(ftf_health_plans.parent_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS parent_id,
        replace(replace(btrim(ftf_health_plans.parent), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent,
        ftf_health_plans.national_lives_count,
        replace(replace(btrim(ftf_health_plans.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name,
        (ftf_health_plans.preferred_brand_tier)::float AS preferred_brand_tier
 FROM cleansed.ftf_health_plans
 WHERE (ftf_health_plans.file_id IN ( SELECT max(ftf_health_plans.file_id) AS max
 FROM cleansed.ftf_health_plans));

CREATE  VIEW payerspine.vw_prev_month_ftf_health_plans_cdw AS
 SELECT (replace(replace(btrim(ftf_health_plans.formularyf_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS formularyf_id,
        (replace(replace(btrim(ftf_health_plans.provider_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS provider_id,
        replace(replace(btrim(ftf_health_plans.provider), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider,
        (replace(replace(btrim(ftf_health_plans.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(ftf_health_plans.health_plan), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan,
        (replace(replace(btrim(ftf_health_plans.parent_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS parent_id,
        replace(replace(btrim(ftf_health_plans.parent), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent,
        ftf_health_plans.national_lives_count,
        replace(replace(btrim(ftf_health_plans.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name,
        (ftf_health_plans.preferred_brand_tier)::float AS preferred_brand_tier
 FROM cleansed.ftf_health_plans
 WHERE (ftf_health_plans.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plans.file_id
 FROM cleansed.ftf_health_plans
 GROUP BY ftf_health_plans.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_ftf_restriction_id_group_mapping_v2 AS
 SELECT ftf_restriction_id_group_mapping_v2.restriction_detail_id,
        ftf_restriction_id_group_mapping_v2.restriction_detail_text,
        ftf_restriction_id_group_mapping_v2.row_count,
        ftf_restriction_id_group_mapping_v2.restriction_group,
        ftf_restriction_id_group_mapping_v2.coverage_cat,
        ftf_restriction_id_group_mapping_v2.other_pmf_metrics,
        ftf_restriction_id_group_mapping_v2.file_id
 FROM payerspine.ftf_restriction_id_group_mapping_v2
 WHERE (ftf_restriction_id_group_mapping_v2.file_id IN ( SELECT max(ftf_restriction_id_group_mapping_v2.file_id) AS max
 FROM payerspine.ftf_restriction_id_group_mapping_v2));

CREATE  VIEW payerspine.vw_prev_month_ftf_formularies_cdw_v2 AS
 SELECT (replace(replace(btrim(ftf_formularies.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_formularies.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_formularies.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(ftf_formularies.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(ftf_formularies.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(ftf_formularies.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(ftf_formularies.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status,
        replace(replace(btrim(ftf_formularies.Market_Access_Coverage), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS Market_Access_Coverage
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        data_file_metadata.processed_date,
        rank() OVER (ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_formularies.file_id
 FROM cleansed.ftf_formularies
 GROUP BY ftf_formularies.file_id)) AND (data_file_metadata.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW payerspine.vw_curr_ftf_formularies_preprocessed_cdw_v3 AS
 SELECT ftf_formularies_preprocessed_cdw_v3.drug_seq,
        ftf_formularies_preprocessed_cdw_v3.ftf_health_plan_fid,
        ftf_formularies_preprocessed_cdw_v3.drug_id,
        ftf_formularies_preprocessed_cdw_v3.tier_code,
        ftf_formularies_preprocessed_cdw_v3.restrictions,
        ftf_formularies_preprocessed_cdw_v3.reason_code,
        ftf_formularies_preprocessed_cdw_v3.reason_code_description,
        ftf_formularies_preprocessed_cdw_v3.pharmacy_status,
        ftf_formularies_preprocessed_cdw_v3.Market_Access_Coverage,
        ftf_formularies_preprocessed_cdw_v3.has_pa,
        ftf_formularies_preprocessed_cdw_v3.has_st,
        ftf_formularies_preprocessed_cdw_v3.hasPAST,
        ftf_formularies_preprocessed_cdw_v3.plan_lives,
        ftf_formularies_preprocessed_cdw_v3.check_blank_pharmstat,
        ftf_formularies_preprocessed_cdw_v3.cycle_id,
        ftf_formularies_preprocessed_cdw_v3.modified_time,
        ftf_formularies_preprocessed_cdw_v3.modified_by
 FROM payerspine.ftf_formularies_preprocessed_cdw_v3
 WHERE (ftf_formularies_preprocessed_cdw_v3.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE (b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)]))));

CREATE  VIEW payerspine.vw_curr_month_ftf_formularies_cdw_v2 AS
 SELECT (replace(replace(btrim(ftf_formularies.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_formularies.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_formularies.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(ftf_formularies.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(ftf_formularies.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(ftf_formularies.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(ftf_formularies.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status,
        replace(replace(btrim(ftf_formularies.Market_Access_Coverage), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS Market_Access_Coverage
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW payerspine.vw_curr_ftf_restrictions_preprocessed_cdw_v3 AS
 SELECT ftf_restrictions_preprocessed_cdw_v3.health_plan_id,
        ftf_restrictions_preprocessed_cdw_v3.drug_id,
        ftf_restrictions_preprocessed_cdw_v3.drug_seq,
        ftf_restrictions_preprocessed_cdw_v3.restriction_code,
        ftf_restrictions_preprocessed_cdw_v3.restriction_detail_id,
        ftf_restrictions_preprocessed_cdw_v3.restriction_detail_text,
        ftf_restrictions_preprocessed_cdw_v3.restriction_group,
        ftf_restrictions_preprocessed_cdw_v3.coverage_cat,
        ftf_restrictions_preprocessed_cdw_v3.other_pmf_metrics,
        ftf_restrictions_preprocessed_cdw_v3.rank_rest_grp,
        ftf_restrictions_preprocessed_cdw_v3.botox,
        ftf_restrictions_preprocessed_cdw_v3.step,
        ftf_restrictions_preprocessed_cdw_v3.pres_pa,
        ftf_restrictions_preprocessed_cdw_v3.pat_pa,
        ftf_restrictions_preprocessed_cdw_v3.med_rec,
        ftf_restrictions_preprocessed_cdw_v3.unspec,
        ftf_restrictions_preprocessed_cdw_v3.cycle_id,
        ftf_restrictions_preprocessed_cdw_v3.modified_time,
        ftf_restrictions_preprocessed_cdw_v3.modified_by
 FROM payerspine.ftf_restrictions_preprocessed_cdw_v3
 WHERE (ftf_restrictions_preprocessed_cdw_v3.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE (b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)]))));

CREATE  VIEW payerspine.vw_curr_plan_prod_master_cdw_v2 AS
 SELECT plan_prod_master_cdw_v2.ftf_health_plan_fid,
        plan_prod_master_cdw_v2.ftf_health_plan_name,
        plan_prod_master_cdw_v2.ftf_provider_fid,
        plan_prod_master_cdw_v2.ftf_provider_name,
        plan_prod_master_cdw_v2.ftf_parent_name,
        plan_prod_master_cdw_v2.paytype_index,
        plan_prod_master_cdw_v2.paytype,
        plan_prod_master_cdw_v2.ftf_health_plan_type,
        plan_prod_master_cdw_v2.pref_brand_tier,
        plan_prod_master_cdw_v2.fillIn_blank_iqpayer,
        plan_prod_master_cdw_v2.fillIn_blank_iqpbm,
        plan_prod_master_cdw_v2.ftf_match_iqvia,
        plan_prod_master_cdw_v2.iqvia_payer_name,
        plan_prod_master_cdw_v2.iqvia_pbm,
        plan_prod_master_cdw_v2.ftf_formulary_management_pbm,
        plan_prod_master_cdw_v2.ftf_formulary_influencer_pbm,
        plan_prod_master_cdw_v2.ftf_claims_processing_pbm,
        plan_prod_master_cdw_v2.lives_mn,
        plan_prod_master_cdw_v2.calculated_pbm_value,
        plan_prod_master_cdw_v2.key_pbm,
        plan_prod_master_cdw_v2.drug_id,
        plan_prod_master_cdw_v2.drug_seq,
        plan_prod_master_cdw_v2.tier_code,
        plan_prod_master_cdw_v2.restrictions,
        plan_prod_master_cdw_v2.reason_code,
        plan_prod_master_cdw_v2.pharmacy_status,
        plan_prod_master_cdw_v2.Market_Access_Coverage,
        plan_prod_master_cdw_v2.has_pa,
        plan_prod_master_cdw_v2.has_st,
        plan_prod_master_cdw_v2.hasPAST,
        plan_prod_master_cdw_v2.botox,
        plan_prod_master_cdw_v2.step,
        plan_prod_master_cdw_v2.pres_pa,
        plan_prod_master_cdw_v2.pat_pa,
        plan_prod_master_cdw_v2.med_rec,
        plan_prod_master_cdw_v2.unspec,
        plan_prod_master_cdw_v2.restriction_code,
        plan_prod_master_cdw_v2.restriction_detail_id,
        plan_prod_master_cdw_v2.restriction_detail_text,
        plan_prod_master_cdw_v2.restriction_group,
        plan_prod_master_cdw_v2.ref_coverage_cat,
        plan_prod_master_cdw_v2.other_pmf_metrics,
        plan_prod_master_cdw_v2.calc_coverage_cat,
        plan_prod_master_cdw_v2.copay_tier,
        plan_prod_master_cdw_v2.tier_cat,
        plan_prod_master_cdw_v2.restcat,
        plan_prod_master_cdw_v2.restriction_category,
        plan_prod_master_cdw_v2.cycle_id,
        plan_prod_master_cdw_v2.modified_time,
        plan_prod_master_cdw_v2.modified_by
 FROM payerspine.plan_prod_master_cdw_v2
 WHERE (plan_prod_master_cdw_v2.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE (b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)]))));

CREATE  VIEW payerspine.vw_curr_ftf_plan_master_file_cdw_v2 AS
 SELECT ftf_plan_master_file_cdw_v2.ftf_health_plan_fid,
        ftf_plan_master_file_cdw_v2.ftf_health_plan_name,
        ftf_plan_master_file_cdw_v2.ftf_provider_fid,
        ftf_plan_master_file_cdw_v2.ftf_provider_name,
        ftf_plan_master_file_cdw_v2.ftf_parent_name,
        ftf_plan_master_file_cdw_v2.paytype_index,
        ftf_plan_master_file_cdw_v2.paytype,
        ftf_plan_master_file_cdw_v2.ftf_health_plan_type,
        ftf_plan_master_file_cdw_v2.pref_brand_tier,
        ftf_plan_master_file_cdw_v2.fillIn_blank_iqpayer,
        ftf_plan_master_file_cdw_v2.fillIn_blank_iqpbm,
        ftf_plan_master_file_cdw_v2.ftf_match_iqvia,
        ftf_plan_master_file_cdw_v2.iqvia_payer_name,
        ftf_plan_master_file_cdw_v2.iqvia_pbm,
        ftf_plan_master_file_cdw_v2.ftf_formulary_management_pbm,
        ftf_plan_master_file_cdw_v2.ftf_formulary_influencer_pbm,
        ftf_plan_master_file_cdw_v2.ftf_claims_processing_pbm,
        ftf_plan_master_file_cdw_v2.lives_mn,
        ftf_plan_master_file_cdw_v2.calculated_pbm_value,
        ftf_plan_master_file_cdw_v2.key_pbm,
        ftf_plan_master_file_cdw_v2.drug_id,
        ftf_plan_master_file_cdw_v2.drug_seq,
        ftf_plan_master_file_cdw_v2.product,
        ftf_plan_master_file_cdw_v2.tier_code,
        ftf_plan_master_file_cdw_v2.restrictions,
        ftf_plan_master_file_cdw_v2.reason_code,
        ftf_plan_master_file_cdw_v2.pharmacy_status,
        ftf_plan_master_file_cdw_v2.Market_Access_Coverage,
        ftf_plan_master_file_cdw_v2.has_pa,
        ftf_plan_master_file_cdw_v2.has_st,
        ftf_plan_master_file_cdw_v2.hasPAST,
        ftf_plan_master_file_cdw_v2.botox,
        ftf_plan_master_file_cdw_v2.botox_step_flag,
        ftf_plan_master_file_cdw_v2.step,
        ftf_plan_master_file_cdw_v2.step_category,
        ftf_plan_master_file_cdw_v2.pres_pa,
        ftf_plan_master_file_cdw_v2.prescriber_prior_authorization_category,
        ftf_plan_master_file_cdw_v2.pat_pa,
        ftf_plan_master_file_cdw_v2.patient_prior_authorization_category,
        ftf_plan_master_file_cdw_v2.med_rec,
        ftf_plan_master_file_cdw_v2.medical_records_submission_required_flag,
        ftf_plan_master_file_cdw_v2.unspec,
        ftf_plan_master_file_cdw_v2.unspecified_restriction_flag,
        ftf_plan_master_file_cdw_v2.copay_Tier,
        ftf_plan_master_file_cdw_v2.restriction_code,
        ftf_plan_master_file_cdw_v2.restriction_detail_id,
        ftf_plan_master_file_cdw_v2.restriction_detail_text,
        ftf_plan_master_file_cdw_v2.restriction_group,
        ftf_plan_master_file_cdw_v2.ref_coverage_cat,
        ftf_plan_master_file_cdw_v2.other_pmf_metrics,
        ftf_plan_master_file_cdw_v2.calc_coverage_cat,
        ftf_plan_master_file_cdw_v2.restriction_category,
        ftf_plan_master_file_cdw_v2.tier_cat,
        ftf_plan_master_file_cdw_v2.restcat,
        ftf_plan_master_file_cdw_v2.key_controlling_account,
        ftf_plan_master_file_cdw_v2.key_controlling_plan_formulary,
        ftf_plan_master_file_cdw_v2.key_controlling_parent,
        ftf_plan_master_file_cdw_v2.payer_pbm,
        ftf_plan_master_file_cdw_v2.market_access_cvg_w_overides,
        ftf_plan_master_file_cdw_v2.calc_coverage_cat_w_overrides,
        ftf_plan_master_file_cdw_v2.cycle_id,
        ftf_plan_master_file_cdw_v2.modified_time,
        ftf_plan_master_file_cdw_v2.modified_by
 FROM payerspine.ftf_plan_master_file_cdw_v2
 WHERE (ftf_plan_master_file_cdw_v2.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE (b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)]))));

CREATE  VIEW payerspine.vw_ftf_formularies_pharmacy_status_check AS
 SELECT vw_curr_ftf_formularies_preprocessed_cdw_v3.drug_seq AS "Drug Seq",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.ftf_health_plan_fid AS "FTF Health Plan FID",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.drug_id AS "Drug Id",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.tier_code AS "Tier Code",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.restrictions AS Restrictions,
        vw_curr_ftf_formularies_preprocessed_cdw_v3.reason_code AS "Reason Code",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.reason_code_description AS "Reason Code Description",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.pharmacy_status AS "Pharmacy Status",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.plan_lives AS "Plan Lives",
        vw_curr_ftf_formularies_preprocessed_cdw_v3.check_blank_pharmstat AS "Check Pharmacy Status"
 FROM payerspine.vw_curr_ftf_formularies_preprocessed_cdw_v3;

CREATE  VIEW payerspine.vw_curr_amb4_cdw_v1 AS
 SELECT amb4_cdw_v1.ftf_health_plan_fid,
        amb4_cdw_v1.ftf_health_plan_name,
        amb4_cdw_v1.old_coverage_category_ajovy,
        amb4_cdw_v1.old_coverage_category_aimovig,
        amb4_cdw_v1.old_coverage_category_emgality,
        amb4_cdw_v1.old_coverage_category_nurtec,
        amb4_cdw_v1.old_coverage_category_qulitpa,
        amb4_cdw_v1.old_coverage_category_austedo_hd,
        amb4_cdw_v1.old_coverage_category_austedo_td,
        amb4_cdw_v1.old_coverage_category_ingrezza_td,
        amb4_cdw_v1.old_coverage_category_digi_proair,
        amb4_cdw_v1.old_coverage_category_digi_airduo,
        amb4_cdw_v1.old_coverage_category_digi_armonair,
        amb4_cdw_v1.old_ftf_provider_fid,
        amb4_cdw_v1.old_ftf_provider_name,
        amb4_cdw_v1.old_ftf_parent_name,
        amb4_cdw_v1.old_paytype_index,
        amb4_cdw_v1.old_paytype,
        amb4_cdw_v1.old_ftf_health_plan_type,
        amb4_cdw_v1.old_pref_brand_tier,
        amb4_cdw_v1.old_key_controlling_plan_formulary,
        amb4_cdw_v1.old_key_controlling_account,
        amb4_cdw_v1.old_key_pbm,
        amb4_cdw_v1.old_payer_pbm,
        amb4_cdw_v1.fillIn_blank_iqpayer,
        amb4_cdw_v1.fillIn_blank_iqpbm,
        amb4_cdw_v1.ftf_match_iqvia,
        amb4_cdw_v1.old_iqvia_payer_name,
        amb4_cdw_v1.old_iqvia_pbm,
        amb4_cdw_v1.old_ftf_formulary_management_pbm,
        amb4_cdw_v1.old_ftf_formulary_influencer_pbm,
        amb4_cdw_v1.old_ftf_claims_processing_pbm,
        amb4_cdw_v1.lives_mx,
        amb4_cdw_v1.new_ftf_health_plan_fid,
        amb4_cdw_v1.old_ftf_health_plan_fid,
        amb4_cdw_v1.new_ftf_health_plan_name,
        amb4_cdw_v1.old_ftf_health_plan_name,
        amb4_cdw_v1.ftf_provider_fid,
        amb4_cdw_v1.ftf_provider_name,
        amb4_cdw_v1.ftf_parent_name,
        amb4_cdw_v1.paytype_index,
        amb4_cdw_v1.paytype,
        amb4_cdw_v1.ftf_health_plan_type,
        amb4_cdw_v1.pref_brand_tier,
        amb4_cdw_v1.lives_mn,
        amb4_cdw_v1.iqvia_payer_name,
        amb4_cdw_v1.iqvia_pbm,
        amb4_cdw_v1.ftf_formulary_management_pbm,
        amb4_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_cdw_v1.ftf_claims_processing_pbm,
        amb4_cdw_v1.cycle_id,
        amb4_cdw_v1.modified_time,
        amb4_cdw_v1.modified_by
 FROM payerspine.amb4_cdw_v1
 WHERE (amb4_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_cdw_v1'::varchar(11)))))));

CREATE  VIEW payerspine.vw_curr_pivot_plan_prod_master_cdw_v1 AS
 SELECT pivot_plan_prod_master_cdw_v1.ftf_health_plan_fid,
        pivot_plan_prod_master_cdw_v1.ftf_health_plan_name,
        pivot_plan_prod_master_cdw_v1.ftf_provider_fid,
        pivot_plan_prod_master_cdw_v1.ftf_provider_name,
        pivot_plan_prod_master_cdw_v1.ftf_parent_name,
        pivot_plan_prod_master_cdw_v1.paytype,
        pivot_plan_prod_master_cdw_v1.paytype_index,
        pivot_plan_prod_master_cdw_v1.ftf_health_plan_type,
        pivot_plan_prod_master_cdw_v1.key_controlling_account,
        pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary,
        pivot_plan_prod_master_cdw_v1.key_controlling_parent,
        pivot_plan_prod_master_cdw_v1.payer_pbm,
        pivot_plan_prod_master_cdw_v1.key_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_formulary_management_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_formulary_influencer_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_claims_processing_pbm,
        pivot_plan_prod_master_cdw_v1.lives_mn,
        pivot_plan_prod_master_cdw_v1.iqvia_payer_name,
        pivot_plan_prod_master_cdw_v1.iqvia_pbm,
        pivot_plan_prod_master_cdw_v1.pref_brand_tier,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Nurtec,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Qulipta,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Austedo_HD,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Austedo_TD,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Ingrezza_TD,
        pivot_plan_prod_master_cdw_v1.coverage_category_digi_proair,
        pivot_plan_prod_master_cdw_v1.coverage_category_digi_airduo,
        pivot_plan_prod_master_cdw_v1.coverage_category_digi_armonair,
        pivot_plan_prod_master_cdw_v1.prev_lives,
        pivot_plan_prod_master_cdw_v1.ftf_match_iqvia,
        pivot_plan_prod_master_cdw_v1.cycle_id,
        pivot_plan_prod_master_cdw_v1.modified_time,
        pivot_plan_prod_master_cdw_v1.modified_by
 FROM payerspine.pivot_plan_prod_master_cdw_v1
 WHERE (pivot_plan_prod_master_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'pivot_plan_prod_master_cdw_v1'::varchar(29)))))));

CREATE  VIEW payerspine.vw_curr_ftf_iqvia_xref_cdw_v1 AS
 SELECT ftf_iqvia_xref_cdw_v1.iqvia_plan_code,
        ftf_iqvia_xref_cdw_v1.iqvia_plan_name,
        ftf_iqvia_xref_cdw_v1.xref_iqvia_payer_name,
        ftf_iqvia_xref_cdw_v1.best_matched_iqvia_payer_name,
        ftf_iqvia_xref_cdw_v1.xref_iqvia_pbm,
        ftf_iqvia_xref_cdw_v1.best_matched_iqvia_pbm,
        ftf_iqvia_xref_cdw_v1.paytype,
        ftf_iqvia_xref_cdw_v1.model,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_xref_cdw_v1.ftf_provider_fid,
        ftf_iqvia_xref_cdw_v1.ftf_provider_name,
        ftf_iqvia_xref_cdw_v1.ftf_parent_name,
        ftf_iqvia_xref_cdw_v1.key_controlling_plan_formulary,
        ftf_iqvia_xref_cdw_v1.key_controlling_account,
        ftf_iqvia_xref_cdw_v1.key_controlling_parent,
        ftf_iqvia_xref_cdw_v1.payer_pbm,
        ftf_iqvia_xref_cdw_v1.ajovy_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.aimovig_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.emgality_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.nurtec_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.qulipta_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.austedo_hd_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.austedo_td_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.ingrezza_td_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.digi_proair_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.digi_airduo_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.digi_armonair_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.ftf_pref_brand_tier,
        ftf_iqvia_xref_cdw_v1.total_lives_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.key_pbm,
        ftf_iqvia_xref_cdw_v1.check_iq_payer,
        ftf_iqvia_xref_cdw_v1.check_iq_pbm,
        ftf_iqvia_xref_cdw_v1.cycle_id,
        ftf_iqvia_xref_cdw_v1.modified_time,
        ftf_iqvia_xref_cdw_v1.modified_by
 FROM payerspine.ftf_iqvia_xref_cdw_v1
 WHERE (ftf_iqvia_xref_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_xref_cdw_v1'::varchar(21)))))));

CREATE  VIEW payerspine.vw_curr_payer_spinev3_detailed_cdw_v2 AS
 SELECT payer_spinev3_detailed_cdw_v2.iqvia_plan_code,
        payer_spinev3_detailed_cdw_v2.iqvia_plan_name,
        payer_spinev3_detailed_cdw_v2.iqvia_payer_name,
        payer_spinev3_detailed_cdw_v2.iqvia_pbm,
        payer_spinev3_detailed_cdw_v2.pharmacy_benefit_gpo,
        payer_spinev3_detailed_cdw_v2.key_controlling_plan_formulary,
        payer_spinev3_detailed_cdw_v2.key_controlling_account,
        payer_spinev3_detailed_cdw_v2.key_controlling_parent,
        payer_spinev3_detailed_cdw_v2.payer_pbm,
        payer_spinev3_detailed_cdw_v2.payment_type,
        payer_spinev3_detailed_cdw_v2.ajovy_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.aimovig_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.emgality_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.nurtec_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.qulipta_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.austedo_hd_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.austedo_td_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.ingrezza_td_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.digi_proair_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.digi_airduo_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.digi_armonair_access_for_ftf_plan,
        payer_spinev3_detailed_cdw_v2.lives_plan_kcf_lvl,
        payer_spinev3_detailed_cdw_v2.lives_plan_lvl,
        payer_spinev3_detailed_cdw_v2.apportionment_factor,
        payer_spinev3_detailed_cdw_v2.saba_trx,
        payer_spinev3_detailed_cdw_v2.month_run
 FROM payerspine.payer_spinev3_detailed_cdw_v2
 WHERE (payer_spinev3_detailed_cdw_v2.cycle_id = ( SELECT max(payer_spinev3_detailed_cdw_v2.cycle_id) AS max
 FROM payerspine.payer_spinev3_detailed_cdw_v2));

CREATE  VIEW payerspine.vw_curr_payer_spinev3_unique_cdw_v2 AS
 SELECT payer_spinev3_unique_cdw_v2.iqvia_plan_code,
        payer_spinev3_unique_cdw_v2.iqvia_plan_name,
        payer_spinev3_unique_cdw_v2.iqvia_payer_name,
        payer_spinev3_unique_cdw_v2.iqvia_pbm,
        payer_spinev3_unique_cdw_v2.pharmacy_benefit_gpo,
        payer_spinev3_unique_cdw_v2.key_controlling_plan_formulary,
        payer_spinev3_unique_cdw_v2.key_controlling_account,
        payer_spinev3_unique_cdw_v2.key_controlling_parent,
        payer_spinev3_unique_cdw_v2.payer_pbm,
        payer_spinev3_unique_cdw_v2.payment_type,
        payer_spinev3_unique_cdw_v2.ajovy_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.aimovig_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.emgality_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.nurtec_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.qulipta_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.austedo_hd_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.austedo_td_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.ingrezza_td_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.digi_proair_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.digi_airduo_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.digi_armonair_access_for_ftf_plan,
        payer_spinev3_unique_cdw_v2.lives_plan_kcf_lvl,
        payer_spinev3_unique_cdw_v2.lives_plan_lvl,
        payer_spinev3_unique_cdw_v2.apportionment_factor,
        payer_spinev3_unique_cdw_v2.saba_trx,
        payer_spinev3_unique_cdw_v2.month_run
 FROM payerspine.payer_spinev3_unique_cdw_v2
 WHERE (payer_spinev3_unique_cdw_v2.cycle_id = ( SELECT max(payer_spinev3_unique_cdw_v2.cycle_id) AS max
 FROM payerspine.payer_spinev3_unique_cdw_v2));

CREATE  VIEW payerspine.vw_iqvia_plans_discard AS
 SELECT iqvia_plans_discard_v01.payer_id,
        btrim(iqvia_plans_discard_v01.notes) AS notes
 FROM payerspine.iqvia_plans_discard_v01
 WHERE (iqvia_plans_discard_v01.file_id IN ( SELECT max(iqvia_plans_discard_v01.file_id) AS max
 FROM payerspine.iqvia_plans_discard_v01))
 ORDER BY iqvia_plans_discard_v01.record_id;

CREATE  VIEW payerspine.vw_model_paytype_map AS
 SELECT btrim(model_paytype_map_v01.model) AS model,
        btrim(model_paytype_map_v01.paytype) AS paytype,
        btrim(model_paytype_map_v01.notes) AS notes
 FROM payerspine.model_paytype_map_v01
 WHERE (model_paytype_map_v01.file_id IN ( SELECT max(model_paytype_map_v01.file_id) AS max
 FROM payerspine.model_paytype_map_v01))
 ORDER BY model_paytype_map_v01.record_id;

CREATE  VIEW payerspine.vw_iqvia_paytypeindex AS
 SELECT iqvia_paytypeindex_v01.paytype_index,
        btrim(iqvia_paytypeindex_v01.paytype) AS paytype
 FROM payerspine.iqvia_paytypeindex_v01
 WHERE (iqvia_paytypeindex_v01.file_id IN ( SELECT max(iqvia_paytypeindex_v01.file_id) AS max
 FROM payerspine.iqvia_paytypeindex_v01))
 ORDER BY iqvia_paytypeindex_v01.record_id;

CREATE  VIEW payerspine.vw_iqvia_payer_paytype_override AS
 SELECT btrim(iqvia_payer_paytype_override_v01.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override_v01.paytype) AS paytype
 FROM payerspine.iqvia_payer_paytype_override_v01
 WHERE (iqvia_payer_paytype_override_v01.file_id IN ( SELECT max(iqvia_payer_paytype_override_v01.file_id) AS max
 FROM payerspine.iqvia_payer_paytype_override_v01))
 ORDER BY iqvia_payer_paytype_override_v01.record_id;

CREATE  VIEW payerspine.vw_ftf_plans_paytypeindex AS
 SELECT btrim(ftf_plans_paytypeindex_v01.ftf_health_plan_type) AS ftf_health_plan_type,
        ftf_plans_paytypeindex_v01.paytype_index
 FROM payerspine.ftf_plans_paytypeindex_v01
 WHERE (ftf_plans_paytypeindex_v01.file_id IN ( SELECT max(ftf_plans_paytypeindex_v01.file_id) AS max
 FROM payerspine.ftf_plans_paytypeindex_v01))
 ORDER BY ftf_plans_paytypeindex_v01.record_id;

CREATE  VIEW payerspine.vw_ftf_paytype_paytypeindex AS
 SELECT ftf_paytype_paytypeindex_v01.paytype_index,
        btrim(ftf_paytype_paytypeindex_v01.paytype) AS paytype
 FROM payerspine.ftf_paytype_paytypeindex_v01
 WHERE (ftf_paytype_paytypeindex_v01.file_id IN ( SELECT max(ftf_paytype_paytypeindex_v01.file_id) AS max
 FROM payerspine.ftf_paytype_paytypeindex_v01))
 ORDER BY ftf_paytype_paytypeindex_v01.record_id;

CREATE  VIEW payerspine.vw_ftf_override_provider AS
 SELECT ftf_override_provider_v01.provider_fid,
        ftf_override_provider_v01.paytype_index,
        btrim(ftf_override_provider_v01.notes) AS notes
 FROM payerspine.ftf_override_provider_v01
 WHERE (ftf_override_provider_v01.file_id IN ( SELECT max(ftf_override_provider_v01.file_id) AS max
 FROM payerspine.ftf_override_provider_v01))
 ORDER BY ftf_override_provider_v01.record_id;

CREATE  VIEW payerspine.vw_ftf_override_plan AS
 SELECT ftf_override_plan_v01.ftf_health_plan_fid,
        ftf_override_plan_v01.paytype_index,
        btrim(ftf_override_plan_v01.notes) AS notes
 FROM payerspine.ftf_override_plan_v01
 WHERE (ftf_override_plan_v01.file_id IN ( SELECT max(ftf_override_plan_v01.file_id) AS max
 FROM payerspine.ftf_override_plan_v01))
 ORDER BY ftf_override_plan_v01.record_id;

CREATE  VIEW payerspine.vw_drug_assignments AS
 SELECT drug_assignments_v01.drug_id,
        drug_assignments_v01.drug_seq,
        btrim(drug_assignments_v01.product) AS product
 FROM payerspine.drug_assignments_v01
 WHERE (drug_assignments_v01.file_id IN ( SELECT max(drug_assignments_v01.file_id) AS max
 FROM payerspine.drug_assignments_v01))
 ORDER BY drug_assignments_v01.record_id;

CREATE  VIEW payerspine.vw_ftf_pbm_functions AS
 SELECT ftf_pbm_functions_v01.pbm_function_id,
        btrim(ftf_pbm_functions_v01.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions_v01.notes) AS notes,
        ftf_pbm_functions_v01.used
 FROM payerspine.ftf_pbm_functions_v01
 WHERE (ftf_pbm_functions_v01.file_id IN ( SELECT max(ftf_pbm_functions_v01.file_id) AS max
 FROM payerspine.ftf_pbm_functions_v01))
 ORDER BY ftf_pbm_functions_v01.record_id;

CREATE  VIEW payerspine.vw_botox_step_restriction AS
 SELECT botox_step_restriction_v01.code,
        btrim(botox_step_restriction_v01.botox_step_flag) AS botox_step_flag,
        btrim(botox_step_restriction_v01.restriction_group) AS restriction_group,
        btrim(botox_step_restriction_v01.notes) AS notes
 FROM payerspine.botox_step_restriction_v01
 WHERE (botox_step_restriction_v01.file_id IN ( SELECT max(botox_step_restriction_v01.file_id) AS max
 FROM payerspine.botox_step_restriction_v01))
 ORDER BY botox_step_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_step_restriction AS
 SELECT step_restriction_v01.code,
        btrim(step_restriction_v01.step_category) AS step_category,
        btrim(step_restriction_v01.restriction_group) AS restriction_group,
        btrim(step_restriction_v01.notes) AS notes
 FROM payerspine.step_restriction_v01
 WHERE (step_restriction_v01.file_id IN ( SELECT max(step_restriction_v01.file_id) AS max
 FROM payerspine.step_restriction_v01))
 ORDER BY step_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_pa_restriction AS
 SELECT pa_restriction_v01.code,
        btrim(pa_restriction_v01.prescriber_prior_authorization_category) AS prescriber_prior_authorization_category,
        btrim(pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction_v01.notes) AS notes
 FROM payerspine.pa_restriction_v01
 WHERE (pa_restriction_v01.file_id IN ( SELECT max(pa_restriction_v01.file_id) AS max
 FROM payerspine.pa_restriction_v01))
 ORDER BY pa_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_patient_pa_restriction AS
 SELECT patient_pa_restriction_v01.code,
        btrim(patient_pa_restriction_v01.patient_prior_authorization_category) AS patient_prior_authorization_category,
        btrim(patient_pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction_v01.notes) AS notes
 FROM payerspine.patient_pa_restriction_v01
 WHERE (patient_pa_restriction_v01.file_id IN ( SELECT max(patient_pa_restriction_v01.file_id) AS max
 FROM payerspine.patient_pa_restriction_v01))
 ORDER BY patient_pa_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_medical_rec_restriction AS
 SELECT medical_rec_restriction_v01.code,
        btrim(medical_rec_restriction_v01.medical_records_submission_required_flag) AS medical_records_submission_required_flag,
        btrim(medical_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction_v01.notes) AS notes
 FROM payerspine.medical_rec_restriction_v01
 WHERE (medical_rec_restriction_v01.file_id IN ( SELECT max(medical_rec_restriction_v01.file_id) AS max
 FROM payerspine.medical_rec_restriction_v01))
 ORDER BY medical_rec_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_unspecified_rec_restriction AS
 SELECT unspecified_rec_restriction_v01.code,
        btrim(unspecified_rec_restriction_v01.unspecified_restriction_flag) AS unspecified_restriction_flag,
        btrim(unspecified_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction_v01.notes) AS notes
 FROM payerspine.unspecified_rec_restriction_v01
 WHERE (unspecified_rec_restriction_v01.file_id IN ( SELECT max(unspecified_rec_restriction_v01.file_id) AS max
 FROM payerspine.unspecified_rec_restriction_v01))
 ORDER BY unspecified_rec_restriction_v01.record_id;

CREATE  VIEW payerspine.vw_override_bridge_ftf_plan_types AS
 SELECT btrim(override_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.override_ftf_health_plan_type) AS override_ftf_health_plan_type,
        override_bridge_ftf_plan_types_v01.override_precedence
 FROM payerspine.override_bridge_ftf_plan_types_v01
 WHERE (override_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(override_bridge_ftf_plan_types_v01.file_id) AS max
 FROM payerspine.override_bridge_ftf_plan_types_v01))
 ORDER BY override_bridge_ftf_plan_types_v01.record_id;

CREATE  VIEW payerspine.vw_delete_bridge_ftf_plan_types AS
 SELECT btrim(delete_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.delete_flag) AS delete_flag
 FROM payerspine.delete_bridge_ftf_plan_types_v01
 WHERE (delete_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(delete_bridge_ftf_plan_types_v01.file_id) AS max
 FROM payerspine.delete_bridge_ftf_plan_types_v01))
 ORDER BY delete_bridge_ftf_plan_types_v01.record_id;

CREATE  VIEW payerspine.vw_provider_override_default AS
 SELECT provider_override_default_v01.provider_id,
        btrim(provider_override_default_v01.paytype_regex) AS paytype_regex,
        btrim(provider_override_default_v01.provider_name) AS provider_name,
        btrim(provider_override_default_v01.fill_in_iqvia_payer_name_if_no_bridge) AS fill_in_iqvia_payer_name_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_payer) AS override_best_iqvia_payer,
        btrim(provider_override_default_v01.fill_in_iqvia_pbm_if_no_bridge) AS fill_in_iqvia_pbm_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_pbm) AS override_best_iqvia_pbm
 FROM payerspine.provider_override_default_v01
 WHERE (provider_override_default_v01.file_id IN ( SELECT max(provider_override_default_v01.file_id) AS max
 FROM payerspine.provider_override_default_v01))
 ORDER BY provider_override_default_v01.record_id;

CREATE  VIEW payerspine.vw_key_controller_list AS
 SELECT key_controller_list_v01.ftf_health_plan_fid,
        btrim(key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(key_controller_list_v01.payer_pbm) AS payer_pbm
 FROM payerspine.key_controller_list_v01
 WHERE (key_controller_list_v01.file_id IN ( SELECT max(key_controller_list_v01.file_id) AS max
 FROM payerspine.key_controller_list_v01))
 ORDER BY key_controller_list_v01.record_id;

CREATE  VIEW payerspine.vw_calculated_pbm_config AS
 SELECT btrim(calculated_pbm_config_v01.ftf_formulary_management_pbm_regex) AS ftf_formulary_management_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_formulary_influencer_pbm_regex) AS ftf_formulary_influencer_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_claims_processing_pbm_regex) AS ftf_claims_processing_pbm_regex,
        btrim(calculated_pbm_config_v01.calculated_pbm_column) AS calculated_pbm_column
 FROM payerspine.calculated_pbm_config_v01
 WHERE (calculated_pbm_config_v01.file_id IN ( SELECT max(calculated_pbm_config_v01.file_id) AS max
 FROM payerspine.calculated_pbm_config_v01))
 ORDER BY calculated_pbm_config_v01.record_id;

CREATE  VIEW payerspine.vw_calc_pbm_key_pbm_mapping AS
 SELECT btrim(calc_pbm_key_pbm_mapping_v01.calculated_pbm) AS calculated_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.key_pbm) AS key_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.added_by) AS added_by
 FROM payerspine.calc_pbm_key_pbm_mapping_v01
 WHERE (calc_pbm_key_pbm_mapping_v01.file_id IN ( SELECT max(calc_pbm_key_pbm_mapping_v01.file_id) AS max
 FROM payerspine.calc_pbm_key_pbm_mapping_v01))
 ORDER BY calc_pbm_key_pbm_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_has_pa_mapping AS
 SELECT has_pa_mapping_v01.has_pa,
        btrim(has_pa_mapping_v01.pa_regex) AS pa_regex,
        btrim(has_pa_mapping_v01.notes) AS notes
 FROM payerspine.has_pa_mapping_v01
 WHERE (has_pa_mapping_v01.file_id IN ( SELECT max(has_pa_mapping_v01.file_id) AS max
 FROM payerspine.has_pa_mapping_v01))
 ORDER BY has_pa_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_has_st_mapping AS
 SELECT has_st_mapping_v01.has_st,
        btrim(has_st_mapping_v01.st_regex) AS st_regex,
        btrim(has_st_mapping_v01.notes) AS notes
 FROM payerspine.has_st_mapping_v01
 WHERE (has_st_mapping_v01.file_id IN ( SELECT max(has_st_mapping_v01.file_id) AS max
 FROM payerspine.has_st_mapping_v01))
 ORDER BY has_st_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_formulary_derivation_config AS
 SELECT btrim(formulary_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(formulary_derivation_config_v01.has_pa_regex) AS has_pa_regex,
        btrim(formulary_derivation_config_v01.has_st_regex) AS has_st_regex,
        btrim(formulary_derivation_config_v01.formulary) AS formulary,
        btrim(formulary_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(formulary_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(formulary_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex
 FROM payerspine.formulary_derivation_config_v01
 WHERE (formulary_derivation_config_v01.file_id IN ( SELECT max(formulary_derivation_config_v01.file_id) AS max
 FROM payerspine.formulary_derivation_config_v01))
 ORDER BY formulary_derivation_config_v01.record_id;

CREATE  VIEW payerspine.vw_copay_tier_derivation_config AS
 SELECT btrim(copay_tier_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        copay_tier_derivation_config_v01.tier_cat,
        btrim(copay_tier_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(copay_tier_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(copay_tier_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        btrim(copay_tier_derivation_config_v01.copay_tier) AS copay_tier
 FROM payerspine.copay_tier_derivation_config_v01
 WHERE (copay_tier_derivation_config_v01.file_id IN ( SELECT max(copay_tier_derivation_config_v01.file_id) AS max
 FROM payerspine.copay_tier_derivation_config_v01))
 ORDER BY copay_tier_derivation_config_v01.record_id;

CREATE  VIEW payerspine.vw_tier_cat_description_mapping AS
 SELECT tier_cat_description_mapping_v01.tier_cat,
        btrim(tier_cat_description_mapping_v01.description) AS description,
        btrim(tier_cat_description_mapping_v01.notes) AS notes
 FROM payerspine.tier_cat_description_mapping_v01
 WHERE (tier_cat_description_mapping_v01.file_id IN ( SELECT max(tier_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.tier_cat_description_mapping_v01))
 ORDER BY tier_cat_description_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_restriction_category_derivation_config AS
 SELECT btrim(restriction_category_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(restriction_category_derivation_config_v01.has_pa_has_st_regex) AS has_pa_has_st_regex,
        btrim(restriction_category_derivation_config_v01.unspec_regex) AS unspec_regex,
        btrim(restriction_category_derivation_config_v01.step_regex) AS step_regex,
        btrim(restriction_category_derivation_config_v01.botox_regex) AS botox_regex,
        btrim(restriction_category_derivation_config_v01.prespa_regex) AS prespa_regex,
        btrim(restriction_category_derivation_config_v01.tier_cat_regex) AS tier_cat_regex,
        btrim(restriction_category_derivation_config_v01.medrecs_regex) AS medrecs_regex,
        restriction_category_derivation_config_v01.restcat,
        btrim(restriction_category_derivation_config_v01.restriction_category) AS restriction_category,
        btrim(restriction_category_derivation_config_v01.meaning) AS meaning
 FROM payerspine.restriction_category_derivation_config_v01
 WHERE (restriction_category_derivation_config_v01.file_id IN ( SELECT max(restriction_category_derivation_config_v01.file_id) AS max
 FROM payerspine.restriction_category_derivation_config_v01))
 ORDER BY restriction_category_derivation_config_v01.record_id;

CREATE  VIEW payerspine.vw_restriction_cat_description_mapping AS
 SELECT btrim(restriction_cat_description_mapping_v01.rest_cat) AS rest_cat,
        btrim(restriction_cat_description_mapping_v01.description) AS description,
        btrim(restriction_cat_description_mapping_v01.notes) AS notes
 FROM payerspine.restriction_cat_description_mapping_v01
 WHERE (restriction_cat_description_mapping_v01.file_id IN ( SELECT max(restriction_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.restriction_cat_description_mapping_v01))
 ORDER BY restriction_cat_description_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_coverage_category_derivation_config AS
 SELECT btrim(coverage_category_derivation_config_v01.paytype_regex) AS paytype_regex,
        btrim(coverage_category_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        coverage_category_derivation_config_v01.coverage_cat_code,
        btrim(coverage_category_derivation_config_v01.coverage_category) AS coverage_category,
        btrim(coverage_category_derivation_config_v01.restriction_cat_code_regex) AS restriction_cat_code_regex,
        btrim(coverage_category_derivation_config_v01.meaning) AS meaning
 FROM payerspine.coverage_category_derivation_config_v01
 WHERE (coverage_category_derivation_config_v01.file_id IN ( SELECT max(coverage_category_derivation_config_v01.file_id) AS max
 FROM payerspine.coverage_category_derivation_config_v01))
 ORDER BY coverage_category_derivation_config_v01.record_id;

CREATE  VIEW payerspine.vw_coverage_cat_description_mapping AS
 SELECT btrim(coverage_cat_description_mapping_v01.coverage_cat) AS coverage_cat,
        btrim(coverage_cat_description_mapping_v01.description) AS description,
        btrim(coverage_cat_description_mapping_v01.notes) AS notes
 FROM payerspine.coverage_cat_description_mapping_v01
 WHERE (coverage_cat_description_mapping_v01.file_id IN ( SELECT max(coverage_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.coverage_cat_description_mapping_v01))
 ORDER BY coverage_cat_description_mapping_v01.record_id;

CREATE  VIEW payerspine.vw_step_restriction_description AS
 SELECT step_restriction_description_v01.step,
        btrim(step_restriction_description_v01.description) AS description
 FROM payerspine.step_restriction_description_v01
 WHERE (step_restriction_description_v01.file_id IN ( SELECT max(step_restriction_description_v01.file_id) AS max
 FROM payerspine.step_restriction_description_v01))
 ORDER BY step_restriction_description_v01.record_id;

CREATE  VIEW payerspine.vw_pres_pa_restriction_description AS
 SELECT pres_pa_restriction_description_v01.prespa,
        btrim(pres_pa_restriction_description_v01.description) AS description
 FROM payerspine.pres_pa_restriction_description_v01
 WHERE (pres_pa_restriction_description_v01.file_id IN ( SELECT max(pres_pa_restriction_description_v01.file_id) AS max
 FROM payerspine.pres_pa_restriction_description_v01))
 ORDER BY pres_pa_restriction_description_v01.record_id;

CREATE  VIEW payerspine.vw_pat_pa_restriction_description AS
 SELECT pat_pa_restriction_description_v01.patpa,
        btrim(pat_pa_restriction_description_v01.description) AS description
 FROM payerspine.pat_pa_restriction_description_v01
 WHERE (pat_pa_restriction_description_v01.file_id IN ( SELECT max(pat_pa_restriction_description_v01.file_id) AS max
 FROM payerspine.pat_pa_restriction_description_v01))
 ORDER BY pat_pa_restriction_description_v01.record_id;

CREATE  VIEW payerspine.vw_override_fid_iqvia_key_controller_list AS
 SELECT override_fid_iqvia_key_controller_list_v01.iqvia_plan_code,
        btrim(override_fid_iqvia_key_controller_list_v01.iqvia_plan_name) AS iqvia_plan_name,
        override_fid_iqvia_key_controller_list_v01.ftf_health_plan_fid,
        btrim(override_fid_iqvia_key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(override_fid_iqvia_key_controller_list_v01.payer_pbm) AS payer_pbm
 FROM payerspine.override_fid_iqvia_key_controller_list_v01
 WHERE (override_fid_iqvia_key_controller_list_v01.file_id IN ( SELECT max(override_fid_iqvia_key_controller_list_v01.file_id) AS max
 FROM payerspine.override_fid_iqvia_key_controller_list_v01))
 ORDER BY override_fid_iqvia_key_controller_list_v01.record_id;

CREATE  VIEW payerspine.vw_curr_iqvia_plans_discard_cdw AS
 SELECT iqvia_plans_discard_v01.payer_id,
        btrim(iqvia_plans_discard_v01.notes) AS notes,
        iqvia_plans_discard_v01.file_id,
        iqvia_plans_discard_v01.record_id
 FROM payerspine.iqvia_plans_discard_v01
 WHERE (iqvia_plans_discard_v01.file_id IN ( SELECT max(iqvia_plans_discard_v01.file_id) AS max
 FROM payerspine.iqvia_plans_discard_v01));

CREATE  VIEW payerspine.vw_curr_model_paytype_map_cdw AS
 SELECT btrim(model_paytype_map_v01.model) AS model,
        btrim(model_paytype_map_v01.paytype) AS paytype,
        btrim(model_paytype_map_v01.notes) AS notes,
        model_paytype_map_v01.file_id,
        model_paytype_map_v01.record_id
 FROM payerspine.model_paytype_map_v01
 WHERE (model_paytype_map_v01.file_id IN ( SELECT max(model_paytype_map_v01.file_id) AS max
 FROM payerspine.model_paytype_map_v01));

CREATE  VIEW payerspine.vw_curr_iqvia_paytypeindex_cdw AS
 SELECT iqvia_paytypeindex_v01.paytype_index,
        btrim(iqvia_paytypeindex_v01.paytype) AS paytype,
        iqvia_paytypeindex_v01.file_id,
        iqvia_paytypeindex_v01.record_id
 FROM payerspine.iqvia_paytypeindex_v01
 WHERE (iqvia_paytypeindex_v01.file_id IN ( SELECT max(iqvia_paytypeindex_v01.file_id) AS max
 FROM payerspine.iqvia_paytypeindex_v01));

CREATE  VIEW payerspine.vw_curr_iqvia_payer_paytype_override_cdw AS
 SELECT btrim(iqvia_payer_paytype_override_v01.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override_v01.paytype) AS paytype,
        iqvia_payer_paytype_override_v01.file_id,
        iqvia_payer_paytype_override_v01.record_id
 FROM payerspine.iqvia_payer_paytype_override_v01
 WHERE (iqvia_payer_paytype_override_v01.file_id IN ( SELECT max(iqvia_payer_paytype_override_v01.file_id) AS max
 FROM payerspine.iqvia_payer_paytype_override_v01));

CREATE  VIEW payerspine.vw_curr_ftf_plans_paytypeindex_cdw AS
 SELECT btrim(ftf_plans_paytypeindex_v01.ftf_health_plan_type) AS ftf_health_plan_type,
        ftf_plans_paytypeindex_v01.paytype_index,
        ftf_plans_paytypeindex_v01.file_id,
        ftf_plans_paytypeindex_v01.record_id
 FROM payerspine.ftf_plans_paytypeindex_v01
 WHERE (ftf_plans_paytypeindex_v01.file_id IN ( SELECT max(ftf_plans_paytypeindex_v01.file_id) AS max
 FROM payerspine.ftf_plans_paytypeindex_v01));

CREATE  VIEW payerspine.vw_curr_ftf_paytype_paytypeindex_cdw AS
 SELECT ftf_paytype_paytypeindex_v01.paytype_index,
        btrim(ftf_paytype_paytypeindex_v01.paytype) AS paytype,
        ftf_paytype_paytypeindex_v01.file_id,
        ftf_paytype_paytypeindex_v01.record_id
 FROM payerspine.ftf_paytype_paytypeindex_v01
 WHERE (ftf_paytype_paytypeindex_v01.file_id IN ( SELECT max(ftf_paytype_paytypeindex_v01.file_id) AS max
 FROM payerspine.ftf_paytype_paytypeindex_v01));

CREATE  VIEW payerspine.vw_curr_ftf_override_provider_cdw AS
 SELECT ftf_override_provider_v01.provider_fid,
        ftf_override_provider_v01.paytype_index,
        btrim(ftf_override_provider_v01.notes) AS notes,
        ftf_override_provider_v01.file_id,
        ftf_override_provider_v01.record_id
 FROM payerspine.ftf_override_provider_v01
 WHERE (ftf_override_provider_v01.file_id IN ( SELECT max(ftf_override_provider_v01.file_id) AS max
 FROM payerspine.ftf_override_provider_v01));

CREATE  VIEW payerspine.vw_curr_ftf_override_plan_cdw AS
 SELECT ftf_override_plan_v01.ftf_health_plan_fid,
        ftf_override_plan_v01.paytype_index,
        btrim(ftf_override_plan_v01.notes) AS notes,
        ftf_override_plan_v01.file_id,
        ftf_override_plan_v01.record_id
 FROM payerspine.ftf_override_plan_v01
 WHERE (ftf_override_plan_v01.file_id IN ( SELECT max(ftf_override_plan_v01.file_id) AS max
 FROM payerspine.ftf_override_plan_v01));

CREATE  VIEW payerspine.vw_curr_drug_assignments_cdw AS
 SELECT drug_assignments_v01.drug_id,
        drug_assignments_v01.drug_seq,
        btrim(drug_assignments_v01.product) AS product,
        drug_assignments_v01.file_id,
        drug_assignments_v01.record_id
 FROM payerspine.drug_assignments_v01
 WHERE (drug_assignments_v01.file_id IN ( SELECT max(drug_assignments_v01.file_id) AS max
 FROM payerspine.drug_assignments_v01));

CREATE  VIEW payerspine.vw_curr_ftf_pbm_functions_cdw AS
 SELECT ftf_pbm_functions_v01.pbm_function_id,
        btrim(ftf_pbm_functions_v01.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions_v01.notes) AS notes,
        ftf_pbm_functions_v01.used,
        ftf_pbm_functions_v01.file_id,
        ftf_pbm_functions_v01.record_id
 FROM payerspine.ftf_pbm_functions_v01
 WHERE (ftf_pbm_functions_v01.file_id IN ( SELECT max(ftf_pbm_functions_v01.file_id) AS max
 FROM payerspine.ftf_pbm_functions_v01));

CREATE  VIEW payerspine.vw_curr_botox_step_restriction_cdw AS
 SELECT botox_step_restriction_v01.code,
        btrim(botox_step_restriction_v01.botox_step_flag) AS botox_step_flag,
        btrim(botox_step_restriction_v01.restriction_group) AS restriction_group,
        btrim(botox_step_restriction_v01.notes) AS notes,
        botox_step_restriction_v01.file_id,
        botox_step_restriction_v01.record_id
 FROM payerspine.botox_step_restriction_v01
 WHERE (botox_step_restriction_v01.file_id IN ( SELECT max(botox_step_restriction_v01.file_id) AS max
 FROM payerspine.botox_step_restriction_v01));

CREATE  VIEW payerspine.vw_curr_step_restriction_cdw AS
 SELECT step_restriction_v01.code,
        btrim(step_restriction_v01.step_category) AS step_category,
        btrim(step_restriction_v01.restriction_group) AS restriction_group,
        btrim(step_restriction_v01.notes) AS notes,
        step_restriction_v01.file_id,
        step_restriction_v01.record_id
 FROM payerspine.step_restriction_v01
 WHERE (step_restriction_v01.file_id IN ( SELECT max(step_restriction_v01.file_id) AS max
 FROM payerspine.step_restriction_v01));

CREATE  VIEW payerspine.vw_curr_pa_restriction_cdw AS
 SELECT pa_restriction_v01.code,
        btrim(pa_restriction_v01.prescriber_prior_authorization_category) AS prescriber_prior_authorization_category,
        btrim(pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction_v01.notes) AS notes,
        pa_restriction_v01.file_id,
        pa_restriction_v01.record_id
 FROM payerspine.pa_restriction_v01
 WHERE (pa_restriction_v01.file_id IN ( SELECT max(pa_restriction_v01.file_id) AS max
 FROM payerspine.pa_restriction_v01));

CREATE  VIEW payerspine.vw_curr_patient_pa_restriction_cdw AS
 SELECT patient_pa_restriction_v01.code,
        btrim(patient_pa_restriction_v01.patient_prior_authorization_category) AS patient_prior_authorization_category,
        btrim(patient_pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction_v01.notes) AS notes,
        patient_pa_restriction_v01.file_id,
        patient_pa_restriction_v01.record_id
 FROM payerspine.patient_pa_restriction_v01
 WHERE (patient_pa_restriction_v01.file_id IN ( SELECT max(patient_pa_restriction_v01.file_id) AS max
 FROM payerspine.patient_pa_restriction_v01));

CREATE  VIEW payerspine.vw_curr_medical_rec_restriction_cdw AS
 SELECT medical_rec_restriction_v01.code,
        btrim(medical_rec_restriction_v01.medical_records_submission_required_flag) AS medical_records_submission_required_flag,
        btrim(medical_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction_v01.notes) AS notes,
        medical_rec_restriction_v01.file_id,
        medical_rec_restriction_v01.record_id
 FROM payerspine.medical_rec_restriction_v01
 WHERE (medical_rec_restriction_v01.file_id IN ( SELECT max(medical_rec_restriction_v01.file_id) AS max
 FROM payerspine.medical_rec_restriction_v01));

CREATE  VIEW payerspine.vw_curr_unspecified_rec_restriction_cdw AS
 SELECT unspecified_rec_restriction_v01.code,
        btrim(unspecified_rec_restriction_v01.unspecified_restriction_flag) AS unspecified_restriction_flag,
        btrim(unspecified_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction_v01.notes) AS notes,
        unspecified_rec_restriction_v01.file_id,
        unspecified_rec_restriction_v01.record_id
 FROM payerspine.unspecified_rec_restriction_v01
 WHERE (unspecified_rec_restriction_v01.file_id IN ( SELECT max(unspecified_rec_restriction_v01.file_id) AS max
 FROM payerspine.unspecified_rec_restriction_v01));

CREATE  VIEW payerspine.vw_curr_override_bridge_ftf_plan_types_cdw AS
 SELECT btrim(override_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.override_ftf_health_plan_type) AS override_ftf_health_plan_type,
        override_bridge_ftf_plan_types_v01.override_precedence,
        override_bridge_ftf_plan_types_v01.file_id,
        override_bridge_ftf_plan_types_v01.record_id
 FROM payerspine.override_bridge_ftf_plan_types_v01
 WHERE (override_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(override_bridge_ftf_plan_types_v01.file_id) AS max
 FROM payerspine.override_bridge_ftf_plan_types_v01));

CREATE  VIEW payerspine.vw_curr_delete_bridge_ftf_plan_types_cdw AS
 SELECT btrim(delete_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.delete_flag) AS delete_flag,
        delete_bridge_ftf_plan_types_v01.file_id,
        delete_bridge_ftf_plan_types_v01.record_id
 FROM payerspine.delete_bridge_ftf_plan_types_v01
 WHERE (delete_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(delete_bridge_ftf_plan_types_v01.file_id) AS max
 FROM payerspine.delete_bridge_ftf_plan_types_v01));

CREATE  VIEW payerspine.vw_curr_provider_override_default_cdw AS
 SELECT provider_override_default_v01.provider_id,
        btrim(provider_override_default_v01.paytype_regex) AS paytype_regex,
        btrim(provider_override_default_v01.provider_name) AS provider_name,
        btrim(provider_override_default_v01.fill_in_iqvia_payer_name_if_no_bridge) AS fill_in_iqvia_payer_name_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_payer) AS override_best_iqvia_payer,
        btrim(provider_override_default_v01.fill_in_iqvia_pbm_if_no_bridge) AS fill_in_iqvia_pbm_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_pbm) AS override_best_iqvia_pbm,
        provider_override_default_v01.file_id,
        provider_override_default_v01.record_id
 FROM payerspine.provider_override_default_v01
 WHERE (provider_override_default_v01.file_id IN ( SELECT max(provider_override_default_v01.file_id) AS max
 FROM payerspine.provider_override_default_v01));

CREATE  VIEW payerspine.vw_curr_key_controller_list_cdw AS
 SELECT key_controller_list_v01.ftf_health_plan_fid,
        btrim(key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(key_controller_list_v01.payer_pbm) AS payer_pbm,
        key_controller_list_v01.file_id,
        key_controller_list_v01.record_id
 FROM payerspine.key_controller_list_v01
 WHERE (key_controller_list_v01.file_id IN ( SELECT max(key_controller_list_v01.file_id) AS max
 FROM payerspine.key_controller_list_v01));

CREATE  VIEW payerspine.vw_curr_calculated_pbm_config_cdw AS
 SELECT btrim(calculated_pbm_config_v01.ftf_formulary_management_pbm_regex) AS ftf_formulary_management_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_formulary_influencer_pbm_regex) AS ftf_formulary_influencer_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_claims_processing_pbm_regex) AS ftf_claims_processing_pbm_regex,
        btrim(calculated_pbm_config_v01.calculated_pbm_column) AS calculated_pbm_column,
        calculated_pbm_config_v01.file_id,
        calculated_pbm_config_v01.record_id
 FROM payerspine.calculated_pbm_config_v01
 WHERE (calculated_pbm_config_v01.file_id IN ( SELECT max(calculated_pbm_config_v01.file_id) AS max
 FROM payerspine.calculated_pbm_config_v01));

CREATE  VIEW payerspine.vw_curr_calc_pbm_key_pbm_mapping_cdw AS
 SELECT btrim(calc_pbm_key_pbm_mapping_v01.calculated_pbm) AS calculated_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.key_pbm) AS key_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.added_by) AS added_by,
        calc_pbm_key_pbm_mapping_v01.file_id,
        calc_pbm_key_pbm_mapping_v01.record_id
 FROM payerspine.calc_pbm_key_pbm_mapping_v01
 WHERE (calc_pbm_key_pbm_mapping_v01.file_id IN ( SELECT max(calc_pbm_key_pbm_mapping_v01.file_id) AS max
 FROM payerspine.calc_pbm_key_pbm_mapping_v01));

CREATE  VIEW payerspine.vw_curr_has_pa_mapping_cdw AS
 SELECT has_pa_mapping_v01.has_pa,
        btrim(has_pa_mapping_v01.pa_regex) AS pa_regex,
        btrim(has_pa_mapping_v01.notes) AS notes,
        has_pa_mapping_v01.file_id,
        has_pa_mapping_v01.record_id
 FROM payerspine.has_pa_mapping_v01
 WHERE (has_pa_mapping_v01.file_id IN ( SELECT max(has_pa_mapping_v01.file_id) AS max
 FROM payerspine.has_pa_mapping_v01));

CREATE  VIEW payerspine.vw_curr_has_st_mapping_cdw AS
 SELECT has_st_mapping_v01.has_st,
        btrim(has_st_mapping_v01.st_regex) AS st_regex,
        btrim(has_st_mapping_v01.notes) AS notes,
        has_st_mapping_v01.file_id,
        has_st_mapping_v01.record_id
 FROM payerspine.has_st_mapping_v01
 WHERE (has_st_mapping_v01.file_id IN ( SELECT max(has_st_mapping_v01.file_id) AS max
 FROM payerspine.has_st_mapping_v01));

CREATE  VIEW payerspine.vw_curr_formulary_derivation_config_cdw AS
 SELECT btrim(formulary_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(formulary_derivation_config_v01.has_pa_regex) AS has_pa_regex,
        btrim(formulary_derivation_config_v01.has_st_regex) AS has_st_regex,
        btrim(formulary_derivation_config_v01.formulary) AS formulary,
        btrim(formulary_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(formulary_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(formulary_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        formulary_derivation_config_v01.file_id,
        formulary_derivation_config_v01.record_id
 FROM payerspine.formulary_derivation_config_v01
 WHERE (formulary_derivation_config_v01.file_id IN ( SELECT max(formulary_derivation_config_v01.file_id) AS max
 FROM payerspine.formulary_derivation_config_v01));

CREATE  VIEW payerspine.vw_curr_copay_tier_derivation_config_cdw AS
 SELECT btrim(copay_tier_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        copay_tier_derivation_config_v01.tier_cat,
        btrim(copay_tier_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(copay_tier_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(copay_tier_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        btrim(copay_tier_derivation_config_v01.copay_tier) AS copay_tier,
        copay_tier_derivation_config_v01.file_id,
        copay_tier_derivation_config_v01.record_id
 FROM payerspine.copay_tier_derivation_config_v01
 WHERE (copay_tier_derivation_config_v01.file_id IN ( SELECT max(copay_tier_derivation_config_v01.file_id) AS max
 FROM payerspine.copay_tier_derivation_config_v01));

CREATE  VIEW payerspine.vw_curr_tier_cat_description_mapping_cdw AS
 SELECT tier_cat_description_mapping_v01.tier_cat,
        btrim(tier_cat_description_mapping_v01.description) AS description,
        btrim(tier_cat_description_mapping_v01.notes) AS notes,
        tier_cat_description_mapping_v01.file_id,
        tier_cat_description_mapping_v01.record_id
 FROM payerspine.tier_cat_description_mapping_v01
 WHERE (tier_cat_description_mapping_v01.file_id IN ( SELECT max(tier_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.tier_cat_description_mapping_v01));

CREATE  VIEW payerspine.vw_curr_restriction_category_derivation_config_cdw AS
 SELECT btrim(restriction_category_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(restriction_category_derivation_config_v01.has_pa_has_st_regex) AS has_pa_has_st_regex,
        btrim(restriction_category_derivation_config_v01.unspec_regex) AS unspec_regex,
        btrim(restriction_category_derivation_config_v01.step_regex) AS step_regex,
        btrim(restriction_category_derivation_config_v01.botox_regex) AS botox_regex,
        btrim(restriction_category_derivation_config_v01.prespa_regex) AS prespa_regex,
        btrim(restriction_category_derivation_config_v01.tier_cat_regex) AS tier_cat_regex,
        btrim(restriction_category_derivation_config_v01.medrecs_regex) AS medrecs_regex,
        restriction_category_derivation_config_v01.restcat,
        btrim(restriction_category_derivation_config_v01.restriction_category) AS restriction_category,
        btrim(restriction_category_derivation_config_v01.meaning) AS meaning,
        restriction_category_derivation_config_v01.file_id,
        restriction_category_derivation_config_v01.record_id
 FROM payerspine.restriction_category_derivation_config_v01
 WHERE (restriction_category_derivation_config_v01.file_id IN ( SELECT max(restriction_category_derivation_config_v01.file_id) AS max
 FROM payerspine.restriction_category_derivation_config_v01));

CREATE  VIEW payerspine.vw_curr_restriction_cat_description_mapping_cdw AS
 SELECT btrim(restriction_cat_description_mapping_v01.rest_cat) AS rest_cat,
        btrim(restriction_cat_description_mapping_v01.description) AS description,
        btrim(restriction_cat_description_mapping_v01.notes) AS notes,
        restriction_cat_description_mapping_v01.file_id,
        restriction_cat_description_mapping_v01.record_id
 FROM payerspine.restriction_cat_description_mapping_v01
 WHERE (restriction_cat_description_mapping_v01.file_id IN ( SELECT max(restriction_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.restriction_cat_description_mapping_v01));

CREATE  VIEW payerspine.vw_curr_coverage_category_derivation_config_cdw AS
 SELECT btrim(coverage_category_derivation_config_v01.paytype_regex) AS paytype_regex,
        btrim(coverage_category_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        coverage_category_derivation_config_v01.coverage_cat_code,
        btrim(coverage_category_derivation_config_v01.coverage_category) AS coverage_category,
        btrim(coverage_category_derivation_config_v01.restriction_cat_code_regex) AS restriction_cat_code_regex,
        btrim(coverage_category_derivation_config_v01.meaning) AS meaning,
        coverage_category_derivation_config_v01.file_id,
        coverage_category_derivation_config_v01.record_id
 FROM payerspine.coverage_category_derivation_config_v01
 WHERE (coverage_category_derivation_config_v01.file_id IN ( SELECT max(coverage_category_derivation_config_v01.file_id) AS max
 FROM payerspine.coverage_category_derivation_config_v01));

CREATE  VIEW payerspine.vw_curr_coverage_cat_description_mapping_cdw AS
 SELECT btrim(coverage_cat_description_mapping_v01.coverage_cat) AS coverage_cat,
        btrim(coverage_cat_description_mapping_v01.description) AS description,
        btrim(coverage_cat_description_mapping_v01.notes) AS notes,
        coverage_cat_description_mapping_v01.file_id,
        coverage_cat_description_mapping_v01.record_id
 FROM payerspine.coverage_cat_description_mapping_v01
 WHERE (coverage_cat_description_mapping_v01.file_id IN ( SELECT max(coverage_cat_description_mapping_v01.file_id) AS max
 FROM payerspine.coverage_cat_description_mapping_v01));

CREATE  VIEW payerspine.vw_curr_step_restriction_description_cdw AS
 SELECT step_restriction_description_v01.step,
        btrim(step_restriction_description_v01.description) AS description,
        step_restriction_description_v01.file_id,
        step_restriction_description_v01.record_id
 FROM payerspine.step_restriction_description_v01
 WHERE (step_restriction_description_v01.file_id IN ( SELECT max(step_restriction_description_v01.file_id) AS max
 FROM payerspine.step_restriction_description_v01));

CREATE  VIEW payerspine.vw_curr_pres_pa_restriction_description_cdw AS
 SELECT pres_pa_restriction_description_v01.prespa,
        btrim(pres_pa_restriction_description_v01.description) AS description,
        pres_pa_restriction_description_v01.file_id,
        pres_pa_restriction_description_v01.record_id
 FROM payerspine.pres_pa_restriction_description_v01
 WHERE (pres_pa_restriction_description_v01.file_id IN ( SELECT max(pres_pa_restriction_description_v01.file_id) AS max
 FROM payerspine.pres_pa_restriction_description_v01));

CREATE  VIEW payerspine.vw_curr_pat_pa_restriction_description_cdw AS
 SELECT pat_pa_restriction_description_v01.patpa,
        btrim(pat_pa_restriction_description_v01.description) AS description,
        pat_pa_restriction_description_v01.file_id,
        pat_pa_restriction_description_v01.record_id
 FROM payerspine.pat_pa_restriction_description_v01
 WHERE (pat_pa_restriction_description_v01.file_id IN ( SELECT max(pat_pa_restriction_description_v01.file_id) AS max
 FROM payerspine.pat_pa_restriction_description_v01));

CREATE  VIEW payerspine.vw_curr_override_fid_iqvia_key_controller_list_cdw AS
 SELECT override_fid_iqvia_key_controller_list_v01.iqvia_plan_code,
        btrim(override_fid_iqvia_key_controller_list_v01.iqvia_plan_name) AS iqvia_plan_name,
        override_fid_iqvia_key_controller_list_v01.ftf_health_plan_fid,
        btrim(override_fid_iqvia_key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(override_fid_iqvia_key_controller_list_v01.payer_pbm) AS payer_pbm,
        override_fid_iqvia_key_controller_list_v01.file_id,
        override_fid_iqvia_key_controller_list_v01.record_id
 FROM payerspine.override_fid_iqvia_key_controller_list_v01
 WHERE (override_fid_iqvia_key_controller_list_v01.file_id IN ( SELECT max(override_fid_iqvia_key_controller_list_v01.file_id) AS max
 FROM payerspine.override_fid_iqvia_key_controller_list_v01));

CREATE  VIEW payerspine.vw_saba_mkt_ajovy_payer_spine_prod_list AS
 SELECT btrim(saba_mkt_ajovy_payer_spine_prod_list.product_name) AS product_name,
        btrim(saba_mkt_ajovy_payer_spine_prod_list.notes) AS notes
 FROM payerspine.saba_mkt_ajovy_payer_spine_prod_list
 WHERE (saba_mkt_ajovy_payer_spine_prod_list.file_id IN ( SELECT max(saba_mkt_ajovy_payer_spine_prod_list.file_id) AS max
 FROM payerspine.saba_mkt_ajovy_payer_spine_prod_list));

CREATE  VIEW payerspine.vw_curr_saba_mkt_ajovy_payer_spine_prod_list AS
 SELECT btrim(saba_mkt_ajovy_payer_spine_prod_list.product_name) AS product_name,
        btrim(saba_mkt_ajovy_payer_spine_prod_list.notes) AS notes,
        saba_mkt_ajovy_payer_spine_prod_list.file_id,
        saba_mkt_ajovy_payer_spine_prod_list.record_id
 FROM payerspine.saba_mkt_ajovy_payer_spine_prod_list
 WHERE (saba_mkt_ajovy_payer_spine_prod_list.file_id IN ( SELECT max(saba_mkt_ajovy_payer_spine_prod_list.file_id) AS max
 FROM payerspine.saba_mkt_ajovy_payer_spine_prod_list));

CREATE  VIEW payerspine.vw_curr_iqvia_plan_preprocessed_cdw_v1 AS
 SELECT iqvia_plan_preprocessed_cdw_v1.iqvia_payer_id,
        iqvia_plan_preprocessed_cdw_v1.iqvia_payer_name,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_id,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_code,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_name,
        iqvia_plan_preprocessed_cdw_v1.model,
        iqvia_plan_preprocessed_cdw_v1.iqvia_pbm,
        iqvia_plan_preprocessed_cdw_v1.paytype,
        iqvia_plan_preprocessed_cdw_v1.paytype_index,
        iqvia_plan_preprocessed_cdw_v1.cycle_id,
        iqvia_plan_preprocessed_cdw_v1.modified_time,
        iqvia_plan_preprocessed_cdw_v1.modified_by
 FROM payerspine.iqvia_plan_preprocessed_cdw_v1
 WHERE (iqvia_plan_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_preprocessed_cdw_v1'::varchar(30)))))));

CREATE  VIEW payerspine.vw_curr_iqvia_pbm_preprocessed_cdw_v1 AS
 SELECT iqvia_pbm_preprocessed_cdw_v1.iqvia_plan_code,
        iqvia_pbm_preprocessed_cdw_v1.iqvia_pbm,
        iqvia_pbm_preprocessed_cdw_v1.xref_to,
        iqvia_pbm_preprocessed_cdw_v1.iqvia_plan_name,
        iqvia_pbm_preprocessed_cdw_v1.cycle_id,
        iqvia_pbm_preprocessed_cdw_v1.modified_time,
        iqvia_pbm_preprocessed_cdw_v1.modified_by
 FROM payerspine.iqvia_pbm_preprocessed_cdw_v1
 WHERE (iqvia_pbm_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_pbm_preprocessed_cdw_v1'::varchar(29)))))));

CREATE  VIEW payerspine.vw_curr_ftf_health_plans_preprocessed_cdw_v1 AS
 SELECT ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_name,
        ftf_health_plans_preprocessed_cdw_v1.ftf_provider_fid,
        ftf_health_plans_preprocessed_cdw_v1.ftf_provider_name,
        ftf_health_plans_preprocessed_cdw_v1.parent_id,
        ftf_health_plans_preprocessed_cdw_v1.ftf_parent_name,
        ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_type,
        ftf_health_plans_preprocessed_cdw_v1.pref_brand_tier,
        ftf_health_plans_preprocessed_cdw_v1.plan_lives,
        ftf_health_plans_preprocessed_cdw_v1.paytype,
        ftf_health_plans_preprocessed_cdw_v1.paytype_index,
        ftf_health_plans_preprocessed_cdw_v1.cycle_id,
        ftf_health_plans_preprocessed_cdw_v1.modified_time,
        ftf_health_plans_preprocessed_cdw_v1.modified_by
 FROM payerspine.ftf_health_plans_preprocessed_cdw_v1
 WHERE (ftf_health_plans_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_health_plans_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW payerspine.vw_curr_ftf_formularies_preprocessed_cdw_v1 AS
 SELECT ftf_formularies_preprocessed_cdw_v1.drug_seq,
        ftf_formularies_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_formularies_preprocessed_cdw_v1.drug_id,
        ftf_formularies_preprocessed_cdw_v1.tier_code,
        ftf_formularies_preprocessed_cdw_v1.restrictions,
        ftf_formularies_preprocessed_cdw_v1.reason_code,
        ftf_formularies_preprocessed_cdw_v1.reason_code_description,
        ftf_formularies_preprocessed_cdw_v1.pharmacy_status,
        ftf_formularies_preprocessed_cdw_v1.plan_lives,
        ftf_formularies_preprocessed_cdw_v1.check_blank_pharmstat,
        ftf_formularies_preprocessed_cdw_v1.cycle_id,
        ftf_formularies_preprocessed_cdw_v1.modified_time,
        ftf_formularies_preprocessed_cdw_v1.modified_by
 FROM payerspine.ftf_formularies_preprocessed_cdw_v1
 WHERE (ftf_formularies_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formularies_preprocessed_cdw_v1'::varchar(35)))))));

CREATE  VIEW payerspine.vw_curr_ftf_pbms_preprocessed_cdw_v1 AS
 SELECT ftf_pbms_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_pbms_preprocessed_cdw_v1.pbm_id,
        ftf_pbms_preprocessed_cdw_v1.pbm,
        ftf_pbms_preprocessed_cdw_v1.pbm_function_id,
        ftf_pbms_preprocessed_cdw_v1.pbm_function,
        ftf_pbms_preprocessed_cdw_v1.cycle_id,
        ftf_pbms_preprocessed_cdw_v1.modified_time,
        ftf_pbms_preprocessed_cdw_v1.modified_by
 FROM payerspine.ftf_pbms_preprocessed_cdw_v1
 WHERE (ftf_pbms_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_pbms_preprocessed_cdw_v1'::varchar(28)))))));

CREATE  VIEW payerspine.vw_curr_ftf_restrictions_preprocessed_cdw_v1 AS
 SELECT ftf_restrictions_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_restrictions_preprocessed_cdw_v1.drug_id,
        ftf_restrictions_preprocessed_cdw_v1.restriction_code,
        ftf_restrictions_preprocessed_cdw_v1.restriction_detail_id,
        ftf_restrictions_preprocessed_cdw_v1.restriction_detail_text,
        ftf_restrictions_preprocessed_cdw_v1.grouped_restriction_level,
        ftf_restrictions_preprocessed_cdw_v1.drug_seq,
        ftf_restrictions_preprocessed_cdw_v1.botox,
        ftf_restrictions_preprocessed_cdw_v1.step,
        ftf_restrictions_preprocessed_cdw_v1.pres_pa,
        ftf_restrictions_preprocessed_cdw_v1.pat_pa,
        ftf_restrictions_preprocessed_cdw_v1.med_rec,
        ftf_restrictions_preprocessed_cdw_v1.unspec,
        ftf_restrictions_preprocessed_cdw_v1.cycle_id,
        ftf_restrictions_preprocessed_cdw_v1.modified_time,
        ftf_restrictions_preprocessed_cdw_v1.modified_by
 FROM payerspine.ftf_restrictions_preprocessed_cdw_v1
 WHERE (ftf_restrictions_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_restrictions_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW payerspine.vw_curr_ftf_restrictions_preprocessed_cdw_v2 AS
 SELECT ftf_restrictions_preprocessed_cdw_v2.ftf_health_plan_fid,
        ftf_restrictions_preprocessed_cdw_v2.drug_id,
        ftf_restrictions_preprocessed_cdw_v2.drug_seq,
        ftf_restrictions_preprocessed_cdw_v2.restriction_detail_id,
        ftf_restrictions_preprocessed_cdw_v2.botox,
        ftf_restrictions_preprocessed_cdw_v2.step,
        ftf_restrictions_preprocessed_cdw_v2.pres_pa,
        ftf_restrictions_preprocessed_cdw_v2.pat_pa,
        ftf_restrictions_preprocessed_cdw_v2.med_rec,
        ftf_restrictions_preprocessed_cdw_v2.unspec,
        ftf_restrictions_preprocessed_cdw_v2.cycle_id,
        ftf_restrictions_preprocessed_cdw_v2.modified_time,
        ftf_restrictions_preprocessed_cdw_v2.modified_by
 FROM payerspine.ftf_restrictions_preprocessed_cdw_v2
 WHERE (ftf_restrictions_preprocessed_cdw_v2.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_restrictions_preprocessed_cdw_v2'::varchar(36)))))));

CREATE  VIEW payerspine.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 AS
 SELECT ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_payer_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_code,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.comments,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_provider_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.hp_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.overriden_ftf_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.model,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_pbm,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_paytype,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_delete,
        ftf_iqvia_bridge_preprocessed_cdw_v1.paytype_index,
        ftf_iqvia_bridge_preprocessed_cdw_v1.paytype,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_pay_types,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_hp_types,
        ftf_iqvia_bridge_preprocessed_cdw_v1.old_ftf_health_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id,
        ftf_iqvia_bridge_preprocessed_cdw_v1.modified_time,
        ftf_iqvia_bridge_preprocessed_cdw_v1.modified_by
 FROM payerspine.ftf_iqvia_bridge_preprocessed_cdw_v1
 WHERE (ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_bridge_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW payerspine.vw_curr_iqvia_plancode_fid_xref_cdw_v1 AS
 SELECT iqvia_plancode_fid_xref_cdw_v1.iqvia_payer_name,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_plan_code,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_plan_name,
        iqvia_plancode_fid_xref_cdw_v1.comments,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_fid,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_provider_fid,
        iqvia_plancode_fid_xref_cdw_v1.ftf_provider_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_parent_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_type,
        iqvia_plancode_fid_xref_cdw_v1.paytype_index,
        iqvia_plancode_fid_xref_cdw_v1.paytype,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_pbm,
        iqvia_plancode_fid_xref_cdw_v1.hp_type,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_paytype,
        iqvia_plancode_fid_xref_cdw_v1.pref_brand_tier,
        iqvia_plancode_fid_xref_cdw_v1.lives,
        iqvia_plancode_fid_xref_cdw_v1.cycle_id,
        iqvia_plancode_fid_xref_cdw_v1.modified_time,
        iqvia_plancode_fid_xref_cdw_v1.modified_by
 FROM payerspine.iqvia_plancode_fid_xref_cdw_v1
 WHERE (iqvia_plancode_fid_xref_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plancode_fid_xref_cdw_v1'::varchar(30)))))));

CREATE  VIEW payerspine.vw_curr_fid_best_iqviapayer_cdw_v1 AS
 SELECT fid_best_iqviapayer_cdw_v1.ftf_health_plan_fid,
        fid_best_iqviapayer_cdw_v1.ftf_health_plan_name,
        fid_best_iqviapayer_cdw_v1.ftf_provider_fid,
        fid_best_iqviapayer_cdw_v1.ftf_provider_name,
        fid_best_iqviapayer_cdw_v1.iqvia_payer_name,
        fid_best_iqviapayer_cdw_v1.frequency,
        fid_best_iqviapayer_cdw_v1.cycle_id,
        fid_best_iqviapayer_cdw_v1.modified_time,
        fid_best_iqviapayer_cdw_v1.modified_by
 FROM payerspine.fid_best_iqviapayer_cdw_v1
 WHERE (fid_best_iqviapayer_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'fid_best_iqviapayer_cdw_v1'::varchar(26)))))));

CREATE  VIEW payerspine.vw_curr_fid_best_iqviapbm_cdw_v1 AS
 SELECT fid_best_iqviapbm_cdw_v1.ftf_health_plan_fid,
        fid_best_iqviapbm_cdw_v1.ftf_health_plan_name,
        fid_best_iqviapbm_cdw_v1.ftf_provider_fid,
        fid_best_iqviapbm_cdw_v1.ftf_provider_name,
        fid_best_iqviapbm_cdw_v1.iqvia_pbm,
        fid_best_iqviapbm_cdw_v1.frequency,
        fid_best_iqviapbm_cdw_v1.cycle_id,
        fid_best_iqviapbm_cdw_v1.modified_time,
        fid_best_iqviapbm_cdw_v1.modified_by
 FROM payerspine.fid_best_iqviapbm_cdw_v1
 WHERE (fid_best_iqviapbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'fid_best_iqviapbm_cdw_v1'::varchar(24)))))));

CREATE  VIEW payerspine.vw_curr_amb4_iqvia_payer_cdw_v1 AS
 SELECT amb4_iqvia_payer_cdw_v1.ftf_health_plan_fid,
        amb4_iqvia_payer_cdw_v1.ftf_health_plan_name,
        amb4_iqvia_payer_cdw_v1.ftf_provider_fid,
        amb4_iqvia_payer_cdw_v1.ftf_provider_name,
        amb4_iqvia_payer_cdw_v1.ftf_parent_name,
        amb4_iqvia_payer_cdw_v1.paytype_index,
        amb4_iqvia_payer_cdw_v1.paytype,
        amb4_iqvia_payer_cdw_v1.ftf_health_plan_type,
        amb4_iqvia_payer_cdw_v1.pref_brand_tier,
        amb4_iqvia_payer_cdw_v1.fillIn_blank_iqpayer,
        amb4_iqvia_payer_cdw_v1.fillIn_blank_iqpbm,
        amb4_iqvia_payer_cdw_v1.ftf_match_iqvia,
        amb4_iqvia_payer_cdw_v1.iqvia_payer_name,
        amb4_iqvia_payer_cdw_v1.iqvia_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_formulary_management_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_claims_processing_pbm,
        amb4_iqvia_payer_cdw_v1.lives_mn,
        amb4_iqvia_payer_cdw_v1.cycle_id,
        amb4_iqvia_payer_cdw_v1.modified_time,
        amb4_iqvia_payer_cdw_v1.modified_by
 FROM payerspine.amb4_iqvia_payer_cdw_v1
 WHERE (amb4_iqvia_payer_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_iqvia_payer_cdw_v1'::varchar(23)))))));

CREATE  VIEW payerspine.vw_curr_amb4_iqvia_pbm_cdw_v1 AS
 SELECT amb4_iqvia_pbm_cdw_v1.ftf_health_plan_fid,
        amb4_iqvia_pbm_cdw_v1.ftf_health_plan_name,
        amb4_iqvia_pbm_cdw_v1.ftf_provider_fid,
        amb4_iqvia_pbm_cdw_v1.ftf_provider_name,
        amb4_iqvia_pbm_cdw_v1.ftf_parent_name,
        amb4_iqvia_pbm_cdw_v1.paytype_index,
        amb4_iqvia_pbm_cdw_v1.paytype,
        amb4_iqvia_pbm_cdw_v1.ftf_health_plan_type,
        amb4_iqvia_pbm_cdw_v1.pref_brand_tier,
        amb4_iqvia_pbm_cdw_v1.fillIn_blank_iqpayer,
        amb4_iqvia_pbm_cdw_v1.fillIn_blank_iqpbm,
        amb4_iqvia_pbm_cdw_v1.ftf_match_iqvia,
        amb4_iqvia_pbm_cdw_v1.iqvia_payer_name,
        amb4_iqvia_pbm_cdw_v1.iqvia_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_formulary_management_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_claims_processing_pbm,
        amb4_iqvia_pbm_cdw_v1.lives_mn,
        amb4_iqvia_pbm_cdw_v1.cycle_id,
        amb4_iqvia_pbm_cdw_v1.modified_time,
        amb4_iqvia_pbm_cdw_v1.modified_by
 FROM payerspine.amb4_iqvia_pbm_cdw_v1
 WHERE (amb4_iqvia_pbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_iqvia_pbm_cdw_v1'::varchar(21)))))));

CREATE  VIEW payerspine.vw_curr_amb7_cdw_v1 AS
 SELECT amb7_cdw_v1.ftf_health_plan_fid,
        amb7_cdw_v1.ftf_health_plan_name,
        amb7_cdw_v1.ftf_provider_fid,
        amb7_cdw_v1.ftf_provider_name,
        amb7_cdw_v1.ftf_parent_name,
        amb7_cdw_v1.paytype_index,
        amb7_cdw_v1.paytype,
        amb7_cdw_v1.ftf_health_plan_type,
        amb7_cdw_v1.pref_brand_tier,
        amb7_cdw_v1.fillIn_blank_iqpayer,
        amb7_cdw_v1.fillIn_blank_iqpbm,
        amb7_cdw_v1.ftf_match_iqvia,
        amb7_cdw_v1.iqvia_payer_name,
        amb7_cdw_v1.iqvia_pbm,
        amb7_cdw_v1.ftf_formulary_management_pbm,
        amb7_cdw_v1.ftf_formulary_influencer_pbm,
        amb7_cdw_v1.ftf_claims_processing_pbm,
        amb7_cdw_v1.lives_mn,
        amb7_cdw_v1.calculated_pbm_value,
        amb7_cdw_v1.key_pbm,
        amb7_cdw_v1.cycle_id,
        amb7_cdw_v1.modified_time,
        amb7_cdw_v1.modified_by
 FROM payerspine.amb7_cdw_v1
 WHERE (amb7_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'amb7_cdw_v1'::varchar(11)))))));

CREATE  VIEW payerspine.vw_curr_ftf_hpid_keypbm_cdw_v1 AS
 SELECT ftf_hpid_keypbm_cdw_v1.ftf_health_plan_fid,
        ftf_hpid_keypbm_cdw_v1.ftf_health_plan_name,
        ftf_hpid_keypbm_cdw_v1.ftf_provider_name,
        ftf_hpid_keypbm_cdw_v1.paytype,
        ftf_hpid_keypbm_cdw_v1.iqvia_pbm,
        ftf_hpid_keypbm_cdw_v1.key_pbm,
        ftf_hpid_keypbm_cdw_v1.cycle_id,
        ftf_hpid_keypbm_cdw_v1.modified_time,
        ftf_hpid_keypbm_cdw_v1.modified_by
 FROM payerspine.ftf_hpid_keypbm_cdw_v1
 WHERE (ftf_hpid_keypbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hpid_keypbm_cdw_v1'::varchar(22)))))));

CREATE  VIEW payerspine.vw_curr_plan_prod_master_cdw_v1 AS
 SELECT plan_prod_master_cdw_v1.ftf_health_plan_fid,
        plan_prod_master_cdw_v1.ftf_health_plan_name,
        plan_prod_master_cdw_v1.ftf_provider_fid,
        plan_prod_master_cdw_v1.ftf_provider_name,
        plan_prod_master_cdw_v1.ftf_parent_name,
        plan_prod_master_cdw_v1.paytype_index,
        plan_prod_master_cdw_v1.paytype,
        plan_prod_master_cdw_v1.ftf_health_plan_type,
        plan_prod_master_cdw_v1.pref_brand_tier,
        plan_prod_master_cdw_v1.fillIn_blank_iqpayer,
        plan_prod_master_cdw_v1.fillIn_blank_iqpbm,
        plan_prod_master_cdw_v1.ftf_match_iqvia,
        plan_prod_master_cdw_v1.iqvia_payer_name,
        plan_prod_master_cdw_v1.iqvia_pbm,
        plan_prod_master_cdw_v1.ftf_formulary_management_pbm,
        plan_prod_master_cdw_v1.ftf_formulary_influencer_pbm,
        plan_prod_master_cdw_v1.ftf_claims_processing_pbm,
        plan_prod_master_cdw_v1.lives_mn,
        plan_prod_master_cdw_v1.calculated_pbm_value,
        plan_prod_master_cdw_v1.key_pbm,
        plan_prod_master_cdw_v1.drug_id,
        plan_prod_master_cdw_v1.drug_seq,
        plan_prod_master_cdw_v1.tier_code,
        plan_prod_master_cdw_v1.restrictions,
        plan_prod_master_cdw_v1.reason_code,
        plan_prod_master_cdw_v1.pharmacy_status,
        plan_prod_master_cdw_v1.botox,
        plan_prod_master_cdw_v1.step,
        plan_prod_master_cdw_v1.pres_pa,
        plan_prod_master_cdw_v1.pat_pa,
        plan_prod_master_cdw_v1.med_rec,
        plan_prod_master_cdw_v1.unspec,
        plan_prod_master_cdw_v1.tier,
        plan_prod_master_cdw_v1.has_pa,
        plan_prod_master_cdw_v1.has_st,
        plan_prod_master_cdw_v1.formulary,
        plan_prod_master_cdw_v1.copay_tier,
        plan_prod_master_cdw_v1.tier_cat,
        plan_prod_master_cdw_v1.restcat,
        plan_prod_master_cdw_v1.restriction_category,
        plan_prod_master_cdw_v1.coverage_cat_code,
        plan_prod_master_cdw_v1.coverage_category,
        plan_prod_master_cdw_v1.cycle_id,
        plan_prod_master_cdw_v1.modified_time,
        plan_prod_master_cdw_v1.modified_by
 FROM payerspine.plan_prod_master_cdw_v1
 WHERE (plan_prod_master_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'plan_prod_master_cdw_v1'::varchar(23)))))));

CREATE  VIEW payerspine.vw_curr_ftf_plan_master_file_cdw_v1 AS
 SELECT ftf_plan_master_file_cdw_v1.ftf_health_plan_fid,
        ftf_plan_master_file_cdw_v1.ftf_health_plan_name,
        ftf_plan_master_file_cdw_v1.ftf_provider_fid,
        ftf_plan_master_file_cdw_v1.ftf_provider_name,
        ftf_plan_master_file_cdw_v1.ftf_parent_name,
        ftf_plan_master_file_cdw_v1.paytype_index,
        ftf_plan_master_file_cdw_v1.paytype,
        ftf_plan_master_file_cdw_v1.ftf_health_plan_type,
        ftf_plan_master_file_cdw_v1.pref_brand_tier,
        ftf_plan_master_file_cdw_v1.fillIn_blank_iqpayer,
        ftf_plan_master_file_cdw_v1.fillIn_blank_iqpbm,
        ftf_plan_master_file_cdw_v1.ftf_match_iqvia,
        ftf_plan_master_file_cdw_v1.iqvia_payer_name,
        ftf_plan_master_file_cdw_v1.iqvia_pbm,
        ftf_plan_master_file_cdw_v1.ftf_formulary_management_pbm,
        ftf_plan_master_file_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_plan_master_file_cdw_v1.ftf_claims_processing_pbm,
        ftf_plan_master_file_cdw_v1.lives_mn,
        ftf_plan_master_file_cdw_v1.calculated_pbm_value,
        ftf_plan_master_file_cdw_v1.key_pbm,
        ftf_plan_master_file_cdw_v1.drug_id,
        ftf_plan_master_file_cdw_v1.drug_seq,
        ftf_plan_master_file_cdw_v1.product,
        ftf_plan_master_file_cdw_v1.tier_code,
        ftf_plan_master_file_cdw_v1.restrictions,
        ftf_plan_master_file_cdw_v1.reason_code,
        ftf_plan_master_file_cdw_v1.pharmacy_status,
        ftf_plan_master_file_cdw_v1.botox,
        ftf_plan_master_file_cdw_v1.botox_step_flag,
        ftf_plan_master_file_cdw_v1.step,
        ftf_plan_master_file_cdw_v1.step_category,
        ftf_plan_master_file_cdw_v1.pres_pa,
        ftf_plan_master_file_cdw_v1.prescriber_prior_authorization_category,
        ftf_plan_master_file_cdw_v1.pat_pa,
        ftf_plan_master_file_cdw_v1.med_rec,
        ftf_plan_master_file_cdw_v1.unspec,
        ftf_plan_master_file_cdw_v1.patient_prior_authorization_category,
        ftf_plan_master_file_cdw_v1.medical_records_submission_required_flag,
        ftf_plan_master_file_cdw_v1.unspecified_restriction_flag,
        ftf_plan_master_file_cdw_v1.ftf_tier,
        ftf_plan_master_file_cdw_v1.has_pa,
        ftf_plan_master_file_cdw_v1.has_st,
        ftf_plan_master_file_cdw_v1.formulary,
        ftf_plan_master_file_cdw_v1.copay_Tier,
        ftf_plan_master_file_cdw_v1.tier_cat,
        ftf_plan_master_file_cdw_v1.restcat,
        ftf_plan_master_file_cdw_v1.restriction_category,
        ftf_plan_master_file_cdw_v1.coverage_cat_code,
        ftf_plan_master_file_cdw_v1.coverage_category,
        ftf_plan_master_file_cdw_v1.key_controlling_account,
        ftf_plan_master_file_cdw_v1.key_controlling_plan_formulary,
        ftf_plan_master_file_cdw_v1.key_controlling_parent,
        ftf_plan_master_file_cdw_v1.payer_pbm,
        ftf_plan_master_file_cdw_v1.cycle_id,
        ftf_plan_master_file_cdw_v1.modified_time,
        ftf_plan_master_file_cdw_v1.modified_by
 FROM payerspine.ftf_plan_master_file_cdw_v1
 WHERE (ftf_plan_master_file_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_plan_master_file_cdw_v1'::varchar(27)))))));

CREATE  VIEW payerspine.vw_curr_key_ctl_account_summary_cdw_v1 AS
 SELECT key_ctl_account_summary_cdw_v1.paytype,
        key_ctl_account_summary_cdw_v1.ftf_health_plan_type,
        key_ctl_account_summary_cdw_v1.key_controlling_account,
        key_ctl_account_summary_cdw_v1.current_month_lives,
        key_ctl_account_summary_cdw_v1.previous_month_lives,
        key_ctl_account_summary_cdw_v1.cycle_id,
        key_ctl_account_summary_cdw_v1.modified_time,
        key_ctl_account_summary_cdw_v1.modified_by
 FROM payerspine.key_ctl_account_summary_cdw_v1
 WHERE (key_ctl_account_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'key_ctl_account_summary_cdw_v1'::varchar(30)))))));

CREATE  VIEW payerspine.vw_curr_key_pbm_summary_cdw_v1 AS
 SELECT key_pbm_summary_cdw_v1.paytype,
        key_pbm_summary_cdw_v1.ftf_health_plan_type,
        key_pbm_summary_cdw_v1.key_pbm,
        key_pbm_summary_cdw_v1.current_month_lives,
        key_pbm_summary_cdw_v1.previous_month_lives,
        key_pbm_summary_cdw_v1.cycle_id,
        key_pbm_summary_cdw_v1.modified_time,
        key_pbm_summary_cdw_v1.modified_by
 FROM payerspine.key_pbm_summary_cdw_v1
 WHERE (key_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'key_pbm_summary_cdw_v1'::varchar(22)))))));

CREATE  VIEW payerspine.vw_curr_iqvia_payer_name_summary_cdw_v1 AS
 SELECT iqvia_payer_name_summary_cdw_v1.paytype,
        iqvia_payer_name_summary_cdw_v1.iqvia_payer_name,
        iqvia_payer_name_summary_cdw_v1.current_month_lives,
        iqvia_payer_name_summary_cdw_v1.previous_month_lives,
        iqvia_payer_name_summary_cdw_v1.cycle_id,
        iqvia_payer_name_summary_cdw_v1.modified_time,
        iqvia_payer_name_summary_cdw_v1.modified_by
 FROM payerspine.iqvia_payer_name_summary_cdw_v1
 WHERE (iqvia_payer_name_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_payer_name_summary_cdw_v1'::varchar(31)))))));

CREATE  VIEW payerspine.vw_curr_iqvia_pbm_summary_cdw_v1 AS
 SELECT iqvia_pbm_summary_cdw_v1.paytype,
        iqvia_pbm_summary_cdw_v1.iqvia_pbm,
        iqvia_pbm_summary_cdw_v1.current_month_lives,
        iqvia_pbm_summary_cdw_v1.previous_month_lives,
        iqvia_pbm_summary_cdw_v1.cycle_id,
        iqvia_pbm_summary_cdw_v1.modified_time,
        iqvia_pbm_summary_cdw_v1.modified_by
 FROM payerspine.iqvia_pbm_summary_cdw_v1
 WHERE (iqvia_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_pbm_summary_cdw_v1'::varchar(24)))))));

CREATE  VIEW payerspine.vw_curr_ftf_formulary_management_pbm_summary_cdw_v1 AS
 SELECT ftf_formulary_management_pbm_summary_cdw_v1.paytype,
        ftf_formulary_management_pbm_summary_cdw_v1.ftf_formulary_management_pbm,
        ftf_formulary_management_pbm_summary_cdw_v1.current_month_lives,
        ftf_formulary_management_pbm_summary_cdw_v1.previous_month_lives,
        ftf_formulary_management_pbm_summary_cdw_v1.cycle_id,
        ftf_formulary_management_pbm_summary_cdw_v1.modified_time,
        ftf_formulary_management_pbm_summary_cdw_v1.modified_by
 FROM payerspine.ftf_formulary_management_pbm_summary_cdw_v1
 WHERE (ftf_formulary_management_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formulary_management_pbm_summary_cdw_v1'::varchar(43)))))));

CREATE  VIEW payerspine.vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1 AS
 SELECT ftf_formulary_influencer_pbm_summary_cdw_v1.paytype,
        ftf_formulary_influencer_pbm_summary_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_formulary_influencer_pbm_summary_cdw_v1.current_month_lives,
        ftf_formulary_influencer_pbm_summary_cdw_v1.previous_month_lives,
        ftf_formulary_influencer_pbm_summary_cdw_v1.cycle_id,
        ftf_formulary_influencer_pbm_summary_cdw_v1.modified_time,
        ftf_formulary_influencer_pbm_summary_cdw_v1.modified_by
 FROM payerspine.ftf_formulary_influencer_pbm_summary_cdw_v1
 WHERE (ftf_formulary_influencer_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formulary_influencer_pbm_summary_cdw_v1'::varchar(43)))))));

CREATE  VIEW payerspine.vw_curr_ftf_claims_processing_pbm_summary_cdw_v1 AS
 SELECT ftf_claims_processing_pbm_summary_cdw_v1.paytype,
        ftf_claims_processing_pbm_summary_cdw_v1.ftf_claims_processing_pbm,
        ftf_claims_processing_pbm_summary_cdw_v1.current_month_lives,
        ftf_claims_processing_pbm_summary_cdw_v1.previous_month_lives,
        ftf_claims_processing_pbm_summary_cdw_v1.cycle_id,
        ftf_claims_processing_pbm_summary_cdw_v1.modified_time,
        ftf_claims_processing_pbm_summary_cdw_v1.modified_by
 FROM payerspine.ftf_claims_processing_pbm_summary_cdw_v1
 WHERE (ftf_claims_processing_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_claims_processing_pbm_summary_cdw_v1'::varchar(40)))))));

CREATE  VIEW payerspine.vw_curr_st_lives_summary_cdw_v1 AS
 SELECT st_lives_summary_cdw_v1.ftf_health_plan_fid,
        st_lives_summary_cdw_v1.ftf_health_plan_name,
        st_lives_summary_cdw_v1.ftf_provider_name,
        st_lives_summary_cdw_v1.ftf_parent_name,
        st_lives_summary_cdw_v1.paytype,
        st_lives_summary_cdw_v1.ftf_health_plan_type,
        st_lives_summary_cdw_v1.key_controlling_account,
        st_lives_summary_cdw_v1.key_controlling_plan_formulary,
        st_lives_summary_cdw_v1.key_controlling_parent,
        st_lives_summary_cdw_v1.payer_pbm,
        st_lives_summary_cdw_v1.key_pbm,
        st_lives_summary_cdw_v1.iqvia_payer_name,
        st_lives_summary_cdw_v1.iqvia_pbm,
        st_lives_summary_cdw_v1.state,
        st_lives_summary_cdw_v1.ftf_state_hp_lives,
        st_lives_summary_cdw_v1.pref_brand_tier,
        st_lives_summary_cdw_v1.ajovy_formulary,
        st_lives_summary_cdw_v1.aimovig_formulary,
        st_lives_summary_cdw_v1.emgality_formulary,
        st_lives_summary_cdw_v1.cycle_id,
        st_lives_summary_cdw_v1.modified_time,
        st_lives_summary_cdw_v1.modified_by
 FROM payerspine.st_lives_summary_cdw_v1
 WHERE (st_lives_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'st_lives_summary_cdw_v1'::varchar(23)))))));

CREATE  VIEW payerspine.vw_curr_ftf_hp_id_key_controlling_account_cdw_v1 AS
 SELECT ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_fid,
        ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_name,
        ftf_hp_id_key_controlling_account_cdw_v1.ftf_provider_name,
        ftf_hp_id_key_controlling_account_cdw_v1.payment_type,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_account,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_plan_formulary,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_parent,
        ftf_hp_id_key_controlling_account_cdw_v1.payer_pbm,
        ftf_hp_id_key_controlling_account_cdw_v1.key_pbm,
        ftf_hp_id_key_controlling_account_cdw_v1.cycle_id,
        ftf_hp_id_key_controlling_account_cdw_v1.modified_time,
        ftf_hp_id_key_controlling_account_cdw_v1.modified_by
 FROM payerspine.ftf_hp_id_key_controlling_account_cdw_v1
 WHERE (ftf_hp_id_key_controlling_account_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hp_id_key_controlling_account_cdw_v1'::varchar(40)))))));

CREATE  VIEW payerspine.vw_curr_ftf_hp_id_key_pbm_cdw_v1 AS
 SELECT ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_fid,
        ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_name,
        ftf_hp_id_key_pbm_cdw_v1.ftf_provider_name,
        ftf_hp_id_key_pbm_cdw_v1.payment_type,
        ftf_hp_id_key_pbm_cdw_v1.key_pbm,
        ftf_hp_id_key_pbm_cdw_v1.assigned_iqvia_pbm,
        ftf_hp_id_key_pbm_cdw_v1.cycle_id,
        ftf_hp_id_key_pbm_cdw_v1.modified_time,
        ftf_hp_id_key_pbm_cdw_v1.modified_by
 FROM payerspine.ftf_hp_id_key_pbm_cdw_v1
 WHERE (ftf_hp_id_key_pbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hp_id_key_pbm_cdw_v1'::varchar(24)))))));

CREATE  VIEW payerspine.vw_curr_ftf_plan_master_file_op_cdw_v1 AS
 SELECT ftf_plan_master_file_op_cdw_v1.ftf_health_plan_fid,
        ftf_plan_master_file_op_cdw_v1.product,
        ftf_plan_master_file_op_cdw_v1.ftf_health_plan_name,
        ftf_plan_master_file_op_cdw_v1.coverage_category,
        ftf_plan_master_file_op_cdw_v1.ftf_provider_name,
        ftf_plan_master_file_op_cdw_v1.paytype,
        ftf_plan_master_file_op_cdw_v1.ftf_health_plan_type,
        ftf_plan_master_file_op_cdw_v1.plan_lives,
        ftf_plan_master_file_op_cdw_v1.key_controlling_plan_formulary,
        ftf_plan_master_file_op_cdw_v1.key_controlling_account,
        ftf_plan_master_file_op_cdw_v1.key_controlling_parent,
        ftf_plan_master_file_op_cdw_v1.payer_pbm,
        ftf_plan_master_file_op_cdw_v1.key_pbm,
        ftf_plan_master_file_op_cdw_v1.iqvia_payer_name,
        ftf_plan_master_file_op_cdw_v1.iqvia_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_formulary_management_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_claims_processing_pbm,
        ftf_plan_master_file_op_cdw_v1.pref_brand_tier,
        ftf_plan_master_file_op_cdw_v1.pharmacy_status,
        ftf_plan_master_file_op_cdw_v1.ftf_tier,
        ftf_plan_master_file_op_cdw_v1.restrictions,
        ftf_plan_master_file_op_cdw_v1.copay_tier,
        ftf_plan_master_file_op_cdw_v1.restriction_category,
        ftf_plan_master_file_op_cdw_v1.step,
        ftf_plan_master_file_op_cdw_v1.botox,
        ftf_plan_master_file_op_cdw_v1.prescriber_pa,
        ftf_plan_master_file_op_cdw_v1.patient_pa,
        ftf_plan_master_file_op_cdw_v1.medical_records,
        ftf_plan_master_file_op_cdw_v1.criteria_unspec,
        ftf_plan_master_file_op_cdw_v1.cycle_id,
        ftf_plan_master_file_op_cdw_v1.modified_time,
        ftf_plan_master_file_op_cdw_v1.modified_by
 FROM payerspine.ftf_plan_master_file_op_cdw_v1
 WHERE (ftf_plan_master_file_op_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_plan_master_file_op_cdw_v1'::varchar(30)))))));

CREATE  VIEW payerspine.vw_curr_paytype_product_coverage_category_cdw_v1 AS
 SELECT paytype_product_coverage_category_cdw_v1.paytype,
        paytype_product_coverage_category_cdw_v1.product,
        paytype_product_coverage_category_cdw_v1.metric,
        paytype_product_coverage_category_cdw_v1.lives,
        paytype_product_coverage_category_cdw_v1.cycle_id,
        paytype_product_coverage_category_cdw_v1.modified_time,
        paytype_product_coverage_category_cdw_v1.modified_by
 FROM payerspine.paytype_product_coverage_category_cdw_v1
 WHERE (paytype_product_coverage_category_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_coverage_category_cdw_v1'::varchar(40)))))));

CREATE  VIEW payerspine.vw_curr_paytype_product_copay_tier_cdw_v1 AS
 SELECT paytype_product_copay_tier_cdw_v1.paytype,
        paytype_product_copay_tier_cdw_v1.product,
        paytype_product_copay_tier_cdw_v1.metric,
        paytype_product_copay_tier_cdw_v1.lives,
        paytype_product_copay_tier_cdw_v1.cycle_id,
        paytype_product_copay_tier_cdw_v1.modified_time,
        paytype_product_copay_tier_cdw_v1.modified_by
 FROM payerspine.paytype_product_copay_tier_cdw_v1
 WHERE (paytype_product_copay_tier_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_copay_tier_cdw_v1'::varchar(33)))))));

CREATE  VIEW payerspine.vw_curr_paytype_product_step_category_cdw_v1 AS
 SELECT paytype_product_step_category_cdw_v1.paytype,
        paytype_product_step_category_cdw_v1.product,
        paytype_product_step_category_cdw_v1.metric,
        paytype_product_step_category_cdw_v1.lives,
        paytype_product_step_category_cdw_v1.cycle_id,
        paytype_product_step_category_cdw_v1.modified_time,
        paytype_product_step_category_cdw_v1.modified_by
 FROM payerspine.paytype_product_step_category_cdw_v1
 WHERE (paytype_product_step_category_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_step_category_cdw_v1'::varchar(36)))))));

CREATE  VIEW payerspine.vw_curr_paytype_product_patient_pa_cdw_v1 AS
 SELECT paytype_product_patient_pa_cdw_v1.paytype,
        paytype_product_patient_pa_cdw_v1.product,
        paytype_product_patient_pa_cdw_v1.metric,
        paytype_product_patient_pa_cdw_v1.lives,
        paytype_product_patient_pa_cdw_v1.cycle_id,
        paytype_product_patient_pa_cdw_v1.modified_time,
        paytype_product_patient_pa_cdw_v1.modified_by
 FROM payerspine.paytype_product_patient_pa_cdw_v1
 WHERE (paytype_product_patient_pa_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_patient_pa_cdw_v1'::varchar(33)))))));

CREATE  VIEW payerspine.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1 AS
 SELECT key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account,
        key_controlling_account_product_cov_category_paytype_cdw_v1.paytype,
        key_controlling_account_product_cov_category_paytype_cdw_v1.product,
        key_controlling_account_product_cov_category_paytype_cdw_v1.metric,
        key_controlling_account_product_cov_category_paytype_cdw_v1.lives,
        key_controlling_account_product_cov_category_paytype_cdw_v1.cycle_id,
        key_controlling_account_product_cov_category_paytype_cdw_v1.modified_time,
        key_controlling_account_product_cov_category_paytype_cdw_v1.modified_by
 FROM payerspine.key_controlling_account_product_cov_category_paytype_cdw_v1
 WHERE (key_controlling_account_product_cov_category_paytype_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'key_controlling_account_product_cov_category_paytype_cdw_v1'::varchar(59)))))));

CREATE  VIEW payerspine.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1 AS
 SELECT key_pbm_product_cov_category_paytype_cdw_v1.key_pbm,
        key_pbm_product_cov_category_paytype_cdw_v1.paytype,
        key_pbm_product_cov_category_paytype_cdw_v1.product,
        key_pbm_product_cov_category_paytype_cdw_v1.metric,
        key_pbm_product_cov_category_paytype_cdw_v1.lives,
        key_pbm_product_cov_category_paytype_cdw_v1.cycle_id,
        key_pbm_product_cov_category_paytype_cdw_v1.modified_time,
        key_pbm_product_cov_category_paytype_cdw_v1.modified_by
 FROM payerspine.key_pbm_product_cov_category_paytype_cdw_v1
 WHERE (key_pbm_product_cov_category_paytype_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'key_pbm_product_cov_category_paytype_cdw_v1'::varchar(43)))))));

CREATE  VIEW payerspine.vw_curr_payer_spine25_detailed_teva_brands_cdw_v1 AS
 SELECT payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.payment_type,
        payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_detailed_teva_brands_cdw_v1.saba_trx
 FROM payerspine.payer_spine25_detailed_teva_brands_cdw_v1
 WHERE (payer_spine25_detailed_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_detailed_teva_brands_cdw_v1'::varchar(41)))))));

CREATE  VIEW payerspine.vw_curr_payer_spine25_plan_teva_brands_cdw_v1 AS
 SELECT payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_plan_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_plan_teva_brands_cdw_v1.payment_type,
        payer_spine25_plan_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_plan_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_plan_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_plan_teva_brands_cdw_v1.saba_trx
 FROM payerspine.payer_spine25_plan_teva_brands_cdw_v1
 WHERE (payer_spine25_plan_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_plan_teva_brands_cdw_v1'::varchar(37)))))));

CREATE  VIEW payerspine.vw_prev_month_payer_spine25_detailed_teva_brands_cdw_v1 AS
 SELECT payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.payment_type,
        payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_detailed_teva_brands_cdw_v1.saba_trx
 FROM payerspine.payer_spine25_detailed_teva_brands_cdw_v1
 WHERE (payer_spine25_detailed_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_detailed_teva_brands_cdw_v1'::varchar(41)))))));

CREATE  VIEW payerspine.vw_final_extract_key_controlling_account_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_key_controlling_account_product_coverage_category_commercial AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW payerspine.vw_final_extract_key_pbm_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_key_pbm_product_coverage_category_commercial AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_copay_tier AS
 SELECT vw_curr_paytype_product_copay_tier_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_copay_tier_cdw_v1.product AS Product,
        vw_curr_paytype_product_copay_tier_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_copay_tier_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_paytype_product_copay_tier_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_coverage_category AS
 SELECT vw_curr_paytype_product_coverage_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_coverage_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_coverage_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_coverage_category_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_paytype_product_coverage_category_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_patient_pa AS
 SELECT vw_curr_paytype_product_patient_pa_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_patient_pa_cdw_v1.product AS Product,
        vw_curr_paytype_product_patient_pa_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_patient_pa_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_paytype_product_patient_pa_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_step_edit_type AS
 SELECT vw_curr_paytype_product_step_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_step_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_step_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_step_category_cdw_v1.lives AS Lives
 FROM payerspine.vw_curr_paytype_product_step_category_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ftf_hp_id_key_controlling_plan_account AS
 SELECT lpad((vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payer_pbm AS "Payer/PBM"
 FROM payerspine.vw_curr_ftf_hp_id_key_controlling_account_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ftf_hp_id_key_pbm AS
 SELECT lpad((vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.assigned_iqvia_pbm AS "Assigned IQVIA PBM"
 FROM payerspine.vw_curr_ftf_hp_id_key_pbm_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ftf_plan_master_file AS
 SELECT lpad((vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_plan_master_file_op_cdw_v1.product AS Product,
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_plan_master_file_op_cdw_v1.coverage_category AS "Coverage Category",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_plan_master_file_op_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_ftf_plan_master_file_op_cdw_v1.plan_lives AS "Plan Lives",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_ftf_plan_master_file_op_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_ftf_plan_master_file_op_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_ftf_plan_master_file_op_cdw_v1.pharmacy_status AS "Pharmacy Status",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_tier AS "FTF Tier",
        vw_curr_ftf_plan_master_file_op_cdw_v1.restrictions AS Restrictions,
        vw_curr_ftf_plan_master_file_op_cdw_v1.copay_tier AS "Tier Cat",
        vw_curr_ftf_plan_master_file_op_cdw_v1.restriction_category AS "Restriction Category",
        vw_curr_ftf_plan_master_file_op_cdw_v1.step AS Step,
        vw_curr_ftf_plan_master_file_op_cdw_v1.botox AS Botox,
        vw_curr_ftf_plan_master_file_op_cdw_v1.prescriber_pa AS "Prescriber PA",
        vw_curr_ftf_plan_master_file_op_cdw_v1.patient_pa AS "Patient PA",
        vw_curr_ftf_plan_master_file_op_cdw_v1.medical_records AS "Medical Records",
        vw_curr_ftf_plan_master_file_op_cdw_v1.criteria_unspec AS "Criteria Unspec"
 FROM payerspine.vw_curr_ftf_plan_master_file_op_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_key_controlling_account_summary AS
 SELECT vw_curr_key_ctl_account_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_ctl_account_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_ctl_account_summary_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_ctl_account_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_ctl_account_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_key_ctl_account_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_key_pbm_summary AS
 SELECT vw_curr_key_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_pbm_summary_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_key_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_iqvia_player_summary AS
 SELECT vw_curr_iqvia_payer_name_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_payer_name_summary_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_iqvia_payer_name_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_payer_name_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_iqvia_payer_name_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_iqvia_pbm_summary AS
 SELECT vw_curr_iqvia_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_pbm_summary_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_iqvia_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_iqvia_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_mgt_summary AS
 SELECT vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_ftf_formulary_management_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_infl_summary AS
 SELECT vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_claims_proc_summary AS
 SELECT vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_ftf_claims_processing_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_cm_state_lives_formular_status AS
 SELECT lpad((vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_st_lives_summary_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_st_lives_summary_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_st_lives_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_st_lives_summary_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_st_lives_summary_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_st_lives_summary_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_st_lives_summary_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_st_lives_summary_cdw_v1.state AS State,
        vw_curr_st_lives_summary_cdw_v1.ftf_state_hp_lives AS "FTF State HP Lives",
        vw_curr_st_lives_summary_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_st_lives_summary_cdw_v1.ajovy_formulary AS "Ajovy Formulary",
        vw_curr_st_lives_summary_cdw_v1.aimovig_formulary AS "Aimovig Formulary",
        vw_curr_st_lives_summary_cdw_v1.emgality_formulary AS "Emgality Formulary"
 FROM payerspine.vw_curr_st_lives_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_payer_spine25_detailed_teva_brands AS
 SELECT lpad((vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.payment_type AS "Payment Type",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan AS "Coverage Category Ajovy",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan AS "Coverage Category Aimovig",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan AS "Coverage Category Emgality",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl AS "Lives KCF Level",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl AS "Lives Plan Level",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor AS "Apportionment Factor",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.saba_trx AS "SABA TRx"
 FROM payerspine.vw_curr_payer_spine25_detailed_teva_brands_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_payer_spine25_plan_teva_brands AS
 SELECT lpad((vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.payment_type AS "Payment Type",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.ajovy_access_for_ftf_plan AS "Coverage Category Ajovy",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.aimovig_access_for_ftf_plan AS "Coverage Category Aimovig",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.emgality_access_for_ftf_plan AS "Coverage Category Emgality",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.lives_plan_kcf_lvl AS "Lives KCF Level",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.lives_plan_lvl AS "Lives Plan Level",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.apportionment_factor AS "Apportionment Factor",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.saba_trx AS "SABA TRx"
 FROM payerspine.vw_curr_payer_spine25_plan_teva_brands_cdw_v1;

CREATE  VIEW payerspine.vw_curr_comparison_ftf_health_plan_fid_cdw_v1 AS
 SELECT comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_fid,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_name,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_fid,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_name,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_parent_name,
        comparison_ftf_health_plan_fid_cdw_v1.paytype,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_type,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_account,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_plan_formulary,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_parent,
        comparison_ftf_health_plan_fid_cdw_v1.payer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.key_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_management_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_influencer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_claims_processing_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.lives_mn,
        comparison_ftf_health_plan_fid_cdw_v1.iqvia_payer_name,
        comparison_ftf_health_plan_fid_cdw_v1.iqvia_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.pref_brand_tier,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Ajovy,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Aimovig,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Emgality,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Nurtec,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Qulipta,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_fid,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_provider_fid,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_provider_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_parent_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_paytype,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_type,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_account,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_plan_formulary,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_parent,
        comparison_ftf_health_plan_fid_cdw_v1.change_payer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_formulary_management_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_formulary_influencer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_claims_processing_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_lives_mn,
        comparison_ftf_health_plan_fid_cdw_v1.change_iqvia_payer_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_iqvia_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_pref_brand_tier,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Ajovy,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Aimovig,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Emgality,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Nurtec,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Qulipta,
        comparison_ftf_health_plan_fid_cdw_v1.change,
        comparison_ftf_health_plan_fid_cdw_v1.month_flag,
        comparison_ftf_health_plan_fid_cdw_v1.status,
        comparison_ftf_health_plan_fid_cdw_v1.change_in_lives,
        comparison_ftf_health_plan_fid_cdw_v1.cycle_id,
        comparison_ftf_health_plan_fid_cdw_v1.modified_time,
        comparison_ftf_health_plan_fid_cdw_v1.modified_by
 FROM payerspine.comparison_ftf_health_plan_fid_cdw_v1
 WHERE (comparison_ftf_health_plan_fid_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_ftf_health_plan_fid_cdw_v1'::varchar(37)))))));

CREATE  VIEW payerspine.vw_curr_comparison_iqvia_fid_plans_cdw_v1 AS
 SELECT comparison_iqvia_fid_plans_cdw_v1.iqvia_plan_code,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_payer_name,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_pbm,
        comparison_iqvia_fid_plans_cdw_v1.payment_type,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_model,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_type,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_plan_formulary,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_account,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_parent,
        comparison_iqvia_fid_plans_cdw_v1.payer_pbm,
        comparison_iqvia_fid_plans_cdw_v1.ajovy_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.aimovig_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.emgality_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.nurtec_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.qulipta_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.total_lives_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.key_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_plan_code,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_payer_name,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_payment_type,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_model,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_fid,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_type,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_plan_formulary,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_account,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_parent,
        comparison_iqvia_fid_plans_cdw_v1.change_payer_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_ajovy_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_aimovig_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_emgality_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_nurtec_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_qulipta_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_total_lives_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_key_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change,
        comparison_iqvia_fid_plans_cdw_v1.check_iq_payer,
        comparison_iqvia_fid_plans_cdw_v1.check_iq_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_in_lives,
        comparison_iqvia_fid_plans_cdw_v1.month_flag,
        comparison_iqvia_fid_plans_cdw_v1.status,
        comparison_iqvia_fid_plans_cdw_v1.cycle_id,
        comparison_iqvia_fid_plans_cdw_v1.modified_time,
        comparison_iqvia_fid_plans_cdw_v1.modified_by
 FROM payerspine.comparison_iqvia_fid_plans_cdw_v1
 WHERE (comparison_iqvia_fid_plans_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_iqvia_fid_plans_cdw_v1'::varchar(33)))))));

CREATE  VIEW payerspine.vw_curr_comparison_payer_spine_cdw_v1 AS
 SELECT comparison_payer_spine_cdw_v1.iqvia_plan_code,
        comparison_payer_spine_cdw_v1.iqvia_plan_name,
        comparison_payer_spine_cdw_v1.iqvia_payer_name,
        comparison_payer_spine_cdw_v1.iqvia_pbm,
        comparison_payer_spine_cdw_v1.key_controlling_plan_formulary,
        comparison_payer_spine_cdw_v1.key_controlling_account,
        comparison_payer_spine_cdw_v1.key_controlling_parent,
        comparison_payer_spine_cdw_v1.payer_pbm,
        comparison_payer_spine_cdw_v1.payment_type,
        comparison_payer_spine_cdw_v1.ajovy_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.aimovig_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.emgality_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.lives_plan_kcf_lvl,
        comparison_payer_spine_cdw_v1.lives_plan_lvl,
        comparison_payer_spine_cdw_v1.apportionment_factor,
        comparison_payer_spine_cdw_v1.saba_trx,
        comparison_payer_spine_cdw_v1.change_iqvia_plan_code,
        comparison_payer_spine_cdw_v1.change_iqvia_plan_name,
        comparison_payer_spine_cdw_v1.change_iqvia_payer_name,
        comparison_payer_spine_cdw_v1.change_iqvia_pbm,
        comparison_payer_spine_cdw_v1.change_key_controlling_plan_formulary,
        comparison_payer_spine_cdw_v1.change_key_controlling_account,
        comparison_payer_spine_cdw_v1.change_key_controlling_parent,
        comparison_payer_spine_cdw_v1.change_payer_pbm,
        comparison_payer_spine_cdw_v1.change_payment_type,
        comparison_payer_spine_cdw_v1.change_ajovy_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_aimovig_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_emgality_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_lives_plan_kcf_lvl,
        comparison_payer_spine_cdw_v1.change_lives_plan_lvl,
        comparison_payer_spine_cdw_v1.change_apportionment_factor,
        comparison_payer_spine_cdw_v1.change_saba_trx,
        comparison_payer_spine_cdw_v1.change,
        comparison_payer_spine_cdw_v1.month_flag,
        comparison_payer_spine_cdw_v1.status,
        comparison_payer_spine_cdw_v1.cycle_id,
        comparison_payer_spine_cdw_v1.modified_time,
        comparison_payer_spine_cdw_v1.modified_by
 FROM payerspine.comparison_payer_spine_cdw_v1
 WHERE (comparison_payer_spine_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_payer_spine_cdw_v1'::varchar(29)))))));

CREATE  VIEW payerspine.vw_comparison_payer_spine_detailed_report AS
 SELECT a.iqvia_plan_code AS "IQVIA Plan Code",
        a.iqvia_plan_name AS "IQVIA Plan Name",
        a.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        a.iqvia_payer_name AS "IQVIA Payer Name",
        a.iqvia_pbm AS "IQVIA PBM",
        a.key_controlling_account AS "Key Controlling Account",
        a.key_controlling_parent AS "Key Controlling Parent",
        a.payer_pbm AS "PBM/Payer",
        a.payment_type AS "Payment Type",
        a.ajovy_access_for_ftf_plan AS "AJOVY Access for FTF Plan",
        a.aimovig_access_for_ftf_plan AS "Aimovig Access for FTF Plan",
        a.emgality_access_for_ftf_plan AS "Emgality Access for FTF Plan",
        a.apportionment_factor AS "Apportionment Factor",
        a.saba_trx AS "Apportionment SABA TRx",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_code = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Code Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan Formulary Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "PBM/Payer Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payment_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payment Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ajovy_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "AJOVY Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_aimovig_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Aimovig Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_emgality_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Emgality Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_apportionment_factor = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Apportionment Factor Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_saba_trx = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Apportionment SABA TRx Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        a.month_flag AS "Month Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        0 AS "Change in TRx",
        tbl_lvl_audit.date_run AS "Date Run",
        (to_timestamptz((a.cycle_id)::float))::timestamp AS "Modified Time"
 FROM (payerspine.vw_curr_comparison_payer_spine_cdw_v1 a LEFT  JOIN payerspine.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_payer_spine_cdw_v1'::varchar(29))))
 ORDER BY a.iqvia_plan_code,
          a.key_controlling_plan_formulary;

CREATE  VIEW payerspine.vw_bridge_mismatch_detailed_report AS
 SELECT bridge_dt.iqvia_payer_name AS "IQVIA Payer Name",
        bridge_dt.iqvia_plan_code AS "IQVIA Plan Code",
        bridge_dt.iqvia_plan_name AS "IQVIA Plan Name",
        bridge_dt.comments AS Comments,
        bridge_dt.ftf_health_plan_fid AS "FTF Health Plan FID",
        bridge_dt.ftf_health_plan_name AS "FTF Health Plan Name",
        ftf_health_plans_preprocessed.ftf_provider_fid AS "FTF Provider FID",
        bridge_dt.ftf_provider_name AS "FTF Provider Name",
        bridge_dt.ftf_health_plan_type AS "FTF Health Plan Type",
        bridge_dt.hp_type AS "HP Type",
        bridge_dt.overriden_ftf_plan_type AS "Overriden FTF Plan Type",
        bridge_dt.model AS Model,
        bridge_dt.iqvia_pbm AS "IQVIA PBM",
        bridge_dt.iqvia_paytype AS "IQVIA Paytype",
        bridge_dt.check_delete AS "Delete Flag",
        bridge_dt.paytype_index AS "Paytype Index",
        bridge_dt.paytype AS Paytype,
        bridge_dt.check_pay_types AS "Check Paytypes",
        bridge_dt.check_hp_types AS "Check HP Types",
        bridge_dt.old_ftf_health_plan_type AS "Old FTF health Plan Type"
 FROM ((payerspine.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 bridge_dt LEFT  JOIN payerspine.vw_curr_ftf_health_plans_preprocessed_cdw_v1 ftf_health_plans_preprocessed ON ((bridge_dt.ftf_health_plan_fid = ftf_health_plans_preprocessed.ftf_health_plan_fid))) LEFT  JOIN payerspine.process_audit_tbl process_audit_tbl ON (((bridge_dt.cycle_id = process_audit_tbl.cycle_id) AND (process_audit_tbl.process_id = 1) AND (process_audit_tbl.status = 'COMPLETED'::varchar(9)))))
 WHERE (coalesce(bridge_dt.check_delete, ''::varchar) <> 'DELETE'::varchar(6));

CREATE  VIEW payerspine.vw_curr_ftf_restriction_id_group_mapping AS
 SELECT ftf_restriction_id_group_mapping.restriction_detail_id,
        btrim(ftf_restriction_id_group_mapping.restriction_detail_text) AS restriction_detail_text,
        btrim(ftf_restriction_id_group_mapping.grouped_restriction_level) AS grouped_restriction_level,
        btrim(ftf_restriction_id_group_mapping.coverage_category) AS coverage_category,
        ftf_restriction_id_group_mapping.used_flag,
        btrim(ftf_restriction_id_group_mapping.notes) AS notes,
        ftf_restriction_id_group_mapping.file_id,
        ftf_restriction_id_group_mapping.record_id
 FROM payerspine.ftf_restriction_id_group_mapping
 WHERE (ftf_restriction_id_group_mapping.file_id IN ( SELECT max(ftf_restriction_id_group_mapping.file_id) AS max
 FROM payerspine.ftf_restriction_id_group_mapping));

CREATE  VIEW payerspine.vw_curr_access_master_bridge_cdw_v1 AS
 SELECT access_master_bridge_cdw_v1.ftf_health_plan_fid,
        access_master_bridge_cdw_v1.ftf_health_plan_name,
        access_master_bridge_cdw_v1.coverage_category_ajovy,
        access_master_bridge_cdw_v1.coverage_category_aimovig,
        access_master_bridge_cdw_v1.coverage_category_emgality,
        access_master_bridge_cdw_v1.coverage_category_nurtec,
        access_master_bridge_cdw_v1.coverage_category_qulitpa,
        access_master_bridge_cdw_v1.coverage_category_austedo_hd,
        access_master_bridge_cdw_v1.coverage_category_austedo_td,
        access_master_bridge_cdw_v1.coverage_category_ingrezza_td,
        access_master_bridge_cdw_v1.coverage_category_digi_proair,
        access_master_bridge_cdw_v1.coverage_category_digi_airduo,
        access_master_bridge_cdw_v1.coverage_category_digi_armonair,
        access_master_bridge_cdw_v1.ftf_provider_fid,
        access_master_bridge_cdw_v1.ftf_provider_name,
        access_master_bridge_cdw_v1.ftf_parent_name,
        access_master_bridge_cdw_v1.paytype_index,
        access_master_bridge_cdw_v1.paytype,
        access_master_bridge_cdw_v1.ftf_health_plan_type,
        access_master_bridge_cdw_v1.key_controlling_plan_formulary,
        access_master_bridge_cdw_v1.key_controlling_account,
        access_master_bridge_cdw_v1.key_controlling_parent,
        access_master_bridge_cdw_v1.payer_pbm,
        access_master_bridge_cdw_v1.key_pbm,
        access_master_bridge_cdw_v1.iqvia_payer_name,
        access_master_bridge_cdw_v1.iqvia_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_management_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm,
        access_master_bridge_cdw_v1.ftf_claims_processing_pbm,
        access_master_bridge_cdw_v1.pref_brand_tier,
        access_master_bridge_cdw_v1.ftf_match_iqvia,
        access_master_bridge_cdw_v1.previous_lives,
        access_master_bridge_cdw_v1.current_lives,
        access_master_bridge_cdw_v1.cycle_id,
        access_master_bridge_cdw_v1.modified_time,
        access_master_bridge_cdw_v1.modified_by
 FROM payerspine.access_master_bridge_cdw_v1
 WHERE (access_master_bridge_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'access_master_bridge_cdw_v1'::varchar(27)))))));

CREATE  VIEW payerspine.vw_prev_month_access_master_bridge_cdw_v1 AS
 SELECT access_master_bridge_cdw_v1.ftf_health_plan_fid,
        access_master_bridge_cdw_v1.ftf_health_plan_name,
        access_master_bridge_cdw_v1.coverage_category_ajovy,
        access_master_bridge_cdw_v1.coverage_category_aimovig,
        access_master_bridge_cdw_v1.coverage_category_emgality,
        access_master_bridge_cdw_v1.coverage_category_nurtec,
        access_master_bridge_cdw_v1.coverage_category_qulitpa,
        access_master_bridge_cdw_v1.coverage_category_austedo_hd,
        access_master_bridge_cdw_v1.coverage_category_austedo_td,
        access_master_bridge_cdw_v1.coverage_category_ingrezza_td,
        access_master_bridge_cdw_v1.coverage_category_digi_proair,
        access_master_bridge_cdw_v1.coverage_category_digi_airduo,
        access_master_bridge_cdw_v1.coverage_category_digi_armonair,
        access_master_bridge_cdw_v1.ftf_provider_fid,
        access_master_bridge_cdw_v1.ftf_provider_name,
        access_master_bridge_cdw_v1.ftf_parent_name,
        access_master_bridge_cdw_v1.paytype_index,
        access_master_bridge_cdw_v1.paytype,
        access_master_bridge_cdw_v1.ftf_health_plan_type,
        access_master_bridge_cdw_v1.key_controlling_plan_formulary,
        access_master_bridge_cdw_v1.key_controlling_account,
        access_master_bridge_cdw_v1.key_controlling_parent,
        access_master_bridge_cdw_v1.payer_pbm,
        access_master_bridge_cdw_v1.key_pbm,
        access_master_bridge_cdw_v1.iqvia_payer_name,
        access_master_bridge_cdw_v1.iqvia_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_management_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm,
        access_master_bridge_cdw_v1.ftf_claims_processing_pbm,
        access_master_bridge_cdw_v1.pref_brand_tier,
        access_master_bridge_cdw_v1.ftf_match_iqvia,
        access_master_bridge_cdw_v1.previous_lives,
        access_master_bridge_cdw_v1.current_lives,
        access_master_bridge_cdw_v1.cycle_id,
        access_master_bridge_cdw_v1.modified_time,
        access_master_bridge_cdw_v1.modified_by
 FROM payerspine.access_master_bridge_cdw_v1
 WHERE (access_master_bridge_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'access_master_bridge_cdw_v1'::varchar(27)))))));

CREATE  VIEW payerspine.vw_curr_ftf_iqvia_xref_v2_cdw_v1 AS
 SELECT ftf_iqvia_xref_v2_cdw_v1.iqvia_plan_code,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_plan_name,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_payer_name,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_pbm,
        ftf_iqvia_xref_v2_cdw_v1.payment_type,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_model,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_xref_v2_cdw_v1.ftf_provider_fid,
        ftf_iqvia_xref_v2_cdw_v1.ftf_provider_name,
        ftf_iqvia_xref_v2_cdw_v1.ftf_parent_name,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_plan_formulary,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_account,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_parent,
        ftf_iqvia_xref_v2_cdw_v1.payer_pbm,
        ftf_iqvia_xref_v2_cdw_v1.ajovy_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.aimovig_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.emgality_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.nurtec_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.qulipta_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.austedo_hd_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.austedo_td_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.ingrezza_td_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.digi_proair_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.digi_airduo_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.digi_armonair_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.ftf_pref_brand_tier,
        ftf_iqvia_xref_v2_cdw_v1.total_lives_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.key_pbm,
        ftf_iqvia_xref_v2_cdw_v1.check_iq_payer,
        ftf_iqvia_xref_v2_cdw_v1.check_iq_pbm,
        ftf_iqvia_xref_v2_cdw_v1.cycle_id,
        ftf_iqvia_xref_v2_cdw_v1.modified_time,
        ftf_iqvia_xref_v2_cdw_v1.modified_by
 FROM payerspine.ftf_iqvia_xref_v2_cdw_v1
 WHERE (ftf_iqvia_xref_v2_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_xref_v2_cdw_v1'::varchar(24)))))));

CREATE  VIEW payerspine.vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1 AS
 SELECT iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_proair_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_airduo_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_armonair_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_time,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_by
 FROM payerspine.iqvia_plan_code_ftf_hp_id_cdw_v1
 WHERE (iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_code_ftf_hp_id_cdw_v1'::varchar(32)))))));

CREATE  VIEW payerspine.vw_prev_month_iqvia_plan_code_ftf_hp_id_cdw_v1 AS
 SELECT iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_proair_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_airduo_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.digi_armonair_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_time,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_by
 FROM payerspine.iqvia_plan_code_ftf_hp_id_cdw_v1
 WHERE (iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (payerspine.tbl_lvl_audit a JOIN payerspine.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM payerspine.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_code_ftf_hp_id_cdw_v1'::varchar(32)))))));

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_health_plan_detail AS
 SELECT lpad((vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_ajovy AS "Coverage Category Ajovy",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_aimovig AS "Coverage Category Aimovig",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_emgality AS "Coverage Category Emgality",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_nurtec AS "Coverage Category Nurtec",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_qulitpa AS "Coverage Category Qulipta",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_austedo_hd AS "Coverage Category Austedo HD",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_austedo_td AS "Coverage Category Austedo TD",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_ingrezza_td AS "Coverage Category Ingrezza TD",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_digi_proair AS "Coverage Category ProAir Digihaler",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_digi_airduo AS "Coverage Category Airduo Digihaler",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_digi_armonair AS "Coverage Category Armonair Digihaler",
        vw_curr_access_master_bridge_cdw_v1.ftf_provider_fid AS "FTF Provider FID",
        vw_curr_access_master_bridge_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_access_master_bridge_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_access_master_bridge_cdw_v1.paytype AS "Payment Type",
        vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_access_master_bridge_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_access_master_bridge_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_access_master_bridge_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_access_master_bridge_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_access_master_bridge_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_match_iqvia AS "FTF Match IQVIA",
        vw_curr_access_master_bridge_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_access_master_bridge_cdw_v1.previous_lives AS "Previous Month Lives",
        vw_curr_access_master_bridge_cdw_v1.current_lives AS "Current Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM payerspine.vw_curr_access_master_bridge_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_iqvia_plan_code_ftf_hp_id AS
 SELECT lpad((vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type AS "Payment Type",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model AS "IQVIA Model",
        lpad((vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan AS "Ajovy Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan AS "Aimovig Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan AS "Emgality Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan AS "Nurtec Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan AS "Qulipta Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan AS "Austedo HD Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan AS "Austedo TD Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan AS "Ingrezza TD Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.digi_proair_access_for_ftf_plan AS "ProAir Digihaler Access for FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.digi_airduo_access_for_ftf_plan AS "Airduo Digihaler Access for FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.digi_armonair_access_for_ftf_plan AS "ArmonAir Digihaler Access for FTF Plan",
        (vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan)::varchar AS "Total Lives For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm AS "Key PBM"
 FROM payerspine.vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1 UNION  SELECT '0000010001'::varchar(10) AS "IQVIA Plan Code",
        'CASH'::varchar(4) AS "IQVIA Plan Name",
        'CASH'::varchar(4) AS "IQVIA Payer Name",
        ''::varchar AS "IQVIA PBM",
        'CASH'::varchar(4) AS "Payment Type",
        ''::varchar AS "IQVIA Model",
        ''::varchar AS "FTF Health Plan FID",
        ''::varchar AS "FTF Health Plan Name",
        ''::varchar AS "FTF Health Plan Type",
        ''::varchar AS "Key Controlling Plan Formulary",
        ''::varchar AS "Key Controlling Account",
        ''::varchar AS "Key Controlling Parent",
        ''::varchar AS "Payer/PBM",
        ''::varchar AS "Ajovy Access For FTF Plan",
        ''::varchar AS "Aimovig Access For FTF Plan",
        ''::varchar AS "Emgality Access For FTF Plan",
        ''::varchar AS "Nurtec Access For FTF Plan",
        ''::varchar AS "Qulipta Access For FTF Plan",
        ''::varchar AS "Austedo HD Access For FTF Plan",
        ''::varchar AS "Austedo TD Access For FTF Plan",
        ''::varchar AS "Ingrezza TD Access For FTF Plan",
        ''::varchar AS "ProAir Digihaler Access for FTF Plan",
        ''::varchar AS "Airduo Digihaler Access for FTF Plan",
        ''::varchar AS "ArmonAir Digihaler Access for FTF Plan",
        ''::varchar AS "Total Lives For FTF Plan",
        ''::varchar AS "Key PBM"
 FROM v_catalog.dual;

CREATE  VIEW payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.restriction_code,
        a.restriction_detail_id,
        a.restriction_detail_text,
        a.restriction_addtnl_information_1,
        a.restriction_addtnl_information_2,
        a.step_count,
        a.pa_form,
        a.indication,
        a.grouped_restriction_level
 FROM (payerspine.vw_curr_month_ftf_restrictions_cdw a JOIN payerspine.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.restriction_code,
        a.restriction_detail_id,
        a.restriction_detail_text,
        a.restriction_addtnl_information_1,
        a.restriction_addtnl_information_2,
        a.step_count,
        a.pa_form,
        a.indication,
        a.grouped_restriction_level
 FROM (payerspine.vw_prev_month_ftf_restrictions_cdw a JOIN payerspine.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW payerspine.vw_curr_month_ftf_formularies_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.tier_code,
        a.restrictions,
        a.reason_code,
        a.reason_code_description,
        a.pharmacy_status
 FROM (payerspine.vw_curr_month_ftf_formularies_cdw a JOIN payerspine.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW payerspine.vw_prev_month_ftf_formularies_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.tier_code,
        a.restrictions,
        a.reason_code,
        a.reason_code_description,
        a.pharmacy_status
 FROM (payerspine.vw_prev_month_ftf_formularies_cdw a JOIN payerspine.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW payerspine.vw_teva_iqvia_bridge_mismatch_analysis AS
 SELECT bridge_dt.iqvia_payer_name AS "IQVIA Payer Name",
        bridge_dt.iqvia_plan_code AS IQVIA_Plan_Code,
        bridge_dt.iqvia_plan_name AS IQVIA_Plan_Name,
        bridge_dt.ftf_health_plan_fid AS "FTF Health Plan FID",
        bridge_dt.ftf_health_plan_name AS "FTF Health Plan Name",
        ftf_health_plans_preprocessed.ftf_provider_fid AS "FTF Provider FID",
        bridge_dt.ftf_provider_name AS "FTF Provider Name",
        bridge_dt.ftf_health_plan_type AS "FTF Health Plan Type",
        bridge_dt.paytype_index AS PayTypeIndex,
        bridge_dt.paytype AS "Pay Type",
        bridge_dt.hp_type AS "HP Type",
        bridge_dt.iqvia_paytype AS "IQVIA Pay Type",
        bridge_dt.model AS Model,
        bridge_dt.check_pay_types AS "Check Pay Types",
        bridge_dt.check_hp_types AS "Check HP Types",
        bridge_dt.iqvia_pbm AS "IQVIA PBM",
        bridge_dt.old_ftf_health_plan_type AS "Old_FTF Health Plan Type",
        (to_timestamptz((bridge_dt.cycle_id)::float))::timestamp AS modified_time,
        process_audit_tbl.date_run
 FROM ((payerspine.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 bridge_dt LEFT  JOIN payerspine.vw_curr_ftf_health_plans_preprocessed_cdw_v1 ftf_health_plans_preprocessed ON ((bridge_dt.ftf_health_plan_fid = ftf_health_plans_preprocessed.ftf_health_plan_fid))) LEFT  JOIN payerspine.process_audit_tbl process_audit_tbl ON (((bridge_dt.cycle_id = process_audit_tbl.cycle_id) AND (process_audit_tbl.process_id = 1) AND (process_audit_tbl.status = 'COMPLETED'::varchar(9)))))
 WHERE (coalesce(bridge_dt.check_delete, ''::varchar) <> 'DELETE'::varchar(6));

CREATE  VIEW payerspine.vw_ftf_plan_change AS
 SELECT a.entity AS "Change Type",
        a.id AS ID,
        a.name AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM ((((((( SELECT 'Plan'::varchar(4) AS entity,
        curr_month_ftf_health_plans.formularyf_id AS id,
        curr_month_ftf_health_plans.health_plan AS name,
        'Added'::varchar(5) AS status
 FROM (payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ANTI  JOIN payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ON ((curr_month_ftf_health_plans.formularyf_id = prev_month_ftf_health_plans.formularyf_id))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        prev_month_ftf_health_plans.formularyf_id AS ftf_health_plan_fid,
        prev_month_ftf_health_plans.health_plan AS ftf_health_plan_name,
        'Deleted'::varchar(7) AS status
 FROM (payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ANTI  JOIN payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ON ((curr_month_ftf_health_plans.formularyf_id = prev_month_ftf_health_plans.formularyf_id)))) UNION  SELECT 'Provider'::varchar(8) AS entity,
        curr_month_ftf_health_plans.provider_id AS ftf_provider_fid,
        curr_month_ftf_health_plans.provider AS ftf_provider_name,
        'Added'::varchar(5) AS status
 FROM (payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ANTI  JOIN payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ON ((curr_month_ftf_health_plans.provider_id = prev_month_ftf_health_plans.provider_id)))) UNION  SELECT 'Provider'::varchar(8) AS entity,
        prev_month_ftf_health_plans.provider_id AS ftf_provider_fid,
        prev_month_ftf_health_plans.provider AS ftf_provider_name,
        'Deleted'::varchar(7) AS status
 FROM (payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ANTI  JOIN payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ON ((curr_month_ftf_health_plans.provider_id = prev_month_ftf_health_plans.provider_id)))) UNION  SELECT 'Pharmacy Status'::varchar(15) AS entity,
        NULL AS id,
        b.pharmacy_status,
        'Added'::varchar(5) AS status
 FROM ( SELECT curr_month_ftf_formularies.pharmacy_status
 FROM payerspine.vw_curr_month_ftf_formularies_cdw_required_drugs curr_month_ftf_formularies
 GROUP BY curr_month_ftf_formularies.pharmacy_status EXCEPT  SELECT prev_month_ftf_formularies.pharmacy_status
 FROM payerspine.vw_prev_month_ftf_formularies_cdw_required_drugs prev_month_ftf_formularies
 GROUP BY prev_month_ftf_formularies.pharmacy_status) b) UNION  SELECT 'Pharmacy Status'::varchar(15) AS entity,
        NULL AS id,
        b.pharmacy_status,
        'Added'::varchar(5) AS status
 FROM ( SELECT prev_month_ftf_formularies.pharmacy_status
 FROM payerspine.vw_prev_month_ftf_formularies_cdw_required_drugs prev_month_ftf_formularies
 GROUP BY prev_month_ftf_formularies.pharmacy_status EXCEPT  SELECT curr_month_ftf_formularies.pharmacy_status
 FROM payerspine.vw_curr_month_ftf_formularies_cdw_required_drugs curr_month_ftf_formularies
 GROUP BY curr_month_ftf_formularies.pharmacy_status) b) UNION  SELECT 'Health Plan Type'::varchar(16) AS entity,
        NULL AS id,
        b.plan_type_name,
        'Added'::varchar(5) AS status
 FROM ( SELECT curr_month_ftf_health_plans.plan_type_name
 FROM payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans
 GROUP BY curr_month_ftf_health_plans.plan_type_name EXCEPT  SELECT prev_month_ftf_health_plans.plan_type_name
 FROM payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans
 GROUP BY prev_month_ftf_health_plans.plan_type_name) b) UNION  SELECT 'Health Plan Type'::varchar(16) AS entity,
        NULL AS id,
        b.plan_type_name,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT prev_month_ftf_health_plans.plan_type_name
 FROM payerspine.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans
 GROUP BY prev_month_ftf_health_plans.plan_type_name EXCEPT  SELECT curr_month_ftf_health_plans.plan_type_name
 FROM payerspine.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans
 GROUP BY curr_month_ftf_health_plans.plan_type_name) b) a
 ORDER BY a.entity,
          a.status,
          a.id,
          a.name;

CREATE  VIEW payerspine.vw_ftf_delta_report AS
 SELECT a.ftf_health_plan_fid AS "FTF Health Plan FID",
        a.ftf_health_plan_name AS "FTF Health Plan Name",
        a.ftf_provider_fid AS "FTF Provider FID",
        a.ftf_provider_name AS "FTF Provider Name",
        a.ftf_parent_name AS "FTF Parent Name",
        a.paytype AS "Pay Type",
        a.ftf_health_plan_type AS "FTF Health Plan Type",
        a.key_controlling_account AS "Key Controlling Account",
        a.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        a.key_controlling_parent AS "Key Controlling Parent",
        a.payer_pbm AS "Payer/PBM",
        a.key_pbm AS "Key PBM",
        a.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        a.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        a.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        a.lives_mn AS Lives,
        a.iqvia_payer_name AS "IQVIA Payer Name best matched to FTF Plan",
        a.iqvia_pbm AS "IQVIA PBM best matched to FTF Plan",
        a.Coverage_Category_Ajovy AS "Coverage Category for Ajovy",
        a.Coverage_Category_Aimovig AS "Coverage Category for Aimovig",
        a.Coverage_Category_Emgality AS "Coverage Category for Emgality",
        a.pref_brand_tier AS "Pref Brand Tier",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan FID Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider FID Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_parent_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Parent Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_paytype = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pay Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan/Formulary Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payer/PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_management_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Management PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_influencer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Influencer PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_claims_processing_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Claims Processing PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_lives_mn = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Lives Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name best matched to FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM best matched to FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Ajovy = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Ajovy Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Aimovig = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Aimovig Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Emgality = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Emgality Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_pref_brand_tier = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pref Brand Tier Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        a.month_flag AS "Month Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        a.change_in_lives AS "Change in Lives",
        tbl_lvl_audit.date_run,
        (to_timestamptz((a.cycle_id)::float))::timestamp AS modified_time
 FROM (payerspine.vw_curr_comparison_ftf_health_plan_fid_cdw_v1 a LEFT  JOIN payerspine.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_ftf_health_plan_fid_cdw_v1'::varchar(37))))
 GROUP BY a.ftf_health_plan_fid,
          a.ftf_health_plan_name,
          a.ftf_provider_fid,
          a.ftf_provider_name,
          a.ftf_parent_name,
          a.paytype,
          a.ftf_health_plan_type,
          a.key_controlling_account,
          a.key_controlling_plan_formulary,
          a.key_controlling_parent,
          a.payer_pbm,
          a.key_pbm,
          a.ftf_formulary_management_pbm,
          a.ftf_formulary_influencer_pbm,
          a.ftf_claims_processing_pbm,
          a.lives_mn,
          a.iqvia_payer_name,
          a.iqvia_pbm,
          a.Coverage_Category_Ajovy,
          a.Coverage_Category_Aimovig,
          a.Coverage_Category_Emgality,
          a.pref_brand_tier,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_parent_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_paytype = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_management_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_influencer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_claims_processing_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_lives_mn = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Ajovy = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Aimovig = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Emgality = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_pref_brand_tier = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END,
          a.month_flag,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END,
          a.change_in_lives,
          tbl_lvl_audit.date_run,
          (to_timestamptz((a.cycle_id)::float))::timestamp
 ORDER BY a.ftf_health_plan_fid;

CREATE  VIEW payerspine.access_granularity_ftf AS
 SELECT vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy AS "Coverage Category for Ajovy",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig AS "Coverage Category for Aimovig",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality AS "Coverage Category for Emgality",
        count(DISTINCT vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_fid) AS "FTF Health Plan FID",
        vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_pivot_plan_prod_master_cdw_v1.paytype AS "Pay Type",
        sum(vw_curr_pivot_plan_prod_master_cdw_v1.lives_mn) AS Lives
 FROM payerspine.vw_curr_pivot_plan_prod_master_cdw_v1
 GROUP BY vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality,
          vw_curr_pivot_plan_prod_master_cdw_v1.paytype,
          vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_type,
          vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_account;

CREATE  VIEW payerspine.vw_comparison_iqvia_fid_delta_report AS
 SELECT a.iqvia_plan_code AS "IQVIA Plan Code",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_code = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Code Flag",
        a.iqvia_plan_name AS "IQVIA Plan Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Name Flag",
        a.iqvia_payer_name AS "IQVIA Payer Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name Flag",
        a.iqvia_pbm AS "IQVIA PBM",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM Flag",
        a.payment_type AS "Payment Type",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payment_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payment Type Flag",
        a.iqvia_model AS "IQVIA Model ",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_model = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Model  Flag",
        a.ftf_health_plan_fid AS "FTF Plan ID",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Plan ID Flag",
        a.ftf_health_plan_name AS "FTF Plan Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Plan Name Flag",
        a.ftf_health_plan_type AS "FTF Health Plan Type",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Type Flag",
        a.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan/Formulary Flag",
        a.key_controlling_account AS "Key Controlling Account",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        a.key_controlling_parent AS "Key Controlling Parent",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        a.payer_pbm AS "PBM/Payer",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "PBM/Payer Flag",
        a.ajovy_access_for_ftf_plan AS "Ajovy Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ajovy_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Ajovy Access for FTF Plan Flag",
        a.aimovig_access_for_ftf_plan AS "Aimovig Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_aimovig_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Aimovig Access for FTF Plan Flag",
        a.emgality_access_for_ftf_plan AS "Emgality Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_emgality_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Emgality Access for FTF Plan Flag",
        a.total_lives_for_ftf_plan AS "Total Lives for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_total_lives_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Total Lives for FTF Plan Flag",
        a.key_pbm AS "Key PBM",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        a.change_in_lives AS "Change in Lives",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        round((a.total_lives_for_ftf_plan / b.ck), 0) AS "Apportioned Lives for FTF/IQVIA Plan",
        a.month_flag,
        tbl_lvl_audit.date_run,
        (to_timestamptz((a.cycle_id)::float))::timestamp AS modified_time
 FROM ((payerspine.vw_curr_comparison_iqvia_fid_plans_cdw_v1 a LEFT  JOIN ( SELECT vw_curr_comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid,
        count(*) AS ck
 FROM payerspine.vw_curr_comparison_iqvia_fid_plans_cdw_v1
 GROUP BY vw_curr_comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid) b ON ((a.ftf_health_plan_fid = b.ftf_health_plan_fid))) LEFT  JOIN payerspine.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM payerspine.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_iqvia_fid_plans_cdw_v1'::varchar(33))))
 ORDER BY a.iqvia_plan_code,
          a.ftf_health_plan_fid,
          a.month_flag;

CREATE  VIEW payerspine.vw_ftf_restriction_change AS
 SELECT a.entity AS "Change Type",
        a.category_value AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM (((( SELECT 'Group Restriction'::varchar(17) AS entity,
        b.category_value,
        'No Change'::varchar(9) AS status
 FROM (( SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level) a JOIN ( SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level) b ON ((a.category_value = b.category_value))) UNION  SELECT 'Group Restriction'::varchar(17) AS entity,
        vw_curr_month_ftf_restrictions.category_value,
        'Added'::varchar(5) AS status
 FROM ( SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level EXCEPT  SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level) vw_curr_month_ftf_restrictions) UNION  SELECT 'Group Restriction'::varchar(17) AS entity,
        vw_prev_month_ftf_restrictions_cdw.category_value,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level EXCEPT  SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level) vw_prev_month_ftf_restrictions_cdw) UNION  SELECT 'Restriction Detail'::varchar(18) AS entity,
        vw_curr_month_ftf_restrictions.category_value,
        'Added'::varchar(5) AS status
 FROM ( SELECT vw_curr_month_ftf_restrictions.restriction_detail_text AS category_value
 FROM payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.restriction_detail_text EXCEPT  SELECT vw_prev_month_ftf_restrictions_cdw.restriction_detail_text AS category_value
 FROM payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.restriction_detail_text) vw_curr_month_ftf_restrictions) UNION  SELECT 'Restriction Detail'::varchar(18) AS entity,
        vw_prev_month_ftf_restrictions_cdw.category_value,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT vw_prev_month_ftf_restrictions_cdw.restriction_detail_text AS category_value
 FROM payerspine.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.restriction_detail_text EXCEPT  SELECT vw_curr_month_ftf_restrictions.restriction_detail_text AS category_value
 FROM payerspine.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.restriction_detail_text) vw_prev_month_ftf_restrictions_cdw) a
 WHERE (coalesce(a.category_value, ''::varchar) <> ''::varchar)
 GROUP BY a.entity,
          a.category_value,
          a.status,
          CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END
 ORDER BY a.entity,
          a.status,
          a.category_value;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_all_changes AS
 SELECT lpad((vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Ajovy AS "Coverage Category Ajovy",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Aimovig AS "Coverage Category Aimovig",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Emgality AS "Coverage Category Emgality",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_fid AS "FTF Provider FID",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.paytype AS "Payment Type",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.lives_mn AS Lives,
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.month_flag AS "Month Flag",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.status AS Status,
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.change_in_lives AS "Change in Lives"
 FROM payerspine.vw_curr_comparison_ftf_health_plan_fid_cdw_v1;