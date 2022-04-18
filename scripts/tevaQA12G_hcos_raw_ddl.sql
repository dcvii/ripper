CREATE SCHEMA hcos;


CREATE TABLE hcos.ims_hcos_aco_detail
(
    aco_detail_id numeric(37,15),
    aco_detail_code varchar(15),
    aco_detail_desc varchar(100),
    aco_detail_group_code varchar(15),
    aco_detail_group_desc varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_aco_detail_fact
(
    ims_org_id varchar(11),
    aco_type_id numeric(37,15),
    aco_detail_id numeric(37,15),
    aco_val varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_aco_org_fact
(
    ims_org_id varchar(11),
    aco_type_desc numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_aco_roster
(
    ims_org_id varchar(11),
    aco_type_id numeric(37,15),
    hce_id_prfsnl numeric(37,15),
    professional_id numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_aco_type
(
    aco_type_id numeric(37,15),
    aco_type_desc varchar(50),
    aco_type_catg varchar(50),
    aco_model varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_affiliation_type
(
    affil_type_id numeric(37,15),
    affil_type_code varchar(10),
    affil_type_desc varchar(100),
    affil_group_code varchar(10),
    affil_group_desc varchar(75),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_bed_cluster_type
(
    bed_cluster_id numeric(37,15),
    bed_cluster_desc varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_bed_fact
(
    ims_org_id varchar(11),
    bed_id numeric(37,15),
    license_beds numeric(37,15),
    census_beds numeric(37,15),
    staffed_beds numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_bed_type
(
    bed_id numeric(37,15),
    bed_code varchar(2),
    bed_desc varchar(25),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_business
(
    ims_org_id varchar(11),
    business_name varchar(80),
    dba_name varchar(80),
    care_of_location varchar(80),
    address_id varchar(10),
    stf_id varchar(10),
    physical_addr_1 varchar(80),
    physical_addr_2 varchar(80),
    physical_city varchar(30),
    physical_state varchar(2),
    physical_zip varchar(15),
    postal_addr_1 varchar(80),
    postal_addr_2 varchar(80),
    postal_city varchar(30),
    postal_state varchar(2),
    postal_zip varchar(15),
    phone varchar(14),
    fax varchar(14),
    website varchar(100),
    latitude numeric(37,15),
    longitude numeric(37,15),
    owner_status varchar(25),
    profit_status varchar(25),
    cmi numeric(6,4),
    primary_cot_id numeric(37,15),
    cot_classification_id numeric(37,15),
    cot_classification varchar(50),
    cot_facility_type_id numeric(37,15),
    cot_facility_type varchar(50),
    cot_specialty_id numeric(37,15),
    cot_specialty varchar(50),
    record_type varchar(2),
    bed_cluster_id numeric(37,15),
    ttl_license_beds numeric(37,15),
    ttl_census_beds numeric(37,15),
    ttl_staffed_beds numeric(37,15),
    teaching_hosp char(1),
    commhosp varchar(3),
    all_ddd varchar(150),
    all_npi varchar(150),
    hin varchar(13),
    dea varchar(9),
    mpn varchar(6),
    mpn_order varchar(1),
    msa varchar(5),
    fips_state varchar(2),
    fips_county varchar(3),
    num_of_providers numeric(37,15),
    corp_parent_ims_org_id varchar(11),
    corp_parent_name varchar(80),
    owner_sub_ims_org_id varchar(11),
    owner_sub_name varchar(80),
    gpo_pharma_ims_org_id varchar(11),
    gpo_pharma_name varchar(80),
    gpo_medsurg_ims_org_id varchar(11),
    gpo_medsurg_name varchar(80),
    pharma_prov_ims_org_id varchar(11),
    pharma_prov_name varchar(80),
    formulary varchar(20),
    electronic_med_rec varchar(20),
    eprescribe varchar(20),
    payperform varchar(20),
    genfirst varchar(20),
    srep_access varchar(20),
    deactivation_reason varchar(25),
    referback_ims_org_id varchar(11),
    status_indicator varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_business_detail
(
    detail_id numeric(37,15),
    detail_code varchar(10),
    detail_desc varchar(100),
    detail_group_code varchar(10),
    detail_group_code_desc varchar(75),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_business_detail_fact
(
    ims_org_id varchar(11),
    detail_id numeric(37,15),
    detail_value varchar(100),
    detail_count numeric(12,4),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_class_of_trade
(
    cot_id numeric(37,15),
    classification_id numeric(37,15),
    classification varchar(50),
    facility_type_id numeric(37,15),
    facility_type varchar(50),
    specialty_id numeric(37,15),
    specialty varchar(50),
    record_type varchar(2),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_clinical_code
(
    code_id numeric(37,15),
    clin_code varchar(5),
    clin_code_desc varchar(100),
    ccs_code numeric(37,15),
    ccs_desc varchar(100),
    mdc_code numeric(37,15),
    mdc_desc varchar(100),
    code_category varchar(15),
    surgical_code char(1),
    or_code char(1),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_clinical_fact
(
    ims_org_id varchar(11),
    code_id numeric(37,15),
    data_year numeric(4,0),
    inpat_vol numeric(37,15),
    outpat_vol numeric(37,15),
    ttl_vol numeric(37,15),
    decile numeric(37,15),
    avg_los numeric(9,2),
    avg_cos numeric(9,2),
    code_order varchar(1),
    gpo_view varchar(1),
    use_for_agg varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_clinical_fact_national
(
    code_id numeric(37,15),
    data_year numeric(4,0),
    inpat_vol numeric(37,15),
    outpat_vol numeric(37,15),
    ttl_vol numeric(37,15),
    avg_los numeric(37,15),
    avg_cos numeric(37,15),
    trend varchar(64),
    code_order varchar(4),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_clinical_fact_state
(
    code_id numeric(37,15),
    data_year numeric(4,0),
    state varchar(2),
    inpat_vol numeric(37,15),
    outpat_vol numeric(37,15),
    ttl_vol numeric(37,15),
    avg_los numeric(9,2),
    avg_cos numeric(9,2),
    code_order varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_contact_affiliation_fact
(
    ims_org_id varchar(11),
    hce_id_prfsnl numeric(37,15),
    professional_id numeric(37,15),
    title_group_code varchar(10),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_cot_fact
(
    ims_org_id varchar(11),
    cot_id numeric(37,15),
    cot_order numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_financial_fact
(
    ims_org_id varchar(11),
    data_year numeric(4,0),
    inpat_rev numeric(37,15),
    outpat_rev numeric(37,15),
    ttl_pat_rev numeric(37,15),
    net_pat_rev numeric(37,15),
    op_exp numeric(37,15),
    oth_exp numeric(37,15),
    ttl_exp numeric(37,15),
    supply_cost numeric(37,15),
    drug_cost numeric(37,15),
    ttl_salaries numeric(37,15),
    net_inc_pat numeric(37,15),
    net_inc numeric(37,15),
    cost_per_bed numeric(37,15),
    ttl_assets numeric(37,15),
    fte_emp numeric(37,15),
    curr_assets numeric(37,15),
    curr_liab numeric(37,15),
    fix_assets numeric(37,15),
    fringe_benefits numeric(37,15),
    fund_bal numeric(37,15),
    gov_appr numeric(37,15),
    h_in_rev numeric(37,15),
    l_t_liab numeric(37,15),
    non_pat_rev numeric(37,15),
    oth_assets numeric(37,15),
    oth_income numeric(37,15),
    h_out_rev numeric(37,15),
    tot_liab numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_identifier_fact
(
    ims_org_id varchar(11),
    hce_id_prfsnl numeric(37,15),
    professional_id numeric(37,15),
    identifier_id numeric(37,15),
    identifier varchar(25),
    identifier_order varchar(1),
    identifier_category varchar(25),
    identifier_state varchar(2),
    src_strt_dt varchar(20),
    src_trmtn_dt varchar(20),
    src_trmtn_cd varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_identifier_type
(
    identifier_id numeric(37,15),
    identifier_code varchar(10),
    identifier_desc varchar(75),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_identifier_category_type
(
    identifier_id numeric(37,15),
    identifier_category varchar(25),
    identifier_category_desc varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_identifier_term_type
(
    identifier_id numeric(37,15),
    src_trmtn_cd varchar(15),
    src_trmtn_desc varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional
(
    hce_id_prfsnl numeric(37,15),
    professional_id numeric(37,15),
    first_name varchar(40),
    middle_name varchar(40),
    last_name varchar(80),
    gen_suffix varchar(15),
    designation varchar(20),
    gender varchar(1),
    role char(1),
    primary_spec varchar(50),
    secondary_spec varchar(50),
    tertiary_spec varchar(50),
    primary_prof_code varchar(5),
    primary_prof_desc varchar(50),
    ims_id varchar(7),
    upin varchar(6),
    me varchar(10),
    all_dea varchar(100),
    npi varchar(10),
    status_desc varchar(40),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional_detail
(
    detail_id numeric(37,15),
    detail_code varchar(10),
    detail_desc varchar(100),
    detail_group_code varchar(10),
    detail_group_desc varchar(75),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional_detail_fact
(
    hce_id_prfsnl numeric(37,15),
    professional_id numeric(37,15),
    detail_id numeric(37,15),
    detail_value varchar(400),
    detail_count numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional_specialty_fact
(
    hce_id_prfsnl varchar(64),
    professional_id varchar(64),
    spec_code varchar(20),
    spec_ranking varchar(64),
    spec_rank_desc varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional_specialty
(
    spec_code varchar(20),
    spec_desc varchar(200),
    spec_sub_group_code varchar(64),
    spec_sub_group_desc varchar(200),
    spec_group_code varchar(20),
    spec_group_desc varchar(200),
    alternate_sub_group_code varchar(64),
    alternate_sub_group_desc varchar(200),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_professional_title
(
    title_group_code varchar(10),
    title_group_desc varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_relationship_fact
(
    ims_org_id_parent varchar(11),
    ims_org_id_child varchar(11),
    rel_id numeric(37,15),
    rel_order numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_relationship_type
(
    rel_id numeric(37,15),
    rel_code varchar(10),
    rel_desc varchar(50),
    rel_group_code varchar(10),
    rel_group_desc varchar(50),
    rel_category_code varchar(10),
    rel_category_desc varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_ddd_xref
(
    ims_org_id varchar(12),
    hce_id_prfsnl int,
    professional_id int,
    identifier_id int,
    identifier varchar(25),
    identifier_order varchar(1),
    identifier_category varchar(25),
    identifier_state varchar(2),
    src_strt_dt varchar(20),
    src_trmtn_dt varchar(20),
    src_trmtn_cd varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE hcos.ims_hcos_provider_affiliation_fact
(
    ims_org_id varchar(44),
    hce_id_prfsnl varchar(64),
    professional_id int,
    affil_type_id varchar(64),
    dea varchar(36),
    affil_ind varchar(4),
    affil_rank int,
    file_id int,
    record_id int
);


CREATE PROJECTION hcos.ims_hcos_ddd_xref_b0 /*+basename(ims_hcos_ddd_xref)*/ 
(
 ims_org_id,
 hce_id_prfsnl,
 professional_id,
 identifier_id,
 identifier,
 identifier_order,
 identifier_category,
 identifier_state,
 src_strt_dt,
 src_trmtn_dt,
 src_trmtn_cd,
 file_id ENCODING RLE,
 record_id ENCODING DELTAVAL
)
AS
 SELECT ims_hcos_ddd_xref.ims_org_id,
        ims_hcos_ddd_xref.hce_id_prfsnl,
        ims_hcos_ddd_xref.professional_id,
        ims_hcos_ddd_xref.identifier_id,
        ims_hcos_ddd_xref.identifier,
        ims_hcos_ddd_xref.identifier_order,
        ims_hcos_ddd_xref.identifier_category,
        ims_hcos_ddd_xref.identifier_state,
        ims_hcos_ddd_xref.src_strt_dt,
        ims_hcos_ddd_xref.src_trmtn_dt,
        ims_hcos_ddd_xref.src_trmtn_cd,
        ims_hcos_ddd_xref.file_id,
        ims_hcos_ddd_xref.record_id
 FROM hcos.ims_hcos_ddd_xref
 ORDER BY ims_hcos_ddd_xref.file_id
SEGMENTED BY hash(ims_hcos_ddd_xref.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_provider_affiliation_fact_b0 /*+basename(ims_hcos_provider_affiliation_fact),createtype(L)*/ 
(
 ims_org_id,
 hce_id_prfsnl,
 professional_id,
 affil_type_id,
 dea,
 affil_ind,
 affil_rank,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_provider_affiliation_fact.ims_org_id,
        ims_hcos_provider_affiliation_fact.hce_id_prfsnl,
        ims_hcos_provider_affiliation_fact.professional_id,
        ims_hcos_provider_affiliation_fact.affil_type_id,
        ims_hcos_provider_affiliation_fact.dea,
        ims_hcos_provider_affiliation_fact.affil_ind,
        ims_hcos_provider_affiliation_fact.affil_rank,
        ims_hcos_provider_affiliation_fact.file_id,
        ims_hcos_provider_affiliation_fact.record_id
 FROM hcos.ims_hcos_provider_affiliation_fact
 ORDER BY ims_hcos_provider_affiliation_fact.ims_org_id,
          ims_hcos_provider_affiliation_fact.hce_id_prfsnl,
          ims_hcos_provider_affiliation_fact.professional_id,
          ims_hcos_provider_affiliation_fact.affil_type_id,
          ims_hcos_provider_affiliation_fact.dea,
          ims_hcos_provider_affiliation_fact.affil_ind,
          ims_hcos_provider_affiliation_fact.affil_rank,
          ims_hcos_provider_affiliation_fact.file_id,
          ims_hcos_provider_affiliation_fact.record_id
SEGMENTED BY hash(ims_hcos_provider_affiliation_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_relationship_type_b0 /*+basename(ims_hcos_relationship_type),createtype(L)*/ 
(
 rel_id,
 rel_code,
 rel_desc,
 rel_group_code,
 rel_group_desc,
 rel_category_code,
 rel_category_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_relationship_type.rel_id,
        ims_hcos_relationship_type.rel_code,
        ims_hcos_relationship_type.rel_desc,
        ims_hcos_relationship_type.rel_group_code,
        ims_hcos_relationship_type.rel_group_desc,
        ims_hcos_relationship_type.rel_category_code,
        ims_hcos_relationship_type.rel_category_desc,
        ims_hcos_relationship_type.file_id,
        ims_hcos_relationship_type.record_id
 FROM hcos.ims_hcos_relationship_type
 ORDER BY ims_hcos_relationship_type.rel_id,
          ims_hcos_relationship_type.rel_code,
          ims_hcos_relationship_type.rel_desc,
          ims_hcos_relationship_type.rel_group_code,
          ims_hcos_relationship_type.rel_group_desc,
          ims_hcos_relationship_type.rel_category_code,
          ims_hcos_relationship_type.rel_category_desc,
          ims_hcos_relationship_type.file_id,
          ims_hcos_relationship_type.record_id
SEGMENTED BY hash(ims_hcos_relationship_type.file_id, ims_hcos_relationship_type.record_id, ims_hcos_relationship_type.rel_code, ims_hcos_relationship_type.rel_group_code, ims_hcos_relationship_type.rel_category_code, ims_hcos_relationship_type.rel_id, ims_hcos_relationship_type.rel_desc, ims_hcos_relationship_type.rel_group_desc, ims_hcos_relationship_type.rel_category_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_identifier_fact_b0 /*+basename(ims_hcos_identifier_fact),createtype(L)*/ 
(
 ims_org_id,
 hce_id_prfsnl,
 professional_id,
 identifier_id,
 identifier,
 identifier_order,
 identifier_category,
 identifier_state,
 src_strt_dt,
 src_trmtn_dt,
 src_trmtn_cd,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_identifier_fact.ims_org_id,
        ims_hcos_identifier_fact.hce_id_prfsnl,
        ims_hcos_identifier_fact.professional_id,
        ims_hcos_identifier_fact.identifier_id,
        ims_hcos_identifier_fact.identifier,
        ims_hcos_identifier_fact.identifier_order,
        ims_hcos_identifier_fact.identifier_category,
        ims_hcos_identifier_fact.identifier_state,
        ims_hcos_identifier_fact.src_strt_dt,
        ims_hcos_identifier_fact.src_trmtn_dt,
        ims_hcos_identifier_fact.src_trmtn_cd,
        ims_hcos_identifier_fact.file_id,
        ims_hcos_identifier_fact.record_id
 FROM hcos.ims_hcos_identifier_fact
 ORDER BY ims_hcos_identifier_fact.ims_org_id,
          ims_hcos_identifier_fact.hce_id_prfsnl,
          ims_hcos_identifier_fact.professional_id,
          ims_hcos_identifier_fact.identifier_id,
          ims_hcos_identifier_fact.identifier,
          ims_hcos_identifier_fact.identifier_order,
          ims_hcos_identifier_fact.identifier_category,
          ims_hcos_identifier_fact.identifier_state,
          ims_hcos_identifier_fact.src_strt_dt,
          ims_hcos_identifier_fact.src_trmtn_dt,
          ims_hcos_identifier_fact.src_trmtn_cd,
          ims_hcos_identifier_fact.file_id,
          ims_hcos_identifier_fact.record_id
SEGMENTED BY hash(ims_hcos_identifier_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_bed_type_b0 /*+basename(ims_hcos_bed_type),createtype(L)*/ 
(
 bed_id,
 bed_code,
 bed_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_bed_type.bed_id,
        ims_hcos_bed_type.bed_code,
        ims_hcos_bed_type.bed_desc,
        ims_hcos_bed_type.file_id,
        ims_hcos_bed_type.record_id
 FROM hcos.ims_hcos_bed_type
 ORDER BY ims_hcos_bed_type.bed_id,
          ims_hcos_bed_type.bed_code,
          ims_hcos_bed_type.bed_desc,
          ims_hcos_bed_type.file_id,
          ims_hcos_bed_type.record_id
SEGMENTED BY hash(ims_hcos_bed_type.bed_code, ims_hcos_bed_type.file_id, ims_hcos_bed_type.record_id, ims_hcos_bed_type.bed_id, ims_hcos_bed_type.bed_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_class_of_trade_b0 /*+basename(ims_hcos_class_of_trade),createtype(L)*/ 
(
 cot_id,
 classification_id,
 classification,
 facility_type_id,
 facility_type,
 specialty_id,
 specialty,
 record_type,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_class_of_trade.cot_id,
        ims_hcos_class_of_trade.classification_id,
        ims_hcos_class_of_trade.classification,
        ims_hcos_class_of_trade.facility_type_id,
        ims_hcos_class_of_trade.facility_type,
        ims_hcos_class_of_trade.specialty_id,
        ims_hcos_class_of_trade.specialty,
        ims_hcos_class_of_trade.record_type,
        ims_hcos_class_of_trade.file_id,
        ims_hcos_class_of_trade.record_id
 FROM hcos.ims_hcos_class_of_trade
 ORDER BY ims_hcos_class_of_trade.cot_id,
          ims_hcos_class_of_trade.classification_id,
          ims_hcos_class_of_trade.classification,
          ims_hcos_class_of_trade.facility_type_id,
          ims_hcos_class_of_trade.facility_type,
          ims_hcos_class_of_trade.specialty_id,
          ims_hcos_class_of_trade.specialty,
          ims_hcos_class_of_trade.record_type,
          ims_hcos_class_of_trade.file_id,
          ims_hcos_class_of_trade.record_id
SEGMENTED BY hash(ims_hcos_class_of_trade.record_type, ims_hcos_class_of_trade.file_id, ims_hcos_class_of_trade.record_id, ims_hcos_class_of_trade.cot_id, ims_hcos_class_of_trade.classification_id, ims_hcos_class_of_trade.facility_type_id, ims_hcos_class_of_trade.specialty_id, ims_hcos_class_of_trade.classification, ims_hcos_class_of_trade.facility_type, ims_hcos_class_of_trade.specialty) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_relationship_fact_b0 /*+basename(ims_hcos_relationship_fact),createtype(L)*/ 
(
 ims_org_id_parent,
 ims_org_id_child,
 rel_id,
 rel_order,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_relationship_fact.ims_org_id_parent,
        ims_hcos_relationship_fact.ims_org_id_child,
        ims_hcos_relationship_fact.rel_id,
        ims_hcos_relationship_fact.rel_order,
        ims_hcos_relationship_fact.file_id,
        ims_hcos_relationship_fact.record_id
 FROM hcos.ims_hcos_relationship_fact
 ORDER BY ims_hcos_relationship_fact.ims_org_id_parent,
          ims_hcos_relationship_fact.ims_org_id_child,
          ims_hcos_relationship_fact.rel_id,
          ims_hcos_relationship_fact.rel_order,
          ims_hcos_relationship_fact.file_id,
          ims_hcos_relationship_fact.record_id
SEGMENTED BY hash(ims_hcos_relationship_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_identifier_category_type_b0 /*+basename(ims_hcos_identifier_category_type),createtype(L)*/ 
(
 identifier_id,
 identifier_category,
 identifier_category_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_identifier_category_type.identifier_id,
        ims_hcos_identifier_category_type.identifier_category,
        ims_hcos_identifier_category_type.identifier_category_desc,
        ims_hcos_identifier_category_type.file_id,
        ims_hcos_identifier_category_type.record_id
 FROM hcos.ims_hcos_identifier_category_type
 ORDER BY ims_hcos_identifier_category_type.identifier_id,
          ims_hcos_identifier_category_type.identifier_category,
          ims_hcos_identifier_category_type.identifier_category_desc,
          ims_hcos_identifier_category_type.file_id,
          ims_hcos_identifier_category_type.record_id
SEGMENTED BY hash(ims_hcos_identifier_category_type.file_id, ims_hcos_identifier_category_type.record_id, ims_hcos_identifier_category_type.identifier_id, ims_hcos_identifier_category_type.identifier_category, ims_hcos_identifier_category_type.identifier_category_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_business_b0 /*+basename(ims_hcos_business),createtype(L)*/ 
(
 ims_org_id,
 business_name,
 dba_name,
 care_of_location,
 address_id,
 stf_id,
 physical_addr_1,
 physical_addr_2,
 physical_city,
 physical_state,
 physical_zip,
 postal_addr_1,
 postal_addr_2,
 postal_city,
 postal_state,
 postal_zip,
 phone,
 fax,
 website,
 latitude,
 longitude,
 owner_status,
 profit_status,
 cmi,
 primary_cot_id,
 cot_classification_id,
 cot_classification,
 cot_facility_type_id,
 cot_facility_type,
 cot_specialty_id,
 cot_specialty,
 record_type,
 bed_cluster_id,
 ttl_license_beds,
 ttl_census_beds,
 ttl_staffed_beds,
 teaching_hosp,
 commhosp,
 all_ddd,
 all_npi,
 hin,
 dea,
 mpn,
 mpn_order,
 msa,
 fips_state,
 fips_county,
 num_of_providers,
 corp_parent_ims_org_id,
 corp_parent_name,
 owner_sub_ims_org_id,
 owner_sub_name,
 gpo_pharma_ims_org_id,
 gpo_pharma_name,
 gpo_medsurg_ims_org_id,
 gpo_medsurg_name,
 pharma_prov_ims_org_id,
 pharma_prov_name,
 formulary,
 electronic_med_rec,
 eprescribe,
 payperform,
 genfirst,
 srep_access,
 deactivation_reason,
 referback_ims_org_id,
 status_indicator,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_business.ims_org_id,
        ims_hcos_business.business_name,
        ims_hcos_business.dba_name,
        ims_hcos_business.care_of_location,
        ims_hcos_business.address_id,
        ims_hcos_business.stf_id,
        ims_hcos_business.physical_addr_1,
        ims_hcos_business.physical_addr_2,
        ims_hcos_business.physical_city,
        ims_hcos_business.physical_state,
        ims_hcos_business.physical_zip,
        ims_hcos_business.postal_addr_1,
        ims_hcos_business.postal_addr_2,
        ims_hcos_business.postal_city,
        ims_hcos_business.postal_state,
        ims_hcos_business.postal_zip,
        ims_hcos_business.phone,
        ims_hcos_business.fax,
        ims_hcos_business.website,
        ims_hcos_business.latitude,
        ims_hcos_business.longitude,
        ims_hcos_business.owner_status,
        ims_hcos_business.profit_status,
        ims_hcos_business.cmi,
        ims_hcos_business.primary_cot_id,
        ims_hcos_business.cot_classification_id,
        ims_hcos_business.cot_classification,
        ims_hcos_business.cot_facility_type_id,
        ims_hcos_business.cot_facility_type,
        ims_hcos_business.cot_specialty_id,
        ims_hcos_business.cot_specialty,
        ims_hcos_business.record_type,
        ims_hcos_business.bed_cluster_id,
        ims_hcos_business.ttl_license_beds,
        ims_hcos_business.ttl_census_beds,
        ims_hcos_business.ttl_staffed_beds,
        ims_hcos_business.teaching_hosp,
        ims_hcos_business.commhosp,
        ims_hcos_business.all_ddd,
        ims_hcos_business.all_npi,
        ims_hcos_business.hin,
        ims_hcos_business.dea,
        ims_hcos_business.mpn,
        ims_hcos_business.mpn_order,
        ims_hcos_business.msa,
        ims_hcos_business.fips_state,
        ims_hcos_business.fips_county,
        ims_hcos_business.num_of_providers,
        ims_hcos_business.corp_parent_ims_org_id,
        ims_hcos_business.corp_parent_name,
        ims_hcos_business.owner_sub_ims_org_id,
        ims_hcos_business.owner_sub_name,
        ims_hcos_business.gpo_pharma_ims_org_id,
        ims_hcos_business.gpo_pharma_name,
        ims_hcos_business.gpo_medsurg_ims_org_id,
        ims_hcos_business.gpo_medsurg_name,
        ims_hcos_business.pharma_prov_ims_org_id,
        ims_hcos_business.pharma_prov_name,
        ims_hcos_business.formulary,
        ims_hcos_business.electronic_med_rec,
        ims_hcos_business.eprescribe,
        ims_hcos_business.payperform,
        ims_hcos_business.genfirst,
        ims_hcos_business.srep_access,
        ims_hcos_business.deactivation_reason,
        ims_hcos_business.referback_ims_org_id,
        ims_hcos_business.status_indicator,
        ims_hcos_business.file_id,
        ims_hcos_business.record_id
 FROM hcos.ims_hcos_business
 ORDER BY ims_hcos_business.ims_org_id,
          ims_hcos_business.business_name,
          ims_hcos_business.dba_name,
          ims_hcos_business.care_of_location,
          ims_hcos_business.address_id,
          ims_hcos_business.stf_id,
          ims_hcos_business.physical_addr_1,
          ims_hcos_business.physical_addr_2,
          ims_hcos_business.physical_city,
          ims_hcos_business.physical_state,
          ims_hcos_business.physical_zip,
          ims_hcos_business.postal_addr_1,
          ims_hcos_business.postal_addr_2,
          ims_hcos_business.postal_city,
          ims_hcos_business.postal_state,
          ims_hcos_business.postal_zip,
          ims_hcos_business.phone,
          ims_hcos_business.fax,
          ims_hcos_business.website,
          ims_hcos_business.latitude,
          ims_hcos_business.longitude,
          ims_hcos_business.owner_status,
          ims_hcos_business.profit_status,
          ims_hcos_business.cmi,
          ims_hcos_business.primary_cot_id,
          ims_hcos_business.cot_classification_id,
          ims_hcos_business.cot_classification,
          ims_hcos_business.cot_facility_type_id,
          ims_hcos_business.cot_facility_type,
          ims_hcos_business.cot_specialty_id,
          ims_hcos_business.cot_specialty,
          ims_hcos_business.record_type,
          ims_hcos_business.bed_cluster_id,
          ims_hcos_business.ttl_license_beds,
          ims_hcos_business.ttl_census_beds,
          ims_hcos_business.ttl_staffed_beds,
          ims_hcos_business.teaching_hosp,
          ims_hcos_business.commhosp,
          ims_hcos_business.all_ddd,
          ims_hcos_business.all_npi,
          ims_hcos_business.hin,
          ims_hcos_business.dea,
          ims_hcos_business.mpn,
          ims_hcos_business.mpn_order,
          ims_hcos_business.msa,
          ims_hcos_business.fips_state,
          ims_hcos_business.fips_county,
          ims_hcos_business.num_of_providers,
          ims_hcos_business.corp_parent_ims_org_id,
          ims_hcos_business.corp_parent_name,
          ims_hcos_business.owner_sub_ims_org_id,
          ims_hcos_business.owner_sub_name,
          ims_hcos_business.gpo_pharma_ims_org_id,
          ims_hcos_business.gpo_pharma_name,
          ims_hcos_business.gpo_medsurg_ims_org_id,
          ims_hcos_business.gpo_medsurg_name,
          ims_hcos_business.pharma_prov_ims_org_id,
          ims_hcos_business.pharma_prov_name,
          ims_hcos_business.formulary,
          ims_hcos_business.electronic_med_rec,
          ims_hcos_business.eprescribe,
          ims_hcos_business.payperform,
          ims_hcos_business.genfirst,
          ims_hcos_business.srep_access,
          ims_hcos_business.deactivation_reason,
          ims_hcos_business.referback_ims_org_id,
          ims_hcos_business.status_indicator,
          ims_hcos_business.file_id,
          ims_hcos_business.record_id
SEGMENTED BY hash(ims_hcos_business.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_specialty_fact_b0 /*+basename(ims_hcos_professional_specialty_fact),createtype(L)*/ 
(
 hce_id_prfsnl,
 professional_id,
 spec_code,
 spec_ranking,
 spec_rank_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional_specialty_fact.hce_id_prfsnl,
        ims_hcos_professional_specialty_fact.professional_id,
        ims_hcos_professional_specialty_fact.spec_code,
        ims_hcos_professional_specialty_fact.spec_ranking,
        ims_hcos_professional_specialty_fact.spec_rank_desc,
        ims_hcos_professional_specialty_fact.file_id,
        ims_hcos_professional_specialty_fact.record_id
 FROM hcos.ims_hcos_professional_specialty_fact
 ORDER BY ims_hcos_professional_specialty_fact.hce_id_prfsnl,
          ims_hcos_professional_specialty_fact.professional_id,
          ims_hcos_professional_specialty_fact.spec_code,
          ims_hcos_professional_specialty_fact.spec_ranking,
          ims_hcos_professional_specialty_fact.spec_rank_desc,
          ims_hcos_professional_specialty_fact.file_id,
          ims_hcos_professional_specialty_fact.record_id
SEGMENTED BY hash(ims_hcos_professional_specialty_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_clinical_fact_national_b0 /*+basename(ims_hcos_clinical_fact_national),createtype(L)*/ 
(
 code_id,
 data_year,
 inpat_vol,
 outpat_vol,
 ttl_vol,
 avg_los,
 avg_cos,
 trend,
 code_order,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_clinical_fact_national.code_id,
        ims_hcos_clinical_fact_national.data_year,
        ims_hcos_clinical_fact_national.inpat_vol,
        ims_hcos_clinical_fact_national.outpat_vol,
        ims_hcos_clinical_fact_national.ttl_vol,
        ims_hcos_clinical_fact_national.avg_los,
        ims_hcos_clinical_fact_national.avg_cos,
        ims_hcos_clinical_fact_national.trend,
        ims_hcos_clinical_fact_national.code_order,
        ims_hcos_clinical_fact_national.file_id,
        ims_hcos_clinical_fact_national.record_id
 FROM hcos.ims_hcos_clinical_fact_national
 ORDER BY ims_hcos_clinical_fact_national.code_id,
          ims_hcos_clinical_fact_national.data_year,
          ims_hcos_clinical_fact_national.inpat_vol,
          ims_hcos_clinical_fact_national.outpat_vol,
          ims_hcos_clinical_fact_national.ttl_vol,
          ims_hcos_clinical_fact_national.avg_los,
          ims_hcos_clinical_fact_national.avg_cos,
          ims_hcos_clinical_fact_national.trend,
          ims_hcos_clinical_fact_national.code_order,
          ims_hcos_clinical_fact_national.file_id,
          ims_hcos_clinical_fact_national.record_id
SEGMENTED BY hash(ims_hcos_clinical_fact_national.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_cot_fact_b0 /*+basename(ims_hcos_cot_fact),createtype(L)*/ 
(
 ims_org_id,
 cot_id,
 cot_order,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_cot_fact.ims_org_id,
        ims_hcos_cot_fact.cot_id,
        ims_hcos_cot_fact.cot_order,
        ims_hcos_cot_fact.file_id,
        ims_hcos_cot_fact.record_id
 FROM hcos.ims_hcos_cot_fact
 ORDER BY ims_hcos_cot_fact.ims_org_id,
          ims_hcos_cot_fact.cot_id,
          ims_hcos_cot_fact.cot_order,
          ims_hcos_cot_fact.file_id,
          ims_hcos_cot_fact.record_id
SEGMENTED BY hash(ims_hcos_cot_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_detail_fact_b0 /*+basename(ims_hcos_professional_detail_fact),createtype(L)*/ 
(
 hce_id_prfsnl,
 professional_id,
 detail_id,
 detail_value,
 detail_count,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional_detail_fact.hce_id_prfsnl,
        ims_hcos_professional_detail_fact.professional_id,
        ims_hcos_professional_detail_fact.detail_id,
        ims_hcos_professional_detail_fact.detail_value,
        ims_hcos_professional_detail_fact.detail_count,
        ims_hcos_professional_detail_fact.file_id,
        ims_hcos_professional_detail_fact.record_id
 FROM hcos.ims_hcos_professional_detail_fact
 ORDER BY ims_hcos_professional_detail_fact.hce_id_prfsnl,
          ims_hcos_professional_detail_fact.professional_id,
          ims_hcos_professional_detail_fact.detail_id,
          ims_hcos_professional_detail_fact.detail_value,
          ims_hcos_professional_detail_fact.detail_count,
          ims_hcos_professional_detail_fact.file_id,
          ims_hcos_professional_detail_fact.record_id
SEGMENTED BY hash(ims_hcos_professional_detail_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_clinical_fact_b0 /*+basename(ims_hcos_clinical_fact),createtype(L)*/ 
(
 ims_org_id,
 code_id,
 data_year,
 inpat_vol,
 outpat_vol,
 ttl_vol,
 decile,
 avg_los,
 avg_cos,
 code_order,
 gpo_view,
 use_for_agg,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_clinical_fact.ims_org_id,
        ims_hcos_clinical_fact.code_id,
        ims_hcos_clinical_fact.data_year,
        ims_hcos_clinical_fact.inpat_vol,
        ims_hcos_clinical_fact.outpat_vol,
        ims_hcos_clinical_fact.ttl_vol,
        ims_hcos_clinical_fact.decile,
        ims_hcos_clinical_fact.avg_los,
        ims_hcos_clinical_fact.avg_cos,
        ims_hcos_clinical_fact.code_order,
        ims_hcos_clinical_fact.gpo_view,
        ims_hcos_clinical_fact.use_for_agg,
        ims_hcos_clinical_fact.file_id,
        ims_hcos_clinical_fact.record_id
 FROM hcos.ims_hcos_clinical_fact
 ORDER BY ims_hcos_clinical_fact.ims_org_id,
          ims_hcos_clinical_fact.code_id,
          ims_hcos_clinical_fact.data_year,
          ims_hcos_clinical_fact.inpat_vol,
          ims_hcos_clinical_fact.outpat_vol,
          ims_hcos_clinical_fact.ttl_vol,
          ims_hcos_clinical_fact.decile,
          ims_hcos_clinical_fact.avg_los,
          ims_hcos_clinical_fact.avg_cos,
          ims_hcos_clinical_fact.code_order,
          ims_hcos_clinical_fact.gpo_view,
          ims_hcos_clinical_fact.use_for_agg,
          ims_hcos_clinical_fact.file_id,
          ims_hcos_clinical_fact.record_id
SEGMENTED BY hash(ims_hcos_clinical_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_detail_b0 /*+basename(ims_hcos_professional_detail),createtype(L)*/ 
(
 detail_id,
 detail_code,
 detail_desc,
 detail_group_code,
 detail_group_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional_detail.detail_id,
        ims_hcos_professional_detail.detail_code,
        ims_hcos_professional_detail.detail_desc,
        ims_hcos_professional_detail.detail_group_code,
        ims_hcos_professional_detail.detail_group_desc,
        ims_hcos_professional_detail.file_id,
        ims_hcos_professional_detail.record_id
 FROM hcos.ims_hcos_professional_detail
 ORDER BY ims_hcos_professional_detail.detail_id,
          ims_hcos_professional_detail.detail_code,
          ims_hcos_professional_detail.detail_desc,
          ims_hcos_professional_detail.detail_group_code,
          ims_hcos_professional_detail.detail_group_desc,
          ims_hcos_professional_detail.file_id,
          ims_hcos_professional_detail.record_id
SEGMENTED BY hash(ims_hcos_professional_detail.file_id, ims_hcos_professional_detail.record_id, ims_hcos_professional_detail.detail_code, ims_hcos_professional_detail.detail_group_code, ims_hcos_professional_detail.detail_id, ims_hcos_professional_detail.detail_group_desc, ims_hcos_professional_detail.detail_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_business_detail_b0 /*+basename(ims_hcos_business_detail),createtype(L)*/ 
(
 detail_id,
 detail_code,
 detail_desc,
 detail_group_code,
 detail_group_code_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_business_detail.detail_id,
        ims_hcos_business_detail.detail_code,
        ims_hcos_business_detail.detail_desc,
        ims_hcos_business_detail.detail_group_code,
        ims_hcos_business_detail.detail_group_code_desc,
        ims_hcos_business_detail.file_id,
        ims_hcos_business_detail.record_id
 FROM hcos.ims_hcos_business_detail
 ORDER BY ims_hcos_business_detail.detail_id,
          ims_hcos_business_detail.detail_code,
          ims_hcos_business_detail.detail_desc,
          ims_hcos_business_detail.detail_group_code,
          ims_hcos_business_detail.detail_group_code_desc,
          ims_hcos_business_detail.file_id,
          ims_hcos_business_detail.record_id
SEGMENTED BY hash(ims_hcos_business_detail.file_id, ims_hcos_business_detail.record_id, ims_hcos_business_detail.detail_code, ims_hcos_business_detail.detail_group_code, ims_hcos_business_detail.detail_id, ims_hcos_business_detail.detail_group_code_desc, ims_hcos_business_detail.detail_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_aco_detail_b0 /*+basename(ims_hcos_aco_detail),createtype(L)*/ 
(
 aco_detail_id,
 aco_detail_code,
 aco_detail_desc,
 aco_detail_group_code,
 aco_detail_group_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_aco_detail.aco_detail_id,
        ims_hcos_aco_detail.aco_detail_code,
        ims_hcos_aco_detail.aco_detail_desc,
        ims_hcos_aco_detail.aco_detail_group_code,
        ims_hcos_aco_detail.aco_detail_group_desc,
        ims_hcos_aco_detail.file_id,
        ims_hcos_aco_detail.record_id
 FROM hcos.ims_hcos_aco_detail
 ORDER BY ims_hcos_aco_detail.aco_detail_id,
          ims_hcos_aco_detail.aco_detail_code,
          ims_hcos_aco_detail.aco_detail_desc,
          ims_hcos_aco_detail.aco_detail_group_code,
          ims_hcos_aco_detail.aco_detail_group_desc,
          ims_hcos_aco_detail.file_id,
          ims_hcos_aco_detail.record_id
SEGMENTED BY hash(ims_hcos_aco_detail.file_id, ims_hcos_aco_detail.record_id, ims_hcos_aco_detail.aco_detail_code, ims_hcos_aco_detail.aco_detail_group_code, ims_hcos_aco_detail.aco_detail_id, ims_hcos_aco_detail.aco_detail_group_desc, ims_hcos_aco_detail.aco_detail_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_identifier_term_type_b0 /*+basename(ims_hcos_identifier_term_type),createtype(L)*/ 
(
 identifier_id,
 src_trmtn_cd,
 src_trmtn_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_identifier_term_type.identifier_id,
        ims_hcos_identifier_term_type.src_trmtn_cd,
        ims_hcos_identifier_term_type.src_trmtn_desc,
        ims_hcos_identifier_term_type.file_id,
        ims_hcos_identifier_term_type.record_id
 FROM hcos.ims_hcos_identifier_term_type
 ORDER BY ims_hcos_identifier_term_type.identifier_id,
          ims_hcos_identifier_term_type.src_trmtn_cd,
          ims_hcos_identifier_term_type.src_trmtn_desc,
          ims_hcos_identifier_term_type.file_id,
          ims_hcos_identifier_term_type.record_id
SEGMENTED BY hash(ims_hcos_identifier_term_type.file_id, ims_hcos_identifier_term_type.record_id, ims_hcos_identifier_term_type.src_trmtn_cd, ims_hcos_identifier_term_type.identifier_id, ims_hcos_identifier_term_type.src_trmtn_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_contact_affiliation_fact_b0 /*+basename(ims_hcos_contact_affiliation_fact),createtype(L)*/ 
(
 ims_org_id,
 hce_id_prfsnl,
 professional_id,
 title_group_code,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_contact_affiliation_fact.ims_org_id,
        ims_hcos_contact_affiliation_fact.hce_id_prfsnl,
        ims_hcos_contact_affiliation_fact.professional_id,
        ims_hcos_contact_affiliation_fact.title_group_code,
        ims_hcos_contact_affiliation_fact.file_id,
        ims_hcos_contact_affiliation_fact.record_id
 FROM hcos.ims_hcos_contact_affiliation_fact
 ORDER BY ims_hcos_contact_affiliation_fact.ims_org_id,
          ims_hcos_contact_affiliation_fact.hce_id_prfsnl,
          ims_hcos_contact_affiliation_fact.professional_id,
          ims_hcos_contact_affiliation_fact.title_group_code,
          ims_hcos_contact_affiliation_fact.file_id,
          ims_hcos_contact_affiliation_fact.record_id
SEGMENTED BY hash(ims_hcos_contact_affiliation_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_clinical_code_b0 /*+basename(ims_hcos_clinical_code),createtype(L)*/ 
(
 code_id,
 clin_code,
 clin_code_desc,
 ccs_code,
 ccs_desc,
 mdc_code,
 mdc_desc,
 code_category,
 surgical_code,
 or_code,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_clinical_code.code_id,
        ims_hcos_clinical_code.clin_code,
        ims_hcos_clinical_code.clin_code_desc,
        ims_hcos_clinical_code.ccs_code,
        ims_hcos_clinical_code.ccs_desc,
        ims_hcos_clinical_code.mdc_code,
        ims_hcos_clinical_code.mdc_desc,
        ims_hcos_clinical_code.code_category,
        ims_hcos_clinical_code.surgical_code,
        ims_hcos_clinical_code.or_code,
        ims_hcos_clinical_code.file_id,
        ims_hcos_clinical_code.record_id
 FROM hcos.ims_hcos_clinical_code
 ORDER BY ims_hcos_clinical_code.code_id,
          ims_hcos_clinical_code.clin_code,
          ims_hcos_clinical_code.clin_code_desc,
          ims_hcos_clinical_code.ccs_code,
          ims_hcos_clinical_code.ccs_desc,
          ims_hcos_clinical_code.mdc_code,
          ims_hcos_clinical_code.mdc_desc,
          ims_hcos_clinical_code.code_category,
          ims_hcos_clinical_code.surgical_code,
          ims_hcos_clinical_code.or_code,
          ims_hcos_clinical_code.file_id,
          ims_hcos_clinical_code.record_id
SEGMENTED BY hash(ims_hcos_clinical_code.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_bed_fact_b0 /*+basename(ims_hcos_bed_fact),createtype(L)*/ 
(
 ims_org_id,
 bed_id,
 license_beds,
 census_beds,
 staffed_beds,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_bed_fact.ims_org_id,
        ims_hcos_bed_fact.bed_id,
        ims_hcos_bed_fact.license_beds,
        ims_hcos_bed_fact.census_beds,
        ims_hcos_bed_fact.staffed_beds,
        ims_hcos_bed_fact.file_id,
        ims_hcos_bed_fact.record_id
 FROM hcos.ims_hcos_bed_fact
 ORDER BY ims_hcos_bed_fact.ims_org_id,
          ims_hcos_bed_fact.bed_id,
          ims_hcos_bed_fact.license_beds,
          ims_hcos_bed_fact.census_beds,
          ims_hcos_bed_fact.staffed_beds,
          ims_hcos_bed_fact.file_id,
          ims_hcos_bed_fact.record_id
SEGMENTED BY hash(ims_hcos_bed_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_aco_type_b0 /*+basename(ims_hcos_aco_type),createtype(L)*/ 
(
 aco_type_id,
 aco_type_desc,
 aco_type_catg,
 aco_model,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_aco_type.aco_type_id,
        ims_hcos_aco_type.aco_type_desc,
        ims_hcos_aco_type.aco_type_catg,
        ims_hcos_aco_type.aco_model,
        ims_hcos_aco_type.file_id,
        ims_hcos_aco_type.record_id
 FROM hcos.ims_hcos_aco_type
 ORDER BY ims_hcos_aco_type.aco_type_id,
          ims_hcos_aco_type.aco_type_desc,
          ims_hcos_aco_type.aco_type_catg,
          ims_hcos_aco_type.aco_model,
          ims_hcos_aco_type.file_id,
          ims_hcos_aco_type.record_id
SEGMENTED BY hash(ims_hcos_aco_type.file_id, ims_hcos_aco_type.record_id, ims_hcos_aco_type.aco_type_id, ims_hcos_aco_type.aco_type_desc, ims_hcos_aco_type.aco_type_catg, ims_hcos_aco_type.aco_model) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_specialty_b0 /*+basename(ims_hcos_professional_specialty),createtype(L)*/ 
(
 spec_code,
 spec_desc,
 spec_sub_group_code,
 spec_sub_group_desc,
 spec_group_code,
 spec_group_desc,
 alternate_sub_group_code,
 alternate_sub_group_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional_specialty.spec_code,
        ims_hcos_professional_specialty.spec_desc,
        ims_hcos_professional_specialty.spec_sub_group_code,
        ims_hcos_professional_specialty.spec_sub_group_desc,
        ims_hcos_professional_specialty.spec_group_code,
        ims_hcos_professional_specialty.spec_group_desc,
        ims_hcos_professional_specialty.alternate_sub_group_code,
        ims_hcos_professional_specialty.alternate_sub_group_desc,
        ims_hcos_professional_specialty.file_id,
        ims_hcos_professional_specialty.record_id
 FROM hcos.ims_hcos_professional_specialty
 ORDER BY ims_hcos_professional_specialty.spec_code,
          ims_hcos_professional_specialty.spec_desc,
          ims_hcos_professional_specialty.spec_sub_group_code,
          ims_hcos_professional_specialty.spec_sub_group_desc,
          ims_hcos_professional_specialty.spec_group_code,
          ims_hcos_professional_specialty.spec_group_desc,
          ims_hcos_professional_specialty.alternate_sub_group_code,
          ims_hcos_professional_specialty.alternate_sub_group_desc,
          ims_hcos_professional_specialty.file_id,
          ims_hcos_professional_specialty.record_id
SEGMENTED BY hash(ims_hcos_professional_specialty.file_id, ims_hcos_professional_specialty.record_id, ims_hcos_professional_specialty.spec_code, ims_hcos_professional_specialty.spec_group_code, ims_hcos_professional_specialty.spec_sub_group_code, ims_hcos_professional_specialty.alternate_sub_group_code, ims_hcos_professional_specialty.spec_desc, ims_hcos_professional_specialty.spec_sub_group_desc, ims_hcos_professional_specialty.spec_group_desc, ims_hcos_professional_specialty.alternate_sub_group_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_business_detail_fact_b0 /*+basename(ims_hcos_business_detail_fact),createtype(L)*/ 
(
 ims_org_id,
 detail_id,
 detail_value,
 detail_count,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_business_detail_fact.ims_org_id,
        ims_hcos_business_detail_fact.detail_id,
        ims_hcos_business_detail_fact.detail_value,
        ims_hcos_business_detail_fact.detail_count,
        ims_hcos_business_detail_fact.file_id,
        ims_hcos_business_detail_fact.record_id
 FROM hcos.ims_hcos_business_detail_fact
 ORDER BY ims_hcos_business_detail_fact.ims_org_id,
          ims_hcos_business_detail_fact.detail_id,
          ims_hcos_business_detail_fact.detail_value,
          ims_hcos_business_detail_fact.detail_count,
          ims_hcos_business_detail_fact.file_id,
          ims_hcos_business_detail_fact.record_id
SEGMENTED BY hash(ims_hcos_business_detail_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_affiliation_type_b0 /*+basename(ims_hcos_affiliation_type),createtype(L)*/ 
(
 affil_type_id,
 affil_type_code,
 affil_type_desc,
 affil_group_code,
 affil_group_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_affiliation_type.affil_type_id,
        ims_hcos_affiliation_type.affil_type_code,
        ims_hcos_affiliation_type.affil_type_desc,
        ims_hcos_affiliation_type.affil_group_code,
        ims_hcos_affiliation_type.affil_group_desc,
        ims_hcos_affiliation_type.file_id,
        ims_hcos_affiliation_type.record_id
 FROM hcos.ims_hcos_affiliation_type
 ORDER BY ims_hcos_affiliation_type.affil_type_id,
          ims_hcos_affiliation_type.affil_type_code,
          ims_hcos_affiliation_type.affil_type_desc,
          ims_hcos_affiliation_type.affil_group_code,
          ims_hcos_affiliation_type.affil_group_desc,
          ims_hcos_affiliation_type.file_id,
          ims_hcos_affiliation_type.record_id
SEGMENTED BY hash(ims_hcos_affiliation_type.file_id, ims_hcos_affiliation_type.record_id, ims_hcos_affiliation_type.affil_type_code, ims_hcos_affiliation_type.affil_group_code, ims_hcos_affiliation_type.affil_type_id, ims_hcos_affiliation_type.affil_group_desc, ims_hcos_affiliation_type.affil_type_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_clinical_fact_state_b0 /*+basename(ims_hcos_clinical_fact_state),createtype(L)*/ 
(
 code_id,
 data_year,
 state,
 inpat_vol,
 outpat_vol,
 ttl_vol,
 avg_los,
 avg_cos,
 code_order,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_clinical_fact_state.code_id,
        ims_hcos_clinical_fact_state.data_year,
        ims_hcos_clinical_fact_state.state,
        ims_hcos_clinical_fact_state.inpat_vol,
        ims_hcos_clinical_fact_state.outpat_vol,
        ims_hcos_clinical_fact_state.ttl_vol,
        ims_hcos_clinical_fact_state.avg_los,
        ims_hcos_clinical_fact_state.avg_cos,
        ims_hcos_clinical_fact_state.code_order,
        ims_hcos_clinical_fact_state.file_id,
        ims_hcos_clinical_fact_state.record_id
 FROM hcos.ims_hcos_clinical_fact_state
 ORDER BY ims_hcos_clinical_fact_state.code_id,
          ims_hcos_clinical_fact_state.data_year,
          ims_hcos_clinical_fact_state.state,
          ims_hcos_clinical_fact_state.inpat_vol,
          ims_hcos_clinical_fact_state.outpat_vol,
          ims_hcos_clinical_fact_state.ttl_vol,
          ims_hcos_clinical_fact_state.avg_los,
          ims_hcos_clinical_fact_state.avg_cos,
          ims_hcos_clinical_fact_state.code_order,
          ims_hcos_clinical_fact_state.file_id,
          ims_hcos_clinical_fact_state.record_id
SEGMENTED BY hash(ims_hcos_clinical_fact_state.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_title_b0 /*+basename(ims_hcos_professional_title),createtype(L)*/ 
(
 title_group_code,
 title_group_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional_title.title_group_code,
        ims_hcos_professional_title.title_group_desc,
        ims_hcos_professional_title.file_id,
        ims_hcos_professional_title.record_id
 FROM hcos.ims_hcos_professional_title
 ORDER BY ims_hcos_professional_title.title_group_code,
          ims_hcos_professional_title.title_group_desc,
          ims_hcos_professional_title.file_id,
          ims_hcos_professional_title.record_id
SEGMENTED BY hash(ims_hcos_professional_title.file_id, ims_hcos_professional_title.record_id, ims_hcos_professional_title.title_group_code, ims_hcos_professional_title.title_group_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_professional_b0 /*+basename(ims_hcos_professional),createtype(L)*/ 
(
 hce_id_prfsnl,
 professional_id,
 first_name,
 middle_name,
 last_name,
 gen_suffix,
 designation,
 gender,
 role,
 primary_spec,
 secondary_spec,
 tertiary_spec,
 primary_prof_code,
 primary_prof_desc,
 ims_id,
 upin,
 me,
 all_dea,
 npi,
 status_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_professional.hce_id_prfsnl,
        ims_hcos_professional.professional_id,
        ims_hcos_professional.first_name,
        ims_hcos_professional.middle_name,
        ims_hcos_professional.last_name,
        ims_hcos_professional.gen_suffix,
        ims_hcos_professional.designation,
        ims_hcos_professional.gender,
        ims_hcos_professional.role,
        ims_hcos_professional.primary_spec,
        ims_hcos_professional.secondary_spec,
        ims_hcos_professional.tertiary_spec,
        ims_hcos_professional.primary_prof_code,
        ims_hcos_professional.primary_prof_desc,
        ims_hcos_professional.ims_id,
        ims_hcos_professional.upin,
        ims_hcos_professional.me,
        ims_hcos_professional.all_dea,
        ims_hcos_professional.npi,
        ims_hcos_professional.status_desc,
        ims_hcos_professional.file_id,
        ims_hcos_professional.record_id
 FROM hcos.ims_hcos_professional
 ORDER BY ims_hcos_professional.hce_id_prfsnl,
          ims_hcos_professional.professional_id,
          ims_hcos_professional.first_name,
          ims_hcos_professional.middle_name,
          ims_hcos_professional.last_name,
          ims_hcos_professional.gen_suffix,
          ims_hcos_professional.designation,
          ims_hcos_professional.gender,
          ims_hcos_professional.role,
          ims_hcos_professional.primary_spec,
          ims_hcos_professional.secondary_spec,
          ims_hcos_professional.tertiary_spec,
          ims_hcos_professional.primary_prof_code,
          ims_hcos_professional.primary_prof_desc,
          ims_hcos_professional.ims_id,
          ims_hcos_professional.upin,
          ims_hcos_professional.me,
          ims_hcos_professional.all_dea,
          ims_hcos_professional.npi,
          ims_hcos_professional.status_desc,
          ims_hcos_professional.file_id,
          ims_hcos_professional.record_id
SEGMENTED BY hash(ims_hcos_professional.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_aco_detail_fact_b0 /*+basename(ims_hcos_aco_detail_fact),createtype(L)*/ 
(
 ims_org_id,
 aco_type_id,
 aco_detail_id,
 aco_val,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_aco_detail_fact.ims_org_id,
        ims_hcos_aco_detail_fact.aco_type_id,
        ims_hcos_aco_detail_fact.aco_detail_id,
        ims_hcos_aco_detail_fact.aco_val,
        ims_hcos_aco_detail_fact.file_id,
        ims_hcos_aco_detail_fact.record_id
 FROM hcos.ims_hcos_aco_detail_fact
 ORDER BY ims_hcos_aco_detail_fact.ims_org_id,
          ims_hcos_aco_detail_fact.aco_type_id,
          ims_hcos_aco_detail_fact.aco_detail_id,
          ims_hcos_aco_detail_fact.aco_val,
          ims_hcos_aco_detail_fact.file_id,
          ims_hcos_aco_detail_fact.record_id
SEGMENTED BY hash(ims_hcos_aco_detail_fact.file_id, ims_hcos_aco_detail_fact.record_id, ims_hcos_aco_detail_fact.ims_org_id, ims_hcos_aco_detail_fact.aco_type_id, ims_hcos_aco_detail_fact.aco_detail_id, ims_hcos_aco_detail_fact.aco_val) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_aco_roster_b0 /*+basename(ims_hcos_aco_roster),createtype(L)*/ 
(
 ims_org_id,
 aco_type_id,
 hce_id_prfsnl,
 professional_id,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_aco_roster.ims_org_id,
        ims_hcos_aco_roster.aco_type_id,
        ims_hcos_aco_roster.hce_id_prfsnl,
        ims_hcos_aco_roster.professional_id,
        ims_hcos_aco_roster.file_id,
        ims_hcos_aco_roster.record_id
 FROM hcos.ims_hcos_aco_roster
 ORDER BY ims_hcos_aco_roster.ims_org_id,
          ims_hcos_aco_roster.aco_type_id,
          ims_hcos_aco_roster.hce_id_prfsnl,
          ims_hcos_aco_roster.professional_id,
          ims_hcos_aco_roster.file_id,
          ims_hcos_aco_roster.record_id
SEGMENTED BY hash(ims_hcos_aco_roster.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_financial_fact_b0 /*+basename(ims_hcos_financial_fact),createtype(L)*/ 
(
 ims_org_id,
 data_year,
 inpat_rev,
 outpat_rev,
 ttl_pat_rev,
 net_pat_rev,
 op_exp,
 oth_exp,
 ttl_exp,
 supply_cost,
 drug_cost,
 ttl_salaries,
 net_inc_pat,
 net_inc,
 cost_per_bed,
 ttl_assets,
 fte_emp,
 curr_assets,
 curr_liab,
 fix_assets,
 fringe_benefits,
 fund_bal,
 gov_appr,
 h_in_rev,
 l_t_liab,
 non_pat_rev,
 oth_assets,
 oth_income,
 h_out_rev,
 tot_liab,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_financial_fact.ims_org_id,
        ims_hcos_financial_fact.data_year,
        ims_hcos_financial_fact.inpat_rev,
        ims_hcos_financial_fact.outpat_rev,
        ims_hcos_financial_fact.ttl_pat_rev,
        ims_hcos_financial_fact.net_pat_rev,
        ims_hcos_financial_fact.op_exp,
        ims_hcos_financial_fact.oth_exp,
        ims_hcos_financial_fact.ttl_exp,
        ims_hcos_financial_fact.supply_cost,
        ims_hcos_financial_fact.drug_cost,
        ims_hcos_financial_fact.ttl_salaries,
        ims_hcos_financial_fact.net_inc_pat,
        ims_hcos_financial_fact.net_inc,
        ims_hcos_financial_fact.cost_per_bed,
        ims_hcos_financial_fact.ttl_assets,
        ims_hcos_financial_fact.fte_emp,
        ims_hcos_financial_fact.curr_assets,
        ims_hcos_financial_fact.curr_liab,
        ims_hcos_financial_fact.fix_assets,
        ims_hcos_financial_fact.fringe_benefits,
        ims_hcos_financial_fact.fund_bal,
        ims_hcos_financial_fact.gov_appr,
        ims_hcos_financial_fact.h_in_rev,
        ims_hcos_financial_fact.l_t_liab,
        ims_hcos_financial_fact.non_pat_rev,
        ims_hcos_financial_fact.oth_assets,
        ims_hcos_financial_fact.oth_income,
        ims_hcos_financial_fact.h_out_rev,
        ims_hcos_financial_fact.tot_liab,
        ims_hcos_financial_fact.file_id,
        ims_hcos_financial_fact.record_id
 FROM hcos.ims_hcos_financial_fact
 ORDER BY ims_hcos_financial_fact.ims_org_id,
          ims_hcos_financial_fact.data_year,
          ims_hcos_financial_fact.inpat_rev,
          ims_hcos_financial_fact.outpat_rev,
          ims_hcos_financial_fact.ttl_pat_rev,
          ims_hcos_financial_fact.net_pat_rev,
          ims_hcos_financial_fact.op_exp,
          ims_hcos_financial_fact.oth_exp,
          ims_hcos_financial_fact.ttl_exp,
          ims_hcos_financial_fact.supply_cost,
          ims_hcos_financial_fact.drug_cost,
          ims_hcos_financial_fact.ttl_salaries,
          ims_hcos_financial_fact.net_inc_pat,
          ims_hcos_financial_fact.net_inc,
          ims_hcos_financial_fact.cost_per_bed,
          ims_hcos_financial_fact.ttl_assets,
          ims_hcos_financial_fact.fte_emp,
          ims_hcos_financial_fact.curr_assets,
          ims_hcos_financial_fact.curr_liab,
          ims_hcos_financial_fact.fix_assets,
          ims_hcos_financial_fact.fringe_benefits,
          ims_hcos_financial_fact.fund_bal,
          ims_hcos_financial_fact.gov_appr,
          ims_hcos_financial_fact.h_in_rev,
          ims_hcos_financial_fact.l_t_liab,
          ims_hcos_financial_fact.non_pat_rev,
          ims_hcos_financial_fact.oth_assets,
          ims_hcos_financial_fact.oth_income,
          ims_hcos_financial_fact.h_out_rev,
          ims_hcos_financial_fact.tot_liab,
          ims_hcos_financial_fact.file_id,
          ims_hcos_financial_fact.record_id
SEGMENTED BY hash(ims_hcos_financial_fact.record_id) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_identifier_type_b0 /*+basename(ims_hcos_identifier_type),createtype(L)*/ 
(
 identifier_id,
 identifier_code,
 identifier_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_identifier_type.identifier_id,
        ims_hcos_identifier_type.identifier_code,
        ims_hcos_identifier_type.identifier_desc,
        ims_hcos_identifier_type.file_id,
        ims_hcos_identifier_type.record_id
 FROM hcos.ims_hcos_identifier_type
 ORDER BY ims_hcos_identifier_type.identifier_id,
          ims_hcos_identifier_type.identifier_code,
          ims_hcos_identifier_type.identifier_desc,
          ims_hcos_identifier_type.file_id,
          ims_hcos_identifier_type.record_id
SEGMENTED BY hash(ims_hcos_identifier_type.file_id, ims_hcos_identifier_type.record_id, ims_hcos_identifier_type.identifier_code, ims_hcos_identifier_type.identifier_id, ims_hcos_identifier_type.identifier_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_aco_org_fact_b0 /*+basename(ims_hcos_aco_org_fact),createtype(L)*/ 
(
 ims_org_id,
 aco_type_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_aco_org_fact.ims_org_id,
        ims_hcos_aco_org_fact.aco_type_desc,
        ims_hcos_aco_org_fact.file_id,
        ims_hcos_aco_org_fact.record_id
 FROM hcos.ims_hcos_aco_org_fact
 ORDER BY ims_hcos_aco_org_fact.ims_org_id,
          ims_hcos_aco_org_fact.aco_type_desc,
          ims_hcos_aco_org_fact.file_id,
          ims_hcos_aco_org_fact.record_id
SEGMENTED BY hash(ims_hcos_aco_org_fact.file_id, ims_hcos_aco_org_fact.record_id, ims_hcos_aco_org_fact.ims_org_id, ims_hcos_aco_org_fact.aco_type_desc) ALL NODES;

CREATE PROJECTION hcos.ims_hcos_bed_cluster_type_b0 /*+basename(ims_hcos_bed_cluster_type),createtype(L)*/ 
(
 bed_cluster_id,
 bed_cluster_desc,
 file_id,
 record_id
)
AS
 SELECT ims_hcos_bed_cluster_type.bed_cluster_id,
        ims_hcos_bed_cluster_type.bed_cluster_desc,
        ims_hcos_bed_cluster_type.file_id,
        ims_hcos_bed_cluster_type.record_id
 FROM hcos.ims_hcos_bed_cluster_type
 ORDER BY ims_hcos_bed_cluster_type.bed_cluster_id,
          ims_hcos_bed_cluster_type.bed_cluster_desc,
          ims_hcos_bed_cluster_type.file_id,
          ims_hcos_bed_cluster_type.record_id
SEGMENTED BY hash(ims_hcos_bed_cluster_type.file_id, ims_hcos_bed_cluster_type.record_id, ims_hcos_bed_cluster_type.bed_cluster_id, ims_hcos_bed_cluster_type.bed_cluster_desc) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

