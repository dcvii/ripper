CREATE SCHEMA mdm;


CREATE TABLE mdm.address
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


CREATE TABLE mdm.address_link
(
    tvcmid int,
    address_id int,
    dsp_id varchar(10),
    dsp_hce_id varchar(100),
    dsp_address_id varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE mdm.alternate_id
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


CREATE TABLE mdm.alternate_name
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


CREATE TABLE mdm.communication
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


CREATE TABLE mdm.dea_address
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


CREATE TABLE mdm.email_preference
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


CREATE TABLE mdm.hco
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


CREATE TABLE mdm.hco_teva_flag
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


CREATE TABLE mdm.hcp
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


CREATE TABLE mdm.hcp_teva_flag
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


CREATE TABLE mdm.ims_flag
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


CREATE TABLE mdm.license
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


CREATE TABLE mdm.marketing_channel
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


CREATE TABLE mdm.professional
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


CREATE TABLE mdm.raw_dea
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


CREATE TABLE mdm.raw_npi
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


CREATE TABLE mdm.regulation
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


CREATE TABLE mdm.relationship
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


CREATE TABLE mdm.sample_eligibility
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


CREATE TABLE mdm.source_details
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


CREATE TABLE mdm.specialty
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


CREATE TABLE mdm.merges
(
    previous_tvcmid int,
    current_tvcmid int,
    merge_cycle varchar(1),
    file_id int,
    record_id int
);