CREATE SCHEMA ehr;
CREATE SCHEMA survey;
CREATE SCHEMA masterdata;
CREATE SCHEMA beer;
CREATE SCHEMA atlas;
CREATE SCHEMA brdbeer;
CREATE SCHEMA aetna;
CREATE SCHEMA click;
CREATE SCHEMA drug;
CREATE SCHEMA cops;
CREATE SCHEMA commodity;
CREATE SCHEMA logistics;
CREATE SCHEMA cortex;
CREATE SCHEMA migration;
CREATE SCHEMA raw;
CREATE SCHEMA cyclist;
CREATE SCHEMA segment;

CREATE SEQUENCE beer.country_id  CACHE      1 ;

CREATE TABLE ehr.accounts_src
(
    primary_icd_diagnosis_code varchar(50),
    admit_icd_diangosis_code varchar(50),
    hospital_account_id varchar(50),
    primary_icd_procedure_code varchar(50),
    primary_payor_id varchar(50),
    total_account_balance varchar(50),
    total_account_adjustment varchar(50),
    total_account_charge varchar(50),
    total_account_payment varchar(50),
    hrrp_condition varchar(50)
);


CREATE TABLE ehr.departments_src
(
    department_name varchar(50),
    department_id varchar(50),
    hospital_id varchar(50),
    specialty_description varchar(50)
);


CREATE TABLE ehr.encounters_src
(
    master_patient_id varchar(50),
    patient_encounter_id varchar(50),
    patient_admission_datetime varchar(50),
    patient_los varchar(50),
    patient_los_bucket varchar(50),
    patient_los_bucket_sort varchar(50),
    admitting_provider_id varchar(50),
    discharging_provider_id varchar(50),
    attending_provider_id_ varchar(50),
    patient_discharge_datetime varchar(50),
    department_id varchar(50),
    hospital_account_id varchar(50),
    patient_inicu_flag varchar(50),
    patient_admitted_flag varchar(50),
    patient_readmission_flag varchar(50),
    patient_inpatient_readmission_flag varchar(50)
);


CREATE TABLE ehr.patients_src
(
    master_patient_id varchar(50),
    patient_address_number varchar(50),
    patient_address_street varchar(50),
    patient_address_full varchar(50),
    patient_city varchar(50),
    patient_zip_code varchar(50),
    patient_county varchar(50),
    patient_state varchar(50),
    patient_country varchar(50),
    patient_latitude varchar(50),
    patient_longitude varchar(50),
    patient_name varchar(50),
    patient_gender varchar(50),
    patient_lace_score varchar(50),
    patient_geography_loaded varchar(50),
    patient_dob varchar(50),
    patient_marital_status varchar(50),
    patient_primary_language varchar(50),
    patient_is_citizen_flag varchar(50),
    patient_is_deceased_flag varchar(50),
    patient_pcp_type varchar(50),
    patient_pcp_id varchar(50),
    patient_ethnicity varchar(50)
);


CREATE TABLE ehr.hospitals_src
(
    hospital_id varchar(50),
    hospital_name varchar(50),
    hospital_address_number varchar(50),
    hospital_address_street varchar(50),
    hospital_address_full varchar(50),
    hospital_city varchar(50),
    hospital_zip_code varchar(50),
    hospital_county varchar(50),
    hospital_state varchar(50),
    hospital_country varchar(50),
    hospital_latitude varchar(50),
    hospital_longitude varchar(50)
);


CREATE TABLE ehr.drugs
(
    manufacturer_name varchar(50),
    ndc_number varchar(50),
    drug_product_description varchar(50),
    date_introduced_to_market varchar(50),
    wac_at_introduction varchar(50),
    marketing_pricing_plan_description varchar(750),
    marketing_pricing_plan_non_public_indicator varchar(50),
    estimated_number_of_patients varchar(50),
    breakthrough_therapy_indicator varchar(50),
    priority_review_indicator varchar(50),
    acquisition_date varchar(50),
    acquisition_price varchar(50),
    acquisition_price_non_public_indicator varchar(50),
    acquisition_price_comment varchar(500),
    general_comments varchar(500),
    supporting_documents varchar(500)
);


CREATE TABLE ehr.icd_nine_lkp_src
(
    dgns_cd varchar(25),
    longdesc varchar(250),
    shortdesc varchar(100),
    cd_version varchar(25),
    fyear varchar(25)
);


CREATE TABLE survey.opioid_src
(
    state_id varchar(50),
    state_name varchar(50),
    survey_year varchar(50),
    survey_month varchar(50),
    indicator varchar(50),
    data_value varchar(50),
    predicted_value varchar(50),
    percent_complete varchar(50),
    percent_pending_investigation varchar(50),
    footnote varchar(150)
);


CREATE TABLE survey.hcahps_src
(
    provider_id varchar(50),
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_city varchar(50),
    hospital_state varchar(50),
    zip_code varchar(50),
    county_name varchar(50),
    phone_number varchar(50),
    hcahps_measure_id varchar(50),
    hcahps_question varchar(50),
    hcahps_answer_description varchar(50),
    patient_survey_star_rating varchar(50),
    patient_survey_star_rating_footnote varchar(50),
    hcahps_answer_percent varchar(50),
    hcahps_answer_percent_footnote varchar(50),
    hcahps_linear_mean_value varchar(50),
    number_of_completed_surveys varchar(50),
    number_of_completed_surveys_footnote varchar(50),
    survey_response_rate_percent varchar(50),
    survey_response_rate_percent_footnote varchar(50),
    measure_start_date varchar(50),
    measure_end_date varchar(50)
);


CREATE TABLE survey.general_info_src
(
    provider_id varchar(50),
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_city varchar(50),
    hospital_state varchar(50),
    zip_code varchar(50),
    county_name varchar(50),
    phone_number varchar(50),
    hospital_type varchar(50),
    hospital_ownership varchar(50),
    emergency_services varchar(50),
    meets_criteria_for_meaningful_use_of_ehrs varchar(50),
    hospital_overall_rating varchar(50),
    hospital_overall_rating_footnote varchar(50),
    mortality_national_comparison varchar(50),
    mortality_national_comparison_footnote varchar(50),
    safety_of_care_national_comparison varchar(50),
    safety_of_care_national_comparison_footnote varchar(50),
    readmission_national_comparison varchar(50),
    readmission_national_comparison_footnote varchar(50),
    patient_experience_national_comparison varchar(50),
    patient_experience_national_comparison_footnote varchar(50),
    effectiveness_of_care_national_comparison varchar(50),
    effectiveness_of_care_national_comparison_footnote varchar(50),
    timeliness_of_care_national_comparison varchar(50),
    timeliness_of_care_national_comparison_footnote varchar(50),
    efficient_use_of_medical_imaging_national_comparison varchar(50),
    efficient_use_of_medical_imaging_national_comparison_footnote varchar(50)
);


CREATE TABLE masterdata.places_src
(
    usps varchar(10),
    geo_id varchar(10),
    ansi_code varchar(10),
    place_name varchar(100),
    lsad varchar(10),
    funcstat varchar(10),
    land_area numeric(37,15),
    water_area numeric(37,15),
    aland_sqmi numeric(37,15),
    awater_sqmi numeric(37,15),
    intpt_lat numeric(37,15),
    intp_long numeric(37,15)
);


CREATE TABLE masterdata.names_01_src
(
    first_name varchar(25),
    last_name varchar(25)
);


CREATE TABLE masterdata.alphabet_lkp
(
    id int,
    letter varchar(5)
);


CREATE TABLE masterdata.lsad_lkp
(
    lsad_id varchar(5),
    lsad_type varchar(50),
    lsad_desc varchar(500)
);


CREATE TABLE masterdata.funcstat_lkp
(
    funcstat_code varchar(5),
    funcstat_desc varchar(150),
    funcstat_entity varchar(1200)
);


CREATE TABLE beer.events
(
    beer_event_id varchar(80),
    drinking_session_id varchar(80),
    user_id varchar(80),
    beer varchar(80),
    schmooziest_buzzword varchar(80),
    best_thing_said varchar(80),
    worst_thing_said varchar(80),
    drunken_babble varchar(80),
    likes int,
    beer_opened_time timestamp
);


CREATE TABLE beer.adj_drinkers
(
    id int,
    user_id char(32),
    first_name varchar(32),
    last_name varchar(32),
    company varchar(64),
    school varchar(128),
    superhero_power varchar(64),
    good_tipper boolean,
    favorite_instrument varchar(64),
    zipcode char(5)
);


CREATE TABLE beer.drinkers
(
    id int,
    user_id char(32),
    first_name varchar(32),
    last_name varchar(32),
    company varchar(64),
    school varchar(128),
    superhero_power varchar(64),
    good_tipper boolean,
    favorite_instrument varchar(64),
    zip_code char(5)
);


CREATE TABLE beer.beer_type
(
    Beer varchar(50),
    beer_type varchar(25),
    alcohol numeric(25,0)
);


CREATE TABLE beer.beer_hours
(
    beer_opened_time timestamp,
    beer_hour numeric(36,0)
);


CREATE TABLE beer.zipcode
(
    zipcode char(5),
    Place_Name varchar(50),
    State varchar(25),
    State_Abbreviation varchar(5),
    County varchar(50),
    Latitude varchar(10),
    Longitude varchar(10)
);


CREATE TABLE beer.zsharp
(
    bad_code char(5),
    key varchar(5),
    good_code char(5)
);


CREATE TABLE atlas.mock_dealer
(
    old_name varchar(50),
    new_name varchar(50)
);


CREATE TABLE atlas.arrivals_src
(
    vin varchar(50),
    arrivals_count int,
    region_key int,
    port_key int,
    date_key varchar(20),
    config_key int
);


CREATE TABLE atlas.control
(
    source_file_id int,
    source_key varchar(20),
    source_file_name varchar(1024),
    source_system varchar(255),
    sourc_file_run_date date,
    message varchar(255),
    file_size varchar(20),
    data_from_ts timestamp,
    data_to_ts timestamp,
    job_start_ts timestamp,
    job_end_ts timestamp,
    update_ts timestamp
);


CREATE TABLE atlas.cust_dim_src
(
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip_code varchar(20)
);


CREATE TABLE atlas.cust_dim
(
    source_file_id int,
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip_code varchar(20),
    file_size varchar(20),
    pii_link int,
    has_pii boolean
);


CREATE TABLE atlas.cust_sales_src
(
    vin varchar(50),
    region varchar(255),
    count numeric(37,15),
    dealer int,
    sale_date varchar(255),
    vehicle int,
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip varchar(20)
);


CREATE TABLE atlas.date_dim_src
(
    date timestamp,
    date_key varchar(10),
    day_of_week_number int,
    day_of_year_number numeric(37,15),
    week_of_year_number numeric(37,15),
    quarter_number numeric(37,15),
    ten_day_period_number numeric(37,15),
    sales_days int,
    sales_month_date varchar(10),
    end_of_calendar_month_indic varchar(1),
    holiday_indic varchar(1),
    ten_day_period_end_indic varchar(1),
    shipments_month_end_indic varchar(1)
);


CREATE TABLE atlas.dealer_dim_src
(
    dealer_id int,
    dealer_name varchar(50),
    address_line_1 varchar(50),
    address_line_2 varchar(50),
    city_name varchar(50),
    po_box_number varchar(50),
    state_code varchar(5),
    zip_code varchar(10),
    area_code varchar(5),
    telephone_number varchar(10),
    region_name varchar(50),
    district_name varchar(50),
    metro_area_name varchar(50),
    metro_area_abbrev_name varchar(20),
    area_of_dom_influence_name varchar(50),
    adi_abbrev_name varchar(20),
    adi_us_population_percent numeric(37,15),
    pma_number varchar(20),
    salesperson_count int,
    new_car_storage_count int
);


CREATE TABLE atlas.big_report
(
    vin varchar(50),
    region_key int,
    sales_count int,
    date_key varchar(10),
    zip varchar(20),
    income_group varchar(20),
    cust_type_desc varchar(10),
    gender varchar(14),
    income varchar(14),
    dealer_name varchar(50),
    dealer_city varchar(50),
    dealer_state varchar(5),
    dealer_zip varchar(10),
    dealer_area_code varchar(5),
    region_name varchar(50),
    district_name varchar(50),
    metro_area_name varchar(50),
    metro_area_abbrev_name varchar(20),
    area_of_dom_influence_name varchar(50),
    adi_abbrev_name varchar(20),
    adi_us_population_percent numeric(37,15),
    pma_number varchar(20),
    salesperson_count int,
    new_car_storage_count int,
    model_year int,
    body_model_code varchar(5),
    body_model_name varchar(50),
    price_line_code varchar(10),
    price_line_name varchar(46),
    emissions_catg_code varchar(10),
    emissions_catg_name varchar(16),
    engine_code varchar(5),
    engine_name varchar(20),
    ext_color_code varchar(10),
    ext_color_name varchar(50),
    k_model_number varchar(22),
    interior_trim_id int,
    interior_trim_color varchar(50),
    transmission_type_code varchar(10),
    transmission_type_name varchar(50),
    factory_op_group_code varchar(10)
);


CREATE TABLE atlas.date_dim
(
    date timestamp,
    date_key varchar(10),
    day_of_week_number int,
    day_of_year_number numeric(37,15),
    week_of_year_number numeric(37,15),
    quarter_number numeric(37,15),
    ten_day_period_number numeric(37,15),
    sales_days int,
    sales_month_date varchar(10),
    end_of_calendar_month_indic varchar(1),
    holiday_indic varchar(1),
    ten_day_period_end_indic varchar(1),
    shipments_month_end_indic varchar(1)
);


CREATE TABLE atlas.port_dim
(
    port_id int,
    port_name varchar(30),
    shipping_route_code varchar(1)
);


CREATE TABLE atlas.region_dim
(
    region_key int,
    org_unit_code varchar(10),
    region_name varchar(50)
);


CREATE TABLE atlas.sales
(
    vin varchar(255),
    region varchar(255),
    sales_count int,
    f4 int,
    sales_date date,
    f6 int,
    f7 int,
    f8 varchar(50),
    f9 varchar(50),
    f10 varchar(50),
    f11 varchar(50)
);


CREATE TABLE atlas.sales_fact
(
    vin varchar(50),
    sales_count int,
    region_key int,
    dealer_id int,
    date_key varchar(10),
    config_key int,
    cust_id int
);


CREATE TABLE atlas.vehicle_config
(
    config_key int,
    model_year int,
    body_model_code varchar(5),
    body_model_name varchar(36),
    price_line_code varchar(3),
    price_line_name varchar(46),
    emissions_catg_code varchar(4),
    emissions_catg_name varchar(16),
    engine_code varchar(5),
    engine_name varchar(41),
    ext_color_code varchar(4),
    ext_color_name varchar(36),
    k_model_number varchar(22),
    interior_trim_id int,
    interior_trim_color varchar(36),
    transmission_type_code varchar(4),
    transmission_type_name varchar(36),
    factory_op_group_code varchar(4)
);


CREATE TABLE atlas.zip_code_lkp
(
    zip_code varchar(10),
    latitude numeric(37,15),
    longitude numeric(37,15),
    city varchar(50),
    state varchar(50),
    county varchar(50)
);


CREATE TABLE brdbeer.user_agent
(
    id int,
    agent varchar(25),
    agent_version varchar(10),
    os varchar(25),
    os_type varchar(10),
    lang varchar(10)
);


CREATE TABLE brdbeer.page_dimension
(
    id int,
    full_url varchar(100),
    section varchar(50),
    origination varchar(25)
);


CREATE TABLE brdbeer.session_dim
(
    id int,
    session_start varchar(10),
    session_end varchar(10),
    session_time int,
    first_ip varchar(25),
    second_ip varchar(25)
);


CREATE TABLE aetna.provider_base
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp NOT NULL,
    MAILING_CYCLE varchar(2) NOT NULL,
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL
);


CREATE TABLE aetna.specialty
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    PRVDR_CERT_YEAR int,
    SPEC_NM varchar(60) NOT NULL,
    BOARD_STS_CD varchar(15),
    MAILING_CYCLE varchar(2) NOT NULL,
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL,
    MAILING_DT timestamp NOT NULL
);


CREATE TABLE aetna.address
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    ADDR_NO varchar(40) NOT NULL,
    MAILING_CYCLE varchar(2) NOT NULL,
    ACCEPT_PATIENTS_IND char(1),
    LOC_STS_CD varchar(4),
    STRADD1_TXT varchar(40),
    STRADDR2_TXT varchar(40),
    CITY_NM varchar(24),
    STATE_CD varchar(2),
    ZIP_CD varchar(5),
    PHONE_NO varchar(20),
    FAX_NO varchar(20),
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL,
    MAILING_DT timestamp NOT NULL,
    NPI_NO varchar(300)
);


CREATE TABLE aetna.provider_base_src
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp,
    MAILING_CYCLE varchar(2),
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7)
);


CREATE TABLE aetna.specialty_int
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    PRVDR_CERT_YEAR int,
    SPEC_NM varchar(14),
    BOARD_STS_CD varchar(1),
    MAILING_CYCLE varchar(2),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7),
    MAILING_DT timestamp,
    update_flag boolean
);


CREATE TABLE aetna.address_int
(
    prvdr_id int,
    tax_id_no varchar(12),
    addr_no varchar(4),
    mailing_cycle varchar(2),
    accept_patients_ind char(1),
    loc_sts_cd varchar(1),
    stradd1_txt varchar(1),
    stradd2_stx varchar(1),
    city_nm varchar(1),
    state_cd varchar(1),
    zip_cd varchar(1),
    phone_no varchar(1),
    fax_no varchar(1),
    modified_dt timestamp,
    modified_user_id varchar(7),
    MAILING_DT timestamp,
    NPI_NO varchar(1),
    update_flag boolean
);


CREATE TABLE aetna.provider_base_dup
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp,
    MAILING_CYCLE varchar(2),
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7)
);


CREATE TABLE aetna.provider_loc_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    ADDR_NO int,
    MAILING_CYCLE int,
    ACCEPT_PATIENTS_IND varchar(25),
    LOC_STS_CD varchar(25),
    STRADD1_TXT varchar(25),
    STRADDR2_TXT varchar(25),
    CITY_NM varchar(25),
    STATE_CD varchar(25),
    ZIP_CD int,
    PHONE_NO int,
    FAX_NO int
);


CREATE TABLE aetna.provider_specialty_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    PRVDR_CERT_YEAR varchar(25),
    SPEC_NM varchar(100),
    BOARD_STS_CD varchar(25)
);


CREATE TABLE aetna.provider_specialty_db2_src
(
    PRVDR_ID_NO int,
    RPRVSPC_CRTFCTN_YR int,
    SPCLT_NM varchar(100),
    RPNP_PRCTC_ROLE_NM varchar(25),
    NTWK_ID_NO int
);


CREATE TABLE aetna.provider_base_db2_src
(
    PRVDR_ID_NO int,
    NTWK_ID_NO int,
    INPD_FIRST_NM varchar(25),
    INPD_MIDDLE_NM varchar(25),
    INPD_LAST_NM varchar(25),
    INPD_RANK_ABR varchar(25),
    INPD_SALTN_ABR varchar(25),
    RIP_PRVDR_TYPE_CD varchar(25),
    RIP_PTYP_DSCRP_TXT varchar(50),
    MNT_BY_BUS_UNIT_CD varchar(25),
    DGRE_CD varchar(25),
    ADDR_NO int,
    RMBRCP_TXIDFRMT_CD varchar(25),
    RMBRCP_TAXID_NO int,
    MASKED_TAXID_NO varchar(25),
    RPNSL_ACPT_PTNT_CD varchar(25),
    NTLOC_STS_CD varchar(25),
    ADDRD_STRA1LN_TXT varchar(25),
    ADDRD_STRA2LN_TXT varchar(25),
    ADDRD_STRACITY_NM varchar(25),
    ADDRD_STRASTSH_ABR varchar(25),
    RPSL_STRAZIP_CD int,
    PRVSL_PRMRYPHNE_NO int,
    PRVSL_FAX_NO int,
    CRDSRC_TY_CD varchar(25),
    PRVCRD_STS_CD varchar(25)
);


CREATE TABLE aetna.provider_base_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    TAXID_FORMAT_CD varchar(25),
    STATE_CD varchar(25),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(25),
    SALUTATION_TXT varchar(25),
    RANK varchar(25),
    BUSINESS_UNIT_CD varchar(25),
    CATEGORY int,
    PRVDR_TYPE_CD varchar(25),
    PRVDR_TYPE_DESC varchar(50),
    DEGREE_CD varchar(25),
    ACCEPT_PATIENTS_IND varchar(25),
    LOCATION_STATUS_CD varchar(25),
    SOURCE_TYPE_CD varchar(25),
    CRED_STATUS_CD varchar(25)
);


CREATE TABLE masterdata.alteryx_input
(
    id int,
    CentroidX numeric(37,15),
    CentroidY numeric(37,15)
);


CREATE TABLE click.main_fact
(
    click_date date,
    cust_name varchar(100),
    cust_email varchar(100),
    cust_age int,
    cust_sex varchar(5),
    cust_num int,
    cust_city varchar(50),
    cust_state varchar(50),
    cust_country varchar(25),
    site_url varchar(200),
    search_key varchar(50),
    search_engine varchar(50),
    clicks int
);


CREATE TABLE drug.blah
(
    id int,
    drug_name varchar(50)
);


CREATE TABLE drug.ctrx2_src
(
    man varchar(100),
    ncd int,
    ""desc"" varchar(750),
    date_market date,
    wac_intro numeric(37,15),
    patient_ct varchar(25),
    break varchar(25),
    acq_date date,
    acq_price numeric(25,0),
    acq_indicator varchar(25)
);




CREATE TABLE commodity.daily_futures
(
    future_crb varchar(10),
    contract_mnt varchar(10),
    price_date date,
    opening_price numeric(37,15),
    high_price numeric(37,15),
    low_price numeric(37,15),
    close_price numeric(37,15),
    volume int,
    rec int
);


CREATE TABLE commodity.daily_futures_src
(
    future_crb varchar(10),
    contract_mnt varchar(10),
    price_date varchar(20),
    opening_price varchar(20),
    high_price varchar(20),
    low_price varchar(20),
    close_price varchar(20),
    volume varchar(20)
);


CREATE TABLE logistics.test
(
    id int,
    descr varchar(20)
);


CREATE TABLE logistics.timetable
(
    nr int,
    i1_legid int,
    i1_rcs_p int,
    i1_rcs_e int,
    i1_dep_1_p int,
    i1_dep_1_e int,
    i1_dep_1_place int,
    i1_rcf_1_p int,
    i1_rcf_1_e int,
    i1_rcf_1_place int,
    i1_dep_2_p varchar(25),
    i1_dep_2_e varchar(25),
    i1_dep_2_place varchar(25),
    i1_rcf_2_p varchar(25),
    i1_rcf_2_e varchar(25),
    i1_rcf_2_place varchar(25),
    i1_dep_3_p varchar(25),
    i1_dep_3_e varchar(25),
    i1_dep_3_place varchar(25),
    i1_rcf_3_p varchar(25),
    i1_rcf_3_e varchar(25),
    i1_rcf_3_place varchar(25),
    i1_dlv_p int,
    i1_dlv_e int,
    i1_hops int,
    i2_legid varchar(25),
    i2_rcs_p varchar(25),
    i2_rcs_e varchar(25),
    i2_dep_1_p varchar(25),
    i2_dep_1_e varchar(25),
    i2_dep_1_place varchar(25),
    i2_rcf_1_p varchar(25),
    i2_rcf_1_e varchar(25),
    i2_rcf_1_place varchar(25),
    i2_dep_2_p varchar(25),
    i2_dep_2_e varchar(25),
    i2_dep_2_place varchar(25),
    i2_rcf_2_p varchar(25),
    i2_rcf_2_e varchar(25),
    i2_rcf_2_place varchar(25),
    i2_dep_3_p varchar(25),
    i2_dep_3_e varchar(25),
    i2_dep_3_place varchar(25),
    i2_rcf_3_p varchar(25),
    i2_rcf_3_e varchar(25),
    i2_rcf_3_place varchar(25),
    i2_dlv_p varchar(25),
    i2_dlv_e varchar(25),
    i2_hops varchar(25),
    i3_legid varchar(25),
    i3_rcs_p varchar(25),
    i3_rcs_e varchar(25),
    i3_dep_1_p varchar(25),
    i3_dep_1_e varchar(25),
    i3_dep_1_place varchar(25),
    i3_rcf_1_p varchar(25),
    i3_rcf_1_e varchar(25),
    i3_rcf_1_place varchar(25),
    i3_dep_2_p varchar(25),
    i3_dep_2_e varchar(25),
    i3_dep_2_place varchar(25),
    i3_rcf_2_p varchar(25),
    i3_rcf_2_e varchar(25),
    i3_rcf_2_place varchar(25),
    i3_dep_3_p varchar(25),
    i3_dep_3_e varchar(25),
    i3_dep_3_place varchar(25),
    i3_rcf_3_p varchar(25),
    i3_rcf_3_e varchar(25),
    i3_rcf_3_place varchar(25),
    i3_dlv_p varchar(25),
    i3_dlv_e varchar(25),
    i3_hops varchar(25),
    o_legid int,
    o_rcs_p int,
    o_rcs_e int,
    o_dep_1_p int,
    o_dep_1_e int,
    o_dep_1_place int,
    o_rcf_1_p int,
    o_rcf_1_e int,
    o_rcf_1_place int,
    o_dep_2_p varchar(25),
    o_dep_2_e varchar(25),
    o_dep_2_place varchar(25),
    o_rcf_2_p varchar(25),
    o_rcf_2_e varchar(25),
    o_rcf_2_place varchar(25),
    o_dep_3_p varchar(25),
    o_dep_3_e varchar(25),
    o_dep_3_place varchar(25),
    o_rcf_3_p varchar(25),
    o_rcf_3_e varchar(25),
    o_rcf_3_place varchar(25),
    o_dlv_p int,
    o_dlv_e int,
    o_hops int,
    legs int
);


CREATE TABLE cortex.flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.og_flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.for_mike
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.iata_xref
(
    id int,
    src varchar(25),
    dest varchar(25)
);


CREATE TABLE cortex.new_flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(95),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(25),
    departure_country varchar(20),
    arrival_port varchar(25),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE atlas.cust_dim_vpy_src
(
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group int,
    zip_code int
);


CREATE TABLE migration.target_grants
(
    id int,
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);



CREATE TABLE migration.target_grants_src
(
    id int,
    script varchar(500)
);


CREATE TABLE migration.source_schemas
(
    table_schema varchar(128),
    table_name varchar(128),
    is_partitioned boolean,
    row_count int,
    partition_expression varchar(8192),
    export_type varchar(20)
);


CREATE TABLE beer.events_by_user
(
    user_id varchar(50),
    earliest_beer_opened_time timestamptz,
    latest_beer_opened_time timestamptz,
    total_beers_opened int
);


CREATE TABLE cyclist.trip_data_2021_src
(
    ride_id varchar(20) NOT NULL,
    rideable_type varchar(20) NOT NULL,
    started_at timestamp NOT NULL,
    ride_length time NOT NULL,
    day_of_week varchar(10) NOT NULL,
    member_casual varchar(10) NOT NULL
);


CREATE TABLE segment.online_sales
(
    InvoiceNo varchar(20),
    StockCode varchar(10),
    Description varchar(50),
    Quantity int,
    InvoiceDate varchar(20),
    UnitPrice numeric(37,15),
    CustomerID int,
    Country varchar(20)
);


CREATE TABLE public.iris
(
    Id int,
    SepalLengthCm numeric(5,2),
    SepalWidthCm numeric(5,2),
    PetalLengthCm numeric(5,2),
    PetalWidthCm numeric(5,2),
    Species varchar(30)
);


CREATE TABLE public.online_retail
(
    InvoiceNo varchar(20),
    StockCode varchar(24),
    Description varchar(70),
    Quantity int,
    InvoiceDate timestamp,
    UnitPrice numeric(10,4),
    CustomerID int,
    Country varchar(40)
);


CREATE TABLE segment.retail
(
    InvoiceNo varchar(100),
    StockCode varchar(20),
    Description varchar(76),
    Quantity int,
    InvoiceDate timestamp,
    UnitPrice float,
    CustomerID varchar(20),
    Country varchar(40)
);


CREATE TABLE migration.data_exports
(
    id int,
    rowcnt int,
    schema_nm varchar(50),
    table_nm varchar(75),
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);


CREATE SCHEMA ehr;
CREATE SCHEMA survey;
CREATE SCHEMA masterdata;
CREATE SCHEMA beer;
CREATE SCHEMA atlas;
CREATE SCHEMA brdbeer;
CREATE SCHEMA aetna;
CREATE SCHEMA click;
CREATE SCHEMA drug;
CREATE SCHEMA cops;
CREATE SCHEMA commodity;
CREATE SCHEMA logistics;
CREATE SCHEMA cortex;
CREATE SCHEMA migration;
CREATE SCHEMA raw;
CREATE SCHEMA cyclist;
CREATE SCHEMA segment;

CREATE SEQUENCE beer.country_id  CACHE      1 ;

CREATE TABLE ehr.accounts_src
(
    primary_icd_diagnosis_code varchar(50),
    admit_icd_diangosis_code varchar(50),
    hospital_account_id varchar(50),
    primary_icd_procedure_code varchar(50),
    primary_payor_id varchar(50),
    total_account_balance varchar(50),
    total_account_adjustment varchar(50),
    total_account_charge varchar(50),
    total_account_payment varchar(50),
    hrrp_condition varchar(50)
);


CREATE TABLE ehr.departments_src
(
    department_name varchar(50),
    department_id varchar(50),
    hospital_id varchar(50),
    specialty_description varchar(50)
);


CREATE TABLE ehr.encounters_src
(
    master_patient_id varchar(50),
    patient_encounter_id varchar(50),
    patient_admission_datetime varchar(50),
    patient_los varchar(50),
    patient_los_bucket varchar(50),
    patient_los_bucket_sort varchar(50),
    admitting_provider_id varchar(50),
    discharging_provider_id varchar(50),
    attending_provider_id_ varchar(50),
    patient_discharge_datetime varchar(50),
    department_id varchar(50),
    hospital_account_id varchar(50),
    patient_inicu_flag varchar(50),
    patient_admitted_flag varchar(50),
    patient_readmission_flag varchar(50),
    patient_inpatient_readmission_flag varchar(50)
);


CREATE TABLE ehr.patients_src
(
    master_patient_id varchar(50),
    patient_address_number varchar(50),
    patient_address_street varchar(50),
    patient_address_full varchar(50),
    patient_city varchar(50),
    patient_zip_code varchar(50),
    patient_county varchar(50),
    patient_state varchar(50),
    patient_country varchar(50),
    patient_latitude varchar(50),
    patient_longitude varchar(50),
    patient_name varchar(50),
    patient_gender varchar(50),
    patient_lace_score varchar(50),
    patient_geography_loaded varchar(50),
    patient_dob varchar(50),
    patient_marital_status varchar(50),
    patient_primary_language varchar(50),
    patient_is_citizen_flag varchar(50),
    patient_is_deceased_flag varchar(50),
    patient_pcp_type varchar(50),
    patient_pcp_id varchar(50),
    patient_ethnicity varchar(50)
);


CREATE TABLE ehr.hospitals_src
(
    hospital_id varchar(50),
    hospital_name varchar(50),
    hospital_address_number varchar(50),
    hospital_address_street varchar(50),
    hospital_address_full varchar(50),
    hospital_city varchar(50),
    hospital_zip_code varchar(50),
    hospital_county varchar(50),
    hospital_state varchar(50),
    hospital_country varchar(50),
    hospital_latitude varchar(50),
    hospital_longitude varchar(50)
);


CREATE TABLE ehr.drugs
(
    manufacturer_name varchar(50),
    ndc_number varchar(50),
    drug_product_description varchar(50),
    date_introduced_to_market varchar(50),
    wac_at_introduction varchar(50),
    marketing_pricing_plan_description varchar(750),
    marketing_pricing_plan_non_public_indicator varchar(50),
    estimated_number_of_patients varchar(50),
    breakthrough_therapy_indicator varchar(50),
    priority_review_indicator varchar(50),
    acquisition_date varchar(50),
    acquisition_price varchar(50),
    acquisition_price_non_public_indicator varchar(50),
    acquisition_price_comment varchar(500),
    general_comments varchar(500),
    supporting_documents varchar(500)
);


CREATE TABLE ehr.icd_nine_lkp_src
(
    dgns_cd varchar(25),
    longdesc varchar(250),
    shortdesc varchar(100),
    cd_version varchar(25),
    fyear varchar(25)
);


CREATE TABLE survey.opioid_src
(
    state_id varchar(50),
    state_name varchar(50),
    survey_year varchar(50),
    survey_month varchar(50),
    indicator varchar(50),
    data_value varchar(50),
    predicted_value varchar(50),
    percent_complete varchar(50),
    percent_pending_investigation varchar(50),
    footnote varchar(150)
);


CREATE TABLE survey.hcahps_src
(
    provider_id varchar(50),
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_city varchar(50),
    hospital_state varchar(50),
    zip_code varchar(50),
    county_name varchar(50),
    phone_number varchar(50),
    hcahps_measure_id varchar(50),
    hcahps_question varchar(50),
    hcahps_answer_description varchar(50),
    patient_survey_star_rating varchar(50),
    patient_survey_star_rating_footnote varchar(50),
    hcahps_answer_percent varchar(50),
    hcahps_answer_percent_footnote varchar(50),
    hcahps_linear_mean_value varchar(50),
    number_of_completed_surveys varchar(50),
    number_of_completed_surveys_footnote varchar(50),
    survey_response_rate_percent varchar(50),
    survey_response_rate_percent_footnote varchar(50),
    measure_start_date varchar(50),
    measure_end_date varchar(50)
);


CREATE TABLE survey.general_info_src
(
    provider_id varchar(50),
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_city varchar(50),
    hospital_state varchar(50),
    zip_code varchar(50),
    county_name varchar(50),
    phone_number varchar(50),
    hospital_type varchar(50),
    hospital_ownership varchar(50),
    emergency_services varchar(50),
    meets_criteria_for_meaningful_use_of_ehrs varchar(50),
    hospital_overall_rating varchar(50),
    hospital_overall_rating_footnote varchar(50),
    mortality_national_comparison varchar(50),
    mortality_national_comparison_footnote varchar(50),
    safety_of_care_national_comparison varchar(50),
    safety_of_care_national_comparison_footnote varchar(50),
    readmission_national_comparison varchar(50),
    readmission_national_comparison_footnote varchar(50),
    patient_experience_national_comparison varchar(50),
    patient_experience_national_comparison_footnote varchar(50),
    effectiveness_of_care_national_comparison varchar(50),
    effectiveness_of_care_national_comparison_footnote varchar(50),
    timeliness_of_care_national_comparison varchar(50),
    timeliness_of_care_national_comparison_footnote varchar(50),
    efficient_use_of_medical_imaging_national_comparison varchar(50),
    efficient_use_of_medical_imaging_national_comparison_footnote varchar(50)
);


CREATE TABLE masterdata.places_src
(
    usps varchar(10),
    geo_id varchar(10),
    ansi_code varchar(10),
    place_name varchar(100),
    lsad varchar(10),
    funcstat varchar(10),
    land_area numeric(37,15),
    water_area numeric(37,15),
    aland_sqmi numeric(37,15),
    awater_sqmi numeric(37,15),
    intpt_lat numeric(37,15),
    intp_long numeric(37,15)
);


CREATE TABLE masterdata.names_01_src
(
    first_name varchar(25),
    last_name varchar(25)
);


CREATE TABLE masterdata.alphabet_lkp
(
    id int,
    letter varchar(5)
);


CREATE TABLE masterdata.lsad_lkp
(
    lsad_id varchar(5),
    lsad_type varchar(50),
    lsad_desc varchar(500)
);


CREATE TABLE masterdata.funcstat_lkp
(
    funcstat_code varchar(5),
    funcstat_desc varchar(150),
    funcstat_entity varchar(1200)
);


CREATE TABLE beer.events
(
    beer_event_id varchar(80),
    drinking_session_id varchar(80),
    user_id varchar(80),
    beer varchar(80),
    schmooziest_buzzword varchar(80),
    best_thing_said varchar(80),
    worst_thing_said varchar(80),
    drunken_babble varchar(80),
    likes int,
    beer_opened_time timestamp
);


CREATE TABLE beer.adj_drinkers
(
    id int,
    user_id char(32),
    first_name varchar(32),
    last_name varchar(32),
    company varchar(64),
    school varchar(128),
    superhero_power varchar(64),
    good_tipper boolean,
    favorite_instrument varchar(64),
    zipcode char(5)
);


CREATE TABLE beer.drinkers
(
    id int,
    user_id char(32),
    first_name varchar(32),
    last_name varchar(32),
    company varchar(64),
    school varchar(128),
    superhero_power varchar(64),
    good_tipper boolean,
    favorite_instrument varchar(64),
    zip_code char(5)
);


CREATE TABLE beer.beer_type
(
    Beer varchar(50),
    beer_type varchar(25),
    alcohol numeric(25,0)
);


CREATE TABLE beer.beer_hours
(
    beer_opened_time timestamp,
    beer_hour numeric(36,0)
);


CREATE TABLE beer.zipcode
(
    zipcode char(5),
    Place_Name varchar(50),
    State varchar(25),
    State_Abbreviation varchar(5),
    County varchar(50),
    Latitude varchar(10),
    Longitude varchar(10)
);


CREATE TABLE beer.zsharp
(
    bad_code char(5),
    key varchar(5),
    good_code char(5)
);


CREATE TABLE atlas.mock_dealer
(
    old_name varchar(50),
    new_name varchar(50)
);


CREATE TABLE atlas.arrivals_src
(
    vin varchar(50),
    arrivals_count int,
    region_key int,
    port_key int,
    date_key varchar(20),
    config_key int
);


CREATE TABLE atlas.control
(
    source_file_id int,
    source_key varchar(20),
    source_file_name varchar(1024),
    source_system varchar(255),
    sourc_file_run_date date,
    message varchar(255),
    file_size varchar(20),
    data_from_ts timestamp,
    data_to_ts timestamp,
    job_start_ts timestamp,
    job_end_ts timestamp,
    update_ts timestamp
);


CREATE TABLE atlas.cust_dim_src
(
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip_code varchar(20)
);


CREATE TABLE atlas.cust_dim
(
    source_file_id int,
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip_code varchar(20),
    file_size varchar(20),
    pii_link int,
    has_pii boolean
);


CREATE TABLE atlas.cust_sales_src
(
    vin varchar(50),
    region varchar(255),
    count numeric(37,15),
    dealer int,
    sale_date varchar(255),
    vehicle int,
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group varchar(20),
    zip varchar(20)
);


CREATE TABLE atlas.date_dim_src
(
    date timestamp,
    date_key varchar(10),
    day_of_week_number int,
    day_of_year_number numeric(37,15),
    week_of_year_number numeric(37,15),
    quarter_number numeric(37,15),
    ten_day_period_number numeric(37,15),
    sales_days int,
    sales_month_date varchar(10),
    end_of_calendar_month_indic varchar(1),
    holiday_indic varchar(1),
    ten_day_period_end_indic varchar(1),
    shipments_month_end_indic varchar(1)
);


CREATE TABLE atlas.dealer_dim_src
(
    dealer_id int,
    dealer_name varchar(50),
    address_line_1 varchar(50),
    address_line_2 varchar(50),
    city_name varchar(50),
    po_box_number varchar(50),
    state_code varchar(5),
    zip_code varchar(10),
    area_code varchar(5),
    telephone_number varchar(10),
    region_name varchar(50),
    district_name varchar(50),
    metro_area_name varchar(50),
    metro_area_abbrev_name varchar(20),
    area_of_dom_influence_name varchar(50),
    adi_abbrev_name varchar(20),
    adi_us_population_percent numeric(37,15),
    pma_number varchar(20),
    salesperson_count int,
    new_car_storage_count int
);


CREATE TABLE atlas.big_report
(
    vin varchar(50),
    region_key int,
    sales_count int,
    date_key varchar(10),
    zip varchar(20),
    income_group varchar(20),
    cust_type_desc varchar(10),
    gender varchar(14),
    income varchar(14),
    dealer_name varchar(50),
    dealer_city varchar(50),
    dealer_state varchar(5),
    dealer_zip varchar(10),
    dealer_area_code varchar(5),
    region_name varchar(50),
    district_name varchar(50),
    metro_area_name varchar(50),
    metro_area_abbrev_name varchar(20),
    area_of_dom_influence_name varchar(50),
    adi_abbrev_name varchar(20),
    adi_us_population_percent numeric(37,15),
    pma_number varchar(20),
    salesperson_count int,
    new_car_storage_count int,
    model_year int,
    body_model_code varchar(5),
    body_model_name varchar(50),
    price_line_code varchar(10),
    price_line_name varchar(46),
    emissions_catg_code varchar(10),
    emissions_catg_name varchar(16),
    engine_code varchar(5),
    engine_name varchar(20),
    ext_color_code varchar(10),
    ext_color_name varchar(50),
    k_model_number varchar(22),
    interior_trim_id int,
    interior_trim_color varchar(50),
    transmission_type_code varchar(10),
    transmission_type_name varchar(50),
    factory_op_group_code varchar(10)
);


CREATE TABLE atlas.date_dim
(
    date timestamp,
    date_key varchar(10),
    day_of_week_number int,
    day_of_year_number numeric(37,15),
    week_of_year_number numeric(37,15),
    quarter_number numeric(37,15),
    ten_day_period_number numeric(37,15),
    sales_days int,
    sales_month_date varchar(10),
    end_of_calendar_month_indic varchar(1),
    holiday_indic varchar(1),
    ten_day_period_end_indic varchar(1),
    shipments_month_end_indic varchar(1)
);


CREATE TABLE atlas.port_dim
(
    port_id int,
    port_name varchar(30),
    shipping_route_code varchar(1)
);


CREATE TABLE atlas.region_dim
(
    region_key int,
    org_unit_code varchar(10),
    region_name varchar(50)
);


CREATE TABLE atlas.sales
(
    vin varchar(255),
    region varchar(255),
    sales_count int,
    f4 int,
    sales_date date,
    f6 int,
    f7 int,
    f8 varchar(50),
    f9 varchar(50),
    f10 varchar(50),
    f11 varchar(50)
);


CREATE TABLE atlas.sales_fact
(
    vin varchar(50),
    sales_count int,
    region_key int,
    dealer_id int,
    date_key varchar(10),
    config_key int,
    cust_id int
);


CREATE TABLE atlas.vehicle_config
(
    config_key int,
    model_year int,
    body_model_code varchar(5),
    body_model_name varchar(36),
    price_line_code varchar(3),
    price_line_name varchar(46),
    emissions_catg_code varchar(4),
    emissions_catg_name varchar(16),
    engine_code varchar(5),
    engine_name varchar(41),
    ext_color_code varchar(4),
    ext_color_name varchar(36),
    k_model_number varchar(22),
    interior_trim_id int,
    interior_trim_color varchar(36),
    transmission_type_code varchar(4),
    transmission_type_name varchar(36),
    factory_op_group_code varchar(4)
);


CREATE TABLE atlas.zip_code_lkp
(
    zip_code varchar(10),
    latitude numeric(37,15),
    longitude numeric(37,15),
    city varchar(50),
    state varchar(50),
    county varchar(50)
);


CREATE TABLE brdbeer.user_agent
(
    id int,
    agent varchar(25),
    agent_version varchar(10),
    os varchar(25),
    os_type varchar(10),
    lang varchar(10)
);


CREATE TABLE brdbeer.page_dimension
(
    id int,
    full_url varchar(100),
    section varchar(50),
    origination varchar(25)
);


CREATE TABLE brdbeer.session_dim
(
    id int,
    session_start varchar(10),
    session_end varchar(10),
    session_time int,
    first_ip varchar(25),
    second_ip varchar(25)
);


CREATE TABLE aetna.provider_base
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp NOT NULL,
    MAILING_CYCLE varchar(2) NOT NULL,
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL
);


CREATE TABLE aetna.specialty
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    PRVDR_CERT_YEAR int,
    SPEC_NM varchar(60) NOT NULL,
    BOARD_STS_CD varchar(15),
    MAILING_CYCLE varchar(2) NOT NULL,
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL,
    MAILING_DT timestamp NOT NULL
);


CREATE TABLE aetna.address
(
    PRVDR_ID int NOT NULL,
    TAX_ID_NO varchar(12) NOT NULL,
    ADDR_NO varchar(40) NOT NULL,
    MAILING_CYCLE varchar(2) NOT NULL,
    ACCEPT_PATIENTS_IND char(1),
    LOC_STS_CD varchar(4),
    STRADD1_TXT varchar(40),
    STRADDR2_TXT varchar(40),
    CITY_NM varchar(24),
    STATE_CD varchar(2),
    ZIP_CD varchar(5),
    PHONE_NO varchar(20),
    FAX_NO varchar(20),
    MODIFIED_DT timestamp NOT NULL,
    MODIFIED_USER_ID varchar(7) NOT NULL,
    MAILING_DT timestamp NOT NULL,
    NPI_NO varchar(300)
);


CREATE TABLE aetna.provider_base_src
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp,
    MAILING_CYCLE varchar(2),
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7)
);


CREATE TABLE aetna.specialty_int
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    PRVDR_CERT_YEAR int,
    SPEC_NM varchar(14),
    BOARD_STS_CD varchar(1),
    MAILING_CYCLE varchar(2),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7),
    MAILING_DT timestamp,
    update_flag boolean
);


CREATE TABLE aetna.address_int
(
    prvdr_id int,
    tax_id_no varchar(12),
    addr_no varchar(4),
    mailing_cycle varchar(2),
    accept_patients_ind char(1),
    loc_sts_cd varchar(1),
    stradd1_txt varchar(1),
    stradd2_stx varchar(1),
    city_nm varchar(1),
    state_cd varchar(1),
    zip_cd varchar(1),
    phone_no varchar(1),
    fax_no varchar(1),
    modified_dt timestamp,
    modified_user_id varchar(7),
    MAILING_DT timestamp,
    NPI_NO varchar(1),
    update_flag boolean
);


CREATE TABLE aetna.provider_base_dup
(
    PRVDR_ID int,
    TAX_ID_NO varchar(12),
    TAXID_FORMAT_CD char(1),
    MASKED_TAX_ID varchar(12),
    STATE_CD varchar(2),
    EXCLUDE_TIN_POIN_FLAG char(1),
    MAILING_DT timestamp,
    MAILING_CYCLE varchar(2),
    PRINT_DIR_FLAG char(1),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(40),
    SALUTATION_TXT varchar(4),
    base_RANK varchar(4),
    BUSINESS_UNIT_CD varchar(3),
    CATEGORY varchar(2),
    PRVDR_TYPE_CD varchar(3),
    PRVDR_TYPE_DESC varchar(60),
    DEGREE_CD varchar(5),
    ACCEPT_PATIENTS_IND char(1),
    LOCATION_STATUS_CD varchar(4),
    SOURCE_TYPE_CD char(1),
    CRED_STATUS_CD char(1),
    MODIFIED_DT timestamp,
    MODIFIED_USER_ID varchar(7)
);


CREATE TABLE aetna.provider_loc_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    ADDR_NO int,
    MAILING_CYCLE int,
    ACCEPT_PATIENTS_IND varchar(25),
    LOC_STS_CD varchar(25),
    STRADD1_TXT varchar(25),
    STRADDR2_TXT varchar(25),
    CITY_NM varchar(25),
    STATE_CD varchar(25),
    ZIP_CD int,
    PHONE_NO int,
    FAX_NO int
);


CREATE TABLE aetna.provider_specialty_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    PRVDR_CERT_YEAR varchar(25),
    SPEC_NM varchar(100),
    BOARD_STS_CD varchar(25)
);


CREATE TABLE aetna.provider_specialty_db2_src
(
    PRVDR_ID_NO int,
    RPRVSPC_CRTFCTN_YR int,
    SPCLT_NM varchar(100),
    RPNP_PRCTC_ROLE_NM varchar(25),
    NTWK_ID_NO int
);


CREATE TABLE aetna.provider_base_db2_src
(
    PRVDR_ID_NO int,
    NTWK_ID_NO int,
    INPD_FIRST_NM varchar(25),
    INPD_MIDDLE_NM varchar(25),
    INPD_LAST_NM varchar(25),
    INPD_RANK_ABR varchar(25),
    INPD_SALTN_ABR varchar(25),
    RIP_PRVDR_TYPE_CD varchar(25),
    RIP_PTYP_DSCRP_TXT varchar(50),
    MNT_BY_BUS_UNIT_CD varchar(25),
    DGRE_CD varchar(25),
    ADDR_NO int,
    RMBRCP_TXIDFRMT_CD varchar(25),
    RMBRCP_TAXID_NO int,
    MASKED_TAXID_NO varchar(25),
    RPNSL_ACPT_PTNT_CD varchar(25),
    NTLOC_STS_CD varchar(25),
    ADDRD_STRA1LN_TXT varchar(25),
    ADDRD_STRA2LN_TXT varchar(25),
    ADDRD_STRACITY_NM varchar(25),
    ADDRD_STRASTSH_ABR varchar(25),
    RPSL_STRAZIP_CD int,
    PRVSL_PRMRYPHNE_NO int,
    PRVSL_FAX_NO int,
    CRDSRC_TY_CD varchar(25),
    PRVCRD_STS_CD varchar(25)
);


CREATE TABLE aetna.provider_base_sql_src
(
    PRVDR_ID int,
    TAX_ID_NO int,
    TAXID_FORMAT_CD varchar(25),
    STATE_CD varchar(25),
    FIRST_NM varchar(25),
    MIDDLE_NM varchar(25),
    LAST_NM varchar(25),
    SALUTATION_TXT varchar(25),
    RANK varchar(25),
    BUSINESS_UNIT_CD varchar(25),
    CATEGORY int,
    PRVDR_TYPE_CD varchar(25),
    PRVDR_TYPE_DESC varchar(50),
    DEGREE_CD varchar(25),
    ACCEPT_PATIENTS_IND varchar(25),
    LOCATION_STATUS_CD varchar(25),
    SOURCE_TYPE_CD varchar(25),
    CRED_STATUS_CD varchar(25)
);


CREATE TABLE masterdata.alteryx_input
(
    id int,
    CentroidX numeric(37,15),
    CentroidY numeric(37,15)
);


CREATE TABLE click.main_fact
(
    click_date date,
    cust_name varchar(100),
    cust_email varchar(100),
    cust_age int,
    cust_sex varchar(5),
    cust_num int,
    cust_city varchar(50),
    cust_state varchar(50),
    cust_country varchar(25),
    site_url varchar(200),
    search_key varchar(50),
    search_engine varchar(50),
    clicks int
);


CREATE TABLE drug.blah
(
    id int,
    drug_name varchar(50)
);


CREATE TABLE drug.ctrx2_src
(
    man varchar(100),
    ncd int,
    ""desc"" varchar(750),
    date_market date,
    wac_intro numeric(37,15),
    patient_ct varchar(25),
    break varchar(25),
    acq_date date,
    acq_price numeric(25,0),
    acq_indicator varchar(25)
);


CREATE FLEX TABLE cops.event_flx
(

);


CREATE FLEX TABLE public.cop_events
(

);


CREATE TABLE commodity.daily_futures
(
    future_crb varchar(10),
    contract_mnt varchar(10),
    price_date date,
    opening_price numeric(37,15),
    high_price numeric(37,15),
    low_price numeric(37,15),
    close_price numeric(37,15),
    volume int,
    rec int
);


CREATE TABLE commodity.daily_futures_src
(
    future_crb varchar(10),
    contract_mnt varchar(10),
    price_date varchar(20),
    opening_price varchar(20),
    high_price varchar(20),
    low_price varchar(20),
    close_price varchar(20),
    volume varchar(20)
);


CREATE TABLE logistics.test
(
    id int,
    descr varchar(20)
);


CREATE TABLE logistics.timetable
(
    nr int,
    i1_legid int,
    i1_rcs_p int,
    i1_rcs_e int,
    i1_dep_1_p int,
    i1_dep_1_e int,
    i1_dep_1_place int,
    i1_rcf_1_p int,
    i1_rcf_1_e int,
    i1_rcf_1_place int,
    i1_dep_2_p varchar(25),
    i1_dep_2_e varchar(25),
    i1_dep_2_place varchar(25),
    i1_rcf_2_p varchar(25),
    i1_rcf_2_e varchar(25),
    i1_rcf_2_place varchar(25),
    i1_dep_3_p varchar(25),
    i1_dep_3_e varchar(25),
    i1_dep_3_place varchar(25),
    i1_rcf_3_p varchar(25),
    i1_rcf_3_e varchar(25),
    i1_rcf_3_place varchar(25),
    i1_dlv_p int,
    i1_dlv_e int,
    i1_hops int,
    i2_legid varchar(25),
    i2_rcs_p varchar(25),
    i2_rcs_e varchar(25),
    i2_dep_1_p varchar(25),
    i2_dep_1_e varchar(25),
    i2_dep_1_place varchar(25),
    i2_rcf_1_p varchar(25),
    i2_rcf_1_e varchar(25),
    i2_rcf_1_place varchar(25),
    i2_dep_2_p varchar(25),
    i2_dep_2_e varchar(25),
    i2_dep_2_place varchar(25),
    i2_rcf_2_p varchar(25),
    i2_rcf_2_e varchar(25),
    i2_rcf_2_place varchar(25),
    i2_dep_3_p varchar(25),
    i2_dep_3_e varchar(25),
    i2_dep_3_place varchar(25),
    i2_rcf_3_p varchar(25),
    i2_rcf_3_e varchar(25),
    i2_rcf_3_place varchar(25),
    i2_dlv_p varchar(25),
    i2_dlv_e varchar(25),
    i2_hops varchar(25),
    i3_legid varchar(25),
    i3_rcs_p varchar(25),
    i3_rcs_e varchar(25),
    i3_dep_1_p varchar(25),
    i3_dep_1_e varchar(25),
    i3_dep_1_place varchar(25),
    i3_rcf_1_p varchar(25),
    i3_rcf_1_e varchar(25),
    i3_rcf_1_place varchar(25),
    i3_dep_2_p varchar(25),
    i3_dep_2_e varchar(25),
    i3_dep_2_place varchar(25),
    i3_rcf_2_p varchar(25),
    i3_rcf_2_e varchar(25),
    i3_rcf_2_place varchar(25),
    i3_dep_3_p varchar(25),
    i3_dep_3_e varchar(25),
    i3_dep_3_place varchar(25),
    i3_rcf_3_p varchar(25),
    i3_rcf_3_e varchar(25),
    i3_rcf_3_place varchar(25),
    i3_dlv_p varchar(25),
    i3_dlv_e varchar(25),
    i3_hops varchar(25),
    o_legid int,
    o_rcs_p int,
    o_rcs_e int,
    o_dep_1_p int,
    o_dep_1_e int,
    o_dep_1_place int,
    o_rcf_1_p int,
    o_rcf_1_e int,
    o_rcf_1_place int,
    o_dep_2_p varchar(25),
    o_dep_2_e varchar(25),
    o_dep_2_place varchar(25),
    o_rcf_2_p varchar(25),
    o_rcf_2_e varchar(25),
    o_rcf_2_place varchar(25),
    o_dep_3_p varchar(25),
    o_dep_3_e varchar(25),
    o_dep_3_place varchar(25),
    o_rcf_3_p varchar(25),
    o_rcf_3_e varchar(25),
    o_rcf_3_place varchar(25),
    o_dlv_p int,
    o_dlv_e int,
    o_hops int,
    legs int
);


CREATE TABLE cortex.flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.og_flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.for_mike
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(42),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(20),
    departure_country varchar(20),
    arrival_port varchar(20),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE cortex.iata_xref
(
    id int,
    src varchar(25),
    dest varchar(25)
);


CREATE TABLE cortex.new_flight
(
    batch_id int,
    source_file_id int,
    flight_leg_id varchar(95),
    FLIGHT_LEG_INDEX int,
    origin_date_utc date,
    airline varchar(20),
    airline2 varchar(20),
    Aircraft_Registration varchar(20),
    flight_number int,
    domain varchar(26),
    departure_sequent int,
    flight_status varchar(20),
    departure_port varchar(25),
    departure_country varchar(20),
    arrival_port varchar(25),
    arrival_country varchar(20),
    departure_schedule timestamp,
    departure_schedule_local timestamp,
    departure_schedule_date_local date,
    departure_schedule_utc timestamp,
    departure_schedule_date_utc date,
    arrival_schedule timestamp,
    arrival_schedule_local timestamp,
    arrival_schedule_date_local date,
    arrival_schedule_utc timestamp,
    arrival_schedule_date_utc date,
    updated_ts timestamp,
    Service_Type varchar(20),
    Origin_Date_Sequent int,
    Origin_Date_Local date,
    Operation_Type varchar(20),
    Operation_Domain varchar(26),
    Aircraft_Type varchar(20),
    Aircraft_Group int,
    OnBlocks_Qualifier varchar(20),
    OnBlocks_Time_Local timestamp,
    OnBlocks_Time_UTC timestamp,
    OffBlocks_Qualifier varchar(20),
    OffBlocks_Time_Local timestamp,
    OffBlocks_Time_UTC timestamp,
    row_id int,
    departure_boarding_gate int,
    departure_terminal varchar(20),
    arrival_boarding_gate int,
    arrival_terminal varchar(20)
);


CREATE TABLE atlas.cust_dim_vpy_src
(
    cust_id int,
    cust_type varchar(20),
    gender varchar(20),
    income_group int,
    zip_code int
);


CREATE TABLE migration.target_grants
(
    id int,
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);


CREATE MANAGED EXTERNAL TABLE migration.grants_rejects
(
    node_name varchar(256),
    file_name varchar(4096),
    session_id varchar(64),
    transaction_id int,
    statement_id int,
    batch_number int,
    row_number int,
    rejected_data varchar(65000),
    rejected_data_orig_length int,
    rejected_reason varchar(65000)
)
 AS 
COPY FROM '/vertica/data/vaasdemo/v_vaasdemo_node0001_data/RejectionTableData/TABLE_REJECTED_RECORDS_""migration"".""grants_rejects""*' ON ""v_vaasdemo_node0001"", '/vertica/data/vaasdemo/v_vaasdemo_node0002_data/RejectionTableData/TABLE_REJECTED_RECORDS_""migration"".""grants_rejects""*' ON ""v_vaasdemo_node0002"", '/vertica/data/vaasdemo/v_vaasdemo_node0003_data/RejectionTableData/TABLE_REJECTED_RECORDS_""migration"".""grants_rejects""*' ON ""v_vaasdemo_node0003"";


CREATE TABLE migration.target_grants_src
(
    id int,
    script varchar(500)
);


CREATE TABLE migration.source_schemas
(
    table_schema varchar(128),
    table_name varchar(128),
    is_partitioned boolean,
    row_count int,
    partition_expression varchar(8192),
    export_type varchar(20)
);


CREATE TABLE beer.events_by_user
(
    user_id varchar(50),
    earliest_beer_opened_time timestamptz,
    latest_beer_opened_time timestamptz,
    total_beers_opened int
);


CREATE TABLE cyclist.trip_data_2021_src
(
    ride_id varchar(20) NOT NULL,
    rideable_type varchar(20) NOT NULL,
    started_at timestamp NOT NULL,
    ride_length time NOT NULL,
    day_of_week varchar(10) NOT NULL,
    member_casual varchar(10) NOT NULL
);


CREATE TABLE segment.online_sales
(
    InvoiceNo varchar(20),
    StockCode varchar(10),
    Description varchar(50),
    Quantity int,
    InvoiceDate varchar(20),
    UnitPrice numeric(37,15),
    CustomerID int,
    Country varchar(20)
);


CREATE TABLE public.iris
(
    Id int,
    SepalLengthCm numeric(5,2),
    SepalWidthCm numeric(5,2),
    PetalLengthCm numeric(5,2),
    PetalWidthCm numeric(5,2),
    Species varchar(30)
);


CREATE TABLE public.online_retail
(
    InvoiceNo varchar(20),
    StockCode varchar(24),
    Description varchar(70),
    Quantity int,
    InvoiceDate timestamp,
    UnitPrice numeric(10,4),
    CustomerID int,
    Country varchar(40)
);


CREATE TABLE segment.retail
(
    InvoiceNo varchar(100),
    StockCode varchar(20),
    Description varchar(76),
    Quantity int,
    InvoiceDate timestamp,
    UnitPrice float,
    CustomerID varchar(20),
    Country varchar(40)
);


CREATE TABLE migration.data_exports
(
    id int,
    rowcnt int,
    schema_nm varchar(50),
    table_nm varchar(75),
    script varchar(500),
    processed boolean,
    ts_run_date timestamp
);


CREATE PROJECTION ehr.accounts_src_super /*+basename(accounts_src),createtype(L)*/ 
(
 primary_icd_diagnosis_code,
 admit_icd_diangosis_code,
 hospital_account_id,
 primary_icd_procedure_code,
 primary_payor_id,
 total_account_balance,
 total_account_adjustment,
 total_account_charge,
 total_account_payment,
 hrrp_condition
)
AS
 SELECT accounts_src.primary_icd_diagnosis_code,
        accounts_src.admit_icd_diangosis_code,
        accounts_src.hospital_account_id,
        accounts_src.primary_icd_procedure_code,
        accounts_src.primary_payor_id,
        accounts_src.total_account_balance,
        accounts_src.total_account_adjustment,
        accounts_src.total_account_charge,
        accounts_src.total_account_payment,
        accounts_src.hrrp_condition
 FROM ehr.accounts_src
 ORDER BY accounts_src.primary_icd_diagnosis_code,
          accounts_src.admit_icd_diangosis_code,
          accounts_src.hospital_account_id,
          accounts_src.primary_icd_procedure_code,
          accounts_src.primary_payor_id,
          accounts_src.total_account_balance,
          accounts_src.total_account_adjustment,
          accounts_src.total_account_charge
SEGMENTED BY hash(accounts_src.primary_icd_diagnosis_code, accounts_src.admit_icd_diangosis_code, accounts_src.hospital_account_id, accounts_src.primary_icd_procedure_code, accounts_src.primary_payor_id, accounts_src.total_account_balance, accounts_src.total_account_adjustment, accounts_src.total_account_charge) ALL NODES;

CREATE PROJECTION ehr.departments_src_super /*+basename(departments_src),createtype(L)*/ 
(
 department_name,
 department_id,
 hospital_id,
 specialty_description
)
AS
 SELECT departments_src.department_name,
        departments_src.department_id,
        departments_src.hospital_id,
        departments_src.specialty_description
 FROM ehr.departments_src
 ORDER BY departments_src.department_name,
          departments_src.department_id,
          departments_src.hospital_id,
          departments_src.specialty_description
SEGMENTED BY hash(departments_src.department_name, departments_src.department_id, departments_src.hospital_id, departments_src.specialty_description) ALL NODES;

CREATE PROJECTION ehr.encounters_src_super /*+basename(encounters_src),createtype(L)*/ 
(
 master_patient_id,
 patient_encounter_id,
 patient_admission_datetime,
 patient_los,
 patient_los_bucket,
 patient_los_bucket_sort,
 admitting_provider_id,
 discharging_provider_id,
 attending_provider_id_,
 patient_discharge_datetime,
 department_id,
 hospital_account_id,
 patient_inicu_flag,
 patient_admitted_flag,
 patient_readmission_flag,
 patient_inpatient_readmission_flag
)
AS
 SELECT encounters_src.master_patient_id,
        encounters_src.patient_encounter_id,
        encounters_src.patient_admission_datetime,
        encounters_src.patient_los,
        encounters_src.patient_los_bucket,
        encounters_src.patient_los_bucket_sort,
        encounters_src.admitting_provider_id,
        encounters_src.discharging_provider_id,
        encounters_src.attending_provider_id_,
        encounters_src.patient_discharge_datetime,
        encounters_src.department_id,
        encounters_src.hospital_account_id,
        encounters_src.patient_inicu_flag,
        encounters_src.patient_admitted_flag,
        encounters_src.patient_readmission_flag,
        encounters_src.patient_inpatient_readmission_flag
 FROM ehr.encounters_src
 ORDER BY encounters_src.master_patient_id,
          encounters_src.patient_encounter_id,
          encounters_src.patient_admission_datetime,
          encounters_src.patient_los,
          encounters_src.patient_los_bucket,
          encounters_src.patient_los_bucket_sort,
          encounters_src.admitting_provider_id,
          encounters_src.discharging_provider_id
SEGMENTED BY hash(encounters_src.master_patient_id, encounters_src.patient_encounter_id, encounters_src.patient_admission_datetime, encounters_src.patient_los, encounters_src.patient_los_bucket, encounters_src.patient_los_bucket_sort, encounters_src.admitting_provider_id, encounters_src.discharging_provider_id) ALL NODES;

CREATE PROJECTION ehr.hospitals_src_super /*+basename(hospitals_src),createtype(L)*/ 
(
 hospital_id,
 hospital_name,
 hospital_address_number,
 hospital_address_street,
 hospital_address_full,
 hospital_city,
 hospital_zip_code,
 hospital_county,
 hospital_state,
 hospital_country,
 hospital_latitude,
 hospital_longitude
)
AS
 SELECT hospitals_src.hospital_id,
        hospitals_src.hospital_name,
        hospitals_src.hospital_address_number,
        hospitals_src.hospital_address_street,
        hospitals_src.hospital_address_full,
        hospitals_src.hospital_city,
        hospitals_src.hospital_zip_code,
        hospitals_src.hospital_county,
        hospitals_src.hospital_state,
        hospitals_src.hospital_country,
        hospitals_src.hospital_latitude,
        hospitals_src.hospital_longitude
 FROM ehr.hospitals_src
 ORDER BY hospitals_src.hospital_id,
          hospitals_src.hospital_name,
          hospitals_src.hospital_address_number,
          hospitals_src.hospital_address_street,
          hospitals_src.hospital_address_full,
          hospitals_src.hospital_city,
          hospitals_src.hospital_zip_code,
          hospitals_src.hospital_county
SEGMENTED BY hash(hospitals_src.hospital_id, hospitals_src.hospital_name, hospitals_src.hospital_address_number, hospitals_src.hospital_address_street, hospitals_src.hospital_address_full, hospitals_src.hospital_city, hospitals_src.hospital_zip_code, hospitals_src.hospital_county) ALL NODES;

CREATE PROJECTION ehr.patients_src_super /*+basename(patients_src),createtype(L)*/ 
(
 master_patient_id,
 patient_address_number,
 patient_address_street,
 patient_address_full,
 patient_city,
 patient_zip_code,
 patient_county,
 patient_state,
 patient_country,
 patient_latitude,
 patient_longitude,
 patient_name,
 patient_gender,
 patient_lace_score,
 patient_geography_loaded,
 patient_dob,
 patient_marital_status,
 patient_primary_language,
 patient_is_citizen_flag,
 patient_is_deceased_flag,
 patient_pcp_type,
 patient_pcp_id,
 patient_ethnicity
)
AS
 SELECT patients_src.master_patient_id,
        patients_src.patient_address_number,
        patients_src.patient_address_street,
        patients_src.patient_address_full,
        patients_src.patient_city,
        patients_src.patient_zip_code,
        patients_src.patient_county,
        patients_src.patient_state,
        patients_src.patient_country,
        patients_src.patient_latitude,
        patients_src.patient_longitude,
        patients_src.patient_name,
        patients_src.patient_gender,
        patients_src.patient_lace_score,
        patients_src.patient_geography_loaded,
        patients_src.patient_dob,
        patients_src.patient_marital_status,
        patients_src.patient_primary_language,
        patients_src.patient_is_citizen_flag,
        patients_src.patient_is_deceased_flag,
        patients_src.patient_pcp_type,
        patients_src.patient_pcp_id,
        patients_src.patient_ethnicity
 FROM ehr.patients_src
 ORDER BY patients_src.master_patient_id,
          patients_src.patient_address_number,
          patients_src.patient_address_street,
          patients_src.patient_address_full,
          patients_src.patient_city,
          patients_src.patient_zip_code,
          patients_src.patient_county,
          patients_src.patient_state
SEGMENTED BY hash(patients_src.master_patient_id, patients_src.patient_address_number, patients_src.patient_address_street, patients_src.patient_address_full, patients_src.patient_city, patients_src.patient_zip_code, patients_src.patient_county, patients_src.patient_state) ALL NODES;

CREATE PROJECTION ehr.icd_nine_lkp_src_super /*+basename(icd_nine_lkp_src),createtype(L)*/ 
(
 dgns_cd,
 longdesc,
 shortdesc,
 cd_version,
 fyear
)
AS
 SELECT icd_nine_lkp_src.dgns_cd,
        icd_nine_lkp_src.longdesc,
        icd_nine_lkp_src.shortdesc,
        icd_nine_lkp_src.cd_version,
        icd_nine_lkp_src.fyear
 FROM ehr.icd_nine_lkp_src
 ORDER BY icd_nine_lkp_src.dgns_cd,
          icd_nine_lkp_src.longdesc,
          icd_nine_lkp_src.shortdesc,
          icd_nine_lkp_src.cd_version,
          icd_nine_lkp_src.fyear
SEGMENTED BY hash(icd_nine_lkp_src.dgns_cd, icd_nine_lkp_src.cd_version, icd_nine_lkp_src.fyear, icd_nine_lkp_src.shortdesc, icd_nine_lkp_src.longdesc) ALL NODES;

CREATE PROJECTION survey.general_info_src_super /*+basename(general_info_src),createtype(L)*/ 
(
 provider_id,
 hospital_name,
 hospital_address,
 hospital_city,
 hospital_state,
 zip_code,
 county_name,
 phone_number,
 hospital_type,
 hospital_ownership,
 emergency_services,
 meets_criteria_for_meaningful_use_of_ehrs,
 hospital_overall_rating,
 hospital_overall_rating_footnote,
 mortality_national_comparison,
 mortality_national_comparison_footnote,
 safety_of_care_national_comparison,
 safety_of_care_national_comparison_footnote,
 readmission_national_comparison,
 readmission_national_comparison_footnote,
 patient_experience_national_comparison,
 patient_experience_national_comparison_footnote,
 effectiveness_of_care_national_comparison,
 effectiveness_of_care_national_comparison_footnote,
 timeliness_of_care_national_comparison,
 timeliness_of_care_national_comparison_footnote,
 efficient_use_of_medical_imaging_national_comparison,
 efficient_use_of_medical_imaging_national_comparison_footnote
)
AS
 SELECT general_info_src.provider_id,
        general_info_src.hospital_name,
        general_info_src.hospital_address,
        general_info_src.hospital_city,
        general_info_src.hospital_state,
        general_info_src.zip_code,
        general_info_src.county_name,
        general_info_src.phone_number,
        general_info_src.hospital_type,
        general_info_src.hospital_ownership,
        general_info_src.emergency_services,
        general_info_src.meets_criteria_for_meaningful_use_of_ehrs,
        general_info_src.hospital_overall_rating,
        general_info_src.hospital_overall_rating_footnote,
        general_info_src.mortality_national_comparison,
        general_info_src.mortality_national_comparison_footnote,
        general_info_src.safety_of_care_national_comparison,
        general_info_src.safety_of_care_national_comparison_footnote,
        general_info_src.readmission_national_comparison,
        general_info_src.readmission_national_comparison_footnote,
        general_info_src.patient_experience_national_comparison,
        general_info_src.patient_experience_national_comparison_footnote,
        general_info_src.effectiveness_of_care_national_comparison,
        general_info_src.effectiveness_of_care_national_comparison_footnote,
        general_info_src.timeliness_of_care_national_comparison,
        general_info_src.timeliness_of_care_national_comparison_footnote,
        general_info_src.efficient_use_of_medical_imaging_national_comparison,
        general_info_src.efficient_use_of_medical_imaging_national_comparison_footnote
 FROM survey.general_info_src
 ORDER BY general_info_src.provider_id,
          general_info_src.hospital_name,
          general_info_src.hospital_address,
          general_info_src.hospital_city,
          general_info_src.hospital_state,
          general_info_src.zip_code,
          general_info_src.county_name,
          general_info_src.phone_number
SEGMENTED BY hash(general_info_src.provider_id, general_info_src.hospital_name, general_info_src.hospital_address, general_info_src.hospital_city, general_info_src.hospital_state, general_info_src.zip_code, general_info_src.county_name, general_info_src.phone_number) ALL NODES;

CREATE PROJECTION survey.hcahps_src_super /*+basename(hcahps_src),createtype(L)*/ 
(
 provider_id,
 hospital_name,
 hospital_address,
 hospital_city,
 hospital_state,
 zip_code,
 county_name,
 phone_number,
 hcahps_measure_id,
 hcahps_question,
 hcahps_answer_description,
 patient_survey_star_rating,
 patient_survey_star_rating_footnote,
 hcahps_answer_percent,
 hcahps_answer_percent_footnote,
 hcahps_linear_mean_value,
 number_of_completed_surveys,
 number_of_completed_surveys_footnote,
 survey_response_rate_percent,
 survey_response_rate_percent_footnote,
 measure_start_date,
 measure_end_date
)
AS
 SELECT hcahps_src.provider_id,
        hcahps_src.hospital_name,
        hcahps_src.hospital_address,
        hcahps_src.hospital_city,
        hcahps_src.hospital_state,
        hcahps_src.zip_code,
        hcahps_src.county_name,
        hcahps_src.phone_number,
        hcahps_src.hcahps_measure_id,
        hcahps_src.hcahps_question,
        hcahps_src.hcahps_answer_description,
        hcahps_src.patient_survey_star_rating,
        hcahps_src.patient_survey_star_rating_footnote,
        hcahps_src.hcahps_answer_percent,
        hcahps_src.hcahps_answer_percent_footnote,
        hcahps_src.hcahps_linear_mean_value,
        hcahps_src.number_of_completed_surveys,
        hcahps_src.number_of_completed_surveys_footnote,
        hcahps_src.survey_response_rate_percent,
        hcahps_src.survey_response_rate_percent_footnote,
        hcahps_src.measure_start_date,
        hcahps_src.measure_end_date
 FROM survey.hcahps_src
 ORDER BY hcahps_src.provider_id,
          hcahps_src.hospital_name,
          hcahps_src.hospital_address,
          hcahps_src.hospital_city,
          hcahps_src.hospital_state,
          hcahps_src.zip_code,
          hcahps_src.county_name,
          hcahps_src.phone_number
SEGMENTED BY hash(hcahps_src.provider_id, hcahps_src.hospital_name, hcahps_src.hospital_address, hcahps_src.hospital_city, hcahps_src.hospital_state, hcahps_src.zip_code, hcahps_src.county_name, hcahps_src.phone_number) ALL NODES;

CREATE PROJECTION survey.opioid_src_super /*+basename(opioid_src),createtype(L)*/ 
(
 state_id,
 state_name,
 survey_year,
 survey_month,
 indicator,
 data_value,
 predicted_value,
 percent_complete,
 percent_pending_investigation,
 footnote
)
AS
 SELECT opioid_src.state_id,
        opioid_src.state_name,
        opioid_src.survey_year,
        opioid_src.survey_month,
        opioid_src.indicator,
        opioid_src.data_value,
        opioid_src.predicted_value,
        opioid_src.percent_complete,
        opioid_src.percent_pending_investigation,
        opioid_src.footnote
 FROM survey.opioid_src
 ORDER BY opioid_src.state_id,
          opioid_src.state_name,
          opioid_src.survey_year,
          opioid_src.survey_month,
          opioid_src.indicator,
          opioid_src.data_value,
          opioid_src.predicted_value,
          opioid_src.percent_complete
SEGMENTED BY hash(opioid_src.state_id, opioid_src.state_name, opioid_src.survey_year, opioid_src.survey_month, opioid_src.indicator, opioid_src.data_value, opioid_src.predicted_value, opioid_src.percent_complete) ALL NODES;

CREATE PROJECTION masterdata.places_src_super /*+basename(places_src),createtype(L)*/ 
(
 usps,
 geo_id,
 ansi_code,
 place_name,
 lsad,
 funcstat,
 land_area,
 water_area,
 aland_sqmi,
 awater_sqmi,
 intpt_lat,
 intp_long
)
AS
 SELECT places_src.usps,
        places_src.geo_id,
        places_src.ansi_code,
        places_src.place_name,
        places_src.lsad,
        places_src.funcstat,
        places_src.land_area,
        places_src.water_area,
        places_src.aland_sqmi,
        places_src.awater_sqmi,
        places_src.intpt_lat,
        places_src.intp_long
 FROM masterdata.places_src
 ORDER BY places_src.usps,
          places_src.geo_id,
          places_src.ansi_code,
          places_src.place_name,
          places_src.lsad,
          places_src.funcstat,
          places_src.land_area,
          places_src.water_area
SEGMENTED BY hash(places_src.usps, places_src.geo_id, places_src.ansi_code, places_src.lsad, places_src.funcstat, places_src.land_area, places_src.water_area, places_src.aland_sqmi) ALL NODES;

CREATE PROJECTION masterdata.funcstat_lkp_super /*+basename(funcstat_lkp),createtype(L)*/ 
(
 funcstat_code,
 funcstat_desc,
 funcstat_entity
)
AS
 SELECT funcstat_lkp.funcstat_code,
        funcstat_lkp.funcstat_desc,
        funcstat_lkp.funcstat_entity
 FROM masterdata.funcstat_lkp
 ORDER BY funcstat_lkp.funcstat_code,
          funcstat_lkp.funcstat_desc,
          funcstat_lkp.funcstat_entity
SEGMENTED BY hash(funcstat_lkp.funcstat_code, funcstat_lkp.funcstat_desc, funcstat_lkp.funcstat_entity) ALL NODES;

CREATE PROJECTION masterdata.lsad_lkp_super /*+basename(lsad_lkp),createtype(L)*/ 
(
 lsad_id,
 lsad_type,
 lsad_desc
)
AS
 SELECT lsad_lkp.lsad_id,
        lsad_lkp.lsad_type,
        lsad_lkp.lsad_desc
 FROM masterdata.lsad_lkp
 ORDER BY lsad_lkp.lsad_id,
          lsad_lkp.lsad_type,
          lsad_lkp.lsad_desc
SEGMENTED BY hash(lsad_lkp.lsad_id, lsad_lkp.lsad_type, lsad_lkp.lsad_desc) ALL NODES;

CREATE PROJECTION masterdata.alphabet_lkp_super /*+basename(alphabet_lkp),createtype(L)*/ 
(
 id,
 letter
)
AS
 SELECT alphabet_lkp.id,
        alphabet_lkp.letter
 FROM masterdata.alphabet_lkp
 ORDER BY alphabet_lkp.id,
          alphabet_lkp.letter
SEGMENTED BY hash(alphabet_lkp.id, alphabet_lkp.letter) ALL NODES;

CREATE PROJECTION masterdata.names_01_src_super /*+basename(names_01_src),createtype(L)*/ 
(
 first_name,
 last_name
)
AS
 SELECT names_01_src.first_name,
        names_01_src.last_name
 FROM masterdata.names_01_src
 ORDER BY names_01_src.first_name,
          names_01_src.last_name
SEGMENTED BY hash(names_01_src.first_name, names_01_src.last_name) ALL NODES;

CREATE PROJECTION brdbeer.user_agent_super /*+basename(user_agent),createtype(L)*/ 
(
 id,
 agent,
 agent_version,
 os,
 os_type,
 lang
)
AS
 SELECT user_agent.id,
        user_agent.agent,
        user_agent.agent_version,
        user_agent.os,
        user_agent.os_type,
        user_agent.lang
 FROM brdbeer.user_agent
 ORDER BY user_agent.id,
          user_agent.agent,
          user_agent.agent_version,
          user_agent.os,
          user_agent.os_type,
          user_agent.lang
SEGMENTED BY hash(user_agent.id, user_agent.agent_version, user_agent.os_type, user_agent.lang, user_agent.agent, user_agent.os) ALL NODES;

CREATE PROJECTION brdbeer.page_dimension_super /*+basename(page_dimension),createtype(L)*/ 
(
 id,
 full_url,
 section,
 origination
)
AS
 SELECT page_dimension.id,
        page_dimension.full_url,
        page_dimension.section,
        page_dimension.origination
 FROM brdbeer.page_dimension
 ORDER BY page_dimension.id,
          page_dimension.full_url,
          page_dimension.section,
          page_dimension.origination
SEGMENTED BY hash(page_dimension.id, page_dimension.origination, page_dimension.section, page_dimension.full_url) ALL NODES;

CREATE PROJECTION brdbeer.session_dim_super /*+basename(session_dim),createtype(L)*/ 
(
 id,
 session_start,
 session_end,
 session_time,
 first_ip,
 second_ip
)
AS
 SELECT session_dim.id,
        session_dim.session_start,
        session_dim.session_end,
        session_dim.session_time,
        session_dim.first_ip,
        session_dim.second_ip
 FROM brdbeer.session_dim
 ORDER BY session_dim.id,
          session_dim.session_start,
          session_dim.session_end,
          session_dim.session_time,
          session_dim.first_ip,
          session_dim.second_ip
SEGMENTED BY hash(session_dim.id, session_dim.session_time, session_dim.session_start, session_dim.session_end, session_dim.first_ip, session_dim.second_ip) ALL NODES;

CREATE PROJECTION aetna.provider_specialty_sql_src_super /*+basename(provider_specialty_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD
)
AS
 SELECT provider_specialty_sql_src.PRVDR_ID,
        provider_specialty_sql_src.TAX_ID_NO,
        provider_specialty_sql_src.PRVDR_CERT_YEAR,
        provider_specialty_sql_src.SPEC_NM,
        provider_specialty_sql_src.BOARD_STS_CD
 FROM aetna.provider_specialty_sql_src
 ORDER BY provider_specialty_sql_src.PRVDR_ID,
          provider_specialty_sql_src.TAX_ID_NO,
          provider_specialty_sql_src.PRVDR_CERT_YEAR,
          provider_specialty_sql_src.SPEC_NM,
          provider_specialty_sql_src.BOARD_STS_CD
SEGMENTED BY hash(provider_specialty_sql_src.PRVDR_ID, provider_specialty_sql_src.TAX_ID_NO, provider_specialty_sql_src.PRVDR_CERT_YEAR, provider_specialty_sql_src.BOARD_STS_CD, provider_specialty_sql_src.SPEC_NM) ALL NODES;

CREATE PROJECTION aetna.provider_base_dup_super /*+basename(provider_base_dup),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 MASKED_TAX_ID,
 STATE_CD,
 EXCLUDE_TIN_POIN_FLAG,
 MAILING_DT,
 MAILING_CYCLE,
 PRINT_DIR_FLAG,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 base_RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD,
 MODIFIED_DT,
 MODIFIED_USER_ID
)
AS
 SELECT provider_base_dup.PRVDR_ID,
        provider_base_dup.TAX_ID_NO,
        provider_base_dup.TAXID_FORMAT_CD,
        provider_base_dup.MASKED_TAX_ID,
        provider_base_dup.STATE_CD,
        provider_base_dup.EXCLUDE_TIN_POIN_FLAG,
        provider_base_dup.MAILING_DT,
        provider_base_dup.MAILING_CYCLE,
        provider_base_dup.PRINT_DIR_FLAG,
        provider_base_dup.FIRST_NM,
        provider_base_dup.MIDDLE_NM,
        provider_base_dup.LAST_NM,
        provider_base_dup.SALUTATION_TXT,
        provider_base_dup.base_RANK,
        provider_base_dup.BUSINESS_UNIT_CD,
        provider_base_dup.CATEGORY,
        provider_base_dup.PRVDR_TYPE_CD,
        provider_base_dup.PRVDR_TYPE_DESC,
        provider_base_dup.DEGREE_CD,
        provider_base_dup.ACCEPT_PATIENTS_IND,
        provider_base_dup.LOCATION_STATUS_CD,
        provider_base_dup.SOURCE_TYPE_CD,
        provider_base_dup.CRED_STATUS_CD,
        provider_base_dup.MODIFIED_DT,
        provider_base_dup.MODIFIED_USER_ID
 FROM aetna.provider_base_dup
 ORDER BY provider_base_dup.PRVDR_ID,
          provider_base_dup.TAX_ID_NO,
          provider_base_dup.TAXID_FORMAT_CD,
          provider_base_dup.MASKED_TAX_ID,
          provider_base_dup.STATE_CD,
          provider_base_dup.EXCLUDE_TIN_POIN_FLAG,
          provider_base_dup.MAILING_DT,
          provider_base_dup.MAILING_CYCLE
SEGMENTED BY hash(provider_base_dup.PRVDR_ID, provider_base_dup.TAXID_FORMAT_CD, provider_base_dup.STATE_CD, provider_base_dup.EXCLUDE_TIN_POIN_FLAG, provider_base_dup.MAILING_DT, provider_base_dup.MAILING_CYCLE, provider_base_dup.PRINT_DIR_FLAG, provider_base_dup.SALUTATION_TXT) ALL NODES;

CREATE PROJECTION aetna.provider_base_src_super /*+basename(provider_base_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 MASKED_TAX_ID,
 STATE_CD,
 EXCLUDE_TIN_POIN_FLAG,
 MAILING_DT,
 MAILING_CYCLE,
 PRINT_DIR_FLAG,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 base_RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD,
 MODIFIED_DT,
 MODIFIED_USER_ID
)
AS
 SELECT provider_base_src.PRVDR_ID,
        provider_base_src.TAX_ID_NO,
        provider_base_src.TAXID_FORMAT_CD,
        provider_base_src.MASKED_TAX_ID,
        provider_base_src.STATE_CD,
        provider_base_src.EXCLUDE_TIN_POIN_FLAG,
        provider_base_src.MAILING_DT,
        provider_base_src.MAILING_CYCLE,
        provider_base_src.PRINT_DIR_FLAG,
        provider_base_src.FIRST_NM,
        provider_base_src.MIDDLE_NM,
        provider_base_src.LAST_NM,
        provider_base_src.SALUTATION_TXT,
        provider_base_src.base_RANK,
        provider_base_src.BUSINESS_UNIT_CD,
        provider_base_src.CATEGORY,
        provider_base_src.PRVDR_TYPE_CD,
        provider_base_src.PRVDR_TYPE_DESC,
        provider_base_src.DEGREE_CD,
        provider_base_src.ACCEPT_PATIENTS_IND,
        provider_base_src.LOCATION_STATUS_CD,
        provider_base_src.SOURCE_TYPE_CD,
        provider_base_src.CRED_STATUS_CD,
        provider_base_src.MODIFIED_DT,
        provider_base_src.MODIFIED_USER_ID
 FROM aetna.provider_base_src
 ORDER BY provider_base_src.PRVDR_ID,
          provider_base_src.TAX_ID_NO,
          provider_base_src.TAXID_FORMAT_CD,
          provider_base_src.MASKED_TAX_ID,
          provider_base_src.STATE_CD,
          provider_base_src.EXCLUDE_TIN_POIN_FLAG,
          provider_base_src.MAILING_DT,
          provider_base_src.MAILING_CYCLE
SEGMENTED BY hash(provider_base_src.PRVDR_ID, provider_base_src.TAXID_FORMAT_CD, provider_base_src.STATE_CD, provider_base_src.EXCLUDE_TIN_POIN_FLAG, provider_base_src.MAILING_DT, provider_base_src.MAILING_CYCLE, provider_base_src.PRINT_DIR_FLAG, provider_base_src.SALUTATION_TXT) ALL NODES;

CREATE PROJECTION masterdata.alteryx_input_super /*+basename(alteryx_input),createtype(L)*/ 
(
 id,
 CentroidX,
 CentroidY
)
AS
 SELECT alteryx_input.id,
        alteryx_input.CentroidX,
        alteryx_input.CentroidY
 FROM masterdata.alteryx_input
 ORDER BY alteryx_input.id,
          alteryx_input.CentroidX,
          alteryx_input.CentroidY
SEGMENTED BY hash(alteryx_input.id, alteryx_input.CentroidX, alteryx_input.CentroidY) ALL NODES;

CREATE PROJECTION click.main_fact_super /*+basename(main_fact),createtype(L)*/ 
(
 click_date,
 cust_name,
 cust_email,
 cust_age,
 cust_sex,
 cust_num,
 cust_city,
 cust_state,
 cust_country,
 site_url,
 search_key,
 search_engine,
 clicks
)
AS
 SELECT main_fact.click_date,
        main_fact.cust_name,
        main_fact.cust_email,
        main_fact.cust_age,
        main_fact.cust_sex,
        main_fact.cust_num,
        main_fact.cust_city,
        main_fact.cust_state,
        main_fact.cust_country,
        main_fact.site_url,
        main_fact.search_key,
        main_fact.search_engine,
        main_fact.clicks
 FROM click.main_fact
 ORDER BY main_fact.click_date,
          main_fact.cust_name,
          main_fact.cust_email,
          main_fact.cust_age,
          main_fact.cust_sex,
          main_fact.cust_num,
          main_fact.cust_city,
          main_fact.cust_state
SEGMENTED BY hash(main_fact.click_date, main_fact.cust_age, main_fact.cust_sex, main_fact.cust_num, main_fact.clicks, main_fact.cust_country, main_fact.cust_city, main_fact.cust_state) ALL NODES;

CREATE PROJECTION drug.ctrx2_src_super /*+basename(ctrx2_src),createtype(L)*/ 
(
 man,
 ncd,
 ""desc"",
 date_market,
 wac_intro,
 patient_ct,
 break,
 acq_date,
 acq_price,
 acq_indicator
)
AS
 SELECT ctrx2_src.man,
        ctrx2_src.ncd,
        ctrx2_src.""desc"",
        ctrx2_src.date_market,
        ctrx2_src.wac_intro,
        ctrx2_src.patient_ct,
        ctrx2_src.break,
        ctrx2_src.acq_date,
        ctrx2_src.acq_price,
        ctrx2_src.acq_indicator
 FROM drug.ctrx2_src
 ORDER BY ctrx2_src.man,
          ctrx2_src.ncd,
          ctrx2_src.""desc"",
          ctrx2_src.date_market,
          ctrx2_src.wac_intro,
          ctrx2_src.patient_ct,
          ctrx2_src.break,
          ctrx2_src.acq_date
SEGMENTED BY hash(ctrx2_src.ncd, ctrx2_src.date_market, ctrx2_src.acq_date, ctrx2_src.wac_intro, ctrx2_src.acq_price, ctrx2_src.patient_ct, ctrx2_src.break, ctrx2_src.acq_indicator) ALL NODES;

CREATE PROJECTION aetna.specialty_int_super /*+basename(specialty_int),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD,
 MAILING_CYCLE,
 MODIFIED_DT,
 MODIFIED_USER_ID,
 MAILING_DT,
 update_flag
)
AS
 SELECT specialty_int.PRVDR_ID,
        specialty_int.TAX_ID_NO,
        specialty_int.PRVDR_CERT_YEAR,
        specialty_int.SPEC_NM,
        specialty_int.BOARD_STS_CD,
        specialty_int.MAILING_CYCLE,
        specialty_int.MODIFIED_DT,
        specialty_int.MODIFIED_USER_ID,
        specialty_int.MAILING_DT,
        specialty_int.update_flag
 FROM aetna.specialty_int
 ORDER BY specialty_int.PRVDR_ID,
          specialty_int.TAX_ID_NO
SEGMENTED BY hash(specialty_int.PRVDR_ID, specialty_int.PRVDR_CERT_YEAR, specialty_int.BOARD_STS_CD, specialty_int.MAILING_CYCLE, specialty_int.MODIFIED_DT, specialty_int.MODIFIED_USER_ID, specialty_int.MAILING_DT, specialty_int.update_flag) ALL NODES;

CREATE PROJECTION aetna.provider_base_sql_src_super /*+basename(provider_base_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 STATE_CD,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD
)
AS
 SELECT provider_base_sql_src.PRVDR_ID,
        provider_base_sql_src.TAX_ID_NO,
        provider_base_sql_src.TAXID_FORMAT_CD,
        provider_base_sql_src.STATE_CD,
        provider_base_sql_src.FIRST_NM,
        provider_base_sql_src.MIDDLE_NM,
        provider_base_sql_src.LAST_NM,
        provider_base_sql_src.SALUTATION_TXT,
        provider_base_sql_src.RANK,
        provider_base_sql_src.BUSINESS_UNIT_CD,
        provider_base_sql_src.CATEGORY,
        provider_base_sql_src.PRVDR_TYPE_CD,
        provider_base_sql_src.PRVDR_TYPE_DESC,
        provider_base_sql_src.DEGREE_CD,
        provider_base_sql_src.ACCEPT_PATIENTS_IND,
        provider_base_sql_src.LOCATION_STATUS_CD,
        provider_base_sql_src.SOURCE_TYPE_CD,
        provider_base_sql_src.CRED_STATUS_CD
 FROM aetna.provider_base_sql_src
 ORDER BY provider_base_sql_src.PRVDR_ID,
          provider_base_sql_src.TAX_ID_NO,
          provider_base_sql_src.TAXID_FORMAT_CD,
          provider_base_sql_src.STATE_CD,
          provider_base_sql_src.FIRST_NM,
          provider_base_sql_src.MIDDLE_NM,
          provider_base_sql_src.LAST_NM,
          provider_base_sql_src.SALUTATION_TXT
SEGMENTED BY hash(provider_base_sql_src.PRVDR_ID, provider_base_sql_src.TAX_ID_NO, provider_base_sql_src.CATEGORY, provider_base_sql_src.TAXID_FORMAT_CD, provider_base_sql_src.STATE_CD, provider_base_sql_src.FIRST_NM, provider_base_sql_src.MIDDLE_NM, provider_base_sql_src.LAST_NM) ALL NODES;

CREATE PROJECTION aetna.provider_loc_sql_src_super /*+basename(provider_loc_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 ADDR_NO,
 MAILING_CYCLE,
 ACCEPT_PATIENTS_IND,
 LOC_STS_CD,
 STRADD1_TXT,
 STRADDR2_TXT,
 CITY_NM,
 STATE_CD,
 ZIP_CD,
 PHONE_NO,
 FAX_NO
)
AS
 SELECT provider_loc_sql_src.PRVDR_ID,
        provider_loc_sql_src.TAX_ID_NO,
        provider_loc_sql_src.ADDR_NO,
        provider_loc_sql_src.MAILING_CYCLE,
        provider_loc_sql_src.ACCEPT_PATIENTS_IND,
        provider_loc_sql_src.LOC_STS_CD,
        provider_loc_sql_src.STRADD1_TXT,
        provider_loc_sql_src.STRADDR2_TXT,
        provider_loc_sql_src.CITY_NM,
        provider_loc_sql_src.STATE_CD,
        provider_loc_sql_src.ZIP_CD,
        provider_loc_sql_src.PHONE_NO,
        provider_loc_sql_src.FAX_NO
 FROM aetna.provider_loc_sql_src
 ORDER BY provider_loc_sql_src.PRVDR_ID,
          provider_loc_sql_src.TAX_ID_NO,
          provider_loc_sql_src.ADDR_NO,
          provider_loc_sql_src.MAILING_CYCLE,
          provider_loc_sql_src.ACCEPT_PATIENTS_IND,
          provider_loc_sql_src.LOC_STS_CD,
          provider_loc_sql_src.STRADD1_TXT,
          provider_loc_sql_src.STRADDR2_TXT
SEGMENTED BY hash(provider_loc_sql_src.PRVDR_ID, provider_loc_sql_src.TAX_ID_NO, provider_loc_sql_src.ADDR_NO, provider_loc_sql_src.MAILING_CYCLE, provider_loc_sql_src.ZIP_CD, provider_loc_sql_src.PHONE_NO, provider_loc_sql_src.FAX_NO, provider_loc_sql_src.ACCEPT_PATIENTS_IND) ALL NODES;

CREATE PROJECTION aetna.provider_specialty_db2_src_super /*+basename(provider_specialty_db2_src),createtype(L)*/ 
(
 PRVDR_ID_NO,
 RPRVSPC_CRTFCTN_YR,
 SPCLT_NM,
 RPNP_PRCTC_ROLE_NM,
 NTWK_ID_NO
)
AS
 SELECT provider_specialty_db2_src.PRVDR_ID_NO,
        provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR,
        provider_specialty_db2_src.SPCLT_NM,
        provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM,
        provider_specialty_db2_src.NTWK_ID_NO
 FROM aetna.provider_specialty_db2_src
 ORDER BY provider_specialty_db2_src.PRVDR_ID_NO,
          provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR,
          provider_specialty_db2_src.SPCLT_NM,
          provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM,
          provider_specialty_db2_src.NTWK_ID_NO
SEGMENTED BY hash(provider_specialty_db2_src.PRVDR_ID_NO, provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR, provider_specialty_db2_src.NTWK_ID_NO, provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM, provider_specialty_db2_src.SPCLT_NM) ALL NODES;

CREATE PROJECTION aetna.specialty_super /*+basename(specialty),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD,
 MAILING_CYCLE,
 MODIFIED_DT,
 MODIFIED_USER_ID,
 MAILING_DT
)
AS
 SELECT specialty.PRVDR_ID,
        specialty.TAX_ID_NO,
        specialty.PRVDR_CERT_YEAR,
        specialty.SPEC_NM,
        specialty.BOARD_STS_CD,
        specialty.MAILING_CYCLE,
        specialty.MODIFIED_DT,
        specialty.MODIFIED_USER_ID,
        specialty.MAILING_DT
 FROM aetna.specialty
 ORDER BY specialty.PRVDR_ID,
          specialty.TAX_ID_NO
SEGMENTED BY hash(specialty.PRVDR_ID, specialty.PRVDR_CERT_YEAR, specialty.MAILING_CYCLE, specialty.MODIFIED_DT, specialty.MODIFIED_USER_ID, specialty.MAILING_DT, specialty.TAX_ID_NO, specialty.BOARD_STS_CD) ALL NODES;

CREATE PROJECTION cops.event_flx_super /*+basename(event_flx),createtype(P)*/ 
(
 __identity__,
 __raw__
)
AS
 SELECT event_flx.__identity__,
        event_flx.__raw__
 FROM cops.event_flx
 ORDER BY event_flx.__identity__
SEGMENTED BY hash(event_flx.__identity__) ALL NODES;

CREATE PROJECTION public.cop_events_super /*+basename(cop_events),createtype(P)*/ 
(
 __identity__,
 __raw__
)
AS
 SELECT cop_events.__identity__,
        cop_events.__raw__
 FROM public.cop_events
 ORDER BY cop_events.__identity__
SEGMENTED BY hash(cop_events.__identity__) ALL NODES;

CREATE PROJECTION aetna.provider_base_db2_src_super /*+basename(provider_base_db2_src),createtype(L)*/ 
(
 PRVDR_ID_NO,
 NTWK_ID_NO,
 INPD_FIRST_NM,
 INPD_MIDDLE_NM,
 INPD_LAST_NM,
 INPD_RANK_ABR,
 INPD_SALTN_ABR,
 RIP_PRVDR_TYPE_CD,
 RIP_PTYP_DSCRP_TXT,
 MNT_BY_BUS_UNIT_CD,
 DGRE_CD,
 ADDR_NO,
 RMBRCP_TXIDFRMT_CD,
 RMBRCP_TAXID_NO,
 MASKED_TAXID_NO,
 RPNSL_ACPT_PTNT_CD,
 NTLOC_STS_CD,
 ADDRD_STRA1LN_TXT,
 ADDRD_STRA2LN_TXT,
 ADDRD_STRACITY_NM,
 ADDRD_STRASTSH_ABR,
 RPSL_STRAZIP_CD,
 PRVSL_PRMRYPHNE_NO,
 PRVSL_FAX_NO,
 CRDSRC_TY_CD,
 PRVCRD_STS_CD
)
AS
 SELECT provider_base_db2_src.PRVDR_ID_NO,
        provider_base_db2_src.NTWK_ID_NO,
        provider_base_db2_src.INPD_FIRST_NM,
        provider_base_db2_src.INPD_MIDDLE_NM,
        provider_base_db2_src.INPD_LAST_NM,
        provider_base_db2_src.INPD_RANK_ABR,
        provider_base_db2_src.INPD_SALTN_ABR,
        provider_base_db2_src.RIP_PRVDR_TYPE_CD,
        provider_base_db2_src.RIP_PTYP_DSCRP_TXT,
        provider_base_db2_src.MNT_BY_BUS_UNIT_CD,
        provider_base_db2_src.DGRE_CD,
        provider_base_db2_src.ADDR_NO,
        provider_base_db2_src.RMBRCP_TXIDFRMT_CD,
        provider_base_db2_src.RMBRCP_TAXID_NO,
        provider_base_db2_src.MASKED_TAXID_NO,
        provider_base_db2_src.RPNSL_ACPT_PTNT_CD,
        provider_base_db2_src.NTLOC_STS_CD,
        provider_base_db2_src.ADDRD_STRA1LN_TXT,
        provider_base_db2_src.ADDRD_STRA2LN_TXT,
        provider_base_db2_src.ADDRD_STRACITY_NM,
        provider_base_db2_src.ADDRD_STRASTSH_ABR,
        provider_base_db2_src.RPSL_STRAZIP_CD,
        provider_base_db2_src.PRVSL_PRMRYPHNE_NO,
        provider_base_db2_src.PRVSL_FAX_NO,
        provider_base_db2_src.CRDSRC_TY_CD,
        provider_base_db2_src.PRVCRD_STS_CD
 FROM aetna.provider_base_db2_src
 ORDER BY provider_base_db2_src.PRVDR_ID_NO,
          provider_base_db2_src.NTWK_ID_NO,
          provider_base_db2_src.INPD_FIRST_NM,
          provider_base_db2_src.INPD_MIDDLE_NM,
          provider_base_db2_src.INPD_LAST_NM,
          provider_base_db2_src.INPD_RANK_ABR,
          provider_base_db2_src.INPD_SALTN_ABR,
          provider_base_db2_src.RIP_PRVDR_TYPE_CD
SEGMENTED BY hash(provider_base_db2_src.PRVDR_ID_NO, provider_base_db2_src.NTWK_ID_NO, provider_base_db2_src.ADDR_NO, provider_base_db2_src.RMBRCP_TAXID_NO, provider_base_db2_src.RPSL_STRAZIP_CD, provider_base_db2_src.PRVSL_PRMRYPHNE_NO, provider_base_db2_src.PRVSL_FAX_NO, provider_base_db2_src.INPD_FIRST_NM) ALL NODES;

CREATE PROJECTION atlas.region_dim_super /*+basename(region_dim),createtype(L)*/ 
(
 region_key,
 org_unit_code,
 region_name
)
AS
 SELECT region_dim.region_key,
        region_dim.org_unit_code,
        region_dim.region_name
 FROM atlas.region_dim
 ORDER BY region_dim.region_key,
          region_dim.org_unit_code,
          region_dim.region_name
SEGMENTED BY hash(region_dim.region_key, region_dim.org_unit_code, region_dim.region_name) ALL NODES;

CREATE PROJECTION atlas.mock_dealer_super /*+basename(mock_dealer),createtype(L)*/ 
(
 old_name,
 new_name
)
AS
 SELECT mock_dealer.old_name,
        mock_dealer.new_name
 FROM atlas.mock_dealer
 ORDER BY mock_dealer.old_name,
          mock_dealer.new_name
SEGMENTED BY hash(mock_dealer.old_name, mock_dealer.new_name) ALL NODES;

CREATE PROJECTION atlas.arrivals_src_super /*+basename(arrivals_src),createtype(L)*/ 
(
 vin,
 arrivals_count,
 region_key,
 port_key,
 date_key,
 config_key
)
AS
 SELECT arrivals_src.vin,
        arrivals_src.arrivals_count,
        arrivals_src.region_key,
        arrivals_src.port_key,
        arrivals_src.date_key,
        arrivals_src.config_key
 FROM atlas.arrivals_src
 ORDER BY arrivals_src.vin,
          arrivals_src.arrivals_count,
          arrivals_src.region_key,
          arrivals_src.port_key,
          arrivals_src.date_key,
          arrivals_src.config_key
SEGMENTED BY hash(arrivals_src.arrivals_count, arrivals_src.region_key, arrivals_src.port_key, arrivals_src.config_key, arrivals_src.date_key, arrivals_src.vin) ALL NODES;

CREATE PROJECTION atlas.cust_dim_src_super /*+basename(cust_dim_src),createtype(L)*/ 
(
 cust_id,
 cust_type,
 gender,
 income_group,
 zip_code
)
AS
 SELECT cust_dim_src.cust_id,
        cust_dim_src.cust_type,
        cust_dim_src.gender,
        cust_dim_src.income_group,
        cust_dim_src.zip_code
 FROM atlas.cust_dim_src
 ORDER BY cust_dim_src.cust_id,
          cust_dim_src.cust_type,
          cust_dim_src.gender,
          cust_dim_src.income_group,
          cust_dim_src.zip_code
SEGMENTED BY hash(cust_dim_src.cust_id, cust_dim_src.cust_type, cust_dim_src.gender, cust_dim_src.income_group, cust_dim_src.zip_code) ALL NODES;

CREATE PROJECTION atlas.date_dim_super /*+basename(date_dim),createtype(L)*/ 
(
 date,
 date_key,
 day_of_week_number,
 day_of_year_number,
 week_of_year_number,
 quarter_number,
 ten_day_period_number,
 sales_days,
 sales_month_date,
 end_of_calendar_month_indic,
 holiday_indic,
 ten_day_period_end_indic,
 shipments_month_end_indic
)
AS
 SELECT date_dim.date,
        date_dim.date_key,
        date_dim.day_of_week_number,
        date_dim.day_of_year_number,
        date_dim.week_of_year_number,
        date_dim.quarter_number,
        date_dim.ten_day_period_number,
        date_dim.sales_days,
        date_dim.sales_month_date,
        date_dim.end_of_calendar_month_indic,
        date_dim.holiday_indic,
        date_dim.ten_day_period_end_indic,
        date_dim.shipments_month_end_indic
 FROM atlas.date_dim
 ORDER BY date_dim.date,
          date_dim.date_key,
          date_dim.day_of_week_number,
          date_dim.day_of_year_number,
          date_dim.week_of_year_number,
          date_dim.quarter_number,
          date_dim.ten_day_period_number,
          date_dim.sales_days
SEGMENTED BY hash(date_dim.date, date_dim.day_of_week_number, date_dim.sales_days, date_dim.end_of_calendar_month_indic, date_dim.holiday_indic, date_dim.ten_day_period_end_indic, date_dim.shipments_month_end_indic, date_dim.date_key) ALL NODES;

CREATE PROJECTION atlas.dealer_dim_src_super /*+basename(dealer_dim_src),createtype(L)*/ 
(
 dealer_id,
 dealer_name,
 address_line_1,
 address_line_2,
 city_name,
 po_box_number,
 state_code,
 zip_code,
 area_code,
 telephone_number,
 region_name,
 district_name,
 metro_area_name,
 metro_area_abbrev_name,
 area_of_dom_influence_name,
 adi_abbrev_name,
 adi_us_population_percent,
 pma_number,
 salesperson_count,
 new_car_storage_count
)
AS
 SELECT dealer_dim_src.dealer_id,
        dealer_dim_src.dealer_name,
        dealer_dim_src.address_line_1,
        dealer_dim_src.address_line_2,
        dealer_dim_src.city_name,
        dealer_dim_src.po_box_number,
        dealer_dim_src.state_code,
        dealer_dim_src.zip_code,
        dealer_dim_src.area_code,
        dealer_dim_src.telephone_number,
        dealer_dim_src.region_name,
        dealer_dim_src.district_name,
        dealer_dim_src.metro_area_name,
        dealer_dim_src.metro_area_abbrev_name,
        dealer_dim_src.area_of_dom_influence_name,
        dealer_dim_src.adi_abbrev_name,
        dealer_dim_src.adi_us_population_percent,
        dealer_dim_src.pma_number,
        dealer_dim_src.salesperson_count,
        dealer_dim_src.new_car_storage_count
 FROM atlas.dealer_dim_src
 ORDER BY dealer_dim_src.dealer_id,
          dealer_dim_src.dealer_name,
          dealer_dim_src.address_line_1,
          dealer_dim_src.address_line_2,
          dealer_dim_src.city_name,
          dealer_dim_src.po_box_number,
          dealer_dim_src.state_code,
          dealer_dim_src.zip_code
SEGMENTED BY hash(dealer_dim_src.dealer_id, dealer_dim_src.state_code, dealer_dim_src.area_code, dealer_dim_src.salesperson_count, dealer_dim_src.new_car_storage_count, dealer_dim_src.zip_code, dealer_dim_src.telephone_number, dealer_dim_src.adi_us_population_percent) ALL NODES;

CREATE PROJECTION atlas.port_dim_super /*+basename(port_dim),createtype(L)*/ 
(
 port_id,
 port_name,
 shipping_route_code
)
AS
 SELECT port_dim.port_id,
        port_dim.port_name,
        port_dim.shipping_route_code
 FROM atlas.port_dim
 ORDER BY port_dim.port_id,
          port_dim.port_name,
          port_dim.shipping_route_code
SEGMENTED BY hash(port_dim.port_id, port_dim.shipping_route_code, port_dim.port_name) ALL NODES;

CREATE PROJECTION atlas.sales_fact_super /*+basename(sales_fact),createtype(L)*/ 
(
 vin,
 sales_count,
 region_key,
 dealer_id,
 date_key,
 config_key,
 cust_id
)
AS
 SELECT sales_fact.vin,
        sales_fact.sales_count,
        sales_fact.region_key,
        sales_fact.dealer_id,
        sales_fact.date_key,
        sales_fact.config_key,
        sales_fact.cust_id
 FROM atlas.sales_fact
 ORDER BY sales_fact.vin,
          sales_fact.sales_count,
          sales_fact.region_key,
          sales_fact.dealer_id,
          sales_fact.date_key,
          sales_fact.config_key,
          sales_fact.cust_id
SEGMENTED BY hash(sales_fact.sales_count, sales_fact.region_key, sales_fact.dealer_id, sales_fact.config_key, sales_fact.cust_id, sales_fact.date_key, sales_fact.vin) ALL NODES;

CREATE PROJECTION atlas.vehicle_config_super /*+basename(vehicle_config),createtype(L)*/ 
(
 config_key,
 model_year,
 body_model_code,
 body_model_name,
 price_line_code,
 price_line_name,
 emissions_catg_code,
 emissions_catg_name,
 engine_code,
 engine_name,
 ext_color_code,
 ext_color_name,
 k_model_number,
 interior_trim_id,
 interior_trim_color,
 transmission_type_code,
 transmission_type_name,
 factory_op_group_code
)
AS
 SELECT vehicle_config.config_key,
        vehicle_config.model_year,
        vehicle_config.body_model_code,
        vehicle_config.body_model_name,
        vehicle_config.price_line_code,
        vehicle_config.price_line_name,
        vehicle_config.emissions_catg_code,
        vehicle_config.emissions_catg_name,
        vehicle_config.engine_code,
        vehicle_config.engine_name,
        vehicle_config.ext_color_code,
        vehicle_config.ext_color_name,
        vehicle_config.k_model_number,
        vehicle_config.interior_trim_id,
        vehicle_config.interior_trim_color,
        vehicle_config.transmission_type_code,
        vehicle_config.transmission_type_name,
        vehicle_config.factory_op_group_code
 FROM atlas.vehicle_config
 ORDER BY vehicle_config.config_key,
          vehicle_config.model_year,
          vehicle_config.body_model_code,
          vehicle_config.body_model_name,
          vehicle_config.price_line_code,
          vehicle_config.price_line_name,
          vehicle_config.emissions_catg_code,
          vehicle_config.emissions_catg_name
SEGMENTED BY hash(vehicle_config.config_key, vehicle_config.model_year, vehicle_config.body_model_code, vehicle_config.price_line_code, vehicle_config.emissions_catg_code, vehicle_config.engine_code, vehicle_config.ext_color_code, vehicle_config.interior_trim_id) ALL NODES;

CREATE PROJECTION atlas.zip_code_lkp_super /*+basename(zip_code_lkp),createtype(L)*/ 
(
 zip_code,
 latitude,
 longitude,
 city,
 state,
 county
)
AS
 SELECT zip_code_lkp.zip_code,
        zip_code_lkp.latitude,
        zip_code_lkp.longitude,
        zip_code_lkp.city,
        zip_code_lkp.state,
        zip_code_lkp.county
 FROM atlas.zip_code_lkp
 ORDER BY zip_code_lkp.zip_code,
          zip_code_lkp.latitude,
          zip_code_lkp.longitude,
          zip_code_lkp.city,
          zip_code_lkp.state,
          zip_code_lkp.county
SEGMENTED BY hash(zip_code_lkp.zip_code, zip_code_lkp.latitude, zip_code_lkp.longitude, zip_code_lkp.city, zip_code_lkp.state, zip_code_lkp.county) ALL NODES;

CREATE PROJECTION commodity.daily_futures_super /*+basename(daily_futures),createtype(L)*/ 
(
 future_crb,
 contract_mnt,
 price_date,
 opening_price,
 high_price,
 low_price,
 close_price,
 volume,
 rec
)
AS
 SELECT daily_futures.future_crb,
        daily_futures.contract_mnt,
        daily_futures.price_date,
        daily_futures.opening_price,
        daily_futures.high_price,
        daily_futures.low_price,
        daily_futures.close_price,
        daily_futures.volume,
        daily_futures.rec
 FROM commodity.daily_futures
 ORDER BY daily_futures.future_crb,
          daily_futures.contract_mnt,
          daily_futures.price_date,
          daily_futures.opening_price,
          daily_futures.high_price,
          daily_futures.low_price,
          daily_futures.close_price,
          daily_futures.volume
SEGMENTED BY hash(daily_futures.price_date, daily_futures.volume, daily_futures.rec, daily_futures.future_crb, daily_futures.contract_mnt, daily_futures.opening_price, daily_futures.high_price, daily_futures.low_price) ALL NODES;

CREATE PROJECTION commodity.daily_futures_src_super /*+basename(daily_futures_src),createtype(L)*/ 
(
 future_crb,
 contract_mnt,
 price_date,
 opening_price,
 high_price,
 low_price,
 close_price,
 volume
)
AS
 SELECT daily_futures_src.future_crb,
        daily_futures_src.contract_mnt,
        daily_futures_src.price_date,
        daily_futures_src.opening_price,
        daily_futures_src.high_price,
        daily_futures_src.low_price,
        daily_futures_src.close_price,
        daily_futures_src.volume
 FROM commodity.daily_futures_src
 ORDER BY daily_futures_src.future_crb,
          daily_futures_src.contract_mnt,
          daily_futures_src.price_date,
          daily_futures_src.opening_price,
          daily_futures_src.high_price,
          daily_futures_src.low_price,
          daily_futures_src.close_price,
          daily_futures_src.volume
SEGMENTED BY hash(daily_futures_src.future_crb, daily_futures_src.contract_mnt, daily_futures_src.price_date, daily_futures_src.opening_price, daily_futures_src.high_price, daily_futures_src.low_price, daily_futures_src.close_price, daily_futures_src.volume) ALL NODES;

CREATE PROJECTION logistics.timetable_super /*+basename(timetable),createtype(L)*/ 
(
 nr,
 i1_legid,
 i1_rcs_p,
 i1_rcs_e,
 i1_dep_1_p,
 i1_dep_1_e,
 i1_dep_1_place,
 i1_rcf_1_p,
 i1_rcf_1_e,
 i1_rcf_1_place,
 i1_dep_2_p,
 i1_dep_2_e,
 i1_dep_2_place,
 i1_rcf_2_p,
 i1_rcf_2_e,
 i1_rcf_2_place,
 i1_dep_3_p,
 i1_dep_3_e,
 i1_dep_3_place,
 i1_rcf_3_p,
 i1_rcf_3_e,
 i1_rcf_3_place,
 i1_dlv_p,
 i1_dlv_e,
 i1_hops,
 i2_legid,
 i2_rcs_p,
 i2_rcs_e,
 i2_dep_1_p,
 i2_dep_1_e,
 i2_dep_1_place,
 i2_rcf_1_p,
 i2_rcf_1_e,
 i2_rcf_1_place,
 i2_dep_2_p,
 i2_dep_2_e,
 i2_dep_2_place,
 i2_rcf_2_p,
 i2_rcf_2_e,
 i2_rcf_2_place,
 i2_dep_3_p,
 i2_dep_3_e,
 i2_dep_3_place,
 i2_rcf_3_p,
 i2_rcf_3_e,
 i2_rcf_3_place,
 i2_dlv_p,
 i2_dlv_e,
 i2_hops,
 i3_legid,
 i3_rcs_p,
 i3_rcs_e,
 i3_dep_1_p,
 i3_dep_1_e,
 i3_dep_1_place,
 i3_rcf_1_p,
 i3_rcf_1_e,
 i3_rcf_1_place,
 i3_dep_2_p,
 i3_dep_2_e,
 i3_dep_2_place,
 i3_rcf_2_p,
 i3_rcf_2_e,
 i3_rcf_2_place,
 i3_dep_3_p,
 i3_dep_3_e,
 i3_dep_3_place,
 i3_rcf_3_p,
 i3_rcf_3_e,
 i3_rcf_3_place,
 i3_dlv_p,
 i3_dlv_e,
 i3_hops,
 o_legid,
 o_rcs_p,
 o_rcs_e,
 o_dep_1_p,
 o_dep_1_e,
 o_dep_1_place,
 o_rcf_1_p,
 o_rcf_1_e,
 o_rcf_1_place,
 o_dep_2_p,
 o_dep_2_e,
 o_dep_2_place,
 o_rcf_2_p,
 o_rcf_2_e,
 o_rcf_2_place,
 o_dep_3_p,
 o_dep_3_e,
 o_dep_3_place,
 o_rcf_3_p,
 o_rcf_3_e,
 o_rcf_3_place,
 o_dlv_p,
 o_dlv_e,
 o_hops,
 legs
)
AS
 SELECT timetable.nr,
        timetable.i1_legid,
        timetable.i1_rcs_p,
        timetable.i1_rcs_e,
        timetable.i1_dep_1_p,
        timetable.i1_dep_1_e,
        timetable.i1_dep_1_place,
        timetable.i1_rcf_1_p,
        timetable.i1_rcf_1_e,
        timetable.i1_rcf_1_place,
        timetable.i1_dep_2_p,
        timetable.i1_dep_2_e,
        timetable.i1_dep_2_place,
        timetable.i1_rcf_2_p,
        timetable.i1_rcf_2_e,
        timetable.i1_rcf_2_place,
        timetable.i1_dep_3_p,
        timetable.i1_dep_3_e,
        timetable.i1_dep_3_place,
        timetable.i1_rcf_3_p,
        timetable.i1_rcf_3_e,
        timetable.i1_rcf_3_place,
        timetable.i1_dlv_p,
        timetable.i1_dlv_e,
        timetable.i1_hops,
        timetable.i2_legid,
        timetable.i2_rcs_p,
        timetable.i2_rcs_e,
        timetable.i2_dep_1_p,
        timetable.i2_dep_1_e,
        timetable.i2_dep_1_place,
        timetable.i2_rcf_1_p,
        timetable.i2_rcf_1_e,
        timetable.i2_rcf_1_place,
        timetable.i2_dep_2_p,
        timetable.i2_dep_2_e,
        timetable.i2_dep_2_place,
        timetable.i2_rcf_2_p,
        timetable.i2_rcf_2_e,
        timetable.i2_rcf_2_place,
        timetable.i2_dep_3_p,
        timetable.i2_dep_3_e,
        timetable.i2_dep_3_place,
        timetable.i2_rcf_3_p,
        timetable.i2_rcf_3_e,
        timetable.i2_rcf_3_place,
        timetable.i2_dlv_p,
        timetable.i2_dlv_e,
        timetable.i2_hops,
        timetable.i3_legid,
        timetable.i3_rcs_p,
        timetable.i3_rcs_e,
        timetable.i3_dep_1_p,
        timetable.i3_dep_1_e,
        timetable.i3_dep_1_place,
        timetable.i3_rcf_1_p,
        timetable.i3_rcf_1_e,
        timetable.i3_rcf_1_place,
        timetable.i3_dep_2_p,
        timetable.i3_dep_2_e,
        timetable.i3_dep_2_place,
        timetable.i3_rcf_2_p,
        timetable.i3_rcf_2_e,
        timetable.i3_rcf_2_place,
        timetable.i3_dep_3_p,
        timetable.i3_dep_3_e,
        timetable.i3_dep_3_place,
        timetable.i3_rcf_3_p,
        timetable.i3_rcf_3_e,
        timetable.i3_rcf_3_place,
        timetable.i3_dlv_p,
        timetable.i3_dlv_e,
        timetable.i3_hops,
        timetable.o_legid,
        timetable.o_rcs_p,
        timetable.o_rcs_e,
        timetable.o_dep_1_p,
        timetable.o_dep_1_e,
        timetable.o_dep_1_place,
        timetable.o_rcf_1_p,
        timetable.o_rcf_1_e,
        timetable.o_rcf_1_place,
        timetable.o_dep_2_p,
        timetable.o_dep_2_e,
        timetable.o_dep_2_place,
        timetable.o_rcf_2_p,
        timetable.o_rcf_2_e,
        timetable.o_rcf_2_place,
        timetable.o_dep_3_p,
        timetable.o_dep_3_e,
        timetable.o_dep_3_place,
        timetable.o_rcf_3_p,
        timetable.o_rcf_3_e,
        timetable.o_rcf_3_place,
        timetable.o_dlv_p,
        timetable.o_dlv_e,
        timetable.o_hops,
        timetable.legs
 FROM logistics.timetable
 ORDER BY timetable.nr,
          timetable.i1_legid,
          timetable.i1_rcs_p,
          timetable.i1_rcs_e,
          timetable.i1_dep_1_p,
          timetable.i1_dep_1_e,
          timetable.i1_dep_1_place,
          timetable.i1_rcf_1_p
SEGMENTED BY hash(timetable.nr, timetable.i1_legid, timetable.i1_rcs_p, timetable.i1_rcs_e, timetable.i1_dep_1_p, timetable.i1_dep_1_e, timetable.i1_dep_1_place, timetable.i1_rcf_1_p) ALL NODES;

CREATE PROJECTION cortex.flight_super /*+basename(flight),createtype(L)*/ 
(
 batch_id,
 source_file_id,
 flight_leg_id,
 FLIGHT_LEG_INDEX,
 origin_date_utc,
 airline,
 airline2,
 Aircraft_Registration,
 flight_number,
 domain,
 departure_sequent,
 flight_status,
 departure_port,
 departure_country,
 arrival_port,
 arrival_country,
 departure_schedule,
 departure_schedule_local,
 departure_schedule_date_local,
 departure_schedule_utc,
 departure_schedule_date_utc,
 arrival_schedule,
 arrival_schedule_local,
 arrival_schedule_date_local,
 arrival_schedule_utc,
 arrival_schedule_date_utc,
 updated_ts,
 Service_Type,
 Origin_Date_Sequent,
 Origin_Date_Local,
 Operation_Type,
 Operation_Domain,
 Aircraft_Type,
 Aircraft_Group,
 OnBlocks_Qualifier,
 OnBlocks_Time_Local,
 OnBlocks_Time_UTC,
 OffBlocks_Qualifier,
 OffBlocks_Time_Local,
 OffBlocks_Time_UTC,
 row_id,
 departure_boarding_gate,
 departure_terminal,
 arrival_boarding_gate,
 arrival_terminal
)
AS
 SELECT flight.batch_id,
        flight.source_file_id,
        flight.flight_leg_id,
        flight.FLIGHT_LEG_INDEX,
        flight.origin_date_utc,
        flight.airline,
        flight.airline2,
        flight.Aircraft_Registration,
        flight.flight_number,
        flight.domain,
        flight.departure_sequent,
        flight.flight_status,
        flight.departure_port,
        flight.departure_country,
        flight.arrival_port,
        flight.arrival_country,
        flight.departure_schedule,
        flight.departure_schedule_local,
        flight.departure_schedule_date_local,
        flight.departure_schedule_utc,
        flight.departure_schedule_date_utc,
        flight.arrival_schedule,
        flight.arrival_schedule_local,
        flight.arrival_schedule_date_local,
        flight.arrival_schedule_utc,
        flight.arrival_schedule_date_utc,
        flight.updated_ts,
        flight.Service_Type,
        flight.Origin_Date_Sequent,
        flight.Origin_Date_Local,
        flight.Operation_Type,
        flight.Operation_Domain,
        flight.Aircraft_Type,
        flight.Aircraft_Group,
        flight.OnBlocks_Qualifier,
        flight.OnBlocks_Time_Local,
        flight.OnBlocks_Time_UTC,
        flight.OffBlocks_Qualifier,
        flight.OffBlocks_Time_Local,
        flight.OffBlocks_Time_UTC,
        flight.row_id,
        flight.departure_boarding_gate,
        flight.departure_terminal,
        flight.arrival_boarding_gate,
        flight.arrival_terminal
 FROM cortex.flight
 ORDER BY flight.batch_id,
          flight.source_file_id,
          flight.flight_leg_id,
          flight.FLIGHT_LEG_INDEX,
          flight.origin_date_utc,
          flight.airline,
          flight.airline2,
          flight.Aircraft_Registration
SEGMENTED BY hash(flight.batch_id, flight.source_file_id, flight.FLIGHT_LEG_INDEX, flight.origin_date_utc, flight.flight_number, flight.departure_sequent, flight.departure_schedule, flight.departure_schedule_local) ALL NODES;

CREATE PROJECTION cortex.og_flight_super /*+basename(og_flight),createtype(A)*/ 
(
 batch_id,
 source_file_id,
 flight_leg_id,
 FLIGHT_LEG_INDEX,
 origin_date_utc,
 airline,
 airline2,
 Aircraft_Registration,
 flight_number,
 domain,
 departure_sequent,
 flight_status,
 departure_port,
 departure_country,
 arrival_port,
 arrival_country,
 departure_schedule,
 departure_schedule_local,
 departure_schedule_date_local,
 departure_schedule_utc,
 departure_schedule_date_utc,
 arrival_schedule,
 arrival_schedule_local,
 arrival_schedule_date_local,
 arrival_schedule_utc,
 arrival_schedule_date_utc,
 updated_ts,
 Service_Type,
 Origin_Date_Sequent,
 Origin_Date_Local,
 Operation_Type,
 Operation_Domain,
 Aircraft_Type,
 Aircraft_Group,
 OnBlocks_Qualifier,
 OnBlocks_Time_Local,
 OnBlocks_Time_UTC,
 OffBlocks_Qualifier,
 OffBlocks_Time_Local,
 OffBlocks_Time_UTC,
 row_id,
 departure_boarding_gate,
 departure_terminal,
 arrival_boarding_gate,
 arrival_terminal
)
AS
 SELECT og_flight.batch_id,
        og_flight.source_file_id,
        og_flight.flight_leg_id,
        og_flight.FLIGHT_LEG_INDEX,
        og_flight.origin_date_utc,
        og_flight.airline,
        og_flight.airline2,
        og_flight.Aircraft_Registration,
        og_flight.flight_number,
        og_flight.domain,
        og_flight.departure_sequent,
        og_flight.flight_status,
        og_flight.departure_port,
        og_flight.departure_country,
        og_flight.arrival_port,
        og_flight.arrival_country,
        og_flight.departure_schedule,
        og_flight.departure_schedule_local,
        og_flight.departure_schedule_date_local,
        og_flight.departure_schedule_utc,
        og_flight.departure_schedule_date_utc,
        og_flight.arrival_schedule,
        og_flight.arrival_schedule_local,
        og_flight.arrival_schedule_date_local,
        og_flight.arrival_schedule_utc,
        og_flight.arrival_schedule_date_utc,
        og_flight.updated_ts,
        og_flight.Service_Type,
        og_flight.Origin_Date_Sequent,
        og_flight.Origin_Date_Local,
        og_flight.Operation_Type,
        og_flight.Operation_Domain,
        og_flight.Aircraft_Type,
        og_flight.Aircraft_Group,
        og_flight.OnBlocks_Qualifier,
        og_flight.OnBlocks_Time_Local,
        og_flight.OnBlocks_Time_UTC,
        og_flight.OffBlocks_Qualifier,
        og_flight.OffBlocks_Time_Local,
        og_flight.OffBlocks_Time_UTC,
        og_flight.row_id,
        og_flight.departure_boarding_gate,
        og_flight.departure_terminal,
        og_flight.arrival_boarding_gate,
        og_flight.arrival_terminal
 FROM cortex.og_flight
 ORDER BY og_flight.batch_id,
          og_flight.source_file_id,
          og_flight.flight_leg_id,
          og_flight.FLIGHT_LEG_INDEX,
          og_flight.origin_date_utc,
          og_flight.airline,
          og_flight.airline2,
          og_flight.Aircraft_Registration
SEGMENTED BY hash(og_flight.batch_id, og_flight.source_file_id, og_flight.FLIGHT_LEG_INDEX, og_flight.origin_date_utc, og_flight.flight_number, og_flight.departure_sequent, og_flight.departure_schedule, og_flight.departure_schedule_local) ALL NODES;

CREATE PROJECTION cortex.for_mike_super /*+basename(for_mike),createtype(A)*/ 
(
 batch_id,
 source_file_id,
 flight_leg_id,
 FLIGHT_LEG_INDEX,
 origin_date_utc,
 airline,
 airline2,
 Aircraft_Registration,
 flight_number,
 domain,
 departure_sequent,
 flight_status,
 departure_port,
 departure_country,
 arrival_port,
 arrival_country,
 departure_schedule,
 departure_schedule_local,
 departure_schedule_date_local,
 departure_schedule_utc,
 departure_schedule_date_utc,
 arrival_schedule,
 arrival_schedule_local,
 arrival_schedule_date_local,
 arrival_schedule_utc,
 arrival_schedule_date_utc,
 updated_ts,
 Service_Type,
 Origin_Date_Sequent,
 Origin_Date_Local,
 Operation_Type,
 Operation_Domain,
 Aircraft_Type,
 Aircraft_Group,
 OnBlocks_Qualifier,
 OnBlocks_Time_Local,
 OnBlocks_Time_UTC,
 OffBlocks_Qualifier,
 OffBlocks_Time_Local,
 OffBlocks_Time_UTC,
 row_id,
 departure_boarding_gate,
 departure_terminal,
 arrival_boarding_gate,
 arrival_terminal
)
AS
 SELECT for_mike.batch_id,
        for_mike.source_file_id,
        for_mike.flight_leg_id,
        for_mike.FLIGHT_LEG_INDEX,
        for_mike.origin_date_utc,
        for_mike.airline,
        for_mike.airline2,
        for_mike.Aircraft_Registration,
        for_mike.flight_number,
        for_mike.domain,
        for_mike.departure_sequent,
        for_mike.flight_status,
        for_mike.departure_port,
        for_mike.departure_country,
        for_mike.arrival_port,
        for_mike.arrival_country,
        for_mike.departure_schedule,
        for_mike.departure_schedule_local,
        for_mike.departure_schedule_date_local,
        for_mike.departure_schedule_utc,
        for_mike.departure_schedule_date_utc,
        for_mike.arrival_schedule,
        for_mike.arrival_schedule_local,
        for_mike.arrival_schedule_date_local,
        for_mike.arrival_schedule_utc,
        for_mike.arrival_schedule_date_utc,
        for_mike.updated_ts,
        for_mike.Service_Type,
        for_mike.Origin_Date_Sequent,
        for_mike.Origin_Date_Local,
        for_mike.Operation_Type,
        for_mike.Operation_Domain,
        for_mike.Aircraft_Type,
        for_mike.Aircraft_Group,
        for_mike.OnBlocks_Qualifier,
        for_mike.OnBlocks_Time_Local,
        for_mike.OnBlocks_Time_UTC,
        for_mike.OffBlocks_Qualifier,
        for_mike.OffBlocks_Time_Local,
        for_mike.OffBlocks_Time_UTC,
        for_mike.row_id,
        for_mike.departure_boarding_gate,
        for_mike.departure_terminal,
        for_mike.arrival_boarding_gate,
        for_mike.arrival_terminal
 FROM cortex.for_mike
 ORDER BY for_mike.batch_id,
          for_mike.source_file_id,
          for_mike.flight_leg_id,
          for_mike.FLIGHT_LEG_INDEX,
          for_mike.origin_date_utc,
          for_mike.airline,
          for_mike.airline2,
          for_mike.Aircraft_Registration
SEGMENTED BY hash(for_mike.batch_id, for_mike.source_file_id, for_mike.FLIGHT_LEG_INDEX, for_mike.origin_date_utc, for_mike.flight_number, for_mike.departure_sequent, for_mike.departure_schedule, for_mike.departure_schedule_local) ALL NODES;

CREATE PROJECTION cortex.iata_xref_super /*+basename(iata_xref),createtype(L)*/ 
(
 id,
 src,
 dest
)
AS
 SELECT iata_xref.id,
        iata_xref.src,
        iata_xref.dest
 FROM cortex.iata_xref
 ORDER BY iata_xref.id,
          iata_xref.src,
          iata_xref.dest
SEGMENTED BY hash(iata_xref.id, iata_xref.src, iata_xref.dest) ALL NODES;

CREATE PROJECTION cortex.new_flight_super /*+basename(new_flight),createtype(A)*/ 
(
 batch_id,
 source_file_id,
 flight_leg_id,
 FLIGHT_LEG_INDEX,
 origin_date_utc,
 airline,
 airline2,
 Aircraft_Registration,
 flight_number,
 domain,
 departure_sequent,
 flight_status,
 departure_port,
 departure_country,
 arrival_port,
 arrival_country,
 departure_schedule,
 departure_schedule_local,
 departure_schedule_date_local,
 departure_schedule_utc,
 departure_schedule_date_utc,
 arrival_schedule,
 arrival_schedule_local,
 arrival_schedule_date_local,
 arrival_schedule_utc,
 arrival_schedule_date_utc,
 updated_ts,
 Service_Type,
 Origin_Date_Sequent,
 Origin_Date_Local,
 Operation_Type,
 Operation_Domain,
 Aircraft_Type,
 Aircraft_Group,
 OnBlocks_Qualifier,
 OnBlocks_Time_Local,
 OnBlocks_Time_UTC,
 OffBlocks_Qualifier,
 OffBlocks_Time_Local,
 OffBlocks_Time_UTC,
 row_id,
 departure_boarding_gate,
 departure_terminal,
 arrival_boarding_gate,
 arrival_terminal
)
AS
 SELECT new_flight.batch_id,
        new_flight.source_file_id,
        new_flight.flight_leg_id,
        new_flight.FLIGHT_LEG_INDEX,
        new_flight.origin_date_utc,
        new_flight.airline,
        new_flight.airline2,
        new_flight.Aircraft_Registration,
        new_flight.flight_number,
        new_flight.domain,
        new_flight.departure_sequent,
        new_flight.flight_status,
        new_flight.departure_port,
        new_flight.departure_country,
        new_flight.arrival_port,
        new_flight.arrival_country,
        new_flight.departure_schedule,
        new_flight.departure_schedule_local,
        new_flight.departure_schedule_date_local,
        new_flight.departure_schedule_utc,
        new_flight.departure_schedule_date_utc,
        new_flight.arrival_schedule,
        new_flight.arrival_schedule_local,
        new_flight.arrival_schedule_date_local,
        new_flight.arrival_schedule_utc,
        new_flight.arrival_schedule_date_utc,
        new_flight.updated_ts,
        new_flight.Service_Type,
        new_flight.Origin_Date_Sequent,
        new_flight.Origin_Date_Local,
        new_flight.Operation_Type,
        new_flight.Operation_Domain,
        new_flight.Aircraft_Type,
        new_flight.Aircraft_Group,
        new_flight.OnBlocks_Qualifier,
        new_flight.OnBlocks_Time_Local,
        new_flight.OnBlocks_Time_UTC,
        new_flight.OffBlocks_Qualifier,
        new_flight.OffBlocks_Time_Local,
        new_flight.OffBlocks_Time_UTC,
        new_flight.row_id,
        new_flight.departure_boarding_gate,
        new_flight.departure_terminal,
        new_flight.arrival_boarding_gate,
        new_flight.arrival_terminal
 FROM cortex.new_flight
 ORDER BY new_flight.batch_id,
          new_flight.source_file_id,
          new_flight.flight_leg_id,
          new_flight.FLIGHT_LEG_INDEX,
          new_flight.origin_date_utc,
          new_flight.airline,
          new_flight.airline2,
          new_flight.Aircraft_Registration
SEGMENTED BY hash(new_flight.batch_id, new_flight.source_file_id, new_flight.FLIGHT_LEG_INDEX, new_flight.origin_date_utc, new_flight.flight_number, new_flight.departure_sequent, new_flight.departure_schedule, new_flight.departure_schedule_local) ALL NODES;

CREATE PROJECTION atlas.cust_dim_vpy_src_super /*+basename(cust_dim_vpy_src),createtype(L)*/ 
(
 cust_id,
 cust_type,
 gender,
 income_group,
 zip_code
)
AS
 SELECT cust_dim_vpy_src.cust_id,
        cust_dim_vpy_src.cust_type,
        cust_dim_vpy_src.gender,
        cust_dim_vpy_src.income_group,
        cust_dim_vpy_src.zip_code
 FROM atlas.cust_dim_vpy_src
 ORDER BY cust_dim_vpy_src.cust_id,
          cust_dim_vpy_src.cust_type,
          cust_dim_vpy_src.gender,
          cust_dim_vpy_src.income_group,
          cust_dim_vpy_src.zip_code
SEGMENTED BY hash(cust_dim_vpy_src.cust_id, cust_dim_vpy_src.income_group, cust_dim_vpy_src.zip_code, cust_dim_vpy_src.cust_type, cust_dim_vpy_src.gender) ALL NODES;

CREATE PROJECTION migration.target_grants_super /*+basename(target_grants),createtype(L)*/ 
(
 id,
 script,
 processed,
 ts_run_date
)
AS
 SELECT target_grants.id,
        target_grants.script,
        target_grants.processed,
        target_grants.ts_run_date
 FROM migration.target_grants
 ORDER BY target_grants.id,
          target_grants.script,
          target_grants.processed,
          target_grants.ts_run_date
SEGMENTED BY hash(target_grants.id, target_grants.processed, target_grants.ts_run_date, target_grants.script) ALL NODES;

CREATE PROJECTION migration.target_grants_src_super /*+basename(target_grants_src),createtype(L)*/ 
(
 id,
 script
)
AS
 SELECT target_grants_src.id,
        target_grants_src.script
 FROM migration.target_grants_src
 ORDER BY target_grants_src.id,
          target_grants_src.script
SEGMENTED BY hash(target_grants_src.id, target_grants_src.script) ALL NODES;

CREATE PROJECTION migration.source_schemas_super /*+basename(source_schemas),createtype(L)*/ 
(
 table_schema,
 table_name,
 is_partitioned,
 row_count,
 partition_expression,
 export_type
)
AS
 SELECT source_schemas.table_schema,
        source_schemas.table_name,
        source_schemas.is_partitioned,
        source_schemas.row_count,
        source_schemas.partition_expression,
        source_schemas.export_type
 FROM migration.source_schemas
 ORDER BY source_schemas.table_schema,
          source_schemas.row_count,
          source_schemas.is_partitioned
SEGMENTED BY hash(source_schemas.table_schema, source_schemas.table_name) ALL NODES;

CREATE PROJECTION cyclist.trip_data_2021_src_super /*+basename(trip_data_2021_src),createtype(L)*/ 
(
 ride_id,
 rideable_type,
 started_at,
 ride_length,
 day_of_week,
 member_casual
)
AS
 SELECT newTable.ride_id,
        newTable.rideable_type,
        newTable.started_at,
        newTable.ride_length,
        newTable.day_of_week,
        newTable.member_casual
 FROM cyclist.trip_data_2021_src newTable
 ORDER BY newTable.ride_id,
          newTable.rideable_type,
          newTable.started_at,
          newTable.ride_length,
          newTable.day_of_week,
          newTable.member_casual
SEGMENTED BY hash(newTable.started_at, newTable.ride_length, newTable.day_of_week, newTable.member_casual, newTable.ride_id, newTable.rideable_type) ALL NODES;

CREATE PROJECTION segment.online_sales_super /*+basename(online_sales),createtype(L)*/ 
(
 InvoiceNo,
 StockCode,
 Description,
 Quantity,
 InvoiceDate,
 UnitPrice,
 CustomerID,
 Country
)
AS
 SELECT online_sales.InvoiceNo,
        online_sales.StockCode,
        online_sales.Description,
        online_sales.Quantity,
        online_sales.InvoiceDate,
        online_sales.UnitPrice,
        online_sales.CustomerID,
        online_sales.Country
 FROM segment.online_sales
 ORDER BY online_sales.InvoiceNo,
          online_sales.StockCode,
          online_sales.Description,
          online_sales.Quantity,
          online_sales.InvoiceDate,
          online_sales.UnitPrice,
          online_sales.CustomerID,
          online_sales.Country
SEGMENTED BY hash(online_sales.Quantity, online_sales.CustomerID, online_sales.StockCode, online_sales.UnitPrice, online_sales.InvoiceNo, online_sales.InvoiceDate, online_sales.Country, online_sales.Description) ALL NODES;

CREATE PROJECTION public.iris_super /*+basename(iris),createtype(L)*/ 
(
 Id,
 SepalLengthCm,
 SepalWidthCm,
 PetalLengthCm,
 PetalWidthCm,
 Species
)
AS
 SELECT iris.Id,
        iris.SepalLengthCm,
        iris.SepalWidthCm,
        iris.PetalLengthCm,
        iris.PetalWidthCm,
        iris.Species
 FROM public.iris
 ORDER BY iris.Id,
          iris.SepalLengthCm,
          iris.SepalWidthCm,
          iris.PetalLengthCm,
          iris.PetalWidthCm,
          iris.Species
SEGMENTED BY hash(iris.Id, iris.SepalLengthCm, iris.SepalWidthCm, iris.PetalLengthCm, iris.PetalWidthCm, iris.Species) ALL NODES;

CREATE PROJECTION public.online_retail_super /*+basename(online_retail),createtype(L)*/ 
(
 InvoiceNo,
 StockCode,
 Description,
 Quantity,
 InvoiceDate,
 UnitPrice,
 CustomerID,
 Country
)
AS
 SELECT online_retail.InvoiceNo,
        online_retail.StockCode,
        online_retail.Description,
        online_retail.Quantity,
        online_retail.InvoiceDate,
        online_retail.UnitPrice,
        online_retail.CustomerID,
        online_retail.Country
 FROM public.online_retail
 ORDER BY online_retail.InvoiceNo,
          online_retail.StockCode,
          online_retail.Description,
          online_retail.Quantity,
          online_retail.InvoiceDate,
          online_retail.UnitPrice,
          online_retail.CustomerID,
          online_retail.Country
SEGMENTED BY hash(online_retail.Quantity, online_retail.InvoiceDate, online_retail.UnitPrice, online_retail.CustomerID, online_retail.InvoiceNo, online_retail.StockCode, online_retail.Country, online_retail.Description) ALL NODES;

CREATE PROJECTION segment.retail_super /*+basename(retail),createtype(L)*/ 
(
 InvoiceNo,
 StockCode,
 Description,
 Quantity,
 InvoiceDate,
 UnitPrice,
 CustomerID,
 Country
)
AS
 SELECT retail.InvoiceNo,
        retail.StockCode,
        retail.Description,
        retail.Quantity,
        retail.InvoiceDate,
        retail.UnitPrice,
        retail.CustomerID,
        retail.Country
 FROM segment.retail
 ORDER BY retail.InvoiceNo,
          retail.StockCode,
          retail.Description,
          retail.Quantity,
          retail.InvoiceDate,
          retail.UnitPrice,
          retail.CustomerID,
          retail.Country
SEGMENTED BY hash(retail.Quantity, retail.InvoiceDate, retail.UnitPrice, retail.StockCode, retail.CustomerID, retail.Country, retail.Description, retail.InvoiceNo) ALL NODES;


CREATE  VIEW ehr.admission_vw AS
 SELECT (e.patient_admission_datetime)::date AS patient_admission_datetime,
        e.patient_los,
        h.hospital_name,
        d.department_name
 FROM ((ehr.encounters_src e JOIN ehr.departments_src d ON ((d.department_id = e.department_id))) JOIN ehr.hospitals_src h ON ((h.hospital_id = d.hospital_id)));

CREATE  VIEW survey.opioid_vw AS
 SELECT opioid_src.state_id,
        opioid_src.survey_year,
        opioid_src.survey_month,
        opioid_src.indicator,
        sum((regexp_replace(regexp_replace(opioid_src.data_value, '""'::varchar(1), ''::varchar, 1, 0, ''::varchar), ','::varchar(1), ''::varchar, 1, 0, ''::varchar))::numeric) AS data_value
 FROM survey.opioid_src
 GROUP BY opioid_src.state_id,
          opioid_src.survey_year,
          opioid_src.survey_month,
          opioid_src.indicator;

CREATE  VIEW public.cop_events_view AS
 SELECT 'Please run compute_flextable_keys_and_build_view() to update this view to reflect real and virtual columns in the flex table'::varchar(124) AS status
 FROM v_catalog.dual;

CREATE  VIEW atlas.main_report AS
 SELECT s.cust_id,
        c.income_group,
        c.gender,
        s.config_key,
        v.body_model_name,
        v.ext_color_name,
        v.engine_name,
        v.transmission_type_name,
        s.dealer_id,
        dm.new_name AS dealer_name,
        dd.region_name,
        dd.state_code,
        dd.metro_area_name,
        dd.area_code,
        add_months((s.date_key)::date, 240) AS date_key
 FROM ((((atlas.sales_fact s JOIN atlas.cust_dim_src c ON ((c.cust_id = s.cust_id))) JOIN atlas.vehicle_config v ON ((v.config_key = s.config_key))) JOIN atlas.dealer_dim_src dd ON ((dd.dealer_id = s.dealer_id))) JOIN atlas.mock_dealer dm ON ((dm.old_name = dd.dealer_name)));

CREATE  VIEW cops.event_flx_view AS
 SELECT (public.MapLookup(event_flx.__raw__, 'at scene time'::varchar(13)))::!timestamp AS ""at scene time"",
        (public.MapLookup(event_flx.__raw__, 'cad cdw id'::varchar(10)))::!int AS ""cad cdw id"",
        (public.MapLookup(event_flx.__raw__, 'cad event number'::varchar(16)))::!int AS ""cad event number"",
        (public.MapLookup(event_flx.__raw__, 'census tract'::varchar(12)))::!numeric(12,5) AS ""census tract"",
        (public.MapLookup(event_flx.__raw__, 'district sector'::varchar(15)))::!varchar(30) AS ""district sector"",
        (public.MapLookup(event_flx.__raw__, 'event clearance code'::varchar(20)))::!int AS ""event clearance code"",
        (public.MapLookup(event_flx.__raw__, 'event clearance date'::varchar(20)))::!timestamp AS ""event clearance date"",
        (public.MapLookup(event_flx.__raw__, 'event clearance description'::varchar(27)))::!varchar(142) AS ""event clearance description"",
        (public.MapLookup(event_flx.__raw__, 'event clearance group'::varchar(21)))::!varchar(74) AS ""event clearance group"",
        (public.MapLookup(event_flx.__raw__, 'event clearance subgroup'::varchar(24)))::!varchar(60) AS ""event clearance subgroup"",
        (public.MapLookup(event_flx.__raw__, 'general offense number'::varchar(22)))::!int AS ""general offense number"",
        (public.MapLookup(event_flx.__raw__, 'hundred block location'::varchar(22)))::!varchar(82) AS ""hundred block location"",
        (public.MapLookup(event_flx.__raw__, 'incident location'::varchar(17)))::!interval AS ""incident location"",
        (public.MapLookup(event_flx.__raw__, 'initial type description'::varchar(24)))::!varchar(124) AS ""initial type description"",
        (public.MapLookup(event_flx.__raw__, 'initial type group'::varchar(18)))::!varchar(52) AS ""initial type group"",
        (public.MapLookup(event_flx.__raw__, 'initial type subgroup'::varchar(21)))::!varchar(74) AS ""initial type subgroup"",
        (public.MapLookup(event_flx.__raw__, 'latitude'::varchar(8)))::!float AS latitude,
        (public.MapLookup(event_flx.__raw__, 'longitude'::varchar(9)))::!float AS longitude,
        (public.MapLookup(event_flx.__raw__, 'zone beat'::varchar(9)))::!varchar(20) AS ""zone beat""
 FROM cops.event_flx;

CREATE  VIEW cortex.short_vw AS
 SELECT m.flight_leg_id,
        ((substr(m.flight_leg_id, 1, 7) || x.dest) || substr(m.flight_leg_id, ((length(m.flight_leg_id) - 11) + 1), 11)) AS new_leg,
        m.departure_port,
        x.dest AS new_dep,
        m.arrival_port,
        xx.dest AS new_arr
 FROM ((cortex.for_mike m JOIN cortex.iata_xref x ON ((m.departure_port = x.src))) JOIN cortex.iata_xref xx ON ((m.arrival_port = xx.src)));

CREATE FUNCTION public.isOrContains(map Long Varchar, val Varchar)
RETURN boolean AS
BEGIN
RETURN CASE WHEN (public.MapSize(map) <> (-1)) THEN public.MapContainsValue(map, val) ELSE (map = (val)) END;
END;

SELECT MARK_DESIGN_KSAFE(1);
