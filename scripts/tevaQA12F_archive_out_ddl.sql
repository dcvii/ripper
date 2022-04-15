CREATE SCHEMA archive;


CREATE TABLE archive.test
(
    c1 int
);


CREATE TABLE archive.basket_20180307
(
    basket_id int,
    name varchar(300),
    description varchar(500),
    teva_product_code varchar(100),
    basket_type varchar(100),
    create_date date
);


CREATE TABLE archive.basket_item_20180307
(
    basket_id int,
    entity_type varchar(20),
    entity_id int
);


CREATE TABLE archive.source_product_20180307
(
    source_id int,
    feed_id int,
    feed_version int,
    entity_type varchar(20),
    entity_id int,
    source_file_code varchar(80),
    source_product_code varchar(100),
    source_product_name varchar(300),
    source_product_description varchar(300),
    source_product_mfg_name varchar(100),
    source_client_num varchar(80),
    source_report_num varchar(80),
    source_indication varchar(20),
    create_date date
);


CREATE TABLE archive.data_feed_version_validation_rules_20180412
(
    pkId int,
    feed_id int,
    feed_version_id int,
    field varchar(50),
    parameters varchar(50),
    validation_rule_code varchar(4),
    date_format varchar(20)
);


CREATE TABLE archive.prescriber_combined_demographics_20180419
(
    sales_force_id varchar(20),
    ims_id varchar(10),
    veeva_account_id varchar(20),
    specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(30),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(10),
    npi varchar(10),
    tvcmid int,
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20)
);


CREATE TABLE archive.copay_20180604
(
    redemption_type varchar(10),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_num varchar(50),
    fill_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(20),
    daw int,
    basket_id int,
    basket_name varchar(300),
    new_refill int,
    quantity numeric(37,15),
    refills int,
    other_coverage_code varchar(10),
    program_number varchar(15),
    copay_card_number varchar(15),
    sex varchar(1),
    age_at_redemption int,
    pharmacy_process_date date,
    pharmacy_chain_number varchar(5),
    nabp varchar(7),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_phone varchar(10),
    pharmacy_npi_num varchar(10),
    principle_physician_dea varchar(9),
    physician_npi varchar(10),
    physician_ims_id varchar(10),
    physician_veeva_id varchar(20),
    physician_name varchar(100),
    physician_address1 varchar(100),
    physician_address2 varchar(100),
    physician_city varchar(50),
    physician_state varchar(2),
    physician_zip varchar(5),
    rebate_amount numeric(37,15),
    member_cash_expense numeric(37,15),
    submitted_cost numeric(37,15),
    pharmacy_fee numeric(37,15),
    total_amount_due numeric(37,15),
    calc_awp numeric(37,15),
    create_date date,
    occ_payment_type varchar(10),
    counted_copay varchar(1),
    file_id int,
    record_id int,
    physician_tvcmid int,
    pharmacy_tvcmid int,
    report_frequency varchar(20),
    source_name varchar(255),
    auth_refills int,
    admin_hcp_npi int,
    admin_hcp_name varchar(100),
    admin_hcp_address varchar(100),
    admin_hcp_address2 varchar(100),
    admin_hcp_city varchar(50),
    admin_hcp_state varchar(2),
    admin_hcp_zip int,
    claim_type varchar(50),
    administration_flag char(1),
    soc_name varchar(60),
    soc_phone int,
    soc_fax int,
    soc_address varchar(100),
    soc_city varchar(50),
    soc_state varchar(2),
    soc_zip int,
    soc_id varchar(50),
    soc_npi varchar(10),
    payer_name varchar(60),
    cpt_code varchar(10),
    trans_type varchar(15),
    previous_payer_id int,
    member_id varchar(20),
    benefit_amount numeric(9,2),
    patient_expense numeric(9,2),
    submission_method varchar(1)
);


CREATE TABLE archive.prescriber_combined_demo_frozen_20180621
(
    start_date date,
    end_date date,
    sales_force_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    veeva_account_id varchar(20),
    specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(50),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20),
    row_source varchar(100),
    freeze_reason varchar(100),
    freeze_date date
);


CREATE TABLE archive.workflow_steps_20180718
(
    pkId int,
    WorkflowId int,
    StepOrder int,
    StepDescription varchar(50)
);


CREATE TABLE archive.tw_address_20180718
(
    specialty_pharmacy_data_source varchar(20),
    address_id int,
    address varchar(100),
    city varchar(50),
    state varchar(20),
    zip_code varchar(10),
    phone varchar(50),
    fax varchar(50),
    email varchar(100),
    tax_id varchar(50)
);


CREATE TABLE archive.tw_address_xref_20180718
(
    specialty_pharmacy_data_source varchar(20),
    customer_code varchar(20),
    address_id int,
    address_type varchar(20)
);


CREATE TABLE archive.tw_account_20180718
(
    specialty_pharmacy_data_source varchar(20),
    customer_id varchar(20),
    customer_name varchar(100),
    parent_customer_id varchar(20),
    parent_customer_name varchar(100),
    customer_type varchar(20),
    pvp_340B_id varchar(100),
    HIN varchar(100),
    DEA_NUM varchar(100)
);


CREATE TABLE archive.prescriber_combined_demo_frozen_20180724
(
    start_date date,
    end_date date,
    sales_force_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    veeva_account_id varchar(20),
    specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(50),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20),
    row_source varchar(100),
    freeze_reason varchar(100),
    freeze_date date
);


CREATE TABLE archive.mdm_address_20180724
(
    tvcmid int,
    address_id int,
    address_type varchar(10),
    address_type_name varchar(50),
    address_line_1 varchar(80),
    address_line_2 varchar(80),
    county varchar(40),
    city varchar(40),
    state varchar(2),
    state_name varchar(50),
    country_code varchar(3),
    country_name varchar(50),
    zip5_postal_code varchar(5),
    zip4_postal_extension_code varchar(4),
    address_status varchar(10),
    address_status_name varchar(50),
    address_effective_date timestamp,
    msa_cbsa varchar(5),
    fips_state_code varchar(2),
    fips_state_description varchar(50),
    fips_county_code varchar(3),
    fips_county_description varchar(50),
    deliverability_confidence varchar(10),
    address_setting_type_code varchar(10),
    address_setting_type_description varchar(50),
    address_category_code varchar(10),
    address_category_description varchar(50),
    address_latitude varchar(20),
    address_longitude varchar(20),
    postal_barcode varchar(10),
    single_address_indicator varchar(1),
    practice_location_confidence_indicator varchar(10),
    practice_location_rank varchar(10),
    validation_message varchar(100),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_address_link_20180724
(
    tvcmid int,
    address_id int,
    dsp_id varchar(10),
    dsp_hce_id varchar(100),
    dsp_address_id varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_alternate_id_20180724
(
    tvcmid int,
    alternate_id_type varchar(10),
    alternate_id_type_name varchar(50),
    alternate_id_value varchar(100),
    state varchar(2),
    state_name varchar(50),
    identifier_category varchar(25),
    status varchar(10),
    status_name varchar(50),
    source_deactivation_reason_code varchar(1),
    source_deactivation_reason_description varchar(50),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_alternate_name_20180724
(
    tvcmid int,
    name_type varchar(10),
    name_type_name varchar(50),
    name_value varchar(125),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_communication_20180724
(
    tvcmid int,
    address_id varchar(14),
    communication_type varchar(10),
    communication_type_name varchar(50),
    communication_value varchar(100),
    status_code varchar(10),
    status_name varchar(50),
    effective_start_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_dea_address_20180724
(
    tvcmid int,
    address_id int,
    dea_number varchar(18),
    business_activity_code varchar(1),
    business_activity_description varchar(40),
    sub_business_activity_code varchar(10),
    sub_business_activity_description varchar(50),
    dea_schedule_class_code varchar(20),
    dea_status_code varchar(5),
    dea_status_description varchar(40),
    dea_expiration_date timestamp,
    dea_deactivation_reason_code varchar(1),
    dea_deactivation_reason_description varchar(50),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_email_preference_20180724
(
    tvcmid int,
    email varchar(10),
    value varchar(100),
    effective_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_hco_20180724
(
    tvcmid int,
    ims_organization_id varchar(11),
    dba_name varchar(80),
    business_name varchar(80),
    care_of_location varchar(80),
    record_type varchar(2),
    record_type_name varchar(50),
    sub_type varchar(10),
    sub_type_name varchar(50),
    owner_status varchar(25),
    profit_status varchar(25),
    cmi int,
    no_of_providers int,
    primary_cot_id int,
    cot_classification_id int,
    cot_classification varchar(50),
    cot_facility_type_id int,
    cot_facility_type varchar(50),
    cot_specialty_id int,
    cot_specialty varchar(50),
    ttl_license_beds int,
    ttl_census_beds int,
    ttl_staffed_beds int,
    teaching_hosp varchar(1),
    commhosp varchar(3),
    formulary varchar(20),
    electronic_medical_record varchar(20),
    eprescribe varchar(20),
    payperform varchar(20),
    genfirst varchar(20),
    srep_access varchar(20),
    practicing_status_code_healthcare_organization varchar(5),
    mpn varchar(6),
    mpn_order varchar(1),
    status_indicator varchar(1),
    status_indicator_name varchar(50),
    deactivation_reason varchar(25),
    logical_deletion_date timestamp,
    hce_insert_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_hco_teva_flag_20180724
(
    tvcmid int,
    flag_type varchar(10),
    flag_type_name varchar(50),
    flag_value varchar(50),
    effective_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_hcp_20180724
(
    tvcmid int,
    ims_hce_id int,
    ims_prescriber_id varchar(7),
    first_name varchar(40),
    middle_name varchar(40),
    last_name varchar(40),
    prefix varchar(10),
    suffix varchar(10),
    suffix_name varchar(50),
    sub_type varchar(10),
    sub_type_name varchar(50),
    healthcare_professional_status_code varchar(10),
    healthcare_professional_status_name varchar(50),
    year_of_birth timestamp,
    date_of_death timestamp,
    gender_code varchar(5),
    gender_name varchar(50),
    teva_specialty_code varchar(5),
    teva_specialty_name varchar(50),
    logical_deletion_date timestamp,
    hce_insert_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_hcp_teva_flag_20180724
(
    tvcmid int,
    flag_type varchar(10),
    flag_type_name varchar(50),
    flag_value varchar(50),
    effective_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_ims_flag_20180724
(
    tvcmid int,
    flag_type varchar(10),
    flag_type_name varchar(50),
    flag_value varchar(1),
    effective_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_license_20180724
(
    tvcmid int,
    hce_regulation_id varchar(14),
    license_type_id int,
    license_type_name varchar(100),
    authorization_number varchar(25),
    profession_code varchar(5),
    state varchar(2),
    state_name varchar(50),
    state_board_id int,
    state_board_name varchar(150),
    license_privilege_id int,
    license_privilege varchar(100),
    license_certification_code varchar(5),
    license_certification_name varchar(40),
    license_type_privilege_rank int,
    license_status_code varchar(5),
    license_status_description varchar(40),
    license_effective_date timestamp,
    license_expiration_date timestamp,
    license_deactivation_reason_code varchar(10),
    license_deactivation_reason_description varchar(50),
    record_type varchar(3),
    record_type_name varchar(50),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_marketing_channel_20180724
(
    tvcmid int,
    channel varchar(10),
    value varchar(100),
    effective_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_merges_20180724
(
    previous_tvcmid int,
    current_tvcmid int,
    merge_cycle varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_professional_20180724
(
    tvcmid int,
    profession_code varchar(5),
    profession_code_name varchar(50),
    profession_rank varchar(3),
    status varchar(10),
    profession_status_name varchar(50),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_raw_dea_20180724
(
    tvcmid int,
    ims_id varchar(7),
    dea_number varchar(9),
    name varchar(40),
    additional_company_info varchar(40),
    address_line1 varchar(40),
    address_line2 varchar(40),
    city varchar(33),
    state varchar(2),
    state_name varchar(50),
    zip varchar(5),
    business_activity_code varchar(1),
    drug_schedules varchar(16),
    expiration_date timestamp,
    business_activity_sub_code varchar(1),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_raw_npi_20180724
(
    tvcmid int,
    npi_number varchar(10),
    npi_first_name varchar(20),
    npi_middle_name varchar(20),
    npi_last_name varchar(35),
    practice_address_1 varchar(55),
    practice_address_2 varchar(55),
    practice_city varchar(40),
    practice_state_name varchar(20),
    practice_postal_code varchar(20),
    practice_country_code varchar(2),
    primary_taxonomy_code varchar(10),
    primary_taxonomy_type varchar(200),
    primary_taxonomy_classification varchar(200),
    primary_taxonomy_specialty varchar(200),
    ims_specialty_code varchar(5),
    ims_specialty_description varchar(50),
    npi_deactivation_reason_code varchar(2),
    npi_deactivation_date timestamp,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_regulation_20180724
(
    state_license_type_id int,
    state_license_type_name varchar(120),
    state_privilege_type_id int,
    state_license_privilege_type_name varchar(120),
    state_license_privilege_type_rank int,
    state_code varchar(2),
    state_name varchar(50),
    state_board_id int,
    state_board_name varchar(120),
    certification_code varchar(5),
    required_sample_non_ctrl varchar(1),
    required_sample_ctrl varchar(1),
    received_sample_non_ctrl varchar(1),
    received_sample_ctrl varchar(1),
    distributed_sample_non_ctrl varchar(1),
    distributed_sample_ctrl varchar(1),
    sample_drug_schedule_i_flag varchar(1),
    sample_drug_schedule_ii_flag varchar(1),
    sample_drug_schedule_iii_flag varchar(1),
    sample_drug_schedule_iv_flag varchar(1),
    sample_drug_schedule_v_flag varchar(1),
    sample_drug_schedule_vi_flag varchar(1),
    prescriber_non_ctrl_flag varchar(1),
    prescriber_app_required_non_ctrl_flag varchar(1),
    prescriber_ctrl_flag varchar(1),
    prescriber_app_required_ctrl_flag varchar(1),
    prescriber_drug_schedule_i_flag varchar(1),
    prescriber_drug_schedule_ii_flag varchar(1),
    prescriber_drug_schedule_iii_flag varchar(1),
    prescriber_drug_schedule_iv_flag varchar(1),
    prescriber_drug_schedule_v_flag varchar(1),
    prescriber_drug_schedule_vi_flag varchar(1),
    supervisory_relationship_code_non_ctrl varchar(1),
    supervisory_relationship_code_ctrl varchar(1),
    collaborative_non_ctrl varchar(1),
    collaborative_ctrl varchar(1),
    inclusionary varchar(1),
    exclusionary varchar(1),
    delegation_non_ctrl varchar(1),
    delegation_ctrl varchar(1),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_relationship_20180724
(
    hierarchy_code varchar(255),
    hierarchy_name varchar(255),
    relationship_type_code varchar(255),
    relationship_type_name varchar(255),
    parent_tvcmid int,
    child_tvcmid int,
    relationship_status_code varchar(50),
    relationship_status_name varchar(50),
    relationship_start_date timestamp,
    relationship_end_date timestamp,
    notes varchar(2000),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_sample_eligibility_20180724
(
    tvcmid int,
    sln varchar(25),
    sln_state varchar(2),
    sln_status_code varchar(5),
    sln_status_description varchar(40),
    sln_expiration_date timestamp,
    teva_sample_eligibility_flag varchar(1),
    teva_schedule_iv_eligibility_flag varchar(1),
    teva_schedule_v_eligibility_flag varchar(1),
    profession_short_description varchar(5),
    teva_specialty_code varchar(5),
    certification_code varchar(5),
    certification_description varchar(100),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_source_details_20180724
(
    tvcmid int,
    identifier_code varchar(5),
    identifier_description varchar(50),
    identifier_value varchar(18),
    legacy_identifier_code varchar(10),
    ama_md_do_flag int,
    major_professional_activity varchar(10),
    major_professional_activity_description varchar(50),
    hospital_hours varchar(3),
    ama_hospital_id varchar(10),
    ama_hospital_description varchar(100),
    practice_type_code varchar(10),
    practice_type_description varchar(50),
    employment_type_code varchar(10),
    employment_type_description varchar(50),
    birth_city varchar(30),
    birth_state varchar(2),
    birth_country_code varchar(5),
    birth_country_description varchar(100),
    medical_school_code varchar(10),
    medical_school_description varchar(50),
    graduation_year varchar(64),
    number_of_physician_offices int,
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.mdm_specialty_20180724
(
    tvcmid int,
    specialty_code varchar(5),
    specialty_code_name varchar(50),
    specialty_ranking varchar(3),
    status varchar(10),
    status_name varchar(50),
    created_by varchar(50),
    created_date timestamp,
    updated_by varchar(50),
    updated_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE archive.scd_sales_geography_20180727
(
    scd_status varchar(10),
    scd_effective_date date,
    scd_expiration_date date,
    sales_force_id varchar(4),
    geography_number varchar(15),
    geography_name varchar(100),
    geography_desc varchar(100),
    geography_type varchar(15),
    employee_type varchar(10),
    sales_team varchar(100),
    parent_geography_number varchar(15),
    fleet_eligible_flag varchar(1)
);


CREATE TABLE archive.prescriber_combined_demo_frozen_20180813
(
    start_date date,
    end_date date,
    sales_force_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    veeva_account_id varchar(20),
    specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(50),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20),
    row_source varchar(100),
    freeze_reason varchar(100),
    freeze_date date
);


CREATE TABLE archive.veeva_call_sample_20180815
(
    id varchar(18),
    isdeleted varchar(5),
    name varchar(80),
    createddate date,
    createdbyid varchar(18),
    lastmodifieddate timestamptz,
    lastmodifiedbyid varchar(18),
    systemmodstamp timestamptz,
    lastactivitydate date,
    mayedit varchar(5),
    islocked varchar(5),
    lastvieweddate varchar(24),
    lastreferenceddate timestamptz,
    account_vod__c varchar(18),
    call_date_vod__c date,
    is_parent_call_vod__c varchar(64),
    quantity_vod__c varchar(64),
    lot_vod__c varchar(80),
    mobile_id_vod__c varchar(100),
    call2_vod__c varchar(18),
    product_vod__c varchar(18),
    distributor_vod__c varchar(255),
    attendee_type_vod__c varchar(255),
    entity_reference_id_vod__c varchar(100),
    delivery_status_vod__c varchar(255),
    apply_limit_vod__c varchar(5),
    limit_applied_vod__c varchar(5),
    manufacturer_vod__c varchar(255),
    file_id int,
    record_id int
);


CREATE TABLE archive.prescriber_combined_demographics_20181001
(
    sales_force_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    veeva_account_id varchar(20),
    specialty varchar(255),
    secondary_specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(50),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20),
    row_source varchar(100)
);


CREATE TABLE archive.ic_decile_goal_setting_2018q4_20181005
(
    ic_data_month date,
    ims_id varchar(10),
    tvcmid int,
    decile_name varchar(300),
    decile_value int,
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date
);


CREATE TABLE archive.ic_demo_goal_setting_2018q4_20181005
(
    ic_data_month date,
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    outlet_code varchar(8),
    va_station_number varchar(10),
    specialty varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    address_1 varchar(100),
    address_2 varchar(100),
    address_3 varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    address_source varchar(50),
    pdrp_flag char(1),
    pdrp_date date,
    np_pa_flag char(1),
    no_spend char(1),
    ama_no_contact_flag char(1),
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date
);


CREATE TABLE archive.ic_rx_goal_setting_2018q4_20181005
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    outlet_code varchar(8),
    va_station_number varchar(10),
    dnc_flag char(1),
    dnp_flag char(1),
    rollup_month date,
    month_bucket int,
    nrx_count float,
    trx_count float,
    nrx_quantity float,
    trx_quantity float,
    include_in_nation_rollup char(1),
    include_in_area_rollup char(1),
    include_in_region_rollup char(1),
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date,
    indication varchar(20)
);


CREATE TABLE archive.ic_target_goal_setting_2018q4_20181005
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    row_create_date date
);


CREATE TABLE archive.prescriber_combined_demo_frozen_20190426
(
    start_date date,
    end_date date,
    sales_force_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    veeva_account_id varchar(20),
    specialty varchar(255),
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    ptr_veeva_address_id varchar(20),
    ptr_address_1 varchar(100),
    ptr_address_2 varchar(100),
    ptr_address_3 varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(40),
    ptr_territory_num varchar(15),
    ptr_territory_type varchar(30),
    ptr_address_source varchar(50),
    ptr_mailable varchar(1),
    dea_num varchar(10),
    pdrp_flag varchar(1),
    pdrp_date timestamp,
    np_pa_flag varchar(1),
    no_spend varchar(1),
    ama_no_contact_flag varchar(1),
    email varchar(100),
    degree varchar(100),
    address_id int,
    address_latitude varchar(20),
    address_longitude varchar(20),
    row_source varchar(100),
    freeze_reason varchar(100),
    freeze_date date,
    secondary_specialty varchar(255)
);


CREATE TABLE archive.copay_20190618
(
    redemption_type varchar(10),
    physician_tvcmid int,
    pharmacy_tvcmid int,
    basket_id int,
    basket_name varchar(300),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_num varchar(50),
    fill_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(20),
    daw int,
    new_refill int,
    quantity numeric(9,2),
    refills int,
    other_coverage_code varchar(10),
    program_number varchar(15),
    copay_card_number varchar(20),
    sex varchar(1),
    age_at_redemption int,
    pharmacy_process_date date,
    pharmacy_chain_number varchar(5),
    nabp varchar(7),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_phone varchar(10),
    pharmacy_npi_num varchar(10),
    principle_physician_dea varchar(9),
    physician_npi varchar(10),
    physician_ims_id varchar(10),
    physician_veeva_id varchar(20),
    physician_name varchar(100),
    physician_address1 varchar(100),
    physician_address2 varchar(100),
    physician_city varchar(50),
    physician_state varchar(2),
    physician_zip varchar(5),
    rebate_amount numeric(9,2),
    member_cash_expense numeric(9,2),
    submitted_cost numeric(9,2),
    pharmacy_fee numeric(9,2),
    total_amount_due numeric(9,2),
    calc_awp numeric(9,2),
    create_date date,
    occ_payment_type varchar(10),
    counted_copay varchar(1),
    auth_refills int,
    admin_hcp_npi varchar(10),
    admin_hcp_name varchar(100),
    admin_hcp_address varchar(100),
    admin_hcp_address2 varchar(100),
    admin_hcp_city varchar(50),
    admin_hcp_state varchar(2),
    admin_hcp_zip varchar(10),
    claim_type varchar(50),
    administration_flag char(1),
    soc_name varchar(60),
    soc_phone varchar(10),
    soc_fax varchar(10),
    soc_address varchar(100),
    soc_city varchar(50),
    soc_state varchar(2),
    soc_zip varchar(10),
    soc_id varchar(50),
    soc_npi varchar(10),
    payer_name varchar(60),
    cpt_code varchar(10),
    trans_type varchar(15),
    previous_payer_id int,
    member_id varchar(20),
    benefit_amount numeric(9,2),
    patient_expense numeric(9,2),
    submission_method varchar(1),
    report_frequency varchar(20),
    source_name varchar(255),
    file_id int,
    record_id int
);


CREATE TABLE archive.prescriber_rx_gcsf_tki_bkp_201712
(
    ims_id varchar(10),
    payer_plan_number varchar(10),
    ims_client_number varchar(5),
    report_frequency varchar(20),
    ims_product_group varchar(10),
    basket_id int,
    data_date date,
    date date,
    sales_category varchar(2),
    tvcmid int,
    prescriber_first_name varchar(50),
    prescriber_last_name varchar(50),
    basket_name varchar(300),
    basket_type varchar(100),
    rollup_week date,
    rollup_month date,
    nrx_count numeric(18,3),
    trx_count numeric(18,3),
    nrx_quantity numeric(18,3),
    trx_quantity numeric(18,3),
    unnormalized_nrx_count numeric(18,3),
    unnormalized_trx_count numeric(18,3),
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250),
    ims_specialty varchar(10),
    ims_rx_type varchar(1),
    ims_supplemental_data varchar(20),
    ims_zip_other varchar(10),
    ims_report_number_cnt varchar(5),
    cnt_file_id int,
    cnt_record_id int,
    ims_report_number_qty varchar(5),
    qty_file_id int,
    qty_record_id int,
    rollup_flag char(1),
    indication varchar(20)
);


CREATE TABLE archive.bag_20180329
(
    bag_id int,
    bag_name varchar(100),
    first_valid_date timestamp,
    last_valid_date timestamp,
    valid_for_today varchar(1),
    create_user varchar(30),
    create_date timestamp,
    update_user varchar(30),
    update_date timestamp
);


CREATE TABLE archive.bag_product_20180329
(
    bag_id int,
    basket_id int,
    basket_name varchar(300),
    "position" float,
    weight float,
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date
);


CREATE TABLE archive.bag_territory_20180329
(
    bag_id int,
    territory_number varchar(8),
    detail_first_valid_date date,
    detail_last_valid_date date,
    ic_first_valid_date date,
    ic_last_valid_date date,
    valid_for_today varchar(1),
    valid_for_ic varchar(1),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date
);


CREATE TABLE archive.copay_voucher_program_vertica_20180613
(
    program_key int,
    redemption_type varchar(20),
    program_number varchar(10),
    program_description varchar(100),
    sales_force_id varchar(10),
    program_type varchar(20),
    product_name varchar(30),
    program_start_date date,
    program_end_date date,
    active_ind varchar(1),
    create_date date,
    last_upd_date date,
    number_of_tablets int
);


CREATE TABLE archive.copay_voucher_program_oracle_20180613
(
    program_key int,
    redemption_type varchar(20),
    program_number varchar(10),
    program_description varchar(100),
    sales_force_id varchar(10),
    program_type varchar(20),
    product_name varchar(30),
    program_start_date date,
    program_end_date date,
    active_ind varchar(1),
    create_date date,
    last_upd_date date,
    number_of_tablets int
);


CREATE TABLE archive.copay_20190624
(
    redemption_type varchar(10),
    physician_tvcmid int,
    pharmacy_tvcmid int,
    basket_id int,
    basket_name varchar(300),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_num varchar(50),
    fill_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(20),
    daw int,
    new_refill int,
    quantity numeric(9,2),
    refills int,
    other_coverage_code varchar(10),
    program_number varchar(15),
    copay_card_number varchar(20),
    sex varchar(1),
    age_at_redemption int,
    pharmacy_process_date date,
    pharmacy_chain_number varchar(5),
    nabp varchar(7),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_phone varchar(10),
    pharmacy_npi_num varchar(10),
    principle_physician_dea varchar(9),
    physician_npi varchar(10),
    physician_ims_id varchar(10),
    physician_veeva_id varchar(20),
    physician_name varchar(100),
    physician_address1 varchar(100),
    physician_address2 varchar(100),
    physician_city varchar(50),
    physician_state varchar(2),
    physician_zip varchar(5),
    rebate_amount numeric(9,2),
    member_cash_expense numeric(9,2),
    submitted_cost numeric(9,2),
    pharmacy_fee numeric(9,2),
    total_amount_due numeric(9,2),
    calc_awp numeric(9,2),
    create_date date,
    occ_payment_type varchar(10),
    counted_copay varchar(1),
    auth_refills int,
    admin_hcp_npi varchar(10),
    admin_hcp_name varchar(100),
    admin_hcp_address varchar(100),
    admin_hcp_address2 varchar(100),
    admin_hcp_city varchar(50),
    admin_hcp_state varchar(2),
    admin_hcp_zip varchar(10),
    claim_type varchar(50),
    administration_flag char(1),
    soc_name varchar(60),
    soc_phone varchar(10),
    soc_fax varchar(10),
    soc_address varchar(100),
    soc_city varchar(50),
    soc_state varchar(2),
    soc_zip varchar(10),
    soc_id varchar(50),
    soc_npi varchar(10),
    payer_name varchar(60),
    cpt_code varchar(10),
    trans_type varchar(15),
    previous_payer_id int,
    member_id varchar(20),
    benefit_amount numeric(9,2),
    patient_expense numeric(9,2),
    submission_method varchar(1),
    report_frequency varchar(20),
    source_name varchar(255),
    file_id int,
    record_id int
);


CREATE TABLE archive.prescriber_rx_gcsf_tki_bkp_201710
(
    ims_id varchar(10),
    payer_plan_number varchar(10),
    ims_client_number varchar(5),
    report_frequency varchar(20),
    ims_product_group varchar(10),
    basket_id int,
    data_date date,
    date date,
    sales_category varchar(2),
    tvcmid int,
    prescriber_first_name varchar(50),
    prescriber_last_name varchar(50),
    basket_name varchar(300),
    basket_type varchar(100),
    rollup_week date,
    rollup_month date,
    nrx_count float,
    trx_count float,
    nrx_quantity float,
    trx_quantity float,
    unnormalized_nrx_count float,
    unnormalized_trx_count float,
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250),
    ims_specialty varchar(10),
    ims_rx_type varchar(1),
    ims_supplemental_data varchar(20),
    ims_zip_other varchar(10),
    ims_report_number_cnt varchar(5),
    cnt_file_id int,
    cnt_record_id int,
    ims_report_number_qty varchar(5),
    qty_file_id int,
    qty_record_id int,
    rollup_flag char(1),
    indication varchar(20)
);


CREATE TABLE archive.product_catalog_20180401
(
    id int,
    sales_force_id varchar(5),
    product_catalog varchar(10),
    product varchar(300),
    business_unit varchar(100),
    start_date date,
    end_date date,
    field_release_date date
);


CREATE TABLE archive.salesforce_reference_20180401
(
    id int,
    sales_force_id varchar(10),
    ref_code varchar(10),
    ref_desc varchar(50),
    ref_type varchar(50)
);


CREATE TABLE archive.rx_deciles_20180430
(
    ims_id varchar(10),
    first_name varchar(50),
    last_name varchar(50),
    decile_name varchar(50),
    basket_id int,
    basket_name varchar(300),
    decile_trx_count_6_mo int,
    decile_trx_count_12_mo int,
    trx_count_6_mo float,
    trx_count_12_mo float,
    trx_count_24_mo float,
    decile_date date,
    tvcmid int
);


CREATE TABLE archive.copay_20180517
(
    redemption_type varchar(10),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_num varchar(50),
    fill_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(20),
    daw int,
    basket_id int,
    basket_name varchar(300),
    new_refill int,
    quantity numeric(37,15),
    refills int,
    other_coverage_code varchar(10),
    program_number varchar(15),
    copay_card_number varchar(15),
    sex varchar(1),
    age_at_redemption int,
    pharmacy_process_date date,
    pharmacy_chain_number varchar(5),
    nabp varchar(7),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_phone varchar(10),
    pharmacy_npi_num varchar(10),
    principle_physician_dea varchar(9),
    physician_npi varchar(10),
    physician_ims_id varchar(10),
    physician_veeva_id varchar(20),
    physician_name varchar(100),
    physician_address1 varchar(100),
    physician_address2 varchar(100),
    physician_city varchar(50),
    physician_state varchar(2),
    physician_zip varchar(5),
    rebate_amount numeric(37,15),
    member_cash_expense numeric(37,15),
    submitted_cost numeric(37,15),
    pharmacy_fee numeric(37,15),
    total_amount_due numeric(37,15),
    calc_awp numeric(37,15),
    create_date date,
    occ_payment_type varchar(10),
    counted_copay varchar(1),
    file_id int,
    record_id int,
    physician_tvcmid int,
    pharmacy_tvcmid int,
    report_frequency varchar(20),
    source_name varchar(255),
    auth_refills int,
    admin_hcp_npi int,
    admin_hcp_name varchar(100),
    admin_hcp_address varchar(100),
    admin_hcp_address2 varchar(100),
    admin_hcp_city varchar(50),
    admin_hcp_state varchar(2),
    admin_hcp_zip int,
    claim_type varchar(50),
    administration_flag char(1),
    soc_name varchar(60),
    soc_phone int,
    soc_fax int,
    soc_address varchar(100),
    soc_city varchar(50),
    soc_state varchar(2),
    soc_zip int,
    soc_id varchar(50),
    soc_npi varchar(10),
    payer_name varchar(60),
    cpt_code varchar(10),
    trans_type varchar(15),
    previous_payer_id int,
    member_id varchar(20),
    benefit_amount numeric(9,2),
    patient_expense numeric(9,2),
    submission_method varchar(1)
);


CREATE TABLE archive.ic_decile_2018Q3_special_run_v1
(
    ic_data_month date,
    ims_id varchar(10),
    tvcmid int,
    decile_name varchar(300),
    decile_value int,
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date
);


CREATE TABLE archive.ic_demo_2018Q3_special_run_v1
(
    ic_data_month date,
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    outlet_code varchar(8),
    va_station_number varchar(10),
    specialty varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    address_1 varchar(100),
    address_2 varchar(100),
    address_3 varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    address_source varchar(50),
    pdrp_flag char(1),
    pdrp_date date,
    np_pa_flag char(1),
    no_spend char(1),
    ama_no_contact_flag char(1),
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date
);


CREATE TABLE archive.ic_goal_setting_2018Q3_special_run_v1
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    outlet_code varchar(8),
    va_station_number varchar(10),
    dnc_flag char(1),
    dnp_flag char(1),
    market_rolling_6 float,
    product_rolling_6 float,
    market_rolling_12 float,
    market_baseline float,
    product_baseline float,
    target_market_rolling_6 float,
    target_product_rolling_6 float,
    target_market_rolling_12 float,
    target_market_baseline float,
    target_product_baseline float,
    include_in_nation_rollup char(1),
    include_in_area_rollup char(1),
    include_in_region_rollup char(1),
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date
);


CREATE TABLE archive.ic_rx_2018Q3_special_run_v1
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    outlet_code varchar(8),
    va_station_number varchar(10),
    dnc_flag char(1),
    dnp_flag char(1),
    rollup_month date,
    month_bucket int,
    nrx_count float,
    trx_count float,
    nrx_quantity float,
    trx_quantity float,
    include_in_nation_rollup char(1),
    include_in_area_rollup char(1),
    include_in_region_rollup char(1),
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date,
    indication varchar(20)
);


CREATE TABLE archive.ic_target_2018Q3_special_run_v1
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    row_create_date date
);


CREATE TABLE archive.wholesaler_sales_867_20180921
(
    trading_partner varchar(50),
    partner_duns varchar(15),
    partner_duns_4 varchar(15),
    partner_dea varchar(20),
    partner_hin varchar(20),
    partner_seller_assigned_id varchar(50),
    partner_buyer_assigned_id varchar(50),
    client_name varchar(50),
    address_line_1 varchar(50),
    address_line_2 varchar(50),
    city varchar(50),
    state varchar(2),
    zip varchar(15),
    client_duns varchar(15),
    client_dea varchar(20),
    client_hin varchar(20),
    client_seller_assigned_id varchar(50),
    client_buyer_assigned_id varchar(50),
    ncpdp varchar(20),
    ndc varchar(20),
    basket_id int,
    basket_name varchar(300),
    ship_date date,
    ship_date_month date,
    ship_date_quarter varchar(7),
    quantity_purchased float,
    quantity_returned float,
    unit_price float,
    gross_amount float,
    drop_shipments float,
    file_id int,
    record_id int,
    tvcmid int
);


CREATE TABLE archive.copay_voucher_program_20181010
(
    redemption_type varchar(20),
    program_number varchar(10),
    program_description varchar(100),
    create_date date
);


CREATE TABLE archive.metadata_workflow_steps_20190103
(
    pkId int,
    WorkflowId int,
    StepOrder int,
    StepDescription varchar(50)
);


CREATE TABLE archive.ddd_445_calendar_2018
(
    start_date date,
    end_date date,
    period varchar(7)
);