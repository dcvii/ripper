CREATE SCHEMA customer_master;


CREATE TABLE customer_master.raw_dea
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date timestamp,
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    ims_id varchar(7),
    dea_number varchar(9),
    name varchar(40),
    additional_company_info varchar(40),
    address_line1 varchar(40),
    address_line2 varchar(40),
    city varchar(33),
    state varchar(2),
    zip varchar(5),
    business_activity_code char(1),
    drug_schedules varchar(16),
    expiration_date date,
    business_activity_sub_code char(1),
    file_id int,
    record_id int,
    tvcmid int
);


CREATE TABLE customer_master.hcp_detail
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date timestamp,
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    ims_prescriber_id varchar(7),
    prefix varchar(10),
    first_name varchar(40),
    last_name varchar(40),
    middle_name varchar(40),
    suffix varchar(10),
    healthcare_prof_status_cd varchar(10),
    year_of_birth date,
    date_of_death varchar(64),
    gender_code varchar(5),
    teva_specialty_code varchar(5),
    file_id int,
    record_id int,
    tvcmid int
);


CREATE TABLE customer_master.ims_flag
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date timestamp,
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    flag_type varchar(10),
    flag_value char(1),
    effective_date date,
    file_id int,
    record_id int,
    hcp_detail_id int
);


CREATE TABLE customer_master.sample_eligibility
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date timestamp,
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    certification_desc varchar(100),
    sln varchar(18),
    sln_state varchar(2),
    sln_expiration_date date,
    sln_status_code varchar(5),
    sln_status_desc varchar(40),
    teva_sample_elig_flag varchar(1),
    teva_sched_iv_elig_flag varchar(1),
    teva_sched_v_elig_flag varchar(1),
    profession_short_desc varchar(5),
    teva_specialty_code varchar(5),
    certification_code varchar(5),
    file_id int,
    record_id int,
    tvcmid int
);


CREATE TABLE customer_master.ntis_dea
(
    dea_num varchar(9),
    business_activity_code varchar(1),
    drug_schedules varchar(16),
    expiration_date date,
    company_name varchar(40),
    address_line1 varchar(40),
    address_line2 varchar(40),
    address_line3 varchar(40),
    city varchar(33),
    state varchar(2),
    zip_code varchar(5),
    basc varchar(1),
    payment_indicator varchar(1),
    controlled_substance_auth varchar(8),
    file_id int,
    record_id int
);


CREATE TABLE customer_master.alternate_identifier
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date varchar(64),
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    tvcmid int,
    alternate_id_value varchar(18),
    alternate_id_type varchar(10),
    source_deact_reason_code char(1),
    source_deact_reason_desc varchar(50),
    identifier_cat varchar(25),
    status varchar(10),
    state varchar(2),
    file_id int,
    record_id int
);


CREATE TABLE customer_master.customer_flags
(
    tvcmid int,
    product_name varchar(20),
    sales_force_id varchar(5),
    territory_number varchar(8),
    flag_type varchar(50),
    flag_value varchar(50),
    eff_start_date varchar(64),
    eff_end_date varchar(64),
    file_id int,
    record_id int
);


CREATE TABLE customer_master.hco_demo
(
    tvcmid int,
    ims_org_id varchar(11),
    npi varchar(10),
    hin varchar(18),
    ims_outlet_code varchar(18),
    business_name varchar(80),
    address_line1 varchar(80),
    address_line2 varchar(80),
    city varchar(40),
    state varchar(2),
    zip varchar(5),
    c_bo_hce_address__address_id char(14),
    cot_classification varchar(50),
    cot_facility_type varchar(50),
    cot_specialty varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE customer_master.hcp_demo
(
    tvcmid int,
    ims_hce_id varchar(64),
    ims_id varchar(7),
    npi varchar(10),
    last_name varchar(40),
    first_name varchar(40),
    middle_name varchar(40),
    personal_suffix varchar(10),
    medical_suffix varchar(10),
    primary_specialty varchar(5),
    address_line1 varchar(80),
    address_line2 varchar(80),
    city varchar(40),
    state varchar(2),
    zip varchar(5),
    c_bo_hce_address__address_id char(14),
    legacy_address_id varchar(64),
    business_phone varchar(100),
    business_email varchar(100),
    hce_status_desc varchar(50),
    file_id int,
    record_id int,
    np_pa_flag varchar(1)
);


CREATE TABLE customer_master.tvcmid_merges
(
    previous_tvcmid int,
    current_tvcmid int,
    merge_cycle char(1),
    file_id int,
    record_id int
);


CREATE TABLE customer_master.tvcmid_xref
(
    tvcmid int,
    id_num varchar(255),
    id_type varchar(14),
    state varchar(2),
    expiration_date date,
    file_id int,
    record_id int
);


CREATE TABLE customer_master.teva_flag
(
    rowid_object char(14),
    creator varchar(50),
    create_date timestamp,
    updated_by varchar(50),
    last_update_date timestamp,
    consolidation_ind varchar(64),
    deleted_ind varchar(64),
    deleted_by varchar(50),
    deleted_date timestamp,
    last_rowid_system char(14),
    dirty_ind varchar(64),
    interaction_id varchar(64),
    hub_state_ind varchar(64),
    cm_dirty_ind varchar(64),
    flag_type varchar(10),
    flag_value varchar(50),
    effective_date date,
    hcp_detail_id int,
    file_id int,
    record_id int
);