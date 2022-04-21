


CREATE  VIEW payerspine.vw_final_extract_key_controlling_account_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_key_controlling_account_product_coverage_category_commercial AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW payerspine.vw_final_extract_key_pbm_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_key_pbm_product_coverage_category_commercial AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_copay_tier AS
 SELECT vw_curr_paytype_product_copay_tier_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_copay_tier_cdw_v1.product AS Product,
        vw_curr_paytype_product_copay_tier_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_copay_tier_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_copay_tier_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_coverage_category AS
 SELECT vw_curr_paytype_product_coverage_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_coverage_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_coverage_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_coverage_category_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_coverage_category_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_patient_pa AS
 SELECT vw_curr_paytype_product_patient_pa_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_patient_pa_cdw_v1.product AS Product,
        vw_curr_paytype_product_patient_pa_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_patient_pa_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_patient_pa_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_pay_type_product_step_edit_type AS
 SELECT vw_curr_paytype_product_step_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_step_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_step_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_step_category_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_step_category_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ftf_hp_id_key_controlling_plan_account AS
 SELECT lpad((vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payer_pbm AS "Payer/PBM"
 FROM sandbox.vw_curr_ftf_hp_id_key_controlling_account_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ftf_hp_id_key_pbm AS
 SELECT lpad((vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.assigned_iqvia_pbm AS "Assigned IQVIA PBM"
 FROM sandbox.vw_curr_ftf_hp_id_key_pbm_cdw_v1;

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
        (vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan)::varchar AS "Total Lives For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm AS "Key PBM"
 FROM sandbox.vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1 UNION  SELECT '0000010001'::varchar(10) AS "IQVIA Plan Code",
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
        ''::varchar AS "Total Lives For FTF Plan",
        ''::varchar AS "Key PBM"
 FROM v_catalog.dual;

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
 FROM sandbox.vw_curr_ftf_plan_master_file_op_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_key_controlling_account_summary AS
 SELECT vw_curr_key_ctl_account_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_ctl_account_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_ctl_account_summary_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_ctl_account_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_ctl_account_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_key_ctl_account_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_key_pbm_summary AS
 SELECT vw_curr_key_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_pbm_summary_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_key_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_iqvia_player_summary AS
 SELECT vw_curr_iqvia_payer_name_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_payer_name_summary_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_iqvia_payer_name_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_payer_name_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_iqvia_payer_name_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_iqvia_pbm_summary AS
 SELECT vw_curr_iqvia_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_pbm_summary_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_iqvia_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_iqvia_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_mgt_summary AS
 SELECT vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_formulary_management_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_infl_summary AS
 SELECT vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_pbm_claims_proc_summary AS
 SELECT vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_claims_processing_pbm_summary_cdw_v1;

CREATE  VIEW payerspine.vw_final_extract_ajovy_migraine_market_ftf_health_plan_detail AS
 SELECT lpad((vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_ajovy AS "Coverage Category Ajovy",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_aimovig AS "Coverage Category Aimovig",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_emgality AS "Coverage Category Emgality",
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
 FROM sandbox.vw_curr_access_master_bridge_cdw_v1;

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
 FROM sandbox.vw_curr_st_lives_summary_cdw_v1;

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
 FROM sandbox.vw_curr_comparison_ftf_health_plan_fid_cdw_v1;

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
 FROM sandbox.vw_curr_payer_spine25_detailed_teva_brands_cdw_v1;

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
 FROM sandbox.vw_curr_payer_spine25_plan_teva_brands_cdw_v1;