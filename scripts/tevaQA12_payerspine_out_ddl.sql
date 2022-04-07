CREATE SCHEMA payerspine;


CREATE TABLE payerspine.mb_test
(
    test varchar(3)
);


CREATE TABLE payerspine.ftf_formularies_6mofiles
(
    health_plan_id varchar(80),
    drug_id varchar(80),
    tier_code varchar(80),
    restrictions varchar(80),
    reason_code varchar(80),
    reason_code_description varchar(80),
    pharmacy_status varchar(80),
    month_id varchar(80)
);


CREATE TABLE payerspine.ftf_pbms_6mofiles
(
    health_plan_id varchar(80),
    pbm_id varchar(80),
    pbm varchar(80),
    pbm_function_id varchar(80),
    pbm_function varchar(80),
    month_id varchar(80)
);


CREATE TABLE payerspine.mc_wb_new_view_6mofiles
(
    payer_num varchar(80),
    payer_name varchar(80),
    plan_num varchar(80),
    payer_plan_num varchar(80),
    plan_name varchar(80),
    model varchar(80),
    city varchar(80),
    hq_state varchar(80),
    operating_state varchar(80),
    months_with_data varchar(80),
    month_id varchar(80)
);


CREATE TABLE payerspine.mc_wb_pbm_plans_6mofiles
(
    pbm_name varchar(80),
    payer_plan_id varchar(80),
    xref_to_payer_plan_id varchar(80),
    ipd_id varchar(80),
    ipd_type varchar(80),
    plan_name varchar(80),
    pbm_id varchar(80),
    ims_processor_number varchar(80),
    month_id varchar(80)
);


CREATE TABLE payerspine.ftf_health_plans_6mofiles
(
    formularyf_id varchar(80),
    provider_id varchar(80),
    provider varchar(85),
    health_plan_id varchar(80),
    health_plan varchar(85),
    parent_id varchar(80),
    parent varchar(80),
    national_lives_count int,
    plan_type_name varchar(80),
    preferred_brand_tier varchar(80),
    month_id varchar(80)
);


CREATE TABLE payerspine.ftf_ims_bridge_6mofiles
(
    payer_name varchar(80),
    code varchar(80),
    name varchar(80),
    state varchar(80),
    comments varchar(80),
    plan_id varchar(80),
    plan_name varchar(85),
    provider_name varchar(85),
    plan_type_name varchar(80),
    month varchar(80)
);


CREATE TABLE payerspine.PS_IQVIA_PLANS_DISCARD_V01
(
    payer_id int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_IQVIA_PLANS_DISCARD_V01.file_id);


CREATE TABLE payerspine.PS_MODEL_PAYTYPE_MAP_V01
(
    model varchar(100),
    paytype varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_MODEL_PAYTYPE_MAP_V01.file_id);


CREATE TABLE payerspine.PS_IQVIA_PAYTYPEINDEX_V01
(
    paytype_index int,
    paytype varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (PS_IQVIA_PAYTYPEINDEX_V01.file_id);


CREATE TABLE payerspine.PS_IQVIA_PAYER_PAYTYPE_OVERRIDE_V01
(
    iqvia_payer_name varchar(200),
    iqvia_plan_name_regex varchar(200),
    paytype varchar(120),
    file_id int,
    record_id int
)
PARTITION BY (PS_IQVIA_PAYER_PAYTYPE_OVERRIDE_V01.file_id);


CREATE TABLE payerspine.PS_FTF_PLANS_PAYTYPEINDEX_V01
(
    ftf_health_plan_type varchar(100),
    paytype_index int,
    file_id int,
    record_id int
)
PARTITION BY (PS_FTF_PLANS_PAYTYPEINDEX_V01.file_id);


CREATE TABLE payerspine.PS_FTF_PAYTYPE_PAYTYPEINDEX_V01
(
    paytype_index int,
    paytype varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (PS_FTF_PAYTYPE_PAYTYPEINDEX_V01.file_id);


CREATE TABLE payerspine.PS_FTF_OVERRIDE_PROVIDER_V01
(
    provider_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_FTF_OVERRIDE_PROVIDER_V01.file_id);


CREATE TABLE payerspine.PS_FTF_OVERRIDE_PLAN_V01
(
    ftf_health_plan_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_FTF_OVERRIDE_PLAN_V01.file_id);


CREATE TABLE payerspine.PS_DRUG_ASSIGNMENTS_V01
(
    drug_id int,
    drug_seq int,
    product varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (PS_DRUG_ASSIGNMENTS_V01.file_id);


CREATE TABLE payerspine.PS_FTF_PBM_FUNCTIONS_V01
(
    pbm_function_id int,
    pbm_function varchar(100),
    notes varchar(200),
    used int,
    file_id int,
    record_id int
)
PARTITION BY (PS_FTF_PBM_FUNCTIONS_V01.file_id);


CREATE TABLE payerspine.PS_BOTOX_STEP_RESTRICTION_V01
(
    code int,
    botox_step_flag varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_BOTOX_STEP_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_STEP_RESTRICTION_V01
(
    code int,
    step_category varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_STEP_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_PA_RESTRICTION_V01
(
    code int,
    prescriber_prior_authorization_category varchar(200),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_PA_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_PATIENT_PA_RESTRICTION_V01
(
    code int,
    patient_prior_authorization_category varchar(200),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_PATIENT_PA_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_MEDICAL_REC_RESTRICTION_V01
(
    code int,
    medical_records_submission_required_flag varchar(100),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_MEDICAL_REC_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_UNSPECIFIED_REC_RESTRICTION_V01
(
    code int,
    unspecified_restriction_flag varchar(100),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_UNSPECIFIED_REC_RESTRICTION_V01.file_id);


CREATE TABLE payerspine.PS_OVERRIDE_BRIDGE_FTF_PLAN_TYPES_V01
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(200),
    iqvia_plan_name_regex varchar(200),
    override_ftf_health_plan_type varchar(200),
    override_precedence int,
    file_id int,
    record_id int
)
PARTITION BY (PS_OVERRIDE_BRIDGE_FTF_PLAN_TYPES_V01.file_id);


CREATE TABLE payerspine.PS_DELETE_BRIDGE_FTF_PLAN_TYPES_V01
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(200),
    iqvia_plan_name_regex varchar(200),
    delete_flag varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (PS_DELETE_BRIDGE_FTF_PLAN_TYPES_V01.file_id);


CREATE TABLE payerspine.PS_PROVIDER_OVERRIDE_DEFAULT_V01
(
    provider_id int,
    paytype_regex varchar(200),
    provider_name varchar(200),
    fill_in_iqvia_payer_name_if_no_bridge varchar(200),
    override_best_iqvia_payer varchar(200),
    fill_in_iqvia_pbm_if_no_bridge varchar(200),
    override_best_iqvia_pbm varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_PROVIDER_OVERRIDE_DEFAULT_V01.file_id);


CREATE TABLE payerspine.PS_KEY_CONTROLLER_LIST_V01
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (PS_KEY_CONTROLLER_LIST_V01.file_id);


CREATE TABLE payerspine.PS_CALCULATED_PBM_CONFIG_V01
(
    ftf_formulary_management_pbm_regex varchar(200),
    ftf_formulary_influencer_pbm_regex varchar(200),
    ftf_claims_processing_pbm_regex varchar(200),
    calculated_pbm_column varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_CALCULATED_PBM_CONFIG_V01.file_id);


CREATE TABLE payerspine.PS_CALC_PBM_KEY_PBM_MAPPING_V01
(
    calculated_pbm varchar(200),
    key_pbm varchar(200),
    added_by varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_CALC_PBM_KEY_PBM_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_HAS_PA_MAPPING_V01
(
    has_pa int,
    pa_regex varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_HAS_PA_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_HAS_ST_MAPPING_V01
(
    has_st int,
    st_regex varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_HAS_ST_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_FORMULARY_DERIVATION_CONFIG_V01
(
    pharmacy_status_regex varchar(200),
    has_pa_regex varchar(200),
    has_st_regex varchar(200),
    formulary varchar(200),
    tier_regex varchar(200),
    pref_brand_tier_regex varchar(200),
    ftf_health_plan_type_regex varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_FORMULARY_DERIVATION_CONFIG_V01.file_id);


CREATE TABLE payerspine.PS_COPAY_TIER_DERIVATION_CONFIG_V01
(
    pharmacy_status_regex varchar(200),
    tier_cat varchar(200),
    tier_regex varchar(200),
    pref_brand_tier_regex varchar(200),
    ftf_health_plan_type_regex varchar(200),
    copay_tier varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_COPAY_TIER_DERIVATION_CONFIG_V01.file_id);


CREATE TABLE payerspine.PS_TIER_CAT_DESCRIPTION_MAPPING_V01
(
    tier_cat varchar(200),
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_TIER_CAT_DESCRIPTION_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_RESTRICTION_CATEGORY_DERIVATION_CONFIG_V01
(
    tier_regex varchar(200),
    has_pa_has_st_regex varchar(200),
    unspec_regex varchar(200),
    step_regex varchar(200),
    botox_regex varchar(200),
    prespa_regex varchar(200),
    tier_cat_regex varchar(200),
    medrecs_regex varchar(200),
    restcat int,
    restriction_category varchar(200),
    meaning varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (PS_RESTRICTION_CATEGORY_DERIVATION_CONFIG_V01.file_id);


CREATE TABLE payerspine.PS_RESTRICTION_CAT_DESCRIPTION_MAPPING_V01
(
    rest_cat varchar(200),
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_RESTRICTION_CAT_DESCRIPTION_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_COVERAGE_CATEGORY_DERIVATION_CONFIG
(
    paytype_regex varchar(200),
    pharmacy_status_regex varchar(200),
    coverage_cat_code varchar(200),
    coverage_category varchar(200),
    restriction_cat_code_regex varchar(200),
    meaning varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (PS_COVERAGE_CATEGORY_DERIVATION_CONFIG.file_id);


CREATE TABLE payerspine.PS_COVERAGE_CAT_DESCRIPTION_MAPPING_V01
(
    coverage_cat varchar(200),
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_COVERAGE_CAT_DESCRIPTION_MAPPING_V01.file_id);


CREATE TABLE payerspine.PS_STEP_RESTRICTION_DESCRIPTION_V01
(
    step int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (PS_STEP_RESTRICTION_DESCRIPTION_V01.file_id);


CREATE TABLE payerspine.PS_PRES_PA_RESTRICTION_DESCRIPTION_V01
(
    prespa int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (PS_PRES_PA_RESTRICTION_DESCRIPTION_V01.file_id);


CREATE TABLE payerspine.PS_PAT_PA_RESTRICTION_DESCRIPTION_V01
(
    patpa int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (PS_PAT_PA_RESTRICTION_DESCRIPTION_V01.file_id);


CREATE TABLE payerspine.PS_OVERRIDE_FID_IQVIA_KEY_CONTROLLER_LIST_V01
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (PS_OVERRIDE_FID_IQVIA_KEY_CONTROLLER_LIST_V01.file_id);


CREATE TABLE payerspine.ftf_health_plan_geography_6mofiles
(
    health_plan_id int,
    county_fips_id int,
    county_id int,
    county_name varchar(200),
    state_id int,
    state_name varchar(200),
    county_lives numeric(37,15),
    month_id varchar(100),
    file_id_v1 int,
    record_id int
);


CREATE TABLE payerspine.ftf_restrictions_v2_6mofiles
(
    health_plan_id int,
    drug_id int,
    restriction_code varchar(200),
    restriction_details_id int,
    restriction_details_text varchar(15000),
    restriction_details_information_1 varchar(15000),
    restriction_details_information_2 varchar(1000),
    step_count varchar(200),
    pa_form varchar(15000),
    indication varchar(200),
    grouped_restriction_level varchar(3000),
    month_id varchar(100)
);


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

SELECT MARK_DESIGN_KSAFE(1);