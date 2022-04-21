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


CREATE PROJECTION customer_master.raw_dea_b0 /*+basename(raw_dea),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 ims_id,
 dea_number,
 name,
 additional_company_info,
 address_line1,
 address_line2,
 city,
 state,
 zip,
 business_activity_code,
 drug_schedules,
 expiration_date,
 business_activity_sub_code,
 file_id,
 record_id,
 tvcmid
)
AS
 SELECT raw_dea.rowid_object,
        raw_dea.creator,
        raw_dea.create_date,
        raw_dea.updated_by,
        raw_dea.last_update_date,
        raw_dea.consolidation_ind,
        raw_dea.deleted_ind,
        raw_dea.deleted_by,
        raw_dea.deleted_date,
        raw_dea.last_rowid_system,
        raw_dea.dirty_ind,
        raw_dea.interaction_id,
        raw_dea.hub_state_ind,
        raw_dea.cm_dirty_ind,
        raw_dea.ims_id,
        raw_dea.dea_number,
        raw_dea.name,
        raw_dea.additional_company_info,
        raw_dea.address_line1,
        raw_dea.address_line2,
        raw_dea.city,
        raw_dea.state,
        raw_dea.zip,
        raw_dea.business_activity_code,
        raw_dea.drug_schedules,
        raw_dea.expiration_date,
        raw_dea.business_activity_sub_code,
        raw_dea.file_id,
        raw_dea.record_id,
        raw_dea.tvcmid
 FROM customer_master.raw_dea
 ORDER BY raw_dea.rowid_object,
          raw_dea.creator,
          raw_dea.create_date,
          raw_dea.updated_by,
          raw_dea.last_update_date,
          raw_dea.consolidation_ind,
          raw_dea.deleted_ind,
          raw_dea.deleted_by,
          raw_dea.deleted_date,
          raw_dea.last_rowid_system,
          raw_dea.dirty_ind,
          raw_dea.interaction_id,
          raw_dea.hub_state_ind,
          raw_dea.cm_dirty_ind
SEGMENTED BY hash(raw_dea.record_id) ALL NODES;

CREATE PROJECTION customer_master.ims_flag_b0 /*+basename(ims_flag),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 flag_type,
 flag_value,
 effective_date,
 file_id,
 record_id,
 hcp_detail_id
)
AS
 SELECT ims_flag.rowid_object,
        ims_flag.creator,
        ims_flag.create_date,
        ims_flag.updated_by,
        ims_flag.last_update_date,
        ims_flag.consolidation_ind,
        ims_flag.deleted_ind,
        ims_flag.deleted_by,
        ims_flag.deleted_date,
        ims_flag.last_rowid_system,
        ims_flag.dirty_ind,
        ims_flag.interaction_id,
        ims_flag.hub_state_ind,
        ims_flag.cm_dirty_ind,
        ims_flag.flag_type,
        ims_flag.flag_value,
        ims_flag.effective_date,
        ims_flag.file_id,
        ims_flag.record_id,
        ims_flag.hcp_detail_id
 FROM customer_master.ims_flag
 ORDER BY ims_flag.rowid_object,
          ims_flag.creator,
          ims_flag.create_date,
          ims_flag.updated_by,
          ims_flag.last_update_date,
          ims_flag.consolidation_ind,
          ims_flag.deleted_ind,
          ims_flag.deleted_by,
          ims_flag.deleted_date,
          ims_flag.last_rowid_system,
          ims_flag.dirty_ind,
          ims_flag.interaction_id,
          ims_flag.hub_state_ind,
          ims_flag.cm_dirty_ind,
          ims_flag.flag_type,
          ims_flag.flag_value,
          ims_flag.effective_date
SEGMENTED BY hash(ims_flag.record_id) ALL NODES;

CREATE PROJECTION customer_master.alternate_identifier_b0 /*+basename(alternate_identifier),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 tvcmid,
 alternate_id_value,
 alternate_id_type,
 source_deact_reason_code,
 source_deact_reason_desc,
 identifier_cat,
 status,
 state,
 file_id,
 record_id
)
AS
 SELECT alternate_identifier.rowid_object,
        alternate_identifier.creator,
        alternate_identifier.create_date,
        alternate_identifier.updated_by,
        alternate_identifier.last_update_date,
        alternate_identifier.consolidation_ind,
        alternate_identifier.deleted_ind,
        alternate_identifier.deleted_by,
        alternate_identifier.deleted_date,
        alternate_identifier.last_rowid_system,
        alternate_identifier.dirty_ind,
        alternate_identifier.interaction_id,
        alternate_identifier.hub_state_ind,
        alternate_identifier.cm_dirty_ind,
        alternate_identifier.tvcmid,
        alternate_identifier.alternate_id_value,
        alternate_identifier.alternate_id_type,
        alternate_identifier.source_deact_reason_code,
        alternate_identifier.source_deact_reason_desc,
        alternate_identifier.identifier_cat,
        alternate_identifier.status,
        alternate_identifier.state,
        alternate_identifier.file_id,
        alternate_identifier.record_id
 FROM customer_master.alternate_identifier
 ORDER BY alternate_identifier.rowid_object,
          alternate_identifier.creator
SEGMENTED BY hash(alternate_identifier.create_date, alternate_identifier.last_update_date, alternate_identifier.source_deact_reason_code, alternate_identifier.state, alternate_identifier.file_id, alternate_identifier.record_id, alternate_identifier.alternate_id_type, alternate_identifier.status, alternate_identifier.rowid_object, alternate_identifier.last_rowid_system, alternate_identifier.tvcmid, alternate_identifier.alternate_id_value, alternate_identifier.identifier_cat, alternate_identifier.creator, alternate_identifier.updated_by, alternate_identifier.deleted_by, alternate_identifier.source_deact_reason_desc, alternate_identifier.consolidation_ind, alternate_identifier.deleted_ind, alternate_identifier.deleted_date, alternate_identifier.dirty_ind, alternate_identifier.interaction_id, alternate_identifier.hub_state_ind, alternate_identifier.cm_dirty_ind) ALL NODES;

CREATE PROJECTION customer_master.customer_flags_b0 /*+basename(customer_flags),createtype(L)*/ 
(
 tvcmid,
 product_name,
 sales_force_id,
 territory_number,
 flag_type,
 flag_value,
 eff_start_date,
 eff_end_date,
 file_id,
 record_id
)
AS
 SELECT customer_flags.tvcmid,
        customer_flags.product_name,
        customer_flags.sales_force_id,
        customer_flags.territory_number,
        customer_flags.flag_type,
        customer_flags.flag_value,
        customer_flags.eff_start_date,
        customer_flags.eff_end_date,
        customer_flags.file_id,
        customer_flags.record_id
 FROM customer_master.customer_flags
 ORDER BY customer_flags.tvcmid,
          customer_flags.product_name,
          customer_flags.sales_force_id,
          customer_flags.territory_number,
          customer_flags.flag_type,
          customer_flags.flag_value,
          customer_flags.eff_start_date,
          customer_flags.eff_end_date,
          customer_flags.file_id,
          customer_flags.record_id
SEGMENTED BY hash(customer_flags.record_id) ALL NODES;

CREATE PROJECTION customer_master.hco_demo_v1_b0 /*+basename(hco_demo_v1),createtype(A)*/ 
(
 tvcmid,
 ims_org_id,
 npi,
 hin,
 ims_outlet_code,
 business_name,
 address_line1,
 address_line2,
 city,
 state,
 zip,
 c_bo_hce_address__address_id,
 cot_classification,
 cot_facility_type,
 cot_specialty,
 file_id,
 record_id
)
AS
 SELECT hco_demo.tvcmid,
        hco_demo.ims_org_id,
        hco_demo.npi,
        hco_demo.hin,
        hco_demo.ims_outlet_code,
        hco_demo.business_name,
        hco_demo.address_line1,
        hco_demo.address_line2,
        hco_demo.city,
        hco_demo.state,
        hco_demo.zip,
        hco_demo.c_bo_hce_address__address_id,
        hco_demo.cot_classification,
        hco_demo.cot_facility_type,
        hco_demo.cot_specialty,
        hco_demo.file_id,
        hco_demo.record_id
 FROM customer_master.hco_demo
 ORDER BY hco_demo.tvcmid,
          hco_demo.ims_org_id
SEGMENTED BY hash(hco_demo.state, hco_demo.zip, hco_demo.file_id, hco_demo.record_id, hco_demo.npi, hco_demo.ims_org_id, hco_demo.c_bo_hce_address__address_id, hco_demo.hin, hco_demo.ims_outlet_code, hco_demo.city, hco_demo.cot_classification, hco_demo.cot_facility_type, hco_demo.cot_specialty, hco_demo.tvcmid, hco_demo.business_name, hco_demo.address_line1, hco_demo.address_line2) ALL NODES;

CREATE PROJECTION customer_master.hcp_demo_v1_b0 /*+basename(hcp_demo_v1),createtype(A)*/ 
(
 tvcmid,
 ims_hce_id,
 ims_id,
 npi,
 last_name,
 first_name,
 middle_name,
 personal_suffix,
 medical_suffix,
 primary_specialty,
 address_line1,
 address_line2,
 city,
 state,
 zip,
 c_bo_hce_address__address_id,
 legacy_address_id,
 business_phone,
 business_email,
 hce_status_desc,
 file_id,
 record_id,
 np_pa_flag
)
AS
 SELECT hcp_demo.tvcmid,
        hcp_demo.ims_hce_id,
        hcp_demo.ims_id,
        hcp_demo.npi,
        hcp_demo.last_name,
        hcp_demo.first_name,
        hcp_demo.middle_name,
        hcp_demo.personal_suffix,
        hcp_demo.medical_suffix,
        hcp_demo.primary_specialty,
        hcp_demo.address_line1,
        hcp_demo.address_line2,
        hcp_demo.city,
        hcp_demo.state,
        hcp_demo.zip,
        hcp_demo.c_bo_hce_address__address_id,
        hcp_demo.legacy_address_id,
        hcp_demo.business_phone,
        hcp_demo.business_email,
        hcp_demo.hce_status_desc,
        hcp_demo.file_id,
        hcp_demo.record_id,
        hcp_demo.np_pa_flag
 FROM customer_master.hcp_demo
 ORDER BY hcp_demo.tvcmid,
          hcp_demo.ims_hce_id,
          hcp_demo.ims_id
SEGMENTED BY hash(hcp_demo.ims_id, hcp_demo.primary_specialty, hcp_demo.state, hcp_demo.zip, hcp_demo.file_id, hcp_demo.record_id, hcp_demo.np_pa_flag, hcp_demo.npi, hcp_demo.personal_suffix, hcp_demo.medical_suffix, hcp_demo.c_bo_hce_address__address_id, hcp_demo.last_name, hcp_demo.first_name, hcp_demo.middle_name, hcp_demo.city, hcp_demo.hce_status_desc, hcp_demo.tvcmid, hcp_demo.ims_hce_id, hcp_demo.legacy_address_id, hcp_demo.address_line1, hcp_demo.address_line2, hcp_demo.business_phone, hcp_demo.business_email) ALL NODES;

CREATE PROJECTION customer_master.tvcmid_merges_b0 /*+basename(tvcmid_merges),createtype(L)*/ 
(
 previous_tvcmid,
 current_tvcmid,
 merge_cycle,
 file_id,
 record_id
)
AS
 SELECT tvcmid_merges.previous_tvcmid,
        tvcmid_merges.current_tvcmid,
        tvcmid_merges.merge_cycle,
        tvcmid_merges.file_id,
        tvcmid_merges.record_id
 FROM customer_master.tvcmid_merges
 ORDER BY tvcmid_merges.previous_tvcmid,
          tvcmid_merges.current_tvcmid,
          tvcmid_merges.merge_cycle
SEGMENTED BY hash(tvcmid_merges.merge_cycle, tvcmid_merges.file_id, tvcmid_merges.record_id, tvcmid_merges.previous_tvcmid, tvcmid_merges.current_tvcmid) ALL NODES;

CREATE PROJECTION customer_master.tvcmid_xref_b0 /*+basename(tvcmid_xref),createtype(L)*/ 
(
 tvcmid,
 id_num,
 id_type,
 state,
 expiration_date,
 file_id,
 record_id
)
AS
 SELECT tvcmid_xref.tvcmid,
        tvcmid_xref.id_num,
        tvcmid_xref.id_type,
        tvcmid_xref.state,
        tvcmid_xref.expiration_date,
        tvcmid_xref.file_id,
        tvcmid_xref.record_id
 FROM customer_master.tvcmid_xref
 ORDER BY tvcmid_xref.tvcmid,
          tvcmid_xref.id_num,
          tvcmid_xref.id_type,
          tvcmid_xref.state
SEGMENTED BY hash(tvcmid_xref.state, tvcmid_xref.expiration_date, tvcmid_xref.file_id, tvcmid_xref.record_id, tvcmid_xref.id_type, tvcmid_xref.tvcmid, tvcmid_xref.id_num) ALL NODES;

CREATE PROJECTION customer_master.teva_flag_b0 /*+basename(teva_flag),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 flag_type,
 flag_value,
 effective_date,
 hcp_detail_id,
 file_id,
 record_id
)
AS
 SELECT teva_flag.rowid_object,
        teva_flag.creator,
        teva_flag.create_date,
        teva_flag.updated_by,
        teva_flag.last_update_date,
        teva_flag.consolidation_ind,
        teva_flag.deleted_ind,
        teva_flag.deleted_by,
        teva_flag.deleted_date,
        teva_flag.last_rowid_system,
        teva_flag.dirty_ind,
        teva_flag.interaction_id,
        teva_flag.hub_state_ind,
        teva_flag.cm_dirty_ind,
        teva_flag.flag_type,
        teva_flag.flag_value,
        teva_flag.effective_date,
        teva_flag.hcp_detail_id,
        teva_flag.file_id,
        teva_flag.record_id
 FROM customer_master.teva_flag
 ORDER BY teva_flag.rowid_object,
          teva_flag.creator,
          teva_flag.create_date,
          teva_flag.updated_by,
          teva_flag.last_update_date,
          teva_flag.consolidation_ind,
          teva_flag.deleted_ind,
          teva_flag.deleted_by,
          teva_flag.deleted_date,
          teva_flag.last_rowid_system,
          teva_flag.dirty_ind,
          teva_flag.interaction_id,
          teva_flag.hub_state_ind,
          teva_flag.cm_dirty_ind,
          teva_flag.flag_type,
          teva_flag.flag_value,
          teva_flag.effective_date,
          teva_flag.hcp_detail_id,
          teva_flag.file_id,
          teva_flag.record_id
SEGMENTED BY hash(teva_flag.create_date, teva_flag.last_update_date, teva_flag.deleted_date, teva_flag.effective_date, teva_flag.file_id, teva_flag.record_id, teva_flag.flag_type, teva_flag.rowid_object, teva_flag.last_rowid_system, teva_flag.hcp_detail_id, teva_flag.creator, teva_flag.updated_by, teva_flag.deleted_by, teva_flag.flag_value, teva_flag.consolidation_ind, teva_flag.deleted_ind, teva_flag.dirty_ind, teva_flag.interaction_id, teva_flag.hub_state_ind, teva_flag.cm_dirty_ind) ALL NODES;

CREATE PROJECTION customer_master.hcp_detail_b0 /*+basename(hcp_detail),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 ims_prescriber_id,
 prefix,
 first_name,
 last_name,
 middle_name,
 suffix,
 healthcare_prof_status_cd,
 year_of_birth,
 date_of_death,
 gender_code,
 teva_specialty_code,
 file_id,
 record_id,
 tvcmid
)
AS
 SELECT hcp_detail.rowid_object,
        hcp_detail.creator,
        hcp_detail.create_date,
        hcp_detail.updated_by,
        hcp_detail.last_update_date,
        hcp_detail.consolidation_ind,
        hcp_detail.deleted_ind,
        hcp_detail.deleted_by,
        hcp_detail.deleted_date,
        hcp_detail.last_rowid_system,
        hcp_detail.dirty_ind,
        hcp_detail.interaction_id,
        hcp_detail.hub_state_ind,
        hcp_detail.cm_dirty_ind,
        hcp_detail.ims_prescriber_id,
        hcp_detail.prefix,
        hcp_detail.first_name,
        hcp_detail.last_name,
        hcp_detail.middle_name,
        hcp_detail.suffix,
        hcp_detail.healthcare_prof_status_cd,
        hcp_detail.year_of_birth,
        hcp_detail.date_of_death,
        hcp_detail.gender_code,
        hcp_detail.teva_specialty_code,
        hcp_detail.file_id,
        hcp_detail.record_id,
        hcp_detail.tvcmid
 FROM customer_master.hcp_detail
 ORDER BY hcp_detail.rowid_object,
          hcp_detail.creator,
          hcp_detail.create_date,
          hcp_detail.updated_by,
          hcp_detail.last_update_date,
          hcp_detail.consolidation_ind,
          hcp_detail.deleted_ind,
          hcp_detail.deleted_by,
          hcp_detail.deleted_date,
          hcp_detail.last_rowid_system,
          hcp_detail.dirty_ind,
          hcp_detail.interaction_id,
          hcp_detail.hub_state_ind,
          hcp_detail.cm_dirty_ind
SEGMENTED BY hash(hcp_detail.record_id) ALL NODES;

CREATE PROJECTION customer_master.sample_eligibility_b0 /*+basename(sample_eligibility),createtype(L)*/ 
(
 rowid_object,
 creator,
 create_date,
 updated_by,
 last_update_date,
 consolidation_ind,
 deleted_ind,
 deleted_by,
 deleted_date,
 last_rowid_system,
 dirty_ind,
 interaction_id,
 hub_state_ind,
 cm_dirty_ind,
 certification_desc,
 sln,
 sln_state,
 sln_expiration_date,
 sln_status_code,
 sln_status_desc,
 teva_sample_elig_flag,
 teva_sched_iv_elig_flag,
 teva_sched_v_elig_flag,
 profession_short_desc,
 teva_specialty_code,
 certification_code,
 file_id,
 record_id,
 tvcmid
)
AS
 SELECT sample_eligibility.rowid_object,
        sample_eligibility.creator,
        sample_eligibility.create_date,
        sample_eligibility.updated_by,
        sample_eligibility.last_update_date,
        sample_eligibility.consolidation_ind,
        sample_eligibility.deleted_ind,
        sample_eligibility.deleted_by,
        sample_eligibility.deleted_date,
        sample_eligibility.last_rowid_system,
        sample_eligibility.dirty_ind,
        sample_eligibility.interaction_id,
        sample_eligibility.hub_state_ind,
        sample_eligibility.cm_dirty_ind,
        sample_eligibility.certification_desc,
        sample_eligibility.sln,
        sample_eligibility.sln_state,
        sample_eligibility.sln_expiration_date,
        sample_eligibility.sln_status_code,
        sample_eligibility.sln_status_desc,
        sample_eligibility.teva_sample_elig_flag,
        sample_eligibility.teva_sched_iv_elig_flag,
        sample_eligibility.teva_sched_v_elig_flag,
        sample_eligibility.profession_short_desc,
        sample_eligibility.teva_specialty_code,
        sample_eligibility.certification_code,
        sample_eligibility.file_id,
        sample_eligibility.record_id,
        sample_eligibility.tvcmid
 FROM customer_master.sample_eligibility
 ORDER BY sample_eligibility.rowid_object,
          sample_eligibility.creator,
          sample_eligibility.create_date,
          sample_eligibility.updated_by,
          sample_eligibility.last_update_date,
          sample_eligibility.consolidation_ind,
          sample_eligibility.deleted_ind,
          sample_eligibility.deleted_by,
          sample_eligibility.deleted_date,
          sample_eligibility.last_rowid_system,
          sample_eligibility.dirty_ind,
          sample_eligibility.interaction_id,
          sample_eligibility.hub_state_ind,
          sample_eligibility.cm_dirty_ind
SEGMENTED BY hash(sample_eligibility.record_id) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

