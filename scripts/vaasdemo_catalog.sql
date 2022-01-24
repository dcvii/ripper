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


