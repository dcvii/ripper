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


CREATE PROJECTION mdm.hcp_teva_flag_b0 /*+basename(hcp_teva_flag),createtype(L)*/ 
(
 tvcmid,
 flag_type,
 flag_type_name,
 flag_value,
 effective_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT hcp_teva_flag.tvcmid,
        hcp_teva_flag.flag_type,
        hcp_teva_flag.flag_type_name,
        hcp_teva_flag.flag_value,
        hcp_teva_flag.effective_date,
        hcp_teva_flag.created_by,
        hcp_teva_flag.created_date,
        hcp_teva_flag.updated_by,
        hcp_teva_flag.updated_date,
        hcp_teva_flag.file_id,
        hcp_teva_flag.record_id
 FROM mdm.hcp_teva_flag
 ORDER BY hcp_teva_flag.tvcmid,
          hcp_teva_flag.flag_type,
          hcp_teva_flag.flag_type_name,
          hcp_teva_flag.flag_value,
          hcp_teva_flag.effective_date,
          hcp_teva_flag.created_by,
          hcp_teva_flag.created_date,
          hcp_teva_flag.updated_by
SEGMENTED BY hash(hcp_teva_flag.tvcmid, hcp_teva_flag.effective_date, hcp_teva_flag.created_date, hcp_teva_flag.updated_date, hcp_teva_flag.file_id, hcp_teva_flag.record_id, hcp_teva_flag.flag_type, hcp_teva_flag.flag_type_name) ALL NODES;

CREATE PROJECTION mdm.hco_teva_flag_b0 /*+basename(hco_teva_flag),createtype(L)*/ 
(
 tvcmid,
 flag_type,
 flag_type_name,
 flag_value,
 effective_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT hco_teva_flag.tvcmid,
        hco_teva_flag.flag_type,
        hco_teva_flag.flag_type_name,
        hco_teva_flag.flag_value,
        hco_teva_flag.effective_date,
        hco_teva_flag.created_by,
        hco_teva_flag.created_date,
        hco_teva_flag.updated_by,
        hco_teva_flag.updated_date,
        hco_teva_flag.file_id,
        hco_teva_flag.record_id
 FROM mdm.hco_teva_flag
 ORDER BY hco_teva_flag.tvcmid,
          hco_teva_flag.flag_type,
          hco_teva_flag.flag_type_name,
          hco_teva_flag.flag_value,
          hco_teva_flag.effective_date,
          hco_teva_flag.created_by,
          hco_teva_flag.created_date,
          hco_teva_flag.updated_by
SEGMENTED BY hash(hco_teva_flag.tvcmid, hco_teva_flag.effective_date, hco_teva_flag.created_date, hco_teva_flag.updated_date, hco_teva_flag.file_id, hco_teva_flag.record_id, hco_teva_flag.flag_type, hco_teva_flag.flag_type_name) ALL NODES;

CREATE PROJECTION mdm.hco_b0 /*+basename(hco),createtype(L)*/ 
(
 tvcmid,
 ims_organization_id,
 dba_name,
 business_name,
 care_of_location,
 record_type,
 record_type_name,
 sub_type,
 sub_type_name,
 owner_status,
 profit_status,
 cmi,
 no_of_providers,
 primary_cot_id,
 cot_classification_id,
 cot_classification,
 cot_facility_type_id,
 cot_facility_type,
 cot_specialty_id,
 cot_specialty,
 ttl_license_beds,
 ttl_census_beds,
 ttl_staffed_beds,
 teaching_hosp,
 commhosp,
 formulary,
 electronic_medical_record,
 eprescribe,
 payperform,
 genfirst,
 srep_access,
 practicing_status_code_healthcare_organization,
 mpn,
 mpn_order,
 status_indicator,
 status_indicator_name,
 deactivation_reason,
 logical_deletion_date,
 hce_insert_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT hco.tvcmid,
        hco.ims_organization_id,
        hco.dba_name,
        hco.business_name,
        hco.care_of_location,
        hco.record_type,
        hco.record_type_name,
        hco.sub_type,
        hco.sub_type_name,
        hco.owner_status,
        hco.profit_status,
        hco.cmi,
        hco.no_of_providers,
        hco.primary_cot_id,
        hco.cot_classification_id,
        hco.cot_classification,
        hco.cot_facility_type_id,
        hco.cot_facility_type,
        hco.cot_specialty_id,
        hco.cot_specialty,
        hco.ttl_license_beds,
        hco.ttl_census_beds,
        hco.ttl_staffed_beds,
        hco.teaching_hosp,
        hco.commhosp,
        hco.formulary,
        hco.electronic_medical_record,
        hco.eprescribe,
        hco.payperform,
        hco.genfirst,
        hco.srep_access,
        hco.practicing_status_code_healthcare_organization,
        hco.mpn,
        hco.mpn_order,
        hco.status_indicator,
        hco.status_indicator_name,
        hco.deactivation_reason,
        hco.logical_deletion_date,
        hco.hce_insert_date,
        hco.created_by,
        hco.created_date,
        hco.updated_by,
        hco.updated_date,
        hco.file_id,
        hco.record_id
 FROM mdm.hco
 ORDER BY hco.tvcmid,
          hco.ims_organization_id,
          hco.dba_name,
          hco.business_name,
          hco.care_of_location,
          hco.record_type,
          hco.record_type_name,
          hco.sub_type
SEGMENTED BY hash(hco.tvcmid, hco.record_type, hco.cmi, hco.no_of_providers, hco.primary_cot_id, hco.cot_classification_id, hco.cot_facility_type_id, hco.cot_specialty_id) ALL NODES;

CREATE PROJECTION mdm.alternate_name_b0 /*+basename(alternate_name),createtype(L)*/ 
(
 tvcmid,
 name_type,
 name_type_name,
 name_value,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT alternate_name.tvcmid,
        alternate_name.name_type,
        alternate_name.name_type_name,
        alternate_name.name_value,
        alternate_name.created_by,
        alternate_name.created_date,
        alternate_name.updated_by,
        alternate_name.updated_date,
        alternate_name.file_id,
        alternate_name.record_id
 FROM mdm.alternate_name
 ORDER BY alternate_name.tvcmid,
          alternate_name.name_type,
          alternate_name.name_type_name,
          alternate_name.name_value,
          alternate_name.created_by,
          alternate_name.created_date,
          alternate_name.updated_by,
          alternate_name.updated_date
SEGMENTED BY hash(alternate_name.tvcmid, alternate_name.created_date, alternate_name.updated_date, alternate_name.file_id, alternate_name.record_id, alternate_name.name_type, alternate_name.name_type_name, alternate_name.created_by) ALL NODES;

CREATE PROJECTION mdm.source_details_b0 /*+basename(source_details),createtype(L)*/ 
(
 tvcmid,
 identifier_code,
 identifier_description,
 identifier_value,
 legacy_identifier_code,
 ama_md_do_flag,
 major_professional_activity,
 major_professional_activity_description,
 hospital_hours,
 ama_hospital_id,
 ama_hospital_description,
 practice_type_code,
 practice_type_description,
 employment_type_code,
 employment_type_description,
 birth_city,
 birth_state,
 birth_country_code,
 birth_country_description,
 medical_school_code,
 medical_school_description,
 graduation_year,
 number_of_physician_offices,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT source_details.tvcmid,
        source_details.identifier_code,
        source_details.identifier_description,
        source_details.identifier_value,
        source_details.legacy_identifier_code,
        source_details.ama_md_do_flag,
        source_details.major_professional_activity,
        source_details.major_professional_activity_description,
        source_details.hospital_hours,
        source_details.ama_hospital_id,
        source_details.ama_hospital_description,
        source_details.practice_type_code,
        source_details.practice_type_description,
        source_details.employment_type_code,
        source_details.employment_type_description,
        source_details.birth_city,
        source_details.birth_state,
        source_details.birth_country_code,
        source_details.birth_country_description,
        source_details.medical_school_code,
        source_details.medical_school_description,
        source_details.graduation_year,
        source_details.number_of_physician_offices,
        source_details.created_by,
        source_details.created_date,
        source_details.updated_by,
        source_details.updated_date,
        source_details.file_id,
        source_details.record_id
 FROM mdm.source_details
 ORDER BY source_details.tvcmid,
          source_details.identifier_code,
          source_details.identifier_description,
          source_details.identifier_value,
          source_details.legacy_identifier_code,
          source_details.ama_md_do_flag,
          source_details.major_professional_activity,
          source_details.major_professional_activity_description
SEGMENTED BY hash(source_details.tvcmid, source_details.identifier_code, source_details.ama_md_do_flag, source_details.hospital_hours, source_details.birth_state, source_details.birth_country_code, source_details.number_of_physician_offices, source_details.created_date) ALL NODES;

CREATE PROJECTION mdm.raw_dea_b0 /*+basename(raw_dea),createtype(L)*/ 
(
 tvcmid,
 ims_id,
 dea_number,
 name,
 additional_company_info,
 address_line1,
 address_line2,
 city,
 state,
 state_name,
 zip,
 business_activity_code,
 drug_schedules,
 expiration_date,
 business_activity_sub_code,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT raw_dea.tvcmid,
        raw_dea.ims_id,
        raw_dea.dea_number,
        raw_dea.name,
        raw_dea.additional_company_info,
        raw_dea.address_line1,
        raw_dea.address_line2,
        raw_dea.city,
        raw_dea.state,
        raw_dea.state_name,
        raw_dea.zip,
        raw_dea.business_activity_code,
        raw_dea.drug_schedules,
        raw_dea.expiration_date,
        raw_dea.business_activity_sub_code,
        raw_dea.created_by,
        raw_dea.created_date,
        raw_dea.updated_by,
        raw_dea.updated_date,
        raw_dea.file_id,
        raw_dea.record_id
 FROM mdm.raw_dea
 ORDER BY raw_dea.tvcmid,
          raw_dea.ims_id,
          raw_dea.dea_number,
          raw_dea.name,
          raw_dea.additional_company_info,
          raw_dea.address_line1,
          raw_dea.address_line2,
          raw_dea.city
SEGMENTED BY hash(raw_dea.tvcmid, raw_dea.ims_id, raw_dea.state, raw_dea.zip, raw_dea.business_activity_code, raw_dea.expiration_date, raw_dea.business_activity_sub_code, raw_dea.created_date) ALL NODES;

CREATE PROJECTION mdm.hcp_b0 /*+basename(hcp),createtype(L)*/ 
(
 tvcmid,
 ims_hce_id,
 ims_prescriber_id,
 first_name,
 middle_name,
 last_name,
 prefix,
 suffix,
 suffix_name,
 sub_type,
 sub_type_name,
 healthcare_professional_status_code,
 healthcare_professional_status_name,
 year_of_birth,
 date_of_death,
 gender_code,
 gender_name,
 teva_specialty_code,
 teva_specialty_name,
 logical_deletion_date,
 hce_insert_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT hcp.tvcmid,
        hcp.ims_hce_id,
        hcp.ims_prescriber_id,
        hcp.first_name,
        hcp.middle_name,
        hcp.last_name,
        hcp.prefix,
        hcp.suffix,
        hcp.suffix_name,
        hcp.sub_type,
        hcp.sub_type_name,
        hcp.healthcare_professional_status_code,
        hcp.healthcare_professional_status_name,
        hcp.year_of_birth,
        hcp.date_of_death,
        hcp.gender_code,
        hcp.gender_name,
        hcp.teva_specialty_code,
        hcp.teva_specialty_name,
        hcp.logical_deletion_date,
        hcp.hce_insert_date,
        hcp.created_by,
        hcp.created_date,
        hcp.updated_by,
        hcp.updated_date,
        hcp.file_id,
        hcp.record_id
 FROM mdm.hcp
 ORDER BY hcp.tvcmid,
          hcp.ims_hce_id,
          hcp.ims_prescriber_id,
          hcp.first_name,
          hcp.middle_name,
          hcp.last_name,
          hcp.prefix,
          hcp.suffix
SEGMENTED BY hash(hcp.tvcmid, hcp.ims_hce_id, hcp.ims_prescriber_id, hcp.year_of_birth, hcp.date_of_death, hcp.gender_code, hcp.teva_specialty_code, hcp.logical_deletion_date) ALL NODES;

CREATE PROJECTION mdm.raw_npi_b0 /*+basename(raw_npi),createtype(L)*/ 
(
 tvcmid,
 npi_number,
 npi_first_name,
 npi_middle_name,
 npi_last_name,
 practice_address_1,
 practice_address_2,
 practice_city,
 practice_state_name,
 practice_postal_code,
 practice_country_code,
 primary_taxonomy_code,
 primary_taxonomy_type,
 primary_taxonomy_classification,
 primary_taxonomy_specialty,
 ims_specialty_code,
 ims_specialty_description,
 npi_deactivation_reason_code,
 npi_deactivation_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT raw_npi.tvcmid,
        raw_npi.npi_number,
        raw_npi.npi_first_name,
        raw_npi.npi_middle_name,
        raw_npi.npi_last_name,
        raw_npi.practice_address_1,
        raw_npi.practice_address_2,
        raw_npi.practice_city,
        raw_npi.practice_state_name,
        raw_npi.practice_postal_code,
        raw_npi.practice_country_code,
        raw_npi.primary_taxonomy_code,
        raw_npi.primary_taxonomy_type,
        raw_npi.primary_taxonomy_classification,
        raw_npi.primary_taxonomy_specialty,
        raw_npi.ims_specialty_code,
        raw_npi.ims_specialty_description,
        raw_npi.npi_deactivation_reason_code,
        raw_npi.npi_deactivation_date,
        raw_npi.created_by,
        raw_npi.created_date,
        raw_npi.updated_by,
        raw_npi.updated_date,
        raw_npi.file_id,
        raw_npi.record_id
 FROM mdm.raw_npi
 ORDER BY raw_npi.tvcmid,
          raw_npi.npi_number,
          raw_npi.npi_first_name,
          raw_npi.npi_middle_name,
          raw_npi.npi_last_name,
          raw_npi.practice_address_1,
          raw_npi.practice_address_2,
          raw_npi.practice_city
SEGMENTED BY hash(raw_npi.tvcmid, raw_npi.practice_country_code, raw_npi.ims_specialty_code, raw_npi.npi_deactivation_reason_code, raw_npi.npi_deactivation_date, raw_npi.created_date, raw_npi.updated_date, raw_npi.file_id) ALL NODES;

CREATE PROJECTION mdm.dea_address_b0 /*+basename(dea_address),createtype(L)*/ 
(
 tvcmid,
 address_id,
 dea_number,
 business_activity_code,
 business_activity_description,
 sub_business_activity_code,
 sub_business_activity_description,
 dea_schedule_class_code,
 dea_status_code,
 dea_status_description,
 dea_expiration_date,
 dea_deactivation_reason_code,
 dea_deactivation_reason_description,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT dea_address.tvcmid,
        dea_address.address_id,
        dea_address.dea_number,
        dea_address.business_activity_code,
        dea_address.business_activity_description,
        dea_address.sub_business_activity_code,
        dea_address.sub_business_activity_description,
        dea_address.dea_schedule_class_code,
        dea_address.dea_status_code,
        dea_address.dea_status_description,
        dea_address.dea_expiration_date,
        dea_address.dea_deactivation_reason_code,
        dea_address.dea_deactivation_reason_description,
        dea_address.created_by,
        dea_address.created_date,
        dea_address.updated_by,
        dea_address.updated_date,
        dea_address.file_id,
        dea_address.record_id
 FROM mdm.dea_address
 ORDER BY dea_address.tvcmid,
          dea_address.address_id,
          dea_address.dea_number,
          dea_address.business_activity_code,
          dea_address.business_activity_description,
          dea_address.sub_business_activity_code,
          dea_address.sub_business_activity_description,
          dea_address.dea_schedule_class_code
SEGMENTED BY hash(dea_address.tvcmid, dea_address.address_id, dea_address.business_activity_code, dea_address.dea_status_code, dea_address.dea_expiration_date, dea_address.dea_deactivation_reason_code, dea_address.created_date, dea_address.updated_date) ALL NODES;

CREATE PROJECTION mdm.professional_b0 /*+basename(professional),createtype(L)*/ 
(
 tvcmid,
 profession_code,
 profession_code_name,
 profession_rank,
 status,
 profession_status_name,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT professional.tvcmid,
        professional.profession_code,
        professional.profession_code_name,
        professional.profession_rank,
        professional.status,
        professional.profession_status_name,
        professional.created_by,
        professional.created_date,
        professional.updated_by,
        professional.updated_date,
        professional.file_id,
        professional.record_id
 FROM mdm.professional
 ORDER BY professional.tvcmid,
          professional.profession_code,
          professional.profession_code_name,
          professional.profession_rank,
          professional.status,
          professional.profession_status_name,
          professional.created_by,
          professional.created_date
SEGMENTED BY hash(professional.tvcmid, professional.profession_code, professional.profession_rank, professional.created_date, professional.updated_date, professional.file_id, professional.record_id, professional.status) ALL NODES;

CREATE PROJECTION mdm.regulation_b0 /*+basename(regulation),createtype(L)*/ 
(
 state_license_type_id,
 state_license_type_name,
 state_privilege_type_id,
 state_license_privilege_type_name,
 state_license_privilege_type_rank,
 state_code,
 state_name,
 state_board_id,
 state_board_name,
 certification_code,
 required_sample_non_ctrl,
 required_sample_ctrl,
 received_sample_non_ctrl,
 received_sample_ctrl,
 distributed_sample_non_ctrl,
 distributed_sample_ctrl,
 sample_drug_schedule_i_flag,
 sample_drug_schedule_ii_flag,
 sample_drug_schedule_iii_flag,
 sample_drug_schedule_iv_flag,
 sample_drug_schedule_v_flag,
 sample_drug_schedule_vi_flag,
 prescriber_non_ctrl_flag,
 prescriber_app_required_non_ctrl_flag,
 prescriber_ctrl_flag,
 prescriber_app_required_ctrl_flag,
 prescriber_drug_schedule_i_flag,
 prescriber_drug_schedule_ii_flag,
 prescriber_drug_schedule_iii_flag,
 prescriber_drug_schedule_iv_flag,
 prescriber_drug_schedule_v_flag,
 prescriber_drug_schedule_vi_flag,
 supervisory_relationship_code_non_ctrl,
 supervisory_relationship_code_ctrl,
 collaborative_non_ctrl,
 collaborative_ctrl,
 inclusionary,
 exclusionary,
 delegation_non_ctrl,
 delegation_ctrl,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT regulation.state_license_type_id,
        regulation.state_license_type_name,
        regulation.state_privilege_type_id,
        regulation.state_license_privilege_type_name,
        regulation.state_license_privilege_type_rank,
        regulation.state_code,
        regulation.state_name,
        regulation.state_board_id,
        regulation.state_board_name,
        regulation.certification_code,
        regulation.required_sample_non_ctrl,
        regulation.required_sample_ctrl,
        regulation.received_sample_non_ctrl,
        regulation.received_sample_ctrl,
        regulation.distributed_sample_non_ctrl,
        regulation.distributed_sample_ctrl,
        regulation.sample_drug_schedule_i_flag,
        regulation.sample_drug_schedule_ii_flag,
        regulation.sample_drug_schedule_iii_flag,
        regulation.sample_drug_schedule_iv_flag,
        regulation.sample_drug_schedule_v_flag,
        regulation.sample_drug_schedule_vi_flag,
        regulation.prescriber_non_ctrl_flag,
        regulation.prescriber_app_required_non_ctrl_flag,
        regulation.prescriber_ctrl_flag,
        regulation.prescriber_app_required_ctrl_flag,
        regulation.prescriber_drug_schedule_i_flag,
        regulation.prescriber_drug_schedule_ii_flag,
        regulation.prescriber_drug_schedule_iii_flag,
        regulation.prescriber_drug_schedule_iv_flag,
        regulation.prescriber_drug_schedule_v_flag,
        regulation.prescriber_drug_schedule_vi_flag,
        regulation.supervisory_relationship_code_non_ctrl,
        regulation.supervisory_relationship_code_ctrl,
        regulation.collaborative_non_ctrl,
        regulation.collaborative_ctrl,
        regulation.inclusionary,
        regulation.exclusionary,
        regulation.delegation_non_ctrl,
        regulation.delegation_ctrl,
        regulation.created_by,
        regulation.created_date,
        regulation.updated_by,
        regulation.updated_date,
        regulation.file_id,
        regulation.record_id
 FROM mdm.regulation
 ORDER BY regulation.state_license_type_id,
          regulation.state_license_type_name,
          regulation.state_privilege_type_id,
          regulation.state_license_privilege_type_name,
          regulation.state_license_privilege_type_rank,
          regulation.state_code,
          regulation.state_name,
          regulation.state_board_id
SEGMENTED BY hash(regulation.state_license_type_id, regulation.state_privilege_type_id, regulation.state_license_privilege_type_rank, regulation.state_code, regulation.state_board_id, regulation.certification_code, regulation.required_sample_non_ctrl, regulation.required_sample_ctrl) ALL NODES;

CREATE PROJECTION mdm.merges_b0 /*+basename(merges),createtype(L)*/ 
(
 previous_tvcmid,
 current_tvcmid,
 merge_cycle,
 file_id,
 record_id
)
AS
 SELECT merges.previous_tvcmid,
        merges.current_tvcmid,
        merges.merge_cycle,
        merges.file_id,
        merges.record_id
 FROM mdm.merges
 ORDER BY merges.previous_tvcmid,
          merges.current_tvcmid,
          merges.merge_cycle,
          merges.file_id,
          merges.record_id
SEGMENTED BY hash(merges.previous_tvcmid, merges.current_tvcmid, merges.merge_cycle, merges.file_id, merges.record_id) ALL NODES;

CREATE PROJECTION mdm.specialty_b0 /*+basename(specialty),createtype(L)*/ 
(
 tvcmid,
 specialty_code,
 specialty_code_name,
 specialty_ranking,
 status,
 status_name,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT specialty.tvcmid,
        specialty.specialty_code,
        specialty.specialty_code_name,
        specialty.specialty_ranking,
        specialty.status,
        specialty.status_name,
        specialty.created_by,
        specialty.created_date,
        specialty.updated_by,
        specialty.updated_date,
        specialty.file_id,
        specialty.record_id
 FROM mdm.specialty
 ORDER BY specialty.tvcmid,
          specialty.specialty_code,
          specialty.specialty_code_name,
          specialty.specialty_ranking,
          specialty.status,
          specialty.status_name,
          specialty.created_by,
          specialty.created_date
SEGMENTED BY hash(specialty.tvcmid, specialty.specialty_code, specialty.specialty_ranking, specialty.created_date, specialty.updated_date, specialty.file_id, specialty.record_id, specialty.status) ALL NODES;

CREATE PROJECTION mdm.sample_eligibility_b0 /*+basename(sample_eligibility),createtype(L)*/ 
(
 tvcmid,
 sln,
 sln_state,
 sln_status_code,
 sln_status_description,
 sln_expiration_date,
 teva_sample_eligibility_flag,
 teva_schedule_iv_eligibility_flag,
 teva_schedule_v_eligibility_flag,
 profession_short_description,
 teva_specialty_code,
 certification_code,
 certification_description,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT sample_eligibility.tvcmid,
        sample_eligibility.sln,
        sample_eligibility.sln_state,
        sample_eligibility.sln_status_code,
        sample_eligibility.sln_status_description,
        sample_eligibility.sln_expiration_date,
        sample_eligibility.teva_sample_eligibility_flag,
        sample_eligibility.teva_schedule_iv_eligibility_flag,
        sample_eligibility.teva_schedule_v_eligibility_flag,
        sample_eligibility.profession_short_description,
        sample_eligibility.teva_specialty_code,
        sample_eligibility.certification_code,
        sample_eligibility.certification_description,
        sample_eligibility.created_by,
        sample_eligibility.created_date,
        sample_eligibility.updated_by,
        sample_eligibility.updated_date,
        sample_eligibility.file_id,
        sample_eligibility.record_id
 FROM mdm.sample_eligibility
 ORDER BY sample_eligibility.tvcmid,
          sample_eligibility.sln,
          sample_eligibility.sln_state,
          sample_eligibility.sln_status_code,
          sample_eligibility.sln_status_description,
          sample_eligibility.sln_expiration_date,
          sample_eligibility.teva_sample_eligibility_flag,
          sample_eligibility.teva_schedule_iv_eligibility_flag
SEGMENTED BY hash(sample_eligibility.tvcmid, sample_eligibility.sln_state, sample_eligibility.sln_status_code, sample_eligibility.sln_expiration_date, sample_eligibility.teva_sample_eligibility_flag, sample_eligibility.teva_schedule_iv_eligibility_flag, sample_eligibility.teva_schedule_v_eligibility_flag, sample_eligibility.profession_short_description) ALL NODES;

CREATE PROJECTION mdm.ims_flag_b0 /*+basename(ims_flag),createtype(L)*/ 
(
 tvcmid,
 flag_type,
 flag_type_name,
 flag_value,
 effective_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT ims_flag.tvcmid,
        ims_flag.flag_type,
        ims_flag.flag_type_name,
        ims_flag.flag_value,
        ims_flag.effective_date,
        ims_flag.created_by,
        ims_flag.created_date,
        ims_flag.updated_by,
        ims_flag.updated_date,
        ims_flag.file_id,
        ims_flag.record_id
 FROM mdm.ims_flag
 ORDER BY ims_flag.tvcmid,
          ims_flag.flag_type,
          ims_flag.flag_type_name,
          ims_flag.flag_value,
          ims_flag.effective_date,
          ims_flag.created_by,
          ims_flag.created_date,
          ims_flag.updated_by
SEGMENTED BY hash(ims_flag.tvcmid, ims_flag.flag_value, ims_flag.effective_date, ims_flag.created_date, ims_flag.updated_date, ims_flag.file_id, ims_flag.record_id, ims_flag.flag_type) ALL NODES;

CREATE PROJECTION mdm.license_b0 /*+basename(license),createtype(L)*/ 
(
 tvcmid,
 hce_regulation_id,
 license_type_id,
 license_type_name,
 authorization_number,
 profession_code,
 state,
 state_name,
 state_board_id,
 state_board_name,
 license_privilege_id,
 license_privilege,
 license_certification_code,
 license_certification_name,
 license_type_privilege_rank,
 license_status_code,
 license_status_description,
 license_effective_date,
 license_expiration_date,
 license_deactivation_reason_code,
 license_deactivation_reason_description,
 record_type,
 record_type_name,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT license.tvcmid,
        license.hce_regulation_id,
        license.license_type_id,
        license.license_type_name,
        license.authorization_number,
        license.profession_code,
        license.state,
        license.state_name,
        license.state_board_id,
        license.state_board_name,
        license.license_privilege_id,
        license.license_privilege,
        license.license_certification_code,
        license.license_certification_name,
        license.license_type_privilege_rank,
        license.license_status_code,
        license.license_status_description,
        license.license_effective_date,
        license.license_expiration_date,
        license.license_deactivation_reason_code,
        license.license_deactivation_reason_description,
        license.record_type,
        license.record_type_name,
        license.created_by,
        license.created_date,
        license.updated_by,
        license.updated_date,
        license.file_id,
        license.record_id
 FROM mdm.license
 ORDER BY license.tvcmid,
          license.hce_regulation_id,
          license.license_type_id,
          license.license_type_name,
          license.authorization_number,
          license.profession_code,
          license.state,
          license.state_name
SEGMENTED BY hash(license.tvcmid, license.license_type_id, license.profession_code, license.state, license.state_board_id, license.license_privilege_id, license.license_certification_code, license.license_type_privilege_rank) ALL NODES;

CREATE PROJECTION mdm.communication_b0 /*+basename(communication),createtype(L)*/ 
(
 tvcmid,
 address_id,
 communication_type,
 communication_type_name,
 communication_value,
 status_code,
 status_name,
 effective_start_date,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT communication.tvcmid,
        communication.address_id,
        communication.communication_type,
        communication.communication_type_name,
        communication.communication_value,
        communication.status_code,
        communication.status_name,
        communication.effective_start_date,
        communication.created_by,
        communication.created_date,
        communication.updated_by,
        communication.updated_date,
        communication.file_id,
        communication.record_id
 FROM mdm.communication
 ORDER BY communication.tvcmid,
          communication.address_id,
          communication.communication_type,
          communication.communication_type_name,
          communication.communication_value,
          communication.status_code,
          communication.status_name,
          communication.effective_start_date
SEGMENTED BY hash(communication.tvcmid, communication.effective_start_date, communication.created_date, communication.updated_date, communication.file_id, communication.record_id, communication.communication_type, communication.status_code) ALL NODES;

CREATE PROJECTION mdm.address_b0 /*+basename(address),createtype(L)*/ 
(
 tvcmid,
 address_id,
 address_type,
 address_type_name,
 address_line_1,
 address_line_2,
 county,
 city,
 state,
 state_name,
 country_code,
 country_name,
 zip5_postal_code,
 zip4_postal_extension_code,
 address_status,
 address_status_name,
 address_effective_date,
 msa_cbsa,
 fips_state_code,
 fips_state_description,
 fips_county_code,
 fips_county_description,
 deliverability_confidence,
 address_setting_type_code,
 address_setting_type_description,
 address_category_code,
 address_category_description,
 address_latitude,
 address_longitude,
 postal_barcode,
 single_address_indicator,
 practice_location_confidence_indicator,
 practice_location_rank,
 validation_message,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT address.tvcmid,
        address.address_id,
        address.address_type,
        address.address_type_name,
        address.address_line_1,
        address.address_line_2,
        address.county,
        address.city,
        address.state,
        address.state_name,
        address.country_code,
        address.country_name,
        address.zip5_postal_code,
        address.zip4_postal_extension_code,
        address.address_status,
        address.address_status_name,
        address.address_effective_date,
        address.msa_cbsa,
        address.fips_state_code,
        address.fips_state_description,
        address.fips_county_code,
        address.fips_county_description,
        address.deliverability_confidence,
        address.address_setting_type_code,
        address.address_setting_type_description,
        address.address_category_code,
        address.address_category_description,
        address.address_latitude,
        address.address_longitude,
        address.postal_barcode,
        address.single_address_indicator,
        address.practice_location_confidence_indicator,
        address.practice_location_rank,
        address.validation_message,
        address.created_by,
        address.created_date,
        address.updated_by,
        address.updated_date,
        address.file_id,
        address.record_id
 FROM mdm.address
 ORDER BY address.tvcmid,
          address.address_id,
          address.address_type,
          address.address_type_name,
          address.address_line_1,
          address.address_line_2,
          address.county,
          address.city
SEGMENTED BY hash(address.tvcmid, address.address_id, address.state, address.country_code, address.zip5_postal_code, address.zip4_postal_extension_code, address.address_effective_date, address.msa_cbsa) ALL NODES;

CREATE PROJECTION mdm.alternate_id_b0 /*+basename(alternate_id),createtype(L)*/ 
(
 tvcmid,
 alternate_id_type,
 alternate_id_type_name,
 alternate_id_value,
 state,
 state_name,
 identifier_category,
 status,
 status_name,
 source_deactivation_reason_code,
 source_deactivation_reason_description,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT alternate_id.tvcmid,
        alternate_id.alternate_id_type,
        alternate_id.alternate_id_type_name,
        alternate_id.alternate_id_value,
        alternate_id.state,
        alternate_id.state_name,
        alternate_id.identifier_category,
        alternate_id.status,
        alternate_id.status_name,
        alternate_id.source_deactivation_reason_code,
        alternate_id.source_deactivation_reason_description,
        alternate_id.created_by,
        alternate_id.created_date,
        alternate_id.updated_by,
        alternate_id.updated_date,
        alternate_id.file_id,
        alternate_id.record_id
 FROM mdm.alternate_id
 ORDER BY alternate_id.tvcmid,
          alternate_id.alternate_id_type,
          alternate_id.alternate_id_type_name,
          alternate_id.alternate_id_value,
          alternate_id.state,
          alternate_id.state_name,
          alternate_id.identifier_category,
          alternate_id.status
SEGMENTED BY hash(alternate_id.tvcmid, alternate_id.state, alternate_id.source_deactivation_reason_code, alternate_id.created_date, alternate_id.updated_date, alternate_id.file_id, alternate_id.record_id, alternate_id.alternate_id_type) ALL NODES;

CREATE PROJECTION mdm.address_link_b0 /*+basename(address_link),createtype(L)*/ 
(
 tvcmid,
 address_id,
 dsp_id,
 dsp_hce_id,
 dsp_address_id,
 file_id,
 record_id
)
AS
 SELECT address_link.tvcmid,
        address_link.address_id,
        address_link.dsp_id,
        address_link.dsp_hce_id,
        address_link.dsp_address_id,
        address_link.file_id,
        address_link.record_id
 FROM mdm.address_link
 ORDER BY address_link.tvcmid,
          address_link.address_id,
          address_link.dsp_id,
          address_link.dsp_hce_id,
          address_link.dsp_address_id,
          address_link.file_id,
          address_link.record_id
SEGMENTED BY hash(address_link.tvcmid, address_link.address_id, address_link.file_id, address_link.record_id, address_link.dsp_id, address_link.dsp_hce_id, address_link.dsp_address_id) ALL NODES;

CREATE PROJECTION mdm.relationship_b0 /*+basename(relationship),createtype(L)*/ 
(
 hierarchy_code,
 hierarchy_name,
 relationship_type_code,
 relationship_type_name,
 parent_tvcmid,
 child_tvcmid,
 relationship_status_code,
 relationship_status_name,
 relationship_start_date,
 relationship_end_date,
 notes,
 created_by,
 created_date,
 updated_by,
 updated_date,
 file_id,
 record_id
)
AS
 SELECT relationship.hierarchy_code,
        relationship.hierarchy_name,
        relationship.relationship_type_code,
        relationship.relationship_type_name,
        relationship.parent_tvcmid,
        relationship.child_tvcmid,
        relationship.relationship_status_code,
        relationship.relationship_status_name,
        relationship.relationship_start_date,
        relationship.relationship_end_date,
        relationship.notes,
        relationship.created_by,
        relationship.created_date,
        relationship.updated_by,
        relationship.updated_date,
        relationship.file_id,
        relationship.record_id
 FROM mdm.relationship
 ORDER BY relationship.hierarchy_code,
          relationship.hierarchy_name,
          relationship.relationship_type_code,
          relationship.relationship_type_name,
          relationship.parent_tvcmid,
          relationship.child_tvcmid,
          relationship.relationship_status_code,
          relationship.relationship_status_name
SEGMENTED BY hash(relationship.parent_tvcmid, relationship.child_tvcmid, relationship.relationship_start_date, relationship.relationship_end_date, relationship.created_date, relationship.updated_date, relationship.file_id, relationship.record_id) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
