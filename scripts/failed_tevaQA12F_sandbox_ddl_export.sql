CREATE SCHEMA sandbox;

CREATE TABLE sandbox.ic_target
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    area_number varchar(15),
    region_number varchar(15),
    territory_number varchar(15),
    ims_id varchar(10),
    tvcmid int,
    row_create_date date DEFAULT "sysdate"()
);


CREATE TABLE sandbox.ic_goal_setting
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
    dnc_flag char(1) DEFAULT 'N',
    dnp_flag char(1) DEFAULT 'N',
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
    include_in_nation_rollup char(1) DEFAULT 'Y',
    include_in_area_rollup char(1) DEFAULT 'Y',
    include_in_region_rollup char(1) DEFAULT 'Y',
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date DEFAULT "sysdate"()
);


CREATE TABLE sandbox.call_plan_decile
(
    hcp_id varchar(50),
    market varchar(50),
    decile_value varchar(50),
    veeva_id varchar(50)
);


CREATE TABLE sandbox.scd_roster
(
    scd_status varchar(10) DEFAULT 'Current',
    scd_effective_date date DEFAULT trunc("sysdate"()),
    scd_expiration_date date DEFAULT '2099-12-31'::date,
    employee_id varchar(100),
    territory_number varchar(100),
    territory_name varchar(255),
    sales_force_id varchar(100),
    full_name varchar(100),
    first_name varchar(100),
    middle_name varchar(100),
    last_name varchar(100),
    address_line1 varchar(100),
    address_line2 varchar(100),
    address_line3 varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(100),
    country varchar(100),
    business_address_line1 varchar(100),
    business_address_line2 varchar(100),
    business_address_line3 varchar(100),
    business_city varchar(100),
    business_state varchar(2),
    business_zip varchar(100),
    business_country varchar(100),
    shipping_address_line1 varchar(100),
    shipping_address_line2 varchar(100),
    shipping_address_line3 varchar(100),
    shipping_city varchar(100),
    shipping_state varchar(2),
    shipping_zip varchar(100),
    shipping_country varchar(100),
    business_phone varchar(100),
    home_phone varchar(100),
    mobile_phone varchar(100),
    fax varchar(100),
    voice_mail_extension varchar(100),
    email varchar(255),
    hire_date date,
    title varchar(100),
    rep_type varchar(10),
    username varchar(100),
    out_of_territory varchar(5),
    parent_territory_number varchar(100),
    company_code varchar(100),
    original_hire_date date,
    team varchar(100),
    salutation varchar(15),
    suffix varchar(15),
    cost_center varchar(30),
    sample_eligibility_flag varchar(10),
    samplestorage_address_line1 varchar(100),
    samplestorage_address_line2 varchar(100),
    samplestorage_address_line3 varchar(100),
    samplestorage_city varchar(100),
    samplestorage_zip varchar(100),
    samplestorage_state varchar(2),
    samplestorage_country varchar(100),
    hr_status varchar(100),
    reg_contract varchar(100),
    preferred_name varchar(100),
    business_unit_cd varchar(10),
    business_unit_name varchar(100),
    veeva_user_id varchar(100),
    mngr_employee_id varchar(100),
    birth_month_day varchar(5),
    calculated_rep_type varchar(20),
    job_code varchar(10),
    oracle_string varchar(50),
    global_employee_id varchar(35),
    supervisor_global_employee_id varchar(35),
    separation_date date,
    separation_reason varchar(100)
);


CREATE TABLE sandbox.scd_sales_geography
(
    scd_status varchar(10) DEFAULT 'Current',
    scd_effective_date date DEFAULT trunc("sysdate"()),
    scd_expiration_date date DEFAULT '2099-12-31'::date,
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


CREATE TABLE sandbox.onc_osm_targets
(
    tvcmid int,
    target_value varchar(50)
);


CREATE TABLE sandbox.speaker_bureau_results_09192018
(
    tvcmid int,
    npi int,
    last_name varchar(50),
    first_name varchar(50),
    middle_name varchar(50),
    address varchar(63),
    city varchar(50),
    state varchar(50),
    zip int,
    speaker_affiliation varchar(77),
    authorization_number varchar(50),
    sln_state varchar(50),
    license_expiration_date timestamp,
    license_type_name varchar(69),
    license_status_description varchar(50),
    license_certification_name varchar(50),
    oig_flag varchar(20),
    fda_flag varchar(20),
    dea_flag varchar(20),
    "promotional speaker flag" varchar(20),
    "personal promotion flag" varchar(20),
    "non-personal promotion flag" varchar(20),
    "advisor/ consultant flag" varchar(20)
);


CREATE TABLE sandbox.QVAR_Missing_SLN_10152018
(
    "Client ID" int,
    "First Name" varchar(50),
    "Last Name" varchar(50),
    "Middle Name" varchar(20),
    Suffix varchar(20),
    "Address 1" varchar(63),
    "Address 2" varchar(50),
    "Address 3" varchar(20),
    City varchar(50),
    State varchar(50),
    Zip int
);


CREATE TABLE sandbox."KNIPPER QVARs IDs1033"
(
    TVCMID int,
    ims_id int
);


CREATE TABLE sandbox.TJR_DRM45
(
    AUDIT_CODE varchar(10),
    CLIENT_GROUP_DESCRIPTION varchar(100),
    CLIENT_NBR varchar(3),
    FILE_CODE varchar(2),
    PRODUCT_GROUP_NBR varchar(8),
    PRODUCT_GROUP_NAME varchar(100),
    PRODUCT_CODE varchar(8),
    PACK_CODE varchar(3),
    PROD_DESC varchar(255),
    WHOLESALE_PRICE varchar(50),
    MFR_DESC varchar(100),
    MFR_CODE varchar(5),
    SPEC_REPACK_IND varchar(5),
    USC_CODE varchar(10)
);


CREATE TABLE sandbox.QNASL_IMSID_04112019
(
    IMSID int
);


CREATE TABLE sandbox.ingestion_databurst_updt
(
    table_name varchar(128)
);


CREATE TABLE sandbox.grants_teva_ingestion
(
    grant_id int,
    grantor_id int,
    grantor varchar(128),
    privileges_description varchar(8192),
    object_schema varchar(128),
    object_name varchar(128),
    object_id int,
    object_type varchar(8192),
    grantee_id int,
    grantee varchar(128)
);


CREATE TABLE sandbox.ZS_AM_SUBMRKT_PRODLIST_10162019
(
    basket_id int,
    basket_name varchar(60),
    basket_type varchar(50),
    parent_basket_name varchar(56)
);


CREATE TABLE sandbox.ZS_AM_SUBMRKT_PRODLIST_10232019
(
    basket_id int,
    basket_name varchar(60),
    basket_type varchar(50),
    parent_basket_name varchar(56),
    Sub_Mrkt varchar(52)
);


CREATE TABLE sandbox.austedo_firstrx_callinfo_1212
(
    ims_id_original varchar(10),
    call_date date,
    ims_id varchar(10),
    first_rx_date date
);


CREATE TABLE sandbox.austedo_callfrequency_data_12121
(
    ims_id_original varchar(10),
    first_rx_date date,
    total_calls_before_firstrx int
);


CREATE TABLE sandbox.austedo_callfrequency_data_1212
(
    ims_id_original varchar(10),
    first_rx_date date,
    total_calls_before_firstrx int
);


CREATE TABLE sandbox.J_CHUNG_DEA_IDs
(
    "Physician DEA#" varchar(50)
);


CREATE TABLE sandbox.mb_customer
(
    customer_id varchar(25),
    tvcmid int,
    ims_id varchar(10),
    ims_outlet_code varchar(10),
    ims_facility_number varchar(11),
    federation_id varchar(200),
    customer_type varchar(15),
    prescriber_type varchar(25),
    network_name varchar(100),
    account_name varchar(100),
    physician_first_name varchar(50),
    physician_last_name varchar(50),
    credential varchar(100),
    subcat_group varchar(100),
    subcat_code varchar(2),
    pdrp_flag varchar(1),
    pri_specialty_code varchar(10),
    pri_specialty_desc varchar(100),
    sec_specialty_code varchar(10),
    sec_specialty_desc varchar(100),
    cm_status_flag varchar(15),
    gpo varchar(100),
    dnp_flag varchar(1),
    product_1_dnc_flag varchar(1),
    product_2_dnc_flag varchar(1),
    a_specialty_group varchar(10),
    b_specialty_group varchar(10),
    c_specialty_group varchar(10),
    formulary_control varchar(20)
);


CREATE TABLE sandbox.test_con_curr
(
    cust_id float,
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10)
);


CREATE TABLE sandbox.mb_ic_demo_tn
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.mb_ic_rx_tn
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.mb_ic_rx_tr
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.mb_ic_demo_tr
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.PhysicianInfo_Dustin_0518
(
    "Prescribing Physician FN" varchar(50),
    "Prescribing Physician LN" varchar(50),
    "Prescribing Physician NPI" int,
    "Prescribing Physician Zip Code" int
);


CREATE TABLE sandbox.test_concur_curr_kg
(
    cust_id int,
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10)
);


CREATE TABLE sandbox.concur_hcp_curr
(
    cust_id int,
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10),
    create_date date
);


CREATE TABLE sandbox.concur_hcp_delta
(
    cust_id int,
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10),
    create_date date
);


CREATE TABLE sandbox.prescriber_rx_ics_splitweek_08252020
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
    indication varchar(20),
    pbm_parent_name varchar(100)
);


CREATE TABLE sandbox.idl_just_best_address
(
    cust_id int,
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10),
    create_date date
);


CREATE TABLE sandbox.test_wprefix_as
(
    cust_id varchar(23),
    organization_name varchar(1),
    contact_type varchar(3),
    first_name varchar(80),
    middle_name varchar(80),
    last_name varchar(80),
    suffix varchar(10),
    npi varchar(100),
    address_line_1 varchar(160),
    address_line_2 varchar(160),
    city varchar(80),
    state varchar(2),
    zipcode varchar(5),
    sln varchar(25),
    sln_state varchar(2),
    dea varchar(18),
    affiliation varchar(1),
    credential varchar(10),
    healthcare_professional_status_code varchar(10),
    create_date date
);


CREATE TABLE sandbox.TV46K_LAI
(
    "IMS ID" int,
    TRx_Count_APD numeric(28,10),
    Decile_APD int,
    TRx_Count_LAI numeric(28,10),
    Decile_LAI int,
    "Specialty Code" varchar(50),
    "Specialty Group" varchar(50)
);


CREATE TABLE sandbox."SYNEOS TARGET FILE"
(
    ims_id int,
    tvcmid int,
    basket_id int,
    basket_name varchar(50),
    territory_number varchar(50),
    sales_force_id varchar(50),
    flag_type varchar(50),
    flag_value varchar(50),
    flag_effective_start_date timestamp,
    flag_effective_end_date timestamp
);


CREATE TABLE sandbox."IMS ID ISSUE_AUSTEDO_10262020"
(
    "IMS ID" varchar(50)
);


CREATE TABLE sandbox.pgk_my_sandbox
(
    "IMS ID" int,
    Decile int,
    TVCMID int,
    "First Name" varchar(50),
    "Last Name" varchar(50),
    "Middle Name" varchar(50),
    Suffix varchar(50),
    "Address 1" varchar(79),
    "Address 2" varchar(75),
    "Address 3" varchar(50),
    City varchar(50),
    State varchar(50),
    Zip int,
    "SLN 1" varchar(20),
    "SLN 1 Expiration Date" varchar(20),
    "SLN 2" varchar(20),
    "SLN 2 State" varchar(20),
    "SLN 2 Expiration Date" varchar(20),
    Specialty varchar(50),
    "Specialty Description" varchar(66),
    "Specialty Group" varchar(50),
    "IMS ID_1" int,
    NPI varchar(50),
    DEA varchar(20),
    Designation varchar(50),
    Decile_1 int,
    "Email Rented?" varchar(73),
    "Dup IMS ID" varchar(20)
);


CREATE TABLE sandbox.TVCMID
(
    tvcmid int,
    State varchar(10)
);


CREATE TABLE sandbox.ic_rx_jan2021
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.ic_demo_jan2021
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.mb_to_weekly_account_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    customer_id varchar(25),
    tvcmid int,
    network_name varchar(100),
    account_name varchar(100),
    channel varchar(50),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    formulary_control varchar(20),
    gpo varchar(100),
    target varchar(100),
    new_account varchar(1),
    market_volume_indicator int,
    product_vol_dollars numeric(21,2),
    product_vol_mg int,
    product_vol_mcg int,
    market_vol_dollars numeric(21,2),
    market_vol_mg int,
    market_vol_mcg int,
    prev_prod_vol_dollars numeric(21,2),
    prev_prod_vol_mg int,
    prev_prod_vol_mcg int,
    prev_market_vol_dollars numeric(21,2),
    prev_market_vol_mg int,
    prev_market_vol_mcg int
);


CREATE TABLE sandbox.ic_rx_feb2021
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.ic_demo_feb2021
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.ic_rx_apr2021
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.ic_demo_apr2021
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.payer_demo
(
    payer_id int,
    payer_name varchar(80)
);


CREATE TABLE sandbox.ftf_formularies
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.ftf_health_plans
(
    formularyf_id varchar(6),
    provider_id varchar(6),
    provider varchar(250),
    health_plan_id varchar(6),
    health_plan varchar(100),
    parent_id varchar(6),
    parent varchar(250),
    national_lives_count int,
    plan_type_name varchar(250),
    preferred_brand_tier varchar(64),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.ftf_pbms
(
    health_plan_id varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.ims_pbm_xref
(
    pbm_name varchar(100),
    payer_plan_num varchar(10),
    xref_to_payer_plan_num varchar(10),
    ipd_id varchar(10),
    ipd_type varchar(10),
    plan_name varchar(100),
    pbm_num varchar(6),
    ims_processor_num varchar(10),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.ftf_ims_bridge
(
    payer_name varchar(200),
    code varchar(50),
    name varchar(250),
    state varchar(2),
    comments varchar(250),
    plan_id varchar(100),
    plan_name varchar(250),
    provider_name varchar(250),
    plan_type_name varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.iqvia_paytypeindex
(
    paytype_index varchar(64),
    paytype varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_paytypeindex.file_id);


CREATE TABLE sandbox.ftf_paytype_paytypeindex
(
    payType_index varchar(64),
    paytype varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_paytype_paytypeindex.file_id);


CREATE TABLE sandbox.step_restriction
(
    code int,
    restriction_group varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (step_restriction.file_id);


CREATE TABLE sandbox.medical_rec_restriction
(
    code int,
    restriction_detail_id varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (medical_rec_restriction.file_id);


CREATE TABLE sandbox.unspecified_rec_restriction
(
    code int,
    restriction_detail_id varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (unspecified_rec_restriction.file_id);


CREATE TABLE sandbox.raw_ftf_restrictions_2
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    restriction_code varchar(7),
    restriction_detail_id varchar(6),
    restriction_detail_text varchar(250),
    restriction_addtnl_information_1 varchar(4000),
    restriction_addtnl_information_2 varchar(4000),
    step_count varchar(50),
    pa_form varchar(4000),
    indication varchar(255),
    grouped_restriction_level varchar(255)
);


CREATE TABLE sandbox.raw_ftf_restrictions
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    restriction_code varchar(7),
    restriction_detail_id varchar(6),
    restriction_detail_text varchar(500),
    restriction_addtnl_information_1 varchar(4000),
    restriction_addtnl_information_2 varchar(4000),
    step_count varchar(50),
    pa_form varchar(4000),
    indication varchar(255),
    grouped_restriction_level varchar(255)
);


CREATE TABLE sandbox.raw_ftf_health_plan_geography
(
    health_plan_id varchar(6),
    county_fips_id int,
    county_id int,
    county_name varchar(50),
    state_id int,
    state_name varchar(10),
    county_lives numeric(14,2)
);


CREATE TABLE sandbox.raw_access_master_bridge
(
    ftf_health_plan_fid varchar(64),
    ftf_health_plan_name varchar(200),
    ajovy_coverage_category varchar(100),
    aimovid_coverage_category varchar(100),
    emgality_coverage_category varchar(100),
    ftf_provider_fid varchar(64),
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    pay_type_index varchar(64),
    pay_type varchar(64),
    ftf_health_plan_type varchar(64),
    key_controlling_plan_formulary varchar(100),
    key_controlling_account varchar(100),
    key_pbm varchar(100),
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(100),
    ftf_formulary_influencer_pbm varchar(100),
    ftf_claims_processing_pbm varchar(100),
    pref_brand_tier varchar(64),
    ftf_match_iqvia int,
    lives_m1 int,
    lives_m2 int,
    lives_m3 int,
    lives_m4 int,
    lives_m5 int,
    lives_m6 int,
    lives_m7 int,
    lives_m8 int,
    lives_m9 int,
    lives_m10 int,
    lives_m11 int,
    lives_m12 int,
    lives_m13 int,
    lives_m14 int,
    lives_m15 int,
    lives_m16 int,
    lives_m17 int
);


CREATE TABLE sandbox.access_monitor_s121
(
    client_id varchar(4),
    client_physician_id varchar(25),
    me_number varchar(11),
    npi varchar(11),
    valid_menum_flag numeric(5,2),
    valid_npi_flag numeric(5,2),
    am_no_see_rating numeric(5,2),
    teams_no_see_rating varchar(25),
    annual_call_freq_perc_25 numeric(5,2),
    annual_call_freq_perc_50 numeric(5,2),
    annual_call_freq_perc_75 numeric(5,2),
    teams_call_freq varchar(25),
    industry_attainment numeric(5,2),
    teams_attainment varchar(25),
    attn_perc_25 numeric(5,2),
    attn_perc_50 numeric(5,2),
    attn_perc_75 numeric(5,2),
    teams_attn_perc varchar(25),
    am_specialty_grouping varchar(50),
    teams_spec varchar(25),
    am_zip varchar(15),
    teams_zip varchar(25),
    reach_type varchar(25),
    annual_f2f_call_freq_perc_25 numeric(5,2),
    annual_f2f_call_freq_perc_50 numeric(5,2),
    annual_f2f_call_freq_perc_75 numeric(5,2),
    teams_call_freq_f2f varchar(25),
    annual_remote_call_freq_perc_25 numeric(5,2),
    annual_remote_call_freq_perc_50 numeric(5,2),
    annual_remote_call_freq_perc_75 numeric(5,2),
    teams_call_freq_remote varchar(25)
);


CREATE TABLE sandbox.Enrollment
(
    Prescriber_Name varchar(150),
    State varchar(50),
    Zip varchar(10),
    NPI varchar(15)
);


CREATE TABLE sandbox.ic_rx_may2021
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
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.ic_demo_may2021
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
    row_create_date date,
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.PGKMediCal
(
    "<NullColumn 0>" varchar(50),
    "<NullColumn 1>" varchar(53),
    "<NullColumn 2>" varchar(50),
    "<NullColumn 3>" varchar(50),
    "<NullColumn 4>" varchar(50),
    "<NullColumn 5>" varchar(50),
    "<NullColumn 6>" varchar(50),
    "<NullColumn 7>" varchar(66),
    "<NullColumn 8>" varchar(50),
    "<NullColumn 9>" numeric(28,10),
    "<NullColumn 10>" numeric(28,10),
    "<NullColumn 11>" numeric(28,10),
    "<NullColumn 12>" numeric(28,10)
);


CREATE TABLE sandbox.PSS_ARX_HCP_LIST
(
    "Prescribing Physician FN" varchar(50),
    "Prescribing Physician LN" varchar(50),
    "Prescribing Physician NPI" int
);


CREATE TABLE sandbox.comparison_payer_spine_cdw_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(300),
    iqvia_payer_name varchar(300),
    iqvia_pbm varchar(300),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    payment_type varchar(300),
    ajovy_access_for_ftf_plan varchar(300),
    aimovig_access_for_ftf_plan varchar(300),
    emgality_access_for_ftf_plan varchar(300),
    lives_plan_kcf_lvl int,
    lives_plan_lvl int,
    apportionment_factor numeric(37,15),
    saba_trx numeric(37,15),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_payment_type int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_lives_plan_kcf_lvl int,
    change_lives_plan_lvl int,
    change_apportionment_factor int,
    change_saba_trx int,
    change int,
    month_flag varchar(200),
    status varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (comparison_payer_spine_cdw_v1.cycle_id);


CREATE TABLE sandbox.tmp_weekly_total_calls
(
    sales_force_id varchar(8),
    call_id varchar(80),
    customer_id varchar(20),
    geography_level varchar(9),
    geography_id varchar(10),
    geography varchar(100),
    rep_name varchar(1),
    user_id varchar(1),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(11),
    time_period varchar(6),
    period_type varchar(5),
    period varchar(63),
    week_bucket int,
    date_sent timestamptz,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(3),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int
);


CREATE TABLE sandbox.temp_sp
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    geography_level varchar(9),
    geography_id varchar(10),
    geography varchar(100),
    rep_name varchar(1),
    user_id varchar(1),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    time_period varchar(6),
    period_type varchar(5),
    period date,
    week_bucket int,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(15),
    call_recordtype varchar(80),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int,
    prsc_reach int
);


CREATE TABLE sandbox.test_cumm_count
(
    period varchar(80),
    customer_id varchar(80)
);


CREATE TABLE sandbox.coverage_category_derivation_config_vOct
(
    tier_regex varchar(200),
    pharmacy_status_regex varchar(200),
    paytype_regex varchar(200),
    haspa_regex varchar(200),
    hasst_regex varchar(200),
    haspast_regex varchar(200),
    rest_groupstep_regex varchar(200),
    coverage_category varchar(200),
    record_id int,
    file_id int
)
PARTITION BY (coverage_category_derivation_config_vOct.file_id);


CREATE TABLE sandbox.ftf_restriction_id_group_mapping
(
    restriction_detail_id int,
    restriction_detail_text varchar(15000),
    grouped_restriction_level varchar(3000),
    coverage_category varchar(1000),
    used_flag int,
    notes varchar(1000),
    file_id int,
    record_id int
)
PARTITION BY (ftf_restriction_id_group_mapping.file_id);


CREATE TABLE sandbox.ts_monthly_new_prescriber
(
    customer_id varchar(200),
    brand_id int,
    month_ending date,
    month_bucket int,
    curr_trx float,
    prev_trx float
);


CREATE TABLE sandbox.ts_monthly_prescriber_sales
(
    customer_id varchar(200),
    tvcmid int,
    ims_id varchar(200),
    product_id int,
    payer_plan_id varchar(200),
    month_ending date,
    month_bucket int,
    data_source varchar(200),
    channel varchar(30),
    pbm_name varchar(100),
    method_of_payment varchar(250),
    trx float,
    nrx float,
    trx_units float,
    nrx_units float,
    trx_dollars int,
    nrx_dollars int,
    new_prescriber varchar(1)
);


CREATE TABLE sandbox.ts_monthly_prescriber_sales_summary
(
    sales_force_id varchar(200),
    customer_id varchar(200),
    tvcmid int,
    ims_id varchar(200),
    period_type varchar(200),
    period varchar(200),
    month_ending date,
    month_bucket int,
    market_id int,
    brand_id int,
    payer_id varchar(200),
    payer_plan_id varchar(200),
    method_of_payment varchar(200),
    hcp_restriction_flag varchar(200),
    segment varchar(200),
    decile varchar(200),
    hcp_payer_vol_rank int,
    hcp_plan_vol_rank int,
    product_vol_trx_count numeric(37,15),
    prev_prod_vol_trx_count numeric(37,15),
    product_vol_nrx_count numeric(37,15),
    prev_prod_vol_nrx_count numeric(37,15),
    market_vol_trx_count numeric(37,15),
    prev_market_vol_trx_count numeric(37,15),
    market_vol_nrx_count numeric(37,15),
    prev_market_vol_nrx_count numeric(37,15),
    samples numeric(37,15),
    details_p1 numeric(37,15),
    details_p2 numeric(37,15),
    details_p3 numeric(37,15)
);


CREATE TABLE sandbox.ts_monthly_prescriber_summary
(
    sales_force_id varchar(200),
    nation_id varchar(10),
    nation varchar(100),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(200),
    period varchar(200),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    customer_id varchar(200),
    tvcmid int,
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(200),
    prescriber_name varchar(102),
    new_prescriber varchar(1),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    target_status_flag varchar(1),
    partner_target_status_flag varchar(1),
    method_of_payment varchar(200),
    specialty varchar(25),
    segment varchar(200),
    decile varchar(200),
    market_volume_indicator int,
    product_vol_trx_count numeric(37,15),
    market_vol_trx_count numeric(37,15),
    prev_prod_vol_trx_count numeric(37,15),
    prev_market_vol_trx_count numeric(37,15),
    product_vol_nrx_count numeric(37,15),
    market_vol_nrx_count numeric(37,15),
    prev_prod_vol_nrx_count numeric(37,15),
    prev_market_vol_nrx_count numeric(37,15),
    samples numeric(37,15),
    details_p1 numeric(37,15),
    details_p2 numeric(37,15),
    details_p3 numeric(37,15)
);


CREATE TABLE sandbox.ts_monthly_payer_prescriber_summary
(
    sales_force_id varchar(200),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(6),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    customer_id varchar(25),
    tvcmid int,
    hcp_plan_vol_rank int,
    prescriber_name varchar(100),
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(1),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(10),
    target_status_flag varchar(5),
    partner_target_status_flag varchar(5),
    method_of_payment varchar(250),
    specialty varchar(25),
    segment varchar(100),
    decile varchar(100),
    rep_type varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int,
    Nation_Product_TRx_Count numeric(21,3),
    Nation_Product_NRx_Count numeric(21,3),
    Nation_Market_TRx_Count numeric(21,3),
    Nation_Market_NRx_Count numeric(21,3),
    Nation_Product_TRx_Payer_Count numeric(21,3),
    Nation_Product_NRx_Payer_Count numeric(21,3),
    Nation_Market_TRx_Payer_Count numeric(21,3),
    Nation_Market_NRx_Payer_Count numeric(21,3),
    Nation_Product_TRx_Plan_Count numeric(21,3),
    Nation_Product_NRx_Plan_Count numeric(21,3),
    Nation_Market_TRx_Plan_Count numeric(21,3),
    Nation_Market_NRx_Plan_Count numeric(21,3),
    focus_target varchar(100)
);


CREATE TABLE sandbox.ts_monthly_geography_summary
(
    sales_force_id varchar(200),
    geography_level varchar(10),
    geography_id varchar(100),
    geography varchar(250),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(15),
    period varchar(15),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    target_status_flag varchar(1),
    method_of_payment varchar(250),
    specialty varchar(15),
    segment varchar(100),
    rep_type varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    product_vol_new_pres_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    product_vol_new_pres_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    prescribers_count int,
    new_prescribers_count int,
    decile varchar(100)
);


CREATE TABLE sandbox.ts_pre_call_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    rep_type varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(6),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    customer_id varchar(25),
    tvcmid int,
    hcp_plan_vol_rank int,
    prescriber_name varchar(100),
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(1),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(10),
    target_status_flag varchar(5),
    partner_target_status_flag varchar(5),
    method_of_payment varchar(250),
    specialty varchar(25),
    segment varchar(100),
    decile varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int,
    focus_target varchar(100)
);


CREATE TABLE sandbox.ts_weekly_prescriber_sales
(
    customer_id varchar(25),
    tvcmid int,
    ims_id varchar(10),
    product_id int,
    payer_plan_id varchar(10),
    week_ending date,
    week_bucket int,
    data_source varchar(7),
    channel varchar(30),
    pbm_name varchar(100),
    method_of_payment varchar(250),
    trx numeric(18,3),
    nrx numeric(18,3),
    trx_units numeric(18,3),
    nrx_units numeric(18,3),
    trx_dollars int,
    nrx_dollars int,
    new_prescriber varchar(1)
);


CREATE TABLE sandbox.ts_weekly_new_prescriber
(
    customer_id varchar(25),
    brand_id int,
    week_ending date,
    week_bucket int,
    curr_trx numeric(21,3),
    prev_trx numeric(21,3)
);


CREATE TABLE sandbox.ts_weekly_prescriber_sales_summary
(
    sales_force_id varchar(5),
    customer_id varchar(25),
    tvcmid int,
    ims_id varchar(10),
    period_type varchar(10),
    period varchar(11),
    week_ending date,
    week_bucket int,
    market_id int,
    brand_id int,
    payer_id varchar(6),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    hcp_payer_vol_rank int,
    hcp_plan_vol_rank int,
    product_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples numeric(20,2),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2)
);


CREATE TABLE sandbox.ts_weekly_prescriber_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(100),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    customer_id varchar(25),
    tvcmid int,
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(1),
    prescriber_name varchar(100),
    new_prescriber varchar(5),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(10),
    partner_target_status_flag varchar(5),
    target_status_flag varchar(5),
    method_of_payment varchar(250),
    specialty varchar(25),
    segment varchar(100),
    decile varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int
);


CREATE TABLE sandbox.ts_weekly_payer_prescriber_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(6),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    customer_id varchar(25),
    tvcmid int,
    hcp_plan_vol_rank int,
    prescriber_name varchar(100),
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(1),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(10),
    target_status_flag varchar(5),
    partner_target_status_flag varchar(5),
    method_of_payment varchar(250),
    specialty varchar(25),
    segment varchar(100),
    decile varchar(100),
    rep_type varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int,
    focus_target varchar(100)
);


CREATE TABLE sandbox.ts_weekly_geography_summary
(
    sales_force_id varchar(5),
    geography_level varchar(10),
    geography_id varchar(100),
    geography varchar(250),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(15),
    period varchar(15),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    target_status_flag varchar(1),
    method_of_payment varchar(250),
    rep_type varchar(100),
    specialty varchar(15),
    segment varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    product_vol_new_pres_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    product_vol_new_pres_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    prescribers_count int,
    new_prescribers_count int,
    decile varchar(100)
);


CREATE TABLE sandbox.sales_force_headcounts
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int,
    rep_type varchar(100)
);


CREATE TABLE sandbox.reporting_markets
(
    basket_id int,
    basket_name varchar(300),
    basket_type varchar(100),
    status varchar(1),
    geo_summary_include varchar(1),
    presc_summary_include varchar(1),
    market_share_market_id int,
    market_share_brand_id int,
    rptg_decile_attribute_type varchar(100),
    rptg_decile_attribute_prod_id int,
    rptg_segment_attribute_type varchar(100),
    rptg_segment_attribute_prod_id int
);


CREATE TABLE sandbox.tmp_monthly_hcp_activity
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    territory_id varchar(10),
    product_id int,
    month_ending date,
    month_bucket int,
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(20,2)
);


CREATE TABLE sandbox.tmp_monthly_hcp_trend_v2
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    geography_level varchar(10),
    nation_id varchar(10),
    nation_name varchar(100),
    area_id varchar(10),
    area_name varchar(100),
    region_id varchar(10),
    region_name varchar(100),
    territory_id varchar(10),
    territory_name varchar(100),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    time_period varchar(7),
    period_type varchar(5),
    period date,
    month_bucket int,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(20,2)
);


CREATE TABLE sandbox.par_rnf_test
(
    sales_force_id varchar(5),
    geography_level varchar(9),
    geography_id varchar(10),
    geography varchar(100),
    rep_name varchar(1),
    user_id varchar(1),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    time_period varchar(7),
    period_type varchar(5),
    period date,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(20,2),
    prescriber_count_calls int,
    prescriber_count_samples int,
    prescriber_reached_calls int,
    prescriber_reached_samples int
);


CREATE TABLE sandbox.ts_weekly_account_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    rep_type varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    customer_id varchar(25),
    tvcmid int,
    network_name varchar(100),
    account_name varchar(100),
    channel varchar(50),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    formulary_control varchar(20),
    gpo varchar(100),
    target varchar(100),
    decile varchar(100),
    new_account varchar(1),
    market_volume_indicator int,
    product_vol_units numeric(18,3),
    market_vol_units numeric(18,3),
    prev_prod_vol_units numeric(18,3),
    prev_market_vol_units numeric(18,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int
);


CREATE TABLE sandbox.ts_weekly_account_geography_summary
(
    sales_force_id varchar(5),
    geography_level varchar(10),
    geography_id varchar(100),
    geography varchar(250),
    rep_name varchar(100),
    rep_type varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(15),
    period varchar(15),
    segment varchar(100),
    decile varchar(100),
    target varchar(100),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    channel varchar(50),
    market_volume_indicator int,
    new_accounts int,
    accounts_ordering int,
    avg_sales_per_account numeric(18,2),
    prev_accounts_ordering int,
    product_vol_units numeric(18,3),
    market_vol_units numeric(18,3),
    prev_prod_vol_units numeric(18,3),
    prev_market_vol_units numeric(18,3),
    accounts_detailed_count int,
    total_accounts_count int
);


CREATE TABLE sandbox.tmp_monthly_hcp_trend
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    geography_level varchar(10),
    nation_id varchar(10),
    nation_name varchar(100),
    area_id varchar(10),
    area_name varchar(100),
    region_id varchar(10),
    region_name varchar(100),
    territory_id varchar(10),
    territory_name varchar(100),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    time_period varchar(7),
    period_type varchar(5),
    period date,
    month_bucket int,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(38,20)
);


CREATE TABLE sandbox.par_rnf_ho
(
    sales_force_id varchar(5),
    geography_level varchar(10),
    geography_id varchar(100),
    geography varchar(250),
    rep_name varchar(100),
    user_id varchar(255),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(15),
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(25),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int,
    prescriber_count_calls int,
    prescriber_count_samples int,
    prescriber_reached_calls int,
    prescriber_reached_samples int,
    how_executed varchar(40),
    call_recordtype varchar(80)
);


CREATE TABLE sandbox.uzedy_reverse_geo_payer_weekly
(
    ts_nation_id varchar(10),
    ts_nation varchar(10),
    ts_area_id varchar(10),
    ts_area varchar(100),
    ts_region_id varchar(10),
    ts_region varchar(100),
    ts_territory_id varchar(10),
    ts_territory varchar(100),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    pbm_id varchar(6),
    pbm_name varchar(100),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(6),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    state varchar(100),
    zip varchar(10),
    key_controlling_parent varchar(100),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    gpo varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3)
);


CREATE TABLE sandbox.tmp_weekly_hcp_activity_1
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    territory_id varchar(10),
    product_id int,
    week_ending date,
    week_bucket int,
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(38,20)
);


CREATE TABLE sandbox.tmp_weekly_rte_trend
(
    sales_force_id varchar(8),
    call_id varchar(80),
    customer_id varchar(20),
    geography_level varchar(6),
    geography_id varchar(8),
    geography varchar(6),
    rep_name varchar(1),
    user_id varchar(1),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(2600),
    time_period varchar(6),
    period_type varchar(5),
    period date,
    week_bucket int,
    date_sent timestamptz,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(3),
    call_recordtype varchar(1),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int
);


CREATE TABLE sandbox.tmp_monthly_rte_trend
(
    sales_force_id varchar(8),
    call_id varchar(80),
    customer_id varchar(20),
    geography_level varchar(6),
    geography_id varchar(8),
    geography varchar(6),
    rep_name varchar(1),
    user_id varchar(1),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(2600),
    time_period varchar(7),
    period_type varchar(5),
    period date,
    month_bucket int,
    date_sent timestamptz,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(3),
    call_recordtype varchar(1),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int
);


CREATE TABLE sandbox.tmp_monthly_rte_agg
(
    customer_id varchar(20),
    sales_force_id varchar(8),
    geography_level varchar(6),
    geography_id varchar(8),
    geography varchar(6),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(2600),
    time_period varchar(7),
    period_type varchar(10),
    period varchar(11),
    date_sent timestamptz,
    decile varchar(100),
    segment varchar(100),
    specialty varchar(25),
    target_status varchar(100),
    how_executed varchar(3),
    call_recordtype varchar(1),
    details_p1 int,
    details_p2 int,
    details_p3 int,
    total_details int,
    samples int
);


CREATE TABLE sandbox.ajovy_reverse_geo_payer
(
    ma_nation_id varchar(8),
    ma_nation varchar(200),
    ma_area_id varchar(8),
    ma_area varchar(200),
    ma_region_id varchar(8),
    ma_region varchar(200),
    ma_territory_id varchar(8),
    ma_territory varchar(200),
    ns_nation_id varchar(8),
    ns_nation varchar(200),
    ns_area_id varchar(8),
    ns_area varchar(200),
    ns_region_id varchar(8),
    ns_region varchar(200),
    ns_territory_id varchar(8),
    ns_territory varchar(200),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    time_period varchar(15),
    period_type varchar(15),
    period varchar(100),
    pbm_id varchar(6),
    pbm_name varchar(100),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(4),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    state varchar(2),
    zip varchar(5),
    final_key_controlling_account varchar(100),
    key_parent_account varchar(100),
    ajovy_formulary_status varchar(100),
    aimovig_formulary_status varchar(100),
    emgality_formulary_status varchar(100),
    plan_payment_type varchar(10),
    market_volume_indicator varchar(1),
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    lives_covered int,
    key_controlling_parent varchar(100),
    gpo varchar(100)
);


CREATE TABLE sandbox.austedo_reverse_geo_payer
(
    ma_nation_id varchar(8),
    ma_nation varchar(200),
    ma_area_id varchar(8),
    ma_area varchar(200),
    ma_region_id varchar(8),
    ma_region varchar(200),
    ma_territory_id varchar(8),
    ma_territory varchar(200),
    np_nation_id varchar(8),
    np_nation varchar(200),
    np_area_id varchar(8),
    np_area varchar(200),
    np_region_id varchar(8),
    np_region varchar(200),
    np_territory_id varchar(8),
    np_territory varchar(200),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    time_period varchar(15),
    period_type varchar(15),
    period varchar(100),
    pbm_id varchar(6),
    pbm_name varchar(100),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(4),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    state varchar(2),
    zip varchar(5),
    final_key_controlling_account varchar(100),
    key_parent_account varchar(100),
    plan_payment_type varchar(10),
    market_volume_indicator varchar(1),
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    key_controlling_parent varchar(100),
    gpo varchar(100)
);


CREATE TABLE sandbox.digihaler_reverse_geo_payer
(
    ma_nation_id varchar(8),
    ma_nation varchar(200),
    ma_area_id varchar(8),
    ma_area varchar(200),
    ma_region_id varchar(8),
    ma_region varchar(200),
    ma_territory_id varchar(8),
    ma_territory varchar(200),
    rs_nation_id varchar(8),
    rs_nation varchar(200),
    rs_area_id varchar(8),
    rs_area varchar(200),
    rs_region_id varchar(8),
    rs_region varchar(200),
    rs_territory_id varchar(8),
    rs_territory varchar(200),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    time_period varchar(15),
    period_type varchar(15),
    period varchar(100),
    pbm_id varchar(6),
    pbm_name varchar(100),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(4),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    state varchar(2),
    zip varchar(5),
    final_key_controlling_account varchar(100),
    key_parent_account varchar(100),
    plan_payment_type varchar(10),
    market_volume_indicator varchar(1),
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    key_controlling_parent varchar(100),
    gpo varchar(100)
);


CREATE TABLE sandbox.tp_anti_psych_weekly_new_prescriber
(
    customer_id varchar(25),
    brand_id int,
    week_ending date,
    week_bucket int,
    curr_trx numeric(21,3),
    prev_trx numeric(21,3)
);


CREATE TABLE sandbox.tp_anti_psych_weekly_prescriber_sales
(
    customer_id varchar(25),
    tvcmid int,
    ims_id varchar(10),
    product_id int,
    payer_plan_id varchar(10),
    week_ending date,
    week_bucket int,
    data_source varchar(7),
    channel varchar(30),
    pbm_name varchar(100),
    method_of_payment varchar(250),
    trx numeric(18,3),
    nrx numeric(18,3),
    trx_units numeric(18,3),
    nrx_units numeric(18,3),
    trx_dollars int,
    nrx_dollars int,
    new_prescriber varchar(1)
);


CREATE TABLE sandbox.tp_anti_psych_weekly_prescriber_sales_summary
(
    sales_force_id varchar(5),
    customer_id varchar(25),
    tvcmid int,
    ims_id varchar(10),
    period_type varchar(10),
    period varchar(11),
    week_ending date,
    week_bucket int,
    market_id int,
    brand_id int,
    payer_id varchar(6),
    payer_plan_id varchar(10),
    method_of_payment varchar(250),
    hcp_payer_vol_rank int,
    hcp_plan_vol_rank int,
    product_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples numeric(20,2),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2)
);


CREATE TABLE sandbox.tp_anti_psych_weekly_payer_prescriber_summary
(
    sales_force_id varchar(5),
    nation_id varchar(10),
    nation varchar(10),
    area_id varchar(10),
    area varchar(100),
    region_id varchar(10),
    region varchar(100),
    territory_id varchar(10),
    territory varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    time_period varchar(10),
    period_type varchar(10),
    period varchar(11),
    market_id int,
    market_name varchar(300),
    brand_id int,
    brand_name varchar(300),
    teva_product_flag varchar(1),
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(6),
    plan_name varchar(100),
    payer_plan_id varchar(10),
    customer_id varchar(25),
    tvcmid int,
    hcp_plan_vol_rank int,
    prescriber_name varchar(100),
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(1),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(10),
    target_status_flag varchar(5),
    partner_target_status_flag varchar(5),
    method_of_payment varchar(250),
    specialty varchar(25),
    segment varchar(100),
    decile varchar(100),
    market_volume_indicator int,
    product_vol_trx_count numeric(21,3),
    market_vol_trx_count numeric(21,3),
    prev_prod_vol_trx_count numeric(21,3),
    prev_market_vol_trx_count numeric(21,3),
    product_vol_nrx_count numeric(21,3),
    market_vol_nrx_count numeric(21,3),
    prev_prod_vol_nrx_count numeric(21,3),
    prev_market_vol_nrx_count numeric(21,3),
    samples int,
    details_p1 int,
    details_p2 int,
    details_p3 int,
    focus_target varchar(100)
);


CREATE TABLE sandbox.tmp_weekly_hcp_activity
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    territory_id varchar(10),
    product_id int,
    week_ending date,
    week_bucket int,
    target_status varchar(100),
    how_executed varchar(40),
    call_recordtype varchar(80),
    details_p1 numeric(20,2),
    details_p2 numeric(20,2),
    details_p3 numeric(20,2),
    total_details numeric(20,2),
    samples numeric(38,20)
);