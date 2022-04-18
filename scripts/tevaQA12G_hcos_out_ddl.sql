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