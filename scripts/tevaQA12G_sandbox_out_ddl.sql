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


CREATE TABLE sandbox.tmp_weekly_hcp_trend
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
    time_period varchar(6),
    period_type varchar(5),
    period date,
    week_bucket int,
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


CREATE TABLE sandbox.tmp_weekly_hcp_agg
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
    time_period varchar(6),
    period_type varchar(10),
    period varchar(10),
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


CREATE TABLE sandbox.tmp_hcp_universe
(
    customer_id varchar(25),
    sales_force_id varchar(5),
    current_geography_id varchar(10),
    product_id int,
    target_status varchar(1),
    period_ending date,
    week_bucket int
);


CREATE TABLE sandbox.oncology_sales_deciles
(
    account_demo_id int,
    outlet_name varchar(100),
    outlet_zip varchar(5),
    decile_name varchar(75),
    basket_id int,
    basket_name varchar(300),
    decile_reported_dollars_6_mo int,
    decile_reported_dollars_12_mo int,
    reported_dollars_6_mo float,
    reported_dollars_12_mo float,
    reported_dollars_24_mo float,
    tvcmid int
);


CREATE TABLE sandbox.ic_ms_market_decile_201701
(
    ims_id varchar(10),
    category varchar(100),
    decile_name varchar(50),
    trx_cnt_01_06 int,
    trx_cnt_01_12 int
);


CREATE TABLE sandbox.STG_LAAD_DIAGNOSIS
(
    CLAIM_ID numeric(19,0),
    PATIENT_ID numeric(19,0),
    SERVICE_DATE date,
    DIAGNOSIS_CODE varchar(20),
    RENDERING_PRESCRIBER_ID numeric(19,0),
    REFERRING_PRESCRIBER_ID numeric(19,0)
);


CREATE TABLE sandbox.STG_LAAD_DIAGNOSIS_CODE
(
    DIAGNOSIS_CODE varchar(20),
    DIAGNOSIS_DESCRIPTION varchar(300)
);


CREATE TABLE sandbox.STG_LAAD_PATIENT
(
    PATIENT_ID numeric(19,0),
    PATIENT_BIRTH_YEAR numeric(4,0),
    PATIENT_GENDER varchar(1)
);


CREATE TABLE sandbox.STG_LAAD_PLAN
(
    PLAN_ID varchar(10),
    PAYER_NAME varchar(50),
    PLAN_NAME varchar(50),
    PBM_NAME varchar(50),
    METHOD_OF_PAYMENT varchar(50),
    MODEL_TYPE varchar(50)
);


CREATE TABLE sandbox.STG_LAAD_PRESCRIBER
(
    PRESCRIBER_ID varchar(10),
    FIRST_NAME varchar(100),
    LAST_NAME varchar(100),
    ADDRESS varchar(100),
    CITY varchar(100),
    STATE varchar(2),
    ZIP varchar(5),
    SPECIALTY_CODE varchar(10),
    SPECIALTY_DESC varchar(300),
    ME_NUM varchar(20),
    NPI varchar(20)
);


CREATE TABLE sandbox.STG_LAAD_PROCEDURE
(
    CLAIM_ID numeric(19,0),
    CLAIM_SERVICE_NUMBER numeric(19,0),
    PATIENT_ID numeric(19,0),
    SERVICE_DATE date,
    PROCEDURE_CODE varchar(20),
    RENDERING_PRESCRIBER_ID numeric(19,0),
    REFERRING_PRESCRIBER_ID numeric(19,0)
);


CREATE TABLE sandbox.STG_LAAD_PROCEDURE_CODE
(
    PROCEDURE_CODE varchar(20),
    PROCEDURE_DESCRIPTION varchar(100)
);


CREATE TABLE sandbox.STG_LAAD_PRODUCT
(
    NATL_DRUG_CODE varchar(11),
    BRAND_NAME varchar(100),
    GENERIC_NAME varchar(100),
    BRAND_GENERIC_FLAG varchar(1),
    DRUG_FORM varchar(100),
    DRUG_STRENGTH varchar(100),
    PACKAGE_SIZE numeric(10,2),
    MANUFACTURER varchar(100),
    USC_CODE varchar(5),
    USC_DESCRIPTION varchar(50)
);


CREATE TABLE sandbox.create_paragard_specialty_rx1
(
    "BP #" varchar(50),
    "Ortho E" varchar(1),
    "BP Name" varchar(100),
    "Ship-to Street" varchar(100),
    "Ship-to City" varchar(50),
    "Ship-to State" varchar(2),
    "Ship-to ZipCd" varchar(20),
    "Ship-to Ctry" varchar(1),
    "Ship-to Phone" varchar(1),
    "Ship-to Fax" varchar(1),
    "Ship-to Email" varchar(1),
    "Bill-to Street" varchar(100),
    "Bill-to City" varchar(50),
    "Bill-to State" varchar(20),
    "Bill-to ZipCd" varchar(10),
    "Bill-to Ctry" varchar(1),
    "Bill-to Phone" varchar(1),
    "Bill-to Fax" varchar(1),
    "Bill-to Email" varchar(1),
    "Class of Trade" varchar(20),
    "Invoice #" varchar(50),
    "Del Amt" varchar(42),
    "Inv Date" varchar(110),
    "24237" varchar(22),
    "24238" varchar(1),
    "24800" varchar(1),
    "33223" varchar(1),
    Packs varchar(20),
    UnitPrice varchar(1),
    Territory varchar(1),
    "Order Type Cd" varchar(1),
    "Order Type Desc" varchar(1),
    LOBCdDesc varchar(1),
    PriceMatrixDef varchar(1),
    ParentBPCd varchar(110),
    ParentBPCdDesc varchar(1),
    GrandParentBPCdDesc varchar(1),
    "PO#" varchar(1),
    "UPS#" varchar(1),
    OrdNbr varchar(50),
    OrdLnNbr varchar(1),
    DiscAmt varchar(1),
    WhseCd varchar(1),
    Data_Source varchar(4),
    NDC11_CODE varchar(11)
);


CREATE TABLE sandbox.load_bag_territory
(
    territory_number varchar(8),
    bag_name varchar(100)
);


CREATE TABLE sandbox.ic_rx_factor
(
    ic_data_month date,
    basket_name varchar(300),
    sales_force_id varchar(20),
    rollup_month date,
    multiplier float,
    approved_trx_count float,
    total_trx_count float
);


CREATE TABLE sandbox.qc_table_stats
(
    log_date date NOT NULL,
    table_schema varchar(128) NOT NULL,
    table_name varchar(128) NOT NULL,
    row_count int,
    used_bytes int,
    null_tvcmid_count int,
    null_basket_id_count int,
    unique_file_ids int,
    max_file_id int,
    CONSTRAINT C_PRIMARY PRIMARY KEY (log_date, table_schema, table_name) DISABLED
);


CREATE TABLE sandbox.oncology_detail_goals
(
    territory_number varchar(8),
    bendeka_quota int,
    granix_quota int
);


CREATE TABLE sandbox.onc_sales_adjustment_load
(
    adj_code varchar(10),
    adj_time_period varchar(10),
    tvcmid int,
    basket_id int,
    adj_factor numeric(10,2)
);


CREATE TABLE sandbox.customer_flags_nr
(
    hcp_id varchar(50),
    flag_type varchar(50),
    flag_value varchar(50)
);


CREATE TABLE sandbox.tmp_mil_roster
(
    SALES_FORCE_ID varchar(100),
    REP_TYPE varchar(10),
    TERRITORY_NUM varchar(100),
    LAST_NAME varchar(100),
    FIRST_NAME varchar(100),
    SHIP_ADDRESS_LINE1 varchar(100),
    SHIP_ADDRESS_LINE2 varchar(100),
    SHIP_CITY varchar(100),
    SHIP_STATE varchar(2),
    SHIP_ZIP varchar(100),
    PHONE varchar(100),
    EMAIL varchar(255),
    DISTRICT varchar(100),
    REGION varchar(100)
);


CREATE TABLE sandbox.data_feed_metadata_bkp
(
    feed_id int,
    short_name varchar(255),
    subject_area varchar(255),
    source_name varchar(255),
    description varchar(255),
    frequency varchar(255),
    incremental boolean,
    process_cleanse boolean,
    process_intg boolean,
    source_id int
);


CREATE TABLE sandbox.scd_sfa_demographics
(
    scd_status varchar(10) DEFAULT 'Current',
    scd_effective_date date DEFAULT trunc("sysdate"()),
    scd_expiration_date date DEFAULT '2099-12-31'::date,
    veeva_account_id varchar(32),
    sales_force_id varchar(5),
    customer_type varchar(50),
    ims_id varchar(10),
    npi varchar(10),
    ims_outlet_code varchar(12),
    territory_number varchar(8),
    territory_type varchar(10),
    territory_status varchar(30),
    last_name varchar(80),
    first_name varchar(50),
    middle_name varchar(50),
    suffix_name varchar(10),
    credentials varchar(50),
    organization_name varchar(255),
    veeva_address_id varchar(20),
    address_line1 varchar(100),
    address_line2 varchar(100),
    address_line3 varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(10),
    address_status varchar(20),
    phone varchar(50),
    phone_ext varchar(12),
    fax varchar(50),
    mobile varchar(50),
    email varchar(200),
    prim_specialty varchar(255),
    specialty_code varchar(5),
    sfa_create_date date,
    bp_code varchar(20),
    sfa_align_date date,
    account_demo_id varchar(30),
    pdrp_flag varchar(5),
    designation varchar(255),
    business_type varchar(40),
    area_number varchar(8),
    region_number varchar(8),
    tvcmid int,
    address_id int
);


CREATE TABLE sandbox.QVAR_IDs_From_Knipper
(
    "Client ID" int,
    "IMS ID" int
);


CREATE TABLE sandbox.compliance_speaker_list_adhoc
(
    tvcmid int,
    npi int,
    last_name varchar(50),
    first_name varchar(50),
    middle_name varchar(20),
    address varchar(61),
    city varchar(50),
    state varchar(50),
    zip int,
    speaker_affiliation varchar(50)
);


CREATE TABLE sandbox.compliance_speaker_list_adhoc_2
(
    "Teva CMID" int,
    NPI int,
    LastName varchar(50),
    FirstName varchar(50),
    MiddleIntial varchar(50),
    Address varchar(52),
    City varchar(50),
    State varchar(50),
    Zip int,
    "Speaker Affiliation" varchar(50)
);


CREATE TABLE sandbox.ic_copay
(
    ic_data_month date,
    basket_name varchar(300),
    ims_id varchar(10),
    tvcmid int,
    fill_date date,
    txn_id varchar(20),
    rollup_month date,
    month_bucket int,
    days_supply int,
    quantity numeric(9,2),
    join_key varchar(10),
    row_source varchar(100),
    benefit_amount numeric(9,2)
);


CREATE TABLE sandbox.ftf_ims_monthly_market_obm
(
    "PLAN ID" varchar(4),
    "PLAN NAME" varchar(100),
    "PAYER ID" varchar(6),
    "PAYER NAME" varchar(100),
    "MARKET NAME" varchar(300),
    "PRODUCT NAME" varchar(300),
    zip varchar(5),
    DATE varchar(110),
    TRX numeric(36,21),
    NRX numeric(36,21)
);


CREATE TABLE sandbox.QVAR_NPP_08302018
(
    ims_id int,
    ims_id1 int,
    tvcmid int,
    npi int,
    last_name varchar(50),
    first_name varchar(50),
    middle_name varchar(50),
    medical_suffix varchar(50),
    primary_specialty varchar(50),
    address_line1 varchar(66),
    address_line2 varchar(50),
    city varchar(50),
    state_code varchar(50),
    zip int,
    business_email varchar(50),
    np_pa_flag varchar(50),
    tvcmid1 int,
    sln varchar(50),
    sln_expiration_date timestamp,
    sln_state varchar(50),
    hce_status_desc varchar(50),
    "ICS TRx MARKET DECILE (6 Months)" int,
    ims_id_1 int,
    Specialty varchar(50),
    "QVAR TRx Oct 2015" int,
    Nov int,
    Dec int,
    "1/16/2017 12:00:00 AM" int,
    Feb int,
    Mar int,
    Apr int,
    May int,
    Jun int,
    Jul int,
    Aug int,
    Sep int,
    Oct int,
    Nov_1 int,
    Dec_1 int,
    "1/17/2017 12:00:00 AM" int,
    Feb_1 int,
    Mar_1 int,
    Apr_1 int,
    May_1 int,
    Jun_1 int,
    Jul_1 int,
    Aug_1 int,
    Sep_1 int,
    "Year 1" int,
    "Year 2" int,
    "Difference Yr2-Yr1" int,
    TREND varchar(50)
);


CREATE TABLE sandbox."QNASL_MRKT IMSID_ALL"
(
    ims_id int
);


CREATE TABLE sandbox.tjr_ftf_iqvia_plan_xref
(
    health_plan_id varchar(6),
    health_plan_name varchar(100),
    ajovy_restrictions varchar(250),
    aimovig_restrictions varchar(250),
    emgality_restrictions varchar(250),
    provider_id varchar(6),
    provider_name varchar(250),
    parent_name varchar(250),
    payment_type varchar(250),
    health_plan_type varchar(250),
    masterbridge_key_payer varchar(250),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(100),
    iqvia_payer_name varchar(100),
    masterbridge_payer_name varchar(100),
    formulary_mgmt_pbm varchar(100),
    claims_processing_pbm varchar(100),
    pref_tier int
);


CREATE TABLE sandbox.tjr_model_mop_xref
(
    model varchar(100),
    model_name varchar(100),
    industry_mop varchar(250),
    iqvia_mop varchar(250),
    current_teva_mop varchar(250),
    proposed_teva_mop varchar(250)
);


CREATE TABLE sandbox.tables_to_keep
(
    table_name varchar(100)
);


CREATE TABLE sandbox."Returns_IQVIA "
(
    IMSID int,
    NPI int,
    tvcmid int
);


CREATE TABLE sandbox.QVAR_Address_Update_
(
    IMSID int,
    NPI int,
    tvcmid int
);


CREATE TABLE sandbox.test_con_diff
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


CREATE TABLE sandbox.mb_ic_rx_tp
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


CREATE TABLE sandbox."TN Mising HCPS for TN IC"
(
    "IMS ID" varchar(50),
    "NS Territory ID" varchar(50)
);


CREATE TABLE sandbox.test_concur_prev_kg
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


CREATE TABLE sandbox.test_concur_diff_kg
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


CREATE TABLE sandbox."MA Missing STATE"
(
    Zip int,
    State varchar(20),
    Territory_1_ID varchar(50),
    Territory_Name varchar(63),
    Area_Name varchar(50),
    Region_Name varchar(20),
    Mirror_Flag varchar(20),
    Territory_2_ID varchar(20)
);


CREATE TABLE sandbox.sfa_all_call
(
    sales_force_id varchar(8),
    call_id varchar(18),
    veeva_account_id varchar(18),
    ims_id varchar(10),
    ims_outlet_id varchar(100),
    tvcmid int,
    customer_type varchar(80),
    first_name varchar(40),
    last_name varchar(80),
    call_type varchar(255),
    legacy_call_type varchar(255),
    ceph_id varchar(1),
    dea_num varchar(9),
    rep_id varchar(20),
    rep_first_name varchar(40),
    rep_last_name varchar(80),
    territory_number varchar(8),
    zip_on_call varchar(20),
    call_date timestamp,
    submit_date timestamp,
    attendees float,
    attendee_type varchar(255),
    call_recordtype varchar(80),
    call_duration_tva__c numeric(3,0),
    call_datetime timestamp,
    call_timezone varchar(120),
    how_executed varchar(40),
    call_status varchar(255),
    remote_meeting_vod__c varchar(100)
);


CREATE TABLE sandbox.sent_email_template_id
(
    Sent_Email_vod__c varchar(36),
    Approved_Email_Template_vod__c varchar(36)
);


CREATE TABLE sandbox.veeva_sent_email_07102020
(
    Id varchar(36),
    CreatedDate timestamptz,
    CreatedById varchar(36),
    LastModifiedDate timestamptz,
    LastModifiedById varchar(36),
    OwnerId varchar(36),
    RecordTypeId varchar(36),
    IsDeleted varchar(5),
    SystemModstamp timestamptz,
    Name varchar(160),
    Account_vod__c varchar(36),
    Activity_Tracking_Mode_vod__c varchar(510),
    EM_Attendee_vod__c varchar(36),
    Bcc_vod__c varchar(510),
    Call2_vod__c varchar(36),
    Capture_Datetime_vod__c timestamptz,
    Clicked_vod__c float,
    Content_Type_vod__c varchar(36),
    Detail_Group_vod__c varchar(36),
    Approved_Document_Views_vod__c float,
    Entity_Reference_Id_vod__c varchar(200),
    Event_vod__c varchar(36),
    Event_Attendee_vod__c varchar(36),
    Event_Attendee_Mobile_Id_vod__c varchar(200),
    Event_Mobile_Id_vod__c varchar(200),
    Events_Management_Subtype_vod__c varchar(2600),
    EM_Event_Speaker_vod__c varchar(36),
    EM_Event_Team_Member_vod__c varchar(36),
    Sender_Email_vod__c varchar(160),
    Key_Message_vod__c varchar(36),
    Last_Click_Date_vod__c timestamptz,
    Last_Device_vod__c varchar(510),
    Last_Activity_Date_vod__c timestamptz,
    Last_Open_Date_vod__c timestamptz,
    MC_Capture_Datetime_vod__c timestamptz,
    Medical_Event_vod__c varchar(36),
    Medical_Inquiry_vod__c varchar(36),
    Mobile_ID_vod__c varchar(200),
    Opened_vod__c float,
    Parent_Email_vod__c varchar(36),
    Product_vod__c varchar(36),
    Product_Display_vod__c varchar(2600),
    Receipt_Entity_Type_vod__c varchar(510),
    Receipt_Record_Id_vod__c varchar(200),
    Related_Transaction_ID_vod__c varchar(510),
    Scheduled_Send_Datetime_vod__c timestamptz,
    Email_Sent_Date_vod__c timestamptz,
    Status_vod__c varchar(510),
    Failure_Msg_vod__c varchar(510),
    Suggestion_vod__c varchar(36),
    Territory_vod__c varchar(200),
    Account_Email_vod__c varchar(160),
    Click_Count_vod__c float,
    Open_Count_vod__c float,
    User_vod__c varchar(36),
    Valid_Consent_Exists_vod__c varchar(5),
    VExternal_Id_vod__c varchar(100),
    record_id int,
    file_id int,
    Approved_Email_Template_vod__c varchar(36)
);


CREATE TABLE sandbox.concur_hcp_delta_07212020
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


CREATE TABLE sandbox.Optum_calendar_conversion
(
    "RELIANCE Data" timestamp,
    Month_RollUP timestamp
);


CREATE TABLE sandbox.rs_wkly_geo_summ
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
    new_prescribers_count int
);


CREATE TABLE sandbox."SYNEOS MISSING IMSIDs"
(
    "Digihaler_rx_20210215 (JAN)" int
);


CREATE TABLE sandbox.tmp_teva_transform_lock
(
    transform_lock_id int,
    transform_name varchar(255),
    transform_lock_time timestamp
);


CREATE TABLE sandbox.datamart_activity_hub
(
    activity_id varchar(64),
    federation_id varchar(200),
    contact varchar(200),
    source_name varchar(100),
    "datetime" timestamp,
    trackback_id varchar(200),
    previous_activity varchar(64),
    level_name varchar(64),
    activity_role_name varchar(100),
    type_name varchar(100),
    native_type varchar(200),
    details varchar(200),
    line_item_id varchar(64),
    brand_name varchar(200),
    activity varchar(200),
    line_item_datetime timestamp,
    line_item_previous_line_item varchar(200),
    line_item_trackback_id varchar(200),
    line_item_details varchar(200),
    line_item_type_name varchar(100),
    line_item_native_type varchar(200),
    basket_id varchar(64),
    web_url varchar(5000)
);


CREATE TABLE sandbox.ajovy_cust_level_flags
(
    tvcmid int,
    basket_name varchar(300),
    sales_force_id varchar(2),
    territory_number varchar(8),
    flag_type varchar(50),
    flag_value varchar(50),
    flag_effective_start_date timestamp,
    flag_effective_end_date timestamp
);


CREATE TABLE sandbox.ps_payer_plan_table_01
(
    IQVIA_Payer_Name varchar(100),
    IQVIA_Plan_Code varchar(10),
    IQVIA_Plan_Name varchar(100),
    Model varchar(10),
    PayTypeIndex int,
    PayType varchar(50),
    IQVIA_PBM varchar(100)
);


CREATE TABLE sandbox.hdsa_coe_affiliations_0420
(
    hdsa_coe_id int,
    hdsa_coe_name varchar(85),
    ims_id int,
    tvcmid int,
    npi int,
    last_name varchar(50),
    first_name varchar(50),
    middle_name varchar(50),
    primary_specialty varchar(50),
    address_line1 varchar(61),
    address_line2 varchar(50),
    city varchar(50),
    state_code varchar(50),
    zip int,
    specialty_group varchar(50)
);


CREATE TABLE sandbox.ausedto_0528
(
    ims_id varchar(10)
);


CREATE TABLE sandbox.austedo_0528
(
    ims_id varchar(10)
);


CREATE TABLE sandbox.iqvia_plan_preprocessed_v1
(
    iqvia_payer_id varchar(6),
    iqvia_payer_name varchar(100),
    iqvia_plan_id varchar(4),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(100),
    model varchar(10),
    iqvia_pbm varchar(100),
    paytype varchar(128),
    paytype_index varchar(64),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.iqvia_pbm_preprocessed_v1
(
    iqvia_plan_code varchar(10),
    iqvia_pbm varchar(100),
    xref_to varchar(10),
    iqvia_plan_name varchar(100),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_health_plans_preprocessed_v1
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(100),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(250),
    parent_id varchar(6),
    ftf_parent_name varchar(250),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    plan_lives int,
    paytype varchar(64),
    paytype_index varchar(64),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_formularies_preprocessed_v1
(
    drug_seq int,
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    pharmacy_status varchar(20),
    plan_lives int,
    check_blank_pharmstat varchar(20),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_pbms_preprocessed_v1
(
    ftf_health_plan_fid varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_v01
(
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    restriction_code varchar(7),
    restriction_detail_id varchar(6),
    restriction_detail_text varchar(500),
    grouped_restriction_level varchar(255),
    drug_seq int,
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_v02
(
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    drug_seq int,
    restriction_detail_id varchar(6),
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_iqvia_bridge_preprocessed_v11
(
    iqvia_payer_name varchar(50),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(50),
    comments varchar(50),
    ftf_health_plan_fid varchar(10),
    ftf_health_plan_name varchar(100),
    ftf_provider_name varchar(100),
    ftf_health_plan_type varchar(100),
    hp_type varchar(250),
    overriden_ftf_plan_type int,
    model varchar(10),
    iqvia_pbm varchar(100),
    iqvia_paytype varchar(128),
    check_delete varchar(100),
    paytype_index int,
    paytype varchar(64),
    check_pay_types int,
    check_hp_types int,
    old_ftf_health_plan_type varchar(20),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.process_info
(
    sub_process_id int,
    sub_process_name varchar(50),
    parent_process_id int,
    parent_process_name varchar(50),
    insert_time timestamp DEFAULT (now())::timestamptz(6),
    inserted_by varchar(20)
);


CREATE TABLE sandbox.tbl_lvl_audit
(
    process_id int,
    tbl_id varchar(20),
    cycle_id int,
    date_run date,
    inserted_time timestamp DEFAULT (now())::timestamptz(6),
    inserted_by varchar(50)
);


CREATE TABLE sandbox.process_audit_tbl
(
    process_id int,
    cycle_id int,
    date_run date,
    status varchar(30),
    insert_time timestamp DEFAULT (now())::timestamptz(6),
    inserted_by varchar(50),
    modified_time varchar(50),
    modified_by varchar(100)
);


CREATE TABLE sandbox.process_dependency_master
(
    process_id int,
    process_name varchar(50),
    tbl_id int,
    table_name varchar(100),
    table_type varchar(30),
    insert_time timestamp DEFAULT (now())::timestamptz(6),
    inserted_by varchar(20)
);


CREATE TABLE sandbox.tbl_info
(
    tbl_id int,
    tbl_name varchar(100),
    insert_time timestamp DEFAULT (now())::timestamptz(6),
    inserted_by varchar(20)
);


CREATE TABLE sandbox.mb_may
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(100),
    coverage_category_ajovy varchar(100),
    coverage_category_aimovig varchar(100),
    coverage_category_emgality varchar(100),
    ftf_provider_fid int,
    ftf_provider_name varchar(100),
    ftf_parent_name varchar(100),
    paytype_index int,
    paytype varchar(50),
    ftf_health_plan_type varchar(50),
    pref_brand_tier int,
    key_controlling_plan_formulary varchar(100),
    key_controlling_account varchar(100),
    key_pbm varchar(50),
    payer_pbm varchar(50),
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(50),
    ftf_formulary_management_pbm varchar(100),
    ftf_formulary_influencer_pbm varchar(100),
    ftf_claims_processing_pbm varchar(100),
    key_controlling_parent varchar(50),
    prev_month_lives_mx int,
    lives_mx int,
    cycle_id int
)
PARTITION BY (mb_may.cycle_id);


CREATE TABLE sandbox.iqvia_payer_paytype_override_v2
(
    iqvia_payer_name varchar(200),
    iqvia_plan_name_regex varchar(200),
    paytype varchar(128),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_payer_paytype_override_v2.file_id);


CREATE TABLE sandbox.mb_may_v2
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    coverage_category_ajovy varchar(100),
    coverage_category_aimovig varchar(100),
    coverage_category_emgality varchar(100),
    ftf_provider_fid int,
    ftf_provider_name varchar(100),
    ftf_parent_name varchar(100),
    paytype_index int,
    paytype varchar(100),
    ftf_health_plan_type varchar(100),
    pref_brand_tier int,
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_pbm varchar(200),
    payer_pbm varchar(50),
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(50),
    ftf_formulary_management_pbm varchar(200),
    ftf_formulary_influencer_pbm varchar(200),
    ftf_claims_processing_pbm varchar(200),
    key_controlling_parent varchar(200),
    prev_month_lives_mx int,
    lives_mx int,
    cycle_id int
)
PARTITION BY (mb_may_v2.cycle_id);


CREATE TABLE sandbox.copay_tier_derivation_config_v1
(
    pharmacy_status_regex varchar(100),
    tier_cat varchar(100),
    tier_regex varchar(100),
    pref_brand_tier_regex varchar(100),
    ftf_health_plan_type_regex varchar(100),
    copay_tier varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (copay_tier_derivation_config_v1.file_id);


CREATE TABLE sandbox.tier_cat_description_mapping_v1
(
    tier_cat varchar(100),
    description varchar(100),
    notes varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (tier_cat_description_mapping_v1.file_id);


CREATE TABLE sandbox.restriction_category_derivation_config_v1
(
    tier_regex varchar(100),
    has_pa_has_st_regex varchar(100),
    unspec_regex varchar(100),
    step_regex varchar(100),
    botox_regex varchar(100),
    prespa_regex varchar(100),
    tier_cat_regex varchar(100),
    medrecs_regex varchar(100),
    restcat int,
    restriction_category varchar(100),
    meaning varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (restriction_category_derivation_config_v1.file_id);


CREATE TABLE sandbox.ftf_iqvia_bridge_preprocessed_v1
(
    iqvia_payer_name varchar(50),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(50),
    comments varchar(50),
    ftf_health_plan_fid varchar(10),
    ftf_health_plan_name varchar(100),
    ftf_provider_name varchar(100),
    ftf_health_plan_type varchar(100),
    hp_type varchar(250),
    overriden_ftf_plan_type int,
    model varchar(10),
    iqvia_pbm varchar(100),
    iqvia_paytype varchar(128),
    check_delete varchar(100),
    paytype_index int,
    paytype varchar(64),
    check_pay_types int,
    check_hp_types int,
    old_ftf_health_plan_type varchar(20),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.restriction_cat_description_mapping_v1
(
    rest_cat varchar(100),
    description varchar(100),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (restriction_cat_description_mapping_v1.file_id);


CREATE TABLE sandbox.coverage_category_derivation_config_v1
(
    paytype_regex varchar(100),
    pharmacy_status_regex varchar(100),
    coverage_cat_code varchar(100),
    coverage_category varchar(100),
    restriction_cat_code_regex varchar(100),
    meaning varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (coverage_category_derivation_config_v1.file_id);


CREATE TABLE sandbox.coverage_cat_description_mapping_v1
(
    coverage_cat varchar(100),
    description varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (coverage_cat_description_mapping_v1.file_id);


CREATE TABLE sandbox.iqvia_plancode_fid_xref
(
    iqvia_payer_name varchar(50),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(50),
    comments varchar(50),
    ftf_health_plan_fid varchar(10),
    ftf_health_plan_name varchar(100),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(100),
    ftf_parent_name varchar(250),
    ftf_health_plan_type varchar(100),
    paytype_index int,
    paytype varchar(64),
    iqvia_pbm varchar(100),
    hp_type varchar(250),
    iqvia_paytype varchar(128),
    pref_brand_tier varchar(64),
    lives int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.fid_best_iqviapayer
(
    ftf_health_plan_fid varchar(10),
    ftf_health_plan_name varchar(100),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(100),
    iqvia_payer_name varchar(50),
    frequency int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.fid_best_iqviapbm
(
    ftf_health_plan_fid varchar(10),
    ftf_health_plan_name varchar(100),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(100),
    iqvia_pbm varchar(100),
    frequency int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.amb4_iqvia_payer
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.amb4_iqvia_pbm
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.amb7
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    calculated_pbm_value varchar(250),
    key_pbm varchar(254),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_hpid_keypbm
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(250),
    paytype varchar(100),
    iqvia_pbm varchar(100),
    key_pbm varchar(254),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.formulary_derivation_config_v1
(
    pharmacy_status_regex varchar(100),
    has_pa_regex varchar(100),
    has_st_regex varchar(100),
    formulary varchar(100),
    tier_regex varchar(100),
    pref_brand_tier_regex varchar(100),
    ftf_health_plan_type_regex varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (formulary_derivation_config_v1.file_id);


CREATE TABLE sandbox.mb_may_v3
(
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    coverage_category_for_ajovy varchar(200),
    coverage_category_for_aimovig varchar(200),
    coverage_category_for_emgality varchar(200),
    ftfproviderfid varchar(200),
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytypeindex varchar(200),
    pay_type varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    key_pbm varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(200),
    ftf_formulary_influencer_pbm varchar(200),
    ftf_claims_processing_pbm varchar(200),
    pref_brand_tier int,
    ftf_match_iqvia int,
    lives_mx int,
    cycle_id int
);


CREATE TABLE sandbox.mb_may_v4
(
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    coverage_category_for_ajovy varchar(200),
    coverage_category_for_aimovig varchar(200),
    coverage_category_for_emgality varchar(200),
    ftfproviderfid varchar(200),
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytypeindex varchar(200),
    pay_type varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    key_pbm varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(200),
    ftf_formulary_influencer_pbm varchar(200),
    ftf_claims_processing_pbm varchar(200),
    pref_brand_tier int,
    ftf_match_iqvia int,
    lives_mx int,
    cycle_id int
);


CREATE TABLE sandbox.amb4
(
    ftf_health_plan_fid varchar(20),
    ftf_health_plan_name varchar(200),
    old_coverage_category_ajovy varchar(100),
    old_coverage_category_aimovig varchar(100),
    old_coverage_category_emgality varchar(100),
    old_ftf_provider_fid int,
    old_ftf_provider_name varchar(100),
    old_ftf_parent_name varchar(100),
    old_paytype_index int,
    old_paytype varchar(100),
    old_ftf_health_plan_type varchar(100),
    old_pref_brand_tier int,
    old_key_controlling_plan_formulary varchar(200),
    old_key_controlling_account varchar(200),
    old_key_pbm varchar(200),
    old_payer_pbm varchar(50),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    old_iqvia_payer_name varchar(100),
    old_iqvia_pbm varchar(50),
    old_ftf_formulary_management_pbm varchar(200),
    old_ftf_formulary_influencer_pbm varchar(200),
    old_ftf_claims_processing_pbm varchar(200),
    lives_mx int,
    new_ftf_health_plan_fid varchar(6),
    old_ftf_health_plan_fid varchar(20),
    new_ftf_health_plan_name varchar(100),
    old_ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(64),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    lives_mn int,
    iqvia_payer_name varchar(50),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250)
);


CREATE TABLE sandbox.step_restriction_description_v1
(
    step int,
    description varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (step_restriction_description_v1.file_id);


CREATE TABLE sandbox.pres_pa_restriction_description_v1
(
    prespa int,
    description varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (pres_pa_restriction_description_v1.file_id);


CREATE TABLE sandbox.pat_pa_restriction_description_v1
(
    patpa int,
    description varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (pat_pa_restriction_description_v1.file_id);


CREATE TABLE sandbox.plan_prod_master_v1
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    calculated_pbm_value varchar(250),
    key_pbm varchar(254),
    drug_id int,
    drug_seq int,
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    pharmacy_status varchar(20),
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    tier varchar(2),
    has_pa int,
    has_st int,
    formulary varchar(100),
    copay_tier varchar(100),
    tier_cat varchar(100),
    restcat int,
    restriction_category varchar(100),
    coverage_cat_code varchar(100),
    coverage_category varchar(100),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_plan_master_file
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    calculated_pbm_value varchar(250),
    key_pbm varchar(254),
    drug_id int,
    drug_seq int,
    product varchar(64),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    pharmacy_status varchar(20),
    botox int,
    botox_step_flag varchar(100),
    step int,
    step_category varchar(200),
    pres_pa int,
    prescriber_prior_authorization_category varchar(200),
    pat_pa int,
    med_rec int,
    unspec int,
    patient_prior_authorization_category varchar(200),
    medical_records_submission_required_flag varchar(100),
    unspecified_restriction_flag varchar(100),
    FTF_Tier varchar(2),
    has_pa int,
    has_st int,
    formulary varchar(100),
    Copay_Tier varchar(100),
    tier_cat varchar(100),
    restcat int,
    Restriction_Category varchar(100),
    coverage_cat_code varchar(100),
    Coverage_Category varchar(100),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_override_plan_v1
(
    ftf_health_plan_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_override_plan_v1.file_id);


CREATE TABLE sandbox.ftf_override_provider_v1
(
    ftf_provider_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_override_provider_v1.file_id);


CREATE TABLE sandbox.ftf_paytype_paytypeindex_v1
(
    paytype_index int,
    paytype varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_paytype_paytypeindex_v1.file_id);


CREATE TABLE sandbox.ftf_iqvia_xref
(
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(50),
    xref_iqvia_payer_name varchar(50),
    best_matched_iqvia_payer_name varchar(100),
    xref_iqvia_pbm varchar(100),
    best_matched_iqvia_pbm varchar(100),
    paytype varchar(100),
    model varchar(10),
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_health_plan_type varchar(250),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(100),
    aimovig_access_for_ftf_plan varchar(100),
    emgality_access_for_ftf_plan varchar(100),
    ftf_pref_brand_tier varchar(64),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    check_iq_payer int,
    check_iq_pbm int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_iqvia_xref_v2
(
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(50),
    iqvia_payer_name varchar(50),
    iqvia_pbm varchar(100),
    payment_type varchar(100),
    iqvia_model varchar(10),
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_health_plan_type varchar(250),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(100),
    aimovig_access_for_ftf_plan varchar(100),
    emgality_access_for_ftf_plan varchar(100),
    ftf_pref_brand_tier varchar(64),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    check_iq_payer int,
    check_iq_pbm int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.tt1
(
    iqvia_plan_code varchar(200),
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    iqvia_payer_name varchar(50),
    iqvia_pbm varchar(100),
    payment_type varchar(100),
    iqvia_model varchar(10),
    ftf_health_plan_type varchar(250),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(100),
    aimovig_access_for_ftf_plan varchar(100),
    emgality_access_for_ftf_plan varchar(100),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_payment_type int,
    change_iqvia_model int,
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_health_plan_type int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_total_lives_for_ftf_plan int,
    change_key_pbm int,
    change int,
    check_iq_payer int,
    check_iq_pbm int,
    month_flag varchar(13),
    status varchar(9)
);


CREATE TABLE sandbox.tt2
(
    iqvia_plan_code varchar(200),
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(200),
    aimovig_access_for_ftf_plan varchar(200),
    emgality_access_for_ftf_plan varchar(200),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_payment_type int,
    change_iqvia_model int,
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_health_plan_type int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_total_lives_for_ftf_plan int,
    change_key_pbm int,
    change int,
    check_iq_payer varchar(1),
    check_iq_pbm varchar(1),
    month_flag varchar(14),
    status varchar(11)
);


CREATE TABLE sandbox.tt3
(
    iqvia_plan_code varchar(200),
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(200),
    aimovig_access_for_ftf_plan varchar(200),
    emgality_access_for_ftf_plan varchar(200),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_payment_type int,
    change_iqvia_model int,
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_health_plan_type int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_total_lives_for_ftf_plan int,
    change_key_pbm int,
    change int,
    check_iq_payer int,
    check_iq_pbm int,
    month_flag varchar(14),
    status varchar(11),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.comparison_ftf_health_plan_fid
(
    ftf_health_plan_fid varchar(20),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    pref_brand_tier varchar(64),
    Coverage_Category_Ajovy varchar(100),
    Coverage_Category_Aimovig varchar(100),
    Coverage_Category_Emgality varchar(100),
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_provider_fid int,
    change_ftf_provider_name int,
    change_ftf_parent_name int,
    change_paytype int,
    change_ftf_health_plan_type int,
    change_key_controlling_account int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_key_pbm int,
    change_ftf_formulary_management_pbm int,
    change_ftf_formulary_influencer_pbm int,
    change_ftf_claims_processing_pbm int,
    change_lives_mn int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_pref_brand_tier int,
    change_Coverage_Category_Ajovy int,
    change_Coverage_Category_Aimovig int,
    change_Coverage_Category_Emgality int,
    change int,
    month_flag varchar(14),
    status varchar(12),
    change_in_lives numeric(54,18),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.override_fid_iqvia_key_controller_list
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (override_fid_iqvia_key_controller_list.file_id);


CREATE TABLE sandbox.pivot_plan_prod_master_v1_temp
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    pref_brand_tier varchar(64),
    Coverage_Category_Ajovy varchar(100),
    Coverage_Category_Aimovig varchar(100),
    Coverage_Category_Emgality varchar(100),
    prev_lives int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.pivot_plan_prod_master_v1
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype varchar(100),
    paytype_index varchar(64),
    ftf_health_plan_type varchar(250),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    lives_mn int,
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    pref_brand_tier varchar(64),
    Coverage_Category_Ajovy varchar(100),
    Coverage_Category_Aimovig varchar(100),
    Coverage_Category_Emgality varchar(100),
    prev_lives int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.override_fid_iqvia_key_controller_list_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.iqvia_plans_discard_v01
(
    payer_id int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (iqvia_plans_discard_v01.file_id);


CREATE TABLE sandbox.model_paytype_map_v01
(
    model varchar(100),
    paytype varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (model_paytype_map_v01.file_id);


CREATE TABLE sandbox.iqvia_paytypeindex_v01
(
    paytype_index int,
    paytype varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (iqvia_paytypeindex_v01.file_id);


CREATE TABLE sandbox.iqvia_payer_paytype_override_v01
(
    iqvia_payer_name varchar(200),
    iqvia_plan_name_regex varchar(200),
    paytype varchar(120),
    file_id int,
    record_id int
)
PARTITION BY (iqvia_payer_paytype_override_v01.file_id);


CREATE TABLE sandbox.ftf_plans_paytypeindex_v01
(
    ftf_health_plan_type varchar(100),
    paytype_index int,
    file_id int,
    record_id int
)
PARTITION BY (ftf_plans_paytypeindex_v01.file_id);


CREATE TABLE sandbox.ftf_paytype_paytypeindex_v01
(
    paytype_index int,
    paytype varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (ftf_paytype_paytypeindex_v01.file_id);


CREATE TABLE sandbox.ftf_override_provider_v01
(
    provider_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (ftf_override_provider_v01.file_id);


CREATE TABLE sandbox.ftf_override_plan_v01
(
    ftf_health_plan_fid int,
    paytype_index int,
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (ftf_override_plan_v01.file_id);


CREATE TABLE sandbox.drug_assignments_v01
(
    drug_id int,
    drug_seq int,
    product varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (drug_assignments_v01.file_id);


CREATE TABLE sandbox.ftf_pbm_functions_v01
(
    pbm_function_id int,
    pbm_function varchar(100),
    notes varchar(200),
    used int,
    file_id int,
    record_id int
)
PARTITION BY (ftf_pbm_functions_v01.file_id);


CREATE TABLE sandbox.botox_step_restriction_v01
(
    code int,
    botox_step_flag varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (botox_step_restriction_v01.file_id);


CREATE TABLE sandbox.step_restrictio0n
(
    code int,
    step_category varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (step_restrictio0n.file_id);


CREATE TABLE sandbox.pa_restriction_v01
(
    code int,
    prescriber_prior_authorization_category varchar(200),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (pa_restriction_v01.file_id);


CREATE TABLE sandbox.patient_pa_restriction_v01
(
    code int,
    patient_prior_authorization_category varchar(200),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (patient_pa_restriction_v01.file_id);


CREATE TABLE sandbox.medical_rec_restriction_v01
(
    code int,
    medical_records_submission_required_flag varchar(100),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (medical_rec_restriction_v01.file_id);


CREATE TABLE sandbox.unspecified_rec_restriction_v01
(
    code int,
    unspecified_restriction_flag varchar(100),
    restriction_detail_id varchar(100),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (unspecified_rec_restriction_v01.file_id);


CREATE TABLE sandbox.override_bridge_ftf_plan_types_v01
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(200),
    iqvia_plan_name_regex varchar(200),
    override_ftf_health_plan_type varchar(200),
    override_precedence int,
    file_id int,
    record_id int
)
PARTITION BY (override_bridge_ftf_plan_types_v01.file_id);


CREATE TABLE sandbox.delete_bridge_ftf_plan_types_v01
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(200),
    iqvia_plan_name_regex varchar(200),
    delete_flag varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (delete_bridge_ftf_plan_types_v01.file_id);


CREATE TABLE sandbox.provider_override_default_v01
(
    provider_id int,
    paytype_regex varchar(200),
    provider_name varchar(200),
    fill_in_iqvia_payer_name_if_no_bridge varchar(200),
    override_best_iqvia_payer varchar(200),
    fill_in_iqvia_pbm_if_no_bridge varchar(200),
    override_best_iqvia_pbm varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (provider_override_default_v01.file_id);


CREATE TABLE sandbox.key_controller_list_v01
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(100),
    file_id int,
    record_id int
)
PARTITION BY (key_controller_list_v01.file_id);


CREATE TABLE sandbox.calculated_pbm_config_v01
(
    ftf_formulary_management_pbm_regex varchar(200),
    ftf_formulary_influencer_pbm_regex varchar(200),
    ftf_claims_processing_pbm_regex varchar(200),
    calculated_pbm_column varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (calculated_pbm_config_v01.file_id);


CREATE TABLE sandbox.calc_pbm_key_pbm_mapping_v01
(
    calculated_pbm varchar(200),
    key_pbm varchar(200),
    added_by varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (calc_pbm_key_pbm_mapping_v01.file_id);


CREATE TABLE sandbox.has_pa_mapping_v01
(
    has_pa int,
    pa_regex varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (has_pa_mapping_v01.file_id);


CREATE TABLE sandbox.has_st_mapping_v01
(
    has_st int,
    st_regex varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (has_st_mapping_v01.file_id);


CREATE TABLE sandbox.formulary_derivation_config_v01
(
    pharmacy_status_regex varchar(200),
    has_pa_regex varchar(200),
    has_st_regex varchar(200),
    formulary varchar(200),
    tier_regex varchar(200),
    pref_brand_tier_regex varchar(200),
    ftf_health_plan_type_regex varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (formulary_derivation_config_v01.file_id);


CREATE TABLE sandbox.restriction_category_derivation_config_v01
(
    tier_regex varchar(200),
    has_pa_has_st_regex varchar(200),
    unspec_regex varchar(200),
    step_regex varchar(200),
    botox_regex varchar(200),
    prespa_regex varchar(200),
    tier_cat_regex varchar(200),
    medrecs_regex varchar(200),
    restcat int,
    restriction_category varchar(200),
    meaning varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (restriction_category_derivation_config_v01.file_id);


CREATE TABLE sandbox.restriction_cat_description_mapping_v01
(
    rest_cat varchar(200),
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (restriction_cat_description_mapping_v01.file_id);


CREATE TABLE sandbox.coverage_cat_description_mapping_v01
(
    coverage_cat varchar(200),
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (coverage_cat_description_mapping_v01.file_id);


CREATE TABLE sandbox.step_restriction_description_v01
(
    step int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (step_restriction_description_v01.file_id);


CREATE TABLE sandbox.pres_pa_restriction_description_v01
(
    prespa int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (pres_pa_restriction_description_v01.file_id);


CREATE TABLE sandbox.pat_pa_restriction_description_v01
(
    patpa int,
    description varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (pat_pa_restriction_description_v01.file_id);


CREATE TABLE sandbox.override_fid_iqvia_key_controller_list_v01
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (override_fid_iqvia_key_controller_list_v01.file_id);


CREATE TABLE sandbox.step_restriction_v01
(
    code int,
    step_category varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (step_restriction_v01.file_id);


CREATE TABLE sandbox.raw_ftf_formularies_cdw
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    pharmacy_status varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.raw_ftf_health_plans_cdw
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


CREATE TABLE sandbox.raw_ftf_health_plan_geography_cdw
(
    health_plan_id varchar(6),
    county_fips_id int,
    county_id int,
    county_name varchar(50),
    state_id int,
    state_name varchar(10),
    county_lives numeric(14,2),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.raw_ftf_pbms_cdw
(
    health_plan_id varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.raw_iqvia_plan_cdw
(
    payer_num varchar(6),
    payer_name varchar(100),
    plan_num varchar(4),
    payer_plan_num varchar(10),
    plan_name varchar(100),
    model varchar(10),
    city varchar(30),
    hq_state varchar(2),
    operating_state varchar(2),
    months_with_data varchar(4),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.raw_iqvia_pbm_cdw
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


CREATE TABLE sandbox.raw_teva_ims_bridge_cdw
(
    payer_name varchar(50),
    code varchar(10),
    name varchar(50),
    state varchar(5),
    comments varchar(50),
    plan_id varchar(10),
    plan_name varchar(100),
    provider_name varchar(100),
    plan_type_name varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.has_st_mapping
(
    has_st int,
    st_regex varchar(100),
    notes varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (has_st_mapping.file_id);


CREATE TABLE sandbox.has_pa_mapping
(
    has_pa int,
    pa_regex varchar(100),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (has_pa_mapping.file_id);


CREATE TABLE sandbox.calc_pbm_key_pbm_mapping
(
    calculated_pbm varchar(100),
    key_pbm varchar(100),
    added_by varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (calc_pbm_key_pbm_mapping.file_id);


CREATE TABLE sandbox.calculated_pbm_config
(
    ftf_formulary_management_pbm_regex varchar(100),
    ftf_formulary_influencer_pbm_regex varchar(100),
    ftf_claims_processing_pbm_regex varchar(100),
    calculated_pbm_column varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (calculated_pbm_config.file_id);


CREATE TABLE sandbox.raw_ftf_restrictions_cdw
(
    health_plan_id varchar(100),
    drug_id varchar(100),
    restriction_code varchar(200),
    restriction_detail_id varchar(200),
    restriction_detail_text varchar(5000),
    restriction_addtnl_information_1 varchar(10000),
    restriction_addtnl_information_2 varchar(10000),
    step_count varchar(200),
    pa_form varchar(500),
    indication varchar(500),
    grouped_restriction_level varchar(500),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.data_file_metadata_cdw
(
    processed_date timestamp,
    file_id int
);


CREATE TABLE sandbox.parent_process_execution
(
    parent_process_id int,
    parent_process_name varchar(200),
    date_run date,
    insert_time timestamp,
    inserted_by varchar(100)
);


CREATE TABLE sandbox.iqvia_plan_preprocessed_cdw_v1
(
    iqvia_payer_id int,
    iqvia_payer_name varchar(200),
    iqvia_plan_id int,
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    model varchar(100),
    iqvia_pbm varchar(200),
    paytype varchar(100),
    paytype_index int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (iqvia_plan_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.iqvia_pbm_preprocessed_cdw_v1
(
    iqvia_plan_code int,
    iqvia_pbm varchar(200),
    xref_to varchar(200),
    iqvia_plan_name varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (iqvia_pbm_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_formularies_preprocessed_cdw_v1
(
    drug_seq int,
    ftf_health_plan_fid int,
    drug_id int,
    tier_code varchar(200),
    restrictions varchar(1000),
    reason_code varchar(1000),
    reason_code_description varchar(1000),
    pharmacy_status varchar(500),
    plan_lives int,
    check_blank_pharmstat varchar(100),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_formularies_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_pbms_preprocessed_cdw_v1
(
    ftf_health_plan_fid int,
    pbm_id int,
    pbm varchar(500),
    pbm_function_id int,
    pbm_function varchar(500),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_pbms_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_cdw_v1
(
    ftf_health_plan_fid int,
    drug_id int,
    restriction_code varchar(1000),
    restriction_detail_id varchar(1000),
    restriction_detail_text varchar(1000),
    grouped_restriction_level varchar(1000),
    drug_seq int,
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_restrictions_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_cdw_v2
(
    ftf_health_plan_fid int,
    drug_id int,
    drug_seq int,
    restriction_detail_id varchar(1000),
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_restrictions_preprocessed_cdw_v2.cycle_id);


CREATE TABLE sandbox.ftf_iqvia_bridge_preprocessed_cdw_v1
(
    iqvia_payer_name varchar(200),
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    comments varchar(1000),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(200),
    ftf_health_plan_type varchar(200),
    hp_type varchar(200),
    overriden_ftf_plan_type int,
    model varchar(200),
    iqvia_pbm varchar(200),
    iqvia_paytype varchar(200),
    check_delete varchar(200),
    paytype_index int,
    paytype varchar(100),
    check_pay_types int,
    check_hp_types int,
    old_ftf_health_plan_type varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.comparison_iqvia_fid_plans
(
    iqvia_plan_code varchar(200),
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_type varchar(250),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(200),
    aimovig_access_for_ftf_plan varchar(200),
    emgality_access_for_ftf_plan varchar(200),
    total_lives_for_ftf_plan int,
    key_pbm varchar(254),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_payment_type int,
    change_iqvia_model int,
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_health_plan_type int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_total_lives_for_ftf_plan int,
    change_key_pbm int,
    change int,
    check_iq_payer int,
    check_iq_pbm int,
    change_in_lives numeric(54,18),
    month_flag varchar(14),
    status varchar(12),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.key_ctl_account_summary
(
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_controlling_account varchar(100),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.key_pbm_summary
(
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_pbm varchar(254),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.iqvia_payer_name_summary
(
    paytype varchar(100),
    iqvia_payer_name varchar(100),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.iqvia_pbm_summary
(
    paytype varchar(100),
    iqvia_pbm varchar(100),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.ftf_formulary_management_pbm_summary
(
    paytype varchar(100),
    ftf_formulary_management_pbm varchar(250),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.ftf_formulary_influencer_pbm_summary
(
    paytype varchar(100),
    ftf_formulary_influencer_pbm varchar(250),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.ftf_claims_processing_pbm_summary
(
    paytype varchar(100),
    ftf_claims_processing_pbm varchar(250),
    current_month_lives int,
    previous_month_lives int
);


CREATE TABLE sandbox.st_lives_summary
(
    ftf_health_plan_fid varchar(24),
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    state varchar(10),
    ftf_state_hp_lives numeric(14,2),
    pref_brand_tier varchar(64)
);


CREATE TABLE sandbox.access_master_bridge
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(200),
    Coverage_Category_Ajovy varchar(100),
    Coverage_Category_Aimovig varchar(100),
    Coverage_Category_Emgality varchar(100),
    ftf_provider_fid varchar(20),
    ftf_provider_name varchar(250),
    ftf_parent_name varchar(250),
    paytype_index varchar(64),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    key_controlling_plan_formulary varchar(100),
    key_controlling_account varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    pref_brand_tier varchar(64),
    ftf_match_iqvia int,
    previous_lives int,
    current_lives int
);


CREATE TABLE sandbox.iqvia_plan_code_ftf_hp_id
(
    iqvia_plan_code varchar(40),
    iqvia_plan_name varchar(50),
    iqvia_payer_name varchar(50),
    iqvia_pbm varchar(100),
    payment_type varchar(100),
    iqvia_model varchar(10),
    ftf_health_plan_fid varchar(24),
    ftf_health_plan_name varchar(200),
    ftf_health_plan_type varchar(250),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    Ajovy_access_for_ftf_plan varchar(100),
    Aimovig_access_for_ftf_plan varchar(100),
    Emgality_access_for_ftf_plan varchar(100),
    total_lives_for_ftf_plan varchar(20),
    key_pbm varchar(254),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_hp_id_key_controlling_account
(
    ftf_health_plan_fid varchar(24),
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(250),
    payment_type varchar(100),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_hp_id_key_pbm
(
    ftf_health_plan_fid varchar(24),
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(250),
    payment_type varchar(100),
    key_pbm varchar(254),
    assigned_iqvia_pbm varchar(100),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_plan_master_file_op
(
    ftf_health_plan_fid varchar(6),
    product varchar(64),
    ftf_health_plan_name varchar(200),
    coverage_category varchar(100),
    ftf_provider_name varchar(250),
    paytype varchar(100),
    ftf_health_plan_type varchar(250),
    plan_lives int,
    key_controlling_plan_formulary varchar(100),
    key_controlling_account varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    key_pbm varchar(254),
    iqvia_payer_name varchar(100),
    iqvia_pbm varchar(100),
    ftf_formulary_management_pbm varchar(250),
    ftf_formulary_influencer_pbm varchar(250),
    ftf_claims_processing_pbm varchar(250),
    pref_brand_tier varchar(64),
    pharmacy_status varchar(20),
    FTF_Tier varchar(2),
    restrictions varchar(20),
    Copay_Tier varchar(100),
    restriction_category varchar(100),
    step varchar(200),
    botox varchar(100),
    prescriber_pa varchar(200),
    patient_pa varchar(200),
    medical_records varchar(100),
    criteria_unspec varchar(100),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.paytype_product_coverage_category
(
    paytype varchar(100),
    product varchar(64),
    metric varchar(100),
    lives int
);


CREATE TABLE sandbox.paytype_product_copay_tier
(
    paytype varchar(100),
    product varchar(64),
    metric varchar(100),
    lives int
);


CREATE TABLE sandbox.paytype_product_step_category
(
    paytype varchar(100),
    product varchar(64),
    metric varchar(200),
    lives int
);


CREATE TABLE sandbox.paytype_product_patient_pa
(
    paytype varchar(100),
    product varchar(64),
    metric varchar(200),
    lives int
);


CREATE TABLE sandbox.key_controlling_account_product_cov_category_paytype
(
    key_controlling_account varchar(100),
    paytype varchar(100),
    product varchar(64),
    metric varchar(100),
    lives int
);


CREATE TABLE sandbox.key_pbm_product_cov_category_paytype
(
    key_pbm varchar(254),
    paytype varchar(100),
    product varchar(64),
    metric varchar(100),
    lives int
);


CREATE TABLE sandbox.fid_best_iqviapayer_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    iqvia_payer_name varchar(200),
    frequency int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (fid_best_iqviapayer_cdw_v1.cycle_id);


CREATE TABLE sandbox.fid_best_iqviapbm_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    iqvia_pbm varchar(200),
    frequency int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (fid_best_iqviapbm_cdw_v1.cycle_id);


CREATE TABLE sandbox.amb4_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    old_coverage_category_ajovy varchar(200),
    old_coverage_category_aimovig varchar(200),
    old_coverage_category_emgality varchar(200),
    old_ftf_provider_fid int,
    old_ftf_provider_name varchar(200),
    old_ftf_parent_name varchar(200),
    old_paytype_index int,
    old_paytype varchar(200),
    old_ftf_health_plan_type varchar(200),
    old_pref_brand_tier int,
    old_key_controlling_plan_formulary varchar(300),
    old_key_controlling_account varchar(300),
    old_key_pbm varchar(300),
    old_payer_pbm varchar(200),
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    old_iqvia_payer_name varchar(200),
    old_iqvia_pbm varchar(200),
    old_ftf_formulary_management_pbm varchar(300),
    old_ftf_formulary_influencer_pbm varchar(300),
    old_ftf_claims_processing_pbm varchar(300),
    lives_mx int,
    new_ftf_health_plan_fid int,
    old_ftf_health_plan_fid int,
    new_ftf_health_plan_name varchar(200),
    old_ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    lives_mn int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100),
    old_coverage_category_nurtec varchar(200),
    old_coverage_category_qulitpa varchar(200),
    old_coverage_category_austedo_hd varchar(200),
    old_coverage_category_austedo_td varchar(200),
    old_coverage_category_ingrezza_td varchar(200)
)
PARTITION BY (amb4_cdw_v1.cycle_id);


CREATE TABLE sandbox.amb4_iqvia_payer_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (amb4_iqvia_payer_cdw_v1.cycle_id);


CREATE TABLE sandbox.amb4_iqvia_pbm_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (amb4_iqvia_pbm_cdw_v1.cycle_id);


CREATE TABLE sandbox.amb7_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    calculated_pbm_value varchar(300),
    key_pbm varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (amb7_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_hpid_keypbm_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_name varchar(200),
    paytype varchar(200),
    iqvia_pbm varchar(200),
    key_pbm varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_hpid_keypbm_cdw_v1.cycle_id);


CREATE TABLE sandbox.plan_prod_master_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    calculated_pbm_value varchar(300),
    key_pbm varchar(300),
    drug_id int,
    drug_seq int,
    tier_code varchar(300),
    restrictions varchar(300),
    reason_code varchar(300),
    pharmacy_status varchar(300),
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    tier varchar(200),
    has_pa int,
    has_st int,
    formulary varchar(200),
    copay_tier varchar(200),
    tier_cat int,
    restcat int,
    restriction_category varchar(200),
    coverage_cat_code int,
    coverage_category varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (plan_prod_master_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_plan_master_file_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    calculated_pbm_value varchar(300),
    key_pbm varchar(300),
    drug_id int,
    drug_seq int,
    product varchar(200),
    tier_code varchar(200),
    restrictions varchar(200),
    reason_code varchar(200),
    pharmacy_status varchar(200),
    botox int,
    botox_step_flag varchar(200),
    step int,
    step_category varchar(200),
    pres_pa int,
    prescriber_prior_authorization_category varchar(200),
    pat_pa int,
    med_rec int,
    unspec int,
    patient_prior_authorization_category varchar(200),
    medical_records_submission_required_flag varchar(100),
    unspecified_restriction_flag varchar(100),
    ftf_tier varchar(100),
    has_pa int,
    has_st int,
    formulary varchar(200),
    copay_Tier varchar(200),
    tier_cat int,
    restcat int,
    restriction_category varchar(200),
    coverage_cat_code int,
    coverage_category varchar(200),
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_plan_master_file_cdw_v1.cycle_id);


CREATE TABLE sandbox.pivot_plan_prod_master_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype varchar(200),
    paytype_index int,
    ftf_health_plan_type varchar(200),
    key_controlling_account varchar(300),
    key_controlling_plan_formulary varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(200),
    key_pbm varchar(300),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    pref_brand_tier int,
    Coverage_Category_Ajovy varchar(200),
    Coverage_Category_Aimovig varchar(200),
    Coverage_Category_Emgality varchar(200),
    prev_lives int,
    ftf_match_iqvia int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100),
    Coverage_Category_Nurtec varchar(200),
    Coverage_Category_Qulipta varchar(200),
    Coverage_Category_Austedo_HD varchar(200),
    Coverage_Category_Austedo_TD varchar(200),
    Coverage_Category_Ingrezza_TD varchar(200)
)
PARTITION BY (pivot_plan_prod_master_cdw_v1.cycle_id);


CREATE TABLE sandbox.comparison_ftf_health_plan_fid_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_account varchar(300),
    key_controlling_plan_formulary varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(200),
    key_pbm varchar(300),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    pref_brand_tier int,
    Coverage_Category_Ajovy varchar(200),
    Coverage_Category_Aimovig varchar(200),
    Coverage_Category_Emgality varchar(200),
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_provider_fid int,
    change_ftf_provider_name int,
    change_ftf_parent_name int,
    change_paytype int,
    change_ftf_health_plan_type int,
    change_key_controlling_account int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_key_pbm int,
    change_ftf_formulary_management_pbm int,
    change_ftf_formulary_influencer_pbm int,
    change_ftf_claims_processing_pbm int,
    change_lives_mn int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_pref_brand_tier int,
    change_Coverage_Category_Ajovy int,
    change_Coverage_Category_Aimovig int,
    change_Coverage_Category_Emgality int,
    change int,
    month_flag varchar(200),
    status varchar(200),
    change_in_lives numeric(37,15),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100),
    Coverage_Category_Nurtec varchar(200),
    Coverage_Category_Qulipta varchar(200),
    change_Coverage_Category_Nurtec int,
    change_Coverage_Category_Qulipta int
)
PARTITION BY (comparison_ftf_health_plan_fid_cdw_v1.cycle_id);


CREATE TABLE sandbox.access_master_bridge_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    coverage_category_ajovy varchar(200),
    coverage_category_aimovig varchar(200),
    coverage_category_emgality varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(200),
    key_pbm varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    pref_brand_tier int,
    ftf_match_iqvia int,
    previous_lives int,
    current_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200),
    coverage_category_nurtec varchar(200),
    coverage_category_qulitpa varchar(200),
    coverage_category_austedo_hd varchar(200),
    coverage_category_austedo_td varchar(200),
    coverage_category_ingrezza_td varchar(200)
)
PARTITION BY (access_master_bridge_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_health_plans_preprocessed_cdw_v1_temp
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    parent_id int,
    ftf_parent_name varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    plan_lives int,
    paytype varchar(100),
    paytype_index int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
);


CREATE TABLE sandbox.ftf_health_plans_preprocessed_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    parent_id int,
    ftf_parent_name varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    plan_lives int,
    paytype varchar(100),
    paytype_index int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_health_plans_preprocessed_cdw_v1.cycle_id);


CREATE TABLE sandbox.iqvia_plancode_fid_xref_cdw_v1
(
    iqvia_payer_name varchar(200),
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    comments varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    ftf_health_plan_type varchar(200),
    paytype_index int,
    paytype varchar(200),
    iqvia_pbm varchar(200),
    hp_type varchar(200),
    iqvia_paytype varchar(200),
    pref_brand_tier int,
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (iqvia_plancode_fid_xref_cdw_v1.cycle_id);


CREATE TABLE sandbox.copay_tier_derivation_config_v01_tmp
(
    pharmacy_status_regex varchar(200),
    tier_cat int,
    tier_regex varchar(200),
    pref_brand_tier_regex varchar(200),
    ftf_health_plan_type_regex varchar(200),
    copay_tier varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (copay_tier_derivation_config_v01_tmp.file_id);


CREATE TABLE sandbox.tier_cat_description_mapping_v01_tmp
(
    tier_cat int,
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (tier_cat_description_mapping_v01_tmp.file_id);


CREATE TABLE sandbox.coverage_category_derivation_config_v01_tmp
(
    paytype_regex varchar(200),
    pharmacy_status_regex varchar(200),
    coverage_cat_code int,
    coverage_category varchar(200),
    restriction_cat_code_regex varchar(200),
    meaning varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (coverage_category_derivation_config_v01_tmp.file_id);


CREATE TABLE sandbox.copay_tier_derivation_config_v01
(
    pharmacy_status_regex varchar(200),
    tier_cat int,
    tier_regex varchar(200),
    pref_brand_tier_regex varchar(200),
    ftf_health_plan_type_regex varchar(200),
    copay_tier varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (copay_tier_derivation_config_v01.file_id);


CREATE TABLE sandbox.tier_cat_description_mapping_v01
(
    tier_cat int,
    description varchar(500),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (tier_cat_description_mapping_v01.file_id);


CREATE TABLE sandbox.coverage_category_derivation_config_v01
(
    paytype_regex varchar(200),
    pharmacy_status_regex varchar(200),
    coverage_cat_code int,
    coverage_category varchar(200),
    restriction_cat_code_regex varchar(200),
    meaning varchar(500),
    file_id int,
    record_id int
)
PARTITION BY (coverage_category_derivation_config_v01.file_id);


CREATE TABLE sandbox.key_controller_list_v01_temp
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.raw_ftf_formularies_v5
(
    health_plan_id varchar(100),
    drug_id varchar(100),
    tier_code varchar(100),
    restrictions varchar(100),
    reason_code varchar(200),
    reason_code_description varchar(200),
    pharmacy_status varchar(100)
);


CREATE TABLE sandbox.raw_ftf_health_plans_v5
(
    formularyf_id varchar(100),
    provider_id varchar(100),
    provider varchar(250),
    health_plan_id varchar(100),
    health_plan varchar(200),
    parent_id varchar(100),
    parent varchar(250),
    national_lives_count int,
    plan_type_name varchar(250),
    preferred_brand_tier varchar(100)
);


CREATE TABLE sandbox.raw_ftf_pbms_v5
(
    health_plan_id varchar(100),
    pbm_id varchar(100),
    pbm varchar(250),
    pbm_function_id varchar(100),
    pbm_function varchar(250)
);


CREATE TABLE sandbox.raw_ftf_restrictions_v5
(
    health_plan_id varchar(100),
    drug_id varchar(100),
    restriction_code varchar(500),
    restriction_details_id varchar(200),
    restriction_details_text varchar(1000),
    restriction_details_information_1 varchar(8000),
    restriction_details_information_2 varchar(8000),
    step_count varchar(100),
    pa_form varchar(4000),
    indication varchar(255),
    grouped_restriction_level varchar(255)
);


CREATE TABLE sandbox.raw_iqvia_plan_v5
(
    payer_id varchar(100),
    payer_name varchar(200),
    plan_id varchar(100),
    payer_plan_id varchar(100),
    plan_name varchar(100),
    model varchar(100),
    city varchar(100),
    hq_state varchar(100),
    operating_state varchar(100),
    months_with_data varchar(100)
);


CREATE TABLE sandbox.raw_iqvia_pbm_v5
(
    pbm_name varchar(200),
    payer_plan_id varchar(200),
    xref_to_payer_plan_id varchar(200),
    ipd_id varchar(200),
    ipd_type varchar(200),
    plan_name varchar(200),
    pbm_id varchar(200),
    ims_processor_number varchar(200)
);


CREATE TABLE sandbox.raw_teva_ims_bridge_v5
(
    payer_name varchar(100),
    code varchar(100),
    name varchar(100),
    state varchar(100),
    comments varchar(100),
    plan_id varchar(100),
    plan_name varchar(200),
    provider_name varchar(200),
    plan_type_name varchar(100)
);


CREATE TABLE sandbox.raw_ftf_health_plan_geography_v5
(
    health_plan_id varchar(100),
    county_fips_id int,
    county_id int,
    county_name varchar(100),
    state_id int,
    state_name varchar(100),
    county_lives numeric(14,2)
);


CREATE TABLE sandbox.sh_sol_enrollment
(
    basket_name varchar(255),
    referral_date date,
    prescribing_physician_npi varchar(10),
    first_ship_date date,
    tvcmid int
);


CREATE TABLE sandbox.tn_pre_calls_anti_psych
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
    focus_target varchar(100),
    AssistRx_flag varchar(5),
    ShSol_flag varchar(5)
);


CREATE TABLE sandbox.austedo_titration_dosage
(
    customer_id varchar(200),
    tvcmid int,
    ims_id varchar(200),
    zip varchar(10),
    sales_force_id varchar(200),
    territory_id varchar(10),
    territory_name varchar(100),
    region_id varchar(10),
    region_name varchar(100),
    area_id varchar(10),
    area_name varchar(100),
    product_name varchar(50),
    data_type varchar(50),
    Avg_TD_Daily_Dose_New_Patient numeric(10,3),
    Avg_TD_Daily_Dose_Cont_Patient numeric(10,3),
    Data_Ending_Month date
);


CREATE TABLE sandbox.ic_rx
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
    rollup_month date,
    month_bucket int,
    nrx_count float,
    trx_count float,
    nrx_quantity float,
    trx_quantity float,
    include_in_nation_rollup char(1) DEFAULT 'Y',
    include_in_area_rollup char(1) DEFAULT 'Y',
    include_in_region_rollup char(1) DEFAULT 'Y',
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date DEFAULT "sysdate"(),
    indication varchar(20),
    outlet_dea varchar(15),
    payer_plan_number varchar(10),
    payment_method varchar(250)
);


CREATE TABLE sandbox.ic_ms_market_decile_201601
(
    ims_id varchar(10),
    category varchar(100),
    decile_name varchar(50),
    trx_cnt_01_06 int,
    trx_cnt_01_12 int
);


CREATE TABLE sandbox.ic_demo
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
    pdrp_flag char(1) DEFAULT 'N',
    pdrp_date date,
    np_pa_flag char(1) DEFAULT 'N',
    no_spend char(1) DEFAULT 'N',
    ama_no_contact_flag char(1) DEFAULT 'N',
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date DEFAULT "sysdate"(),
    outlet_dea varchar(15),
    secondary_specialty varchar(255)
);


CREATE TABLE sandbox.qims_td_target_univ
(
    PRESCRIBER_ID varchar(50),
    ME_NBR varchar(20),
    IMS_ID varchar(7),
    NPI varchar(20),
    PRIMARY_SPECIALTY varchar(59),
    SECONDARY_SPECIALTY varchar(68),
    PRIMARY_SPECIALTY_GROUP varchar(50),
    SECONDARY_SPECIALTY_GROUP varchar(50),
    GENDER_CD varchar(50),
    FIRST_NAME varchar(50),
    LAST_NAME varchar(50),
    MID_NAME varchar(50),
    ADDRESS_1 varchar(63),
    ADDRESS_2 varchar(50),
    CITY varchar(50),
    STATE varchar(50),
    ZIP varchar(10),
    AMA_NO_CONTACT_INDICATOR varchar(15),
    AMA_PDRP_IND varchar(50),
    PROVIDER_TYP_DESC varchar(50),
    TARGET_Y_N varchar(50),
    ADOPTION_CATEGORY varchar(50),
    CMHC_AFFILIATION_Y_N varchar(50),
    INFLUENCER varchar(50),
    INFLUENCER_MVT_DIS_LEADER varchar(50),
    INFLUENCER_BHVR_HLTH_LEADER varchar(50),
    PRIORITY_FLAG_Y_N varchar(50),
    DIAGNOSED_TD_PAT_CNT numeric(28,10),
    OVERALL_DIAGNOSED_TD_PAT_CNT numeric(28,10),
    OVERALL_UNIQUE_DIAG_TD_PAT_CNT numeric(28,10),
    PREDICTED_TD_PAT_CNT_HIGH numeric(28,10),
    PREDICTED_TD_PAT_CNT_UNIQUE_HIGH numeric(28,10),
    SUM_OF_SCORES_PREDICTED_PAT_CNT_HIGH numeric(28,10),
    SUM_OF_SCORES_PREDICTED_PAT_CNT_UNIQUE_HIGH numeric(28,10),
    TOTAL_OPPORTUNITY_HIGH numeric(28,10),
    PREDICTED_TD_PAT_CNT_MEDIUM numeric(28,10),
    PREDICTED_TD_PAT_CNT_UNIQUE_MEDIUM numeric(28,10),
    SUM_OF_SCORES_PREDICTED_PAT_CNT_MEDIUM numeric(28,10),
    SUM_OF_SCORES_PREDICTED_PAT_CNT_UNIQUE_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_DIAG_HIGH_MEDIUM numeric(28,10),
    RANK numeric(28,10),
    DECILE_PAT_CNT numeric(28,10),
    DECILE_SUM_OF_SCORES numeric(28,10),
    DECILE_SUM_OF_SCORES_UNIQUE numeric(28,10),
    DECILE_OLD numeric(28,10),
    APD_PAT_CNT numeric(28,10),
    APD_PAT_CNT_TD_HIGH numeric(28,10),
    APD_PAT_CNT_TD_MEDIUM numeric(28,10),
    DIAGN_TD_MDD_BPD_SCZ_PAT_CNT numeric(28,10),
    OVERALL_DIAG_TD_MDD_BPD_SCZ_PT numeric(28,10),
    PREDICTED_TD_MDD_BPD_SCZ_PAT_CNT_HIGH numeric(28,10),
    TOTAL_OPPORTUNITY_MDD_BPD_SCZ_HIGH numeric(28,10),
    PREDICTED_TD_MDD_BPD_SCZ_PAT_CNT_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_MDD_BPD_SCZ_MEDIUM numeric(28,10),
    DIAGNOSED_TD_MDD_PAT_CNT numeric(28,10),
    OVERALL_DIAGNOSED_TD_MDD_PAT numeric(28,10),
    PREDICTED_TD_MDD_PAT_CNT_HIGH numeric(28,10),
    TOTAL_OPPORTUNITY_MDD_HIGH numeric(28,10),
    PREDICTED_TD_MDD_PAT_CNT_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_MDD_MEDIUM numeric(28,10),
    DIAGNOSED_TD_BPD_PAT_CNT numeric(28,10),
    OVERALL_DIAGNOSED_TD_BPD_PAT_CNT numeric(28,10),
    PREDICTED_TD_BPD_PAT_CNT_HIGH numeric(28,10),
    TOTAL_OPPORTUNITY_BPD_HIGH numeric(28,10),
    PREDICTED_TD_BPD_PAT_CNT_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_BPD_MEDIUM numeric(28,10),
    DIAGNOSED_TD_SCZ_PAT_CNT numeric(28,10),
    OVERALL_DIAGNOSED_TD_SCZ_PAT_CNT numeric(28,10),
    PREDICTED_TD_SCZ_PAT_CNT_HIGH numeric(28,10),
    TOTAL_OPPORTUNITY_SCZ_HIGH numeric(28,10),
    PREDICTED_TD_SCZ_PAT_CNT_MEDIUM numeric(28,10),
    TOTAL_OPPORTUNITY_SCZ_MEDIUM numeric(28,10),
    APD_CLM_CNT numeric(28,10),
    APD_CLM_CNT_TD_HIGH numeric(28,10),
    APD_CLM_CNT_TD_MEDIUM numeric(28,10),
    DIAGNOSED_TD_CLM_CNT numeric(28,10),
    METO_CLM_CNT numeric(28,10),
    ARIPIPRAZOLE_CLM_CNT numeric(28,10),
    ASENAPINE_CLM_CNT numeric(28,10),
    BREXPIPRAZOLE_CLM_CNT numeric(28,10),
    CARIPRAZINE_CLM_CNT numeric(28,10),
    CHLORPROMAZINE_CLM_CNT numeric(28,10),
    CLOZAPINE_CLM_CNT numeric(28,10),
    DROPERIDOL_CLM_CNT numeric(28,10),
    FLUPHENAZINE_CLM_CNT numeric(28,10),
    HALOPERIDOL_CLM_CNT numeric(28,10),
    ILOPERIDONE_CLM_CNT numeric(28,10),
    LOXAPINE_CLM_CNT numeric(28,10),
    LURASIDONE_CLM_CNT numeric(28,10),
    MOLINDONE_CLM_CNT numeric(28,10),
    OLANZAPINE_CLM_CNT numeric(28,10),
    PALIPERIDONE_CLM_CNT numeric(28,10),
    PERPHENAZINE_CLM_CNT numeric(28,10),
    PIMAVANSERIN_CLM_CNT numeric(28,10),
    PIMOZIDE_CLM_CNT numeric(28,10),
    PROCHLORPERAZINE_CLM_CNT numeric(28,10),
    QUETIAPINE_CLM_CNT numeric(28,10),
    RISPERIDONE_CLM_CNT numeric(28,10),
    THIORIDAZINE_CLM_CNT numeric(28,10),
    THIOTHIXENE_CLM_CNT numeric(28,10),
    TRIFLUOPERAZINE_CLM_CNT numeric(28,10),
    ZIPRASIDONE_CLM_CNT numeric(28,10),
    ABILIFY_LTC_TRX numeric(28,10),
    ABILIFY_DISCMELT_LTC_TRX numeric(28,10),
    ABILIFY_MAINTENA_LTC_TRX numeric(28,10),
    ARIPIPRAZOLE_LTC_TRX numeric(28,10),
    ARIPIPRAZOLE_ODT_LTC_TRX numeric(28,10),
    ARISTADA_LTC_TRX numeric(28,10),
    CHLORPROMAZINE_HCL_LTC_TRX numeric(28,15),
    CLOZAPINE_LTC_TRX numeric(28,10),
    CLOZAPINE_ODT_LTC_TRX numeric(28,10),
    CLOZARIL_LTC_TRX numeric(28,10),
    COMPRO_LTC_TRX numeric(28,10),
    FANAPT_LTC_TRX numeric(28,10),
    FANAPT_TITRATION_PACK_LTC_TRX numeric(28,10),
    FAZACLO_LTC_TRX numeric(28,10),
    FLUPHENAZINE_DECANOATE_LTC_TRX numeric(28,14),
    FLUPHENAZINE_HCL_LTC_TRX numeric(28,13),
    GEODON_LTC_TRX numeric(28,10),
    HALDOL_LTC_TRX numeric(28,10),
    HALDOL_DECANOATE_100_LTC_TRX numeric(28,10),
    HALDOL_DECANOATE_50_LTC_TRX numeric(28,10),
    HALOPERIDOL_LTC_TRX numeric(28,13),
    HALOPERIDOL_DECANOATE_LTC_TRX numeric(28,14),
    HALOPERIDOL_LACTATE_LTC_TRX numeric(28,13),
    INVEGA_LTC_TRX numeric(28,10),
    INVEGA_SUSTENNA_LTC_TRX numeric(28,10),
    INVEGA_TRINZA_LTC_TRX numeric(28,10),
    LATUDA_LTC_TRX numeric(28,14),
    LOXAPINE_LTC_TRX numeric(28,10),
    LOXAPINE_SUCCINATE_LTC_TRX numeric(28,10),
    MOLINDONE_HYDROCHLOR_LTC_TRX numeric(28,10),
    NUPLAZID_LTC_TRX numeric(28,10),
    OLANZAPINE_LTC_TRX numeric(28,14),
    OLANZAPINE_ODT_LTC_TRX numeric(28,10),
    OLANZAPINE_FLUOXETINE_LTC_TRX numeric(28,10),
    ORAP_LTC_TRX numeric(28,10),
    PALIPERIDONE_ER_LTC_TRX numeric(28,10),
    PERPHENAZINE_LTC_TRX numeric(28,10),
    PERPHENAZINE_AMITRIPTY_LTC_TRX numeric(28,10),
    PIMOZIDE_LTC_TRX numeric(28,10),
    PROCHLORPERAZINE_LTC_TRX numeric(28,10),
    PROCHLORPERAZINE_EDISY_LTC_TRX numeric(28,10),
    PROCHLORPERAZINE_MALEA_LTC_TRX numeric(28,10),
    QUETIAPINE_FUMARATE_LTC_TRX numeric(28,13),
    QUETIAPINE_FUMARATE_ER_LTC_TRX numeric(28,10),
    REXULTI_LTC_TRX numeric(28,10),
    RISPERDAL_LTC_TRX numeric(28,10),
    RISPERDAL_CONSTA_LTC_TRX numeric(28,10),
    RISPERDAL_M_TAB_LTC_TRX numeric(28,10),
    RISPERIDONE_LTC_TRX numeric(28,13),
    RISPERIDONE_M_TAB_LTC_TRX numeric(28,10),
    RISPERIDONE_ODT_LTC_TRX numeric(28,10),
    SAPHRIS_LTC_TRX numeric(28,14),
    SEROQUEL_LTC_TRX numeric(28,10),
    SEROQUEL_XR_LTC_TRX numeric(28,10),
    SYMBYAX_LTC_TRX numeric(28,10),
    THIORIDAZINE_HCL_LTC_TRX numeric(28,10),
    THIOTHIXENE_LTC_TRX numeric(28,10),
    TRIFLUOPERAZINE_HCL_LTC_TRX numeric(28,10),
    VERSACLOZ_LTC_TRX numeric(28,10),
    VRAYLAR_LTC_TRX numeric(28,10),
    ZIPRASIDONE_HCL_LTC_TRX numeric(28,14),
    ZYPREXA_LTC_TRX numeric(28,10),
    ZYPREXA_RELPREVV_LTC_TRX numeric(28,10),
    ZYPREXA_ZYDIS_LTC_TRX numeric(28,10),
    FACILITY_TYPE varchar(61)
);


CREATE TABLE sandbox.compliance_speaker_list
(
    tvcmid int,
    npi varchar(50),
    Last_Name varchar(50),
    First_Name varchar(50),
    Middle_Initial varchar(1),
    Address varchar(65),
    City varchar(50),
    State varchar(50),
    Zip varchar(10),
    speaker_affiliation varchar(100)
);


CREATE TABLE sandbox.ic_ms_market_decile_201801
(
    ims_id varchar(10),
    tvcmid int,
    category varchar(2),
    decile_name varchar(300),
    trx_cnt_01_06 int,
    trx_cnt_01_12 int
);


CREATE TABLE sandbox.call_plan_decile_nr
(
    hcp_id varchar(50),
    market varchar(50),
    decile_value varchar(50),
    veeva_id varchar(50)
);


CREATE TABLE sandbox.ic_decile
(
    ic_data_month date,
    ims_id varchar(10),
    tvcmid int,
    decile_name varchar(300),
    decile_value int,
    join_key varchar(10),
    row_source varchar(100),
    row_create_date date DEFAULT "sysdate"()
);


CREATE TABLE sandbox.scd_prescriber_combined_demographics
(
    scd_status varchar(10) DEFAULT 'Current',
    scd_effective_date date DEFAULT trunc("sysdate"()),
    scd_expiration_date date DEFAULT '2099-12-31'::date,
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
    row_source varchar(100)
);


CREATE TABLE sandbox.Q2_2018_TP_NO_VEEVAID
(
    HCP_ID int,
    Territory varchar(50),
    Program varchar(50),
    Campaign varchar(50),
    "Rank Value" varchar(50)
);


CREATE TABLE sandbox.call_sample_product_value
(
    Id varchar(18),
    product_value_vod__c varchar(20)
);


CREATE TABLE sandbox.HEADACHE_CENTER_LIST
(
    "IMS ID" varchar(50)
);


CREATE TABLE sandbox.qvar_knipper_test2_09202018
(
    tvcmid int,
    tvcmid1 int,
    tvcmid2 int,
    ims_id int,
    npi int,
    last_name varchar(164),
    first_name varchar(164),
    middle_name varchar(164),
    personal_suffix varchar(50),
    medical_suffix varchar(50),
    primary_specialty varchar(50),
    address_line1 varchar(324),
    address_line2 varchar(324),
    city varchar(164),
    state_code varchar(50),
    zip int,
    np_pa_flag varchar(50),
    authorization_number varchar(104),
    profession_code int,
    state varchar(50),
    license_expiration_date timestamp,
    license_status_description varchar(164)
);


CREATE TABLE sandbox.views_to_keep
(
    view_name varchar(255)
);


CREATE TABLE sandbox.HeadacheCenter
(
    IMS_ID varchar(50),
    TVCMID int,
    First_Name varchar(50),
    Middle_Name varchar(50),
    Last_Name varchar(50),
    Cred varchar(59),
    Location varchar(112),
    Address_1 varchar(76),
    Address_2 varchar(51),
    City varchar(50),
    State_Code varchar(50),
    Zip_Code varchar(50),
    Zip_Extension varchar(50),
    Telephone varchar(50),
    Alternative_Telephone varchar(50)
);


CREATE TABLE sandbox.QVAR_08202019
(
    "IMSID 2,868" int
);


CREATE TABLE sandbox.a_mktdef
(
    market_name varchar(20),
    market_id float,
    brand_form_strength varchar(38),
    bfs_id float,
    brand varchar(1),
    teva_prod varchar(1),
    prod_group varchar(16),
    F8 varchar(1)
);


CREATE TABLE sandbox.QVAR_HCPs_09272019
(
    IMSID varchar(12),
    NPI varchar(12)
);


CREATE TABLE sandbox.ZS_austedodeciling_1105
(
    IMSID int,
    "Alignment Decile" int
);


CREATE TABLE sandbox.controls_newprescriber_1114
(
    ims_id int
);


CREATE TABLE sandbox.J_Chung_NPI_IDs
(
    "Physician NPI #" int
);


CREATE TABLE sandbox."J_CHUNG_HCP DEA-2"
(
    "Physician DEA#" varchar(50),
    tvcmid int
);


CREATE TABLE sandbox.zs_acute_migraine
(
    market_name varchar(50),
    market_id int,
    brand_form_strength varchar(69),
    bfs_id int,
    teva_prod varchar(50),
    prod_group varchar(50)
);


CREATE TABLE sandbox.M_D_PRODUCTS
(
    MOVEMENT_DISORDER_PRODUCTS varchar(50)
);


CREATE TABLE sandbox.AUSTEDO_BASKET_BRAND
(
    MOVEMENT_DISORDER_PRODUCTS varchar(50)
);


CREATE TABLE sandbox.ONC_Basket_IDs_for_QA
(
    BRAND varchar(50),
    basket_id int
);


CREATE TABLE sandbox.PGK_Q12020Call_Plan
(
    "Sales Team" varchar(50),
    specialty varchar(50),
    "Specialty Group" varchar(50),
    decile int,
    "Decile Group" varchar(50),
    veeva_account_id varchar(50),
    tvcmid int,
    ims_id varchar(50),
    first_name varchar(50),
    last_name varchar(50),
    terr varchar(50),
    address1 varchar(70),
    city varchar(50),
    state varchar(50),
    zip int
);


CREATE TABLE sandbox.customer_mb
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


CREATE TABLE sandbox.test_con_prev
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


CREATE TABLE sandbox.mb_ic_demo_tp
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


CREATE TABLE sandbox.concur_hcp_prev
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


CREATE TABLE sandbox.IC_QA_062020_NEWWRITERS
(
    "New HCPs for Apr" int,
    "HCP Status" varchar(50)
);


CREATE TABLE sandbox.zs_teva_payer_master
(
    plan_code varchar(15),
    Final_Key_Controlling_Account varchar(100),
    Key_Parent_Account varchar(100),
    PBM varchar(100),
    Payer varchar(100),
    Plan varchar(100),
    State_Code varchar(50),
    AJOVY_TRx numeric(10,4),
    Aimovig_TRx numeric(10,4),
    Emgality_TRx numeric(10,4),
    aCGRP_TRx numeric(10,4),
    AJOVY_Share_Percent numeric(28,16),
    Aimovig_Share_Percent numeric(28,16),
    Emgality_Share_Percent numeric(28,16),
    Latest_Mth_AJOVY_TRx numeric(10,4),
    Latest_Mth_AJOVY_Share_Percent numeric(28,16),
    Lives_Covered_Total int,
    Ajovy_Formulary_Status varchar(100),
    Aimovig_Formulary_Status varchar(100),
    Emgality_Formulary_Status varchar(100),
    Plan_Payment_Type varchar(100),
    Priority_Account_flag varchar(100),
    Justification varchar(100),
    Plan_Mapping varchar(50)
);


CREATE TABLE sandbox.idl_best_address_2
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


CREATE TABLE sandbox.idl_best_address_non2
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


CREATE TABLE sandbox.TN_UNIVRS_AUG2020
(
    sales_force_id varchar(50),
    freeze_reason varchar(50),
    freeze_date timestamp,
    start_date timestamp,
    end_date timestamp,
    ims_id int,
    tvcmid int
);


CREATE TABLE sandbox.test_woprefix
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


CREATE TABLE sandbox.test_wprefix
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


CREATE TABLE sandbox.prescriber_rx_adhoc_06282021
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


CREATE TABLE sandbox."IMS ID ISSUES_AJOVY10262020"
(
    "IMS ID" varchar(50)
);


CREATE TABLE sandbox."IQVIA OPTUM OUTLETS11032020"
(
    "Outlet #" int,
    Active varchar(50),
    PRE int,
    Name varchar(53),
    "10/2/2020 12:00:00 AM" varchar(50)
);


CREATE TABLE sandbox.RELIANCE_PRODUCT_MODEL
(
    Market varchar(50),
    "Source Name" varchar(50),
    "Product Name" varchar(63),
    "Product Description" varchar(107),
    "Manufacturer Name" varchar(50)
);


CREATE TABLE sandbox.prescriber_rx_adhoc_12022020
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


CREATE TABLE sandbox.pgk_my_sample_closet
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


CREATE TABLE sandbox.ref_rptng_mrkts
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


CREATE TABLE sandbox.archer_zip_terr
(
    zip_code varchar(5),
    city varchar(50),
    state_code varchar(2),
    territory_number varchar(10),
    territory_name varchar(100),
    area_name varchar(50),
    region_name varchar(50),
    mirror_flag varchar(5),
    sales_force_id varchar(5),
    region_number varchar(8),
    area_number varchar(8)
);


CREATE TABLE sandbox.archer_target_data
(
    territory varchar(10),
    geography varchar(100),
    region varchar(10),
    tvcmid int,
    ims_id varchar(10),
    npi varchar(20),
    decile varchar(5),
    vmat2_12_mth varchar(10),
    pdrp_flag varchar(5),
    last_name varchar(50),
    first_name varchar(50),
    specialty varchar(10),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5)
);


CREATE TABLE sandbox."SYNEOS TERRs MISSING IMS IDs"
(
    "SYNEOS TERR" varchar(50),
    "Count of Missing IMS IDs" int
);


CREATE TABLE sandbox.veeva_call
(
    id varchar(18),
    ownerid varchar(18),
    isdeleted varchar(5),
    name varchar(80),
    recordtypeid varchar(18),
    createddate timestamptz,
    createdbyid varchar(18),
    lastmodifieddate timestamptz,
    lastmodifiedbyid varchar(18),
    systemmodstamp timestamptz,
    lastactivitydate date,
    mayedit varchar(5),
    islocked varchar(5),
    lastvieweddate timestamptz,
    lastreferenceddate timestamptz,
    sample_card_vod__c varchar(15),
    add_detail_vod__c varchar(1000),
    property_vod__c varchar(64),
    account_vod__c varchar(18),
    zvod_product_discussion_vod__c varchar(5),
    status_vod__c varchar(255),
    parent_address_vod__c varchar(18),
    account_plan_vod__c varchar(18),
    zvod_savenew_vod__c varchar(5),
    next_call_notes_vod__c varchar(255),
    mobile_id_vod__c varchar(100),
    zvod_account_credentials_vod_c varchar(5),
    zvod_account_preferred_name_vo varchar(5),
    zvod_account_sample_status_vod varchar(5),
    zvod_attendees_vod__c varchar(5),
    zvod_key_messages_vod__c varchar(5),
    zvod_detailing_vod__c varchar(5),
    zvod_expenses_vod__c varchar(5),
    zvod_followup_vod__c varchar(5),
    zvod_samples_vod__c varchar(5),
    zvod_save_vod__c varchar(5),
    zvod_submit_vod__c varchar(5),
    zvod_delete_vod__c varchar(5),
    activity_type__c varchar(255),
    significant_event__c varchar(5),
    location_vod__c varchar(128),
    subject_vod__c varchar(128),
    call_datetime_vod__c timestamptz,
    disbursed_to_vod__c varchar(255),
    request_receipt_vod__c varchar(5),
    signature_date_vod__c timestamptz,
    territory_vod__c varchar(100),
    submitted_by_mobile_vod__c varchar(5),
    call_type_vod__c varchar(255),
    add_key_message_vod__c varchar(4000),
    address_vod__c varchar(500),
    attendees_vod__c varchar(64),
    attendee_type_vod__c varchar(255),
    call_date_vod__c date,
    detailed_products_vod__c varchar(255),
    no_disbursement_vod__c varchar(5),
    parent_call_vod__c varchar(18),
    user_vod__c varchar(18),
    contact_vod__c varchar(18),
    zvod_entity_vod__c varchar(5),
    medical_event_vod__c varchar(18),
    mobile_created_datetime_vod__c timestamptz,
    mobile_last_modified_datetime timestamptz,
    license_vod__c varchar(25),
    is_parent_call_vod__c varchar(64),
    entity_display_name_vod__c varchar(1300),
    last_device_vod__c varchar(255),
    ship_address_line_1_vod__c varchar(80),
    ship_address_line_2_vod__c varchar(100),
    ship_city_vod__c varchar(40),
    ship_country_vod__c varchar(20),
    ship_license_expiration_date date,
    ship_license_status_vod__c varchar(25),
    ship_license_vod__c varchar(25),
    ship_state_vod__c varchar(30),
    ship_to_address_vod__c varchar(18),
    ship_zip_vod__c varchar(20),
    ship_to_address_text_vod__c varchar(1300),
    clm_vod__c varchar(5),
    zvod_clmdetails_vod__c varchar(5),
    is_sampled_call_vod__c varchar(5),
    zvod_surveys_vod__c varchar(5),
    presentations_vod__c varchar(500),
    entity_reference_id_vod__c varchar(100),
    error_reference_call_vod__c varchar(18),
    duration_vod__c varchar(64),
    color_vod__c varchar(255),
    allowed_products_vod__c varchar(1000),
    zvod_attachments_vod__c varchar(5),
    sample_card_reason_vod__c varchar(255),
    assmca_vod__c varchar(100),
    address_line_1_vod__c varchar(80),
    address_line_2_vod__c varchar(100),
    city_vod__c varchar(40),
    dea_address_line_1_vod__c varchar(80),
    dea_address_line_2_vod__c varchar(100),
    dea_address_vod__c varchar(18),
    dea_city_vod__c varchar(40),
    dea_expiration_date_vod__c date,
    dea_state_vod__c varchar(10),
    dea_zip_4_vod__c varchar(4),
    dea_zip_vod__c varchar(20),
    dea_vod__c varchar(9),
    ship_zip_4_vod__c varchar(4),
    state_vod__c varchar(10),
    zip_4_vod__c varchar(4),
    zip_vod__c varchar(20),
    sample_send_card_vod__c varchar(15),
    zvod_address_vod_c_dea_status_ varchar(5),
    signature_page_image_vod__c varchar(255),
    credentials_vod__c varchar(255),
    salutation_vod__c varchar(255),
    zvod_account_call_reminder_vod varchar(5),
    sales_org_tva__c varchar(1300),
    zvod_business_account_vod__c varchar(5),
    product_priority_1_vod__c varchar(18),
    product_priority_2_vod__c varchar(18),
    product_priority_3_vod__c varchar(18),
    product_priority_4_vod__c varchar(18),
    product_priority_5_vod__c varchar(18),
    zvod_more_actions_vod__c varchar(5),
    zvod_call_conflict_status varchar(5),
    signature_timestamp_vod__c varchar(64),
    expense_amount_vod__c varchar(64),
    total_expense_attendees_count varchar(64),
    attendee_list_vod__c varchar(4000),
    expense_post_status_vod__c varchar(10),
    attendee_post_status_vod__c varchar(10),
    expense_system_external_id varchar(255),
    incurred_expense_vod__c varchar(5),
    assigner_vod__c varchar(18),
    assignment_datetime_vod__c timestamptz,
    zvod_call_objective_vod__c varchar(5),
    signature_location_longitude varchar(64),
    signature_location_latitude varchar(64),
    location_services_status varchar(255),
    created_by_timezone_tva__c varchar(120),
    license_expiration_date_vod__c date,
    license_status_vod__c varchar(255),
    ship_assmca_vod__c varchar(100),
    ship_dea_expiration_date date,
    ship_dea_vod__c varchar(9),
    call_method_tva__c varchar(255),
    bendeka_indication_tva__c varchar(5000),
    file_id int,
    record_id int,
    austedo_indication_tva__c varchar(5000),
    call_duration_tva__c numeric(3,0),
    how_executed_tva__c varchar(40),
    Remote_Meeting_vod__c varchar(100),
    Veeva_Remote_Meeting_Id_vod__c varchar(20),
    Cobrowse_URL_Participant_vod__c varchar(255),
    Signature_Captured_Remotely_vod__c varchar(150),
    Remote_Signature_Attendee_Name_vod__c varchar(5),
    rowrank int
);


CREATE TABLE sandbox.newman_products
(
    sfa varchar(5),
    cne varchar(5),
    hcp varchar(5),
    consumer varchar(10),
    item_id varchar(25),
    product_line varchar(20),
    product_name varchar(100),
    Organization varchar(20),
    Description varchar(1000),
    expiration_date date,
    deleted_date date,
    status varchar(15),
    approval_number varchar(10),
    available_qty int,
    category varchar(50),
    cost numeric(10,2)
);


CREATE TABLE sandbox.ic_rx_bkp
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


CREATE TABLE sandbox.pay_type_xref
(
    model varchar(50),
    pay_type varchar(50),
    standard_teva_assignments varchar(74),
    pay_type_index int
);


CREATE TABLE sandbox.pay_type_overrides
(
    iqvia_payer_name varchar(62),
    iqvia_plan_name_substr varchar(62),
    override_model varchar(50)
);


CREATE TABLE sandbox.plantrak_oldview
(
    "Payer ID" int,
    "Payer Name" varchar(50),
    "Plan ID" int,
    "Payer/Plan ID" int,
    "Plan Name" varchar(62),
    Model varchar(50),
    "Payment Method" varchar(50),
    "Xref To" varchar(50),
    "Xref Date" varchar(50),
    City varchar(50),
    "HQ State" varchar(50),
    "Operating State" varchar(50),
    Months varchar(50)
);


CREATE TABLE sandbox.rptng_approv_email_05022021
(
    veeva_sent_email_id varchar(36),
    sent_email_id varchar(160),
    product varchar(2600),
    date_sent timestamptz,
    status varchar(9),
    failure_message varchar(510),
    veeva_account_id varchar(36),
    tvcmid int,
    veeva_call_id varchar(36),
    call_id varchar(80),
    sender_email varchar(160),
    territory varchar(200),
    recipient_email varchar(160),
    click_count float,
    open_count float,
    last_open_date timestamptz,
    valid_consent varchar(5),
    delivered varchar(1),
    opened varchar(1),
    dropped varchar(1),
    clicked varchar(1),
    downloaded varchar(1),
    viewed varchar(1),
    template_id varchar(36),
    template_name varchar(80),
    event_msg_vod__c varchar(65000),
    click_url_vod__c varchar(510),
    subject varchar(255)
);


CREATE TABLE sandbox.ic_rx_mar2021
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


CREATE TABLE sandbox.ic_demo_mar2021
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


CREATE TABLE sandbox.fcr_summary
(
    rsm_name varchar(121),
    rsm_title varchar(80),
    region_number varchar(26),
    rsm_email varchar(128),
    sales_rep_name varchar(121),
    sales_rep_title varchar(80),
    territory_number varchar(50),
    sales_rep_email varchar(128),
    fcr_date date
);


CREATE TABLE sandbox.payer_test1
(
    activity_id varchar(64),
    federation_id varchar(200),
    contact varchar(200),
    source_name varchar(100),
    "datetime" timestamp,
    trackback_id varchar(200),
    previous_activity varchar(64),
    level_name varchar(64),
    activity_role_name varchar(100),
    type_name varchar(100),
    native_type varchar(200),
    details varchar(200),
    line_item_id varchar(64),
    brand_name varchar(200),
    activity varchar(200),
    line_item_datetime timestamp,
    line_item_previous_line_item varchar(200),
    line_item_trackback_id varchar(200),
    line_item_details varchar(200),
    line_item_type_name varchar(100),
    line_item_native_type varchar(200),
    basket_id varchar(64),
    web_url varchar(5000)
);


CREATE TABLE sandbox.ftf_health_plan_geography
(
    health_plan_id varchar(6),
    operating_state varchar(2),
    lives_coverage int,
    file_id int,
    record_id int
);


CREATE TABLE sandbox.ftf_restrictions
(
    health_plan_id varchar(64),
    drug_id varchar(64),
    restriction_detail_id varchar(64),
    restriction_code varchar(64),
    formulary_entry_restriction_id varchar(64),
    restriction_detail_text varchar(250),
    restriction_addtnl_information_1 varchar(1000),
    restriction_addtnl_information_2 varchar(1000),
    record_id int,
    file_id int
);


CREATE TABLE sandbox.ims_plan_xref
(
    payer_num varchar(6),
    payer_name varchar(100),
    plan_num varchar(4),
    payer_plan_num varchar(10),
    plan_name varchar(100),
    model varchar(10),
    city varchar(30),
    hq_state varchar(2),
    operating_state varchar(2),
    months_with_data varchar(4),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.iqvia_plans_discard
(
    payer_id varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_plans_discard.file_id);


CREATE TABLE sandbox.ftf_plans_paytypeindex
(
    ftf_health_plantype varchar(64),
    paytype_index int,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_plans_paytypeindex.file_id);


CREATE TABLE sandbox.ftf_override_provider
(
    provider_id varchar(64),
    paytype_index varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_override_provider.file_id);


CREATE TABLE sandbox.ftf_override_plan
(
    ftf_health_planid varchar(64),
    paytype_index varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_override_plan.file_id);


CREATE TABLE sandbox.pa_restriction
(
    code int,
    restriction_detail_id varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (pa_restriction.file_id);


CREATE TABLE sandbox.a_prodgrp1
(
    market_name varchar(20),
    market_id float,
    product_desc varchar(39),
    basket_id float,
    prod_group varchar(16)
);


CREATE TABLE sandbox.a_jrtest
(
    ims_id varchar(10),
    prod_group varchar(16),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    trx numeric(21,3)
);


CREATE TABLE sandbox.addr
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


CREATE TABLE sandbox.ps_process_run_tbl
(
    process_id int,
    process_name varchar(64),
    date_run date
);


CREATE TABLE sandbox.ps_process_audit_tbl
(
    process_id int NOT NULL,
    cycle_id int,
    date_run date,
    insert_time timestamp,
    inserted_by varchar(64),
    modified_time timestamp,
    modified_by varchar(64)
)
PARTITION BY (ps_process_audit_tbl.process_id);


CREATE TABLE sandbox.iqvia_payer_paytype_override
(
    iqvia_payer_name varchar(128),
    iqvia_plan_name_regex varchar(128),
    paytype varchar(128),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_payer_paytype_override.file_id);


CREATE TABLE sandbox.iqvia_plan_preprocessed
(
    iqvia_payer_id varchar(6),
    iqvia_payer_name varchar(100),
    iqvia_plan_id varchar(4),
    iqvia_plan_code varchar(10),
    iqvia_plan_name varchar(100),
    model varchar(10),
    iqvia_pbm varchar(100),
    paytype varchar(128),
    paytype_index varchar(64),
    cycle_id int
);


CREATE TABLE sandbox.iqvia_pbm_preprocessed
(
    iqvia_plan_code varchar(10),
    iqvia_pbm varchar(100),
    xref_to varchar(10),
    iqvia_plan_name varchar(100),
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_health_plans_preprocessed
(
    ftf_health_plan_fid varchar(6),
    ftf_health_plan_name varchar(100),
    ftf_provider_fid varchar(6),
    ftf_provider_name varchar(250),
    parent_id varchar(6),
    ftf_parent_name varchar(250),
    ftf_health_plan_type varchar(250),
    pref_brand_tier varchar(64),
    plan_lives int,
    paytype varchar(64),
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_formularies_preprocessed
(
    drug_seq int,
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    pharmacy_status varchar(80),
    check_blank_pharmstat varchar(80),
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_pbm_functions
(
    pbm_function_id int,
    pbm_function varchar(64),
    notes varchar(128),
    used int,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_pbm_functions.file_id);


CREATE TABLE sandbox.ftf_pbms_preprocessed
(
    ftf_health_plan_fid varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250),
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_v1
(
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    restriction_code varchar(7),
    restriction_detail_id varchar(6),
    restriction_detail_text varchar(250),
    grouped_restriction_level varchar(255),
    drug_seq int,
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_v2
(
    ftf_health_plan_fid varchar(6),
    drug_id varchar(6),
    drug_seq int,
    MAX varchar(6),
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id int,
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.Ajovy_Dispense
(
    file_date timestamp,
    rx_received_date timestamp,
    order_created_date timestamp,
    shipping_date timestamp,
    prescriber_npi varchar(50),
    prescriber_full_name varchar(60),
    prescriber_first_name varchar(50),
    prescriber_middle_name varchar(50),
    prescriber_last_name varchar(50),
    prescriber_address varchar(60),
    prescriber_city varchar(50),
    prescriber_state varchar(50),
    prescriber_zip varchar(50),
    pharmacy_npi varchar(50),
    pharmacy_ncpdp_provider_id int,
    pharmacy_name varchar(50),
    pharmacy_address varchar(56),
    pharmacy_city varchar(50),
    pharmacy_state varchar(50),
    pharmacy_zip varchar(50),
    unique_patient_id varchar(70),
    product_ndc varchar(50),
    dispense_quantity numeric(28,10),
    dispense_number int,
    refills_remaining int,
    script_type varchar(50),
    coverage_code varchar(50),
    primary_payer_name varchar(68),
    primary_bin_number int,
    primary_payment_type varchar(50),
    primary_benefit_type varchar(50),
    patient_purchase_price numeric(28,10),
    patient_initial_cost varchar(50),
    patient_benefit numeric(28,14),
    payer_cost numeric(28,13),
    copay_assistance_applied varchar(50),
    patient_state varchar(50)
);


CREATE TABLE sandbox.raw_ftf_formularies
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    pharmacy_status varchar(20)
);


CREATE TABLE sandbox.raw_ftf_health_plans
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
    preferred_brand_tier varchar(64)
);


CREATE TABLE sandbox.raw_ftf_pbms
(
    health_plan_id varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250)
);


CREATE TABLE sandbox.raw_iqvia_plan
(
    payer_num varchar(6),
    payer_name varchar(100),
    plan_num varchar(4),
    payer_plan_num varchar(10),
    plan_name varchar(100),
    model varchar(10),
    city varchar(30),
    hq_state varchar(2),
    operating_state varchar(2),
    months_with_data varchar(4)
);


CREATE TABLE sandbox.raw_iqvia_pbm
(
    pbm_name varchar(100),
    payer_plan_num varchar(10),
    xref_to_payer_plan_num varchar(10),
    ipd_id varchar(10),
    ipd_type varchar(10),
    plan_name varchar(100),
    pbm_num varchar(6),
    ims_processor_num varchar(10)
);


CREATE TABLE sandbox.raw_teva_ims_bridge
(
    payer_name varchar(50),
    code varchar(10),
    name varchar(50),
    state varchar(5),
    comments varchar(50),
    plan_id varchar(10),
    plan_name varchar(100),
    provider_name varchar(100),
    plan_type_name varchar(20)
);


CREATE TABLE sandbox.suggestions_targets
(
    veeva_account_id varchar(18),
    territory_number varchar(8),
    product varchar(9)
);


CREATE TABLE sandbox.ddd_exc_or
(
    outlet_code varchar(50),
    outlet_name varchar(50),
    sub_cat varchar(50)
);


CREATE TABLE sandbox.afm_cycle1_teva_hcp_report
(
    npi varchar(10),
    zs_spec_desc_md varchar(25),
    specialty_name varchar(100),
    specialty_group varchar(25),
    pff_ctt_vol varchar(15),
    pff_en varchar(10),
    pff_en_quintile varchar(15),
    pff_affinity varchar(15),
    pr_ctt_vol varchar(15),
    pr_en varchar(10),
    pr_en_quintile varchar(15),
    pr_affinity varchar(15),
    pi_ctt_vol varchar(15),
    pi_en varchar(10),
    pi_en_quintile varchar(15),
    pi_affinity varchar(15),
    dph_ctt_vol varchar(15),
    dph_en varchar(10),
    dph_en_quintile varchar(15),
    dph_affinity varchar(15),
    dpl_ctt_vol varchar(15),
    dpl_en varchar(10),
    dpl_en_quintile varchar(15),
    dpl_affinity varchar(15),
    drt_ctt_vol varchar(15),
    drt_en varchar(10),
    drt_en_quintile varchar(15),
    drt_affinity varchar(15),
    top_channels varchar(15),
    pp_access_rating varchar(20),
    npp_access_rating varchar(20),
    peer_offer_en varchar(15),
    copay_offer_en varchar(15),
    sample_offer_en varchar(15),
    voucher_offer_en varchar(20)
);


CREATE TABLE sandbox.sample_table
(
    a int
);


CREATE TABLE sandbox.a_prodgrp_a
(
    mkt_name varchar(100),
    mkt_id numeric(8,0),
    mkt_rpt_flag varchar(1),
    bfs_name varchar(100),
    bfs_id numeric(8,0),
    brand varchar(50),
    teva_prod varchar(1),
    mkt_basket varchar(1),
    prod_grp varchar(50)
);


CREATE TABLE sandbox.a_prodgrp
(
    mkt_name varchar(100),
    mkt_id numeric(9,0),
    mkt_rpt_flag varchar(1),
    bfs_name varchar(100),
    bfs_id numeric(9,0),
    brand varchar(50),
    teva_prod varchar(1),
    mkt_basket varchar(1),
    prod_grp varchar(50)
);


CREATE TABLE sandbox.a_roster_denorm
(
    sales_force_id varchar(5),
    terr varchar(8),
    terr_name varchar(50),
    reg varchar(8),
    reg_name varchar(50),
    area varchar(8),
    area_name varchar(50),
    nation varchar(4),
    nation_name varchar(6)
);


CREATE TABLE sandbox.a_roster_norm
(
    sales_force_id varchar(5),
    sorg_lvl varchar(1),
    sorg varchar(8),
    sorg_name varchar(50),
    terr varchar(8),
    terr_name varchar(50),
    reg varchar(8),
    reg_name varchar(50),
    area varchar(8),
    area_name varchar(50),
    nation varchar(4),
    nation_name varchar(6)
);


CREATE TABLE sandbox.a_payer_Migrane_Market
(
    ims_id varchar(10),
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkt_id numeric(9,0),
    prod_grp varchar(50),
    teva_prod varchar(1),
    SubGroup varchar(1),
    trx_c1 numeric(21,3),
    trx_p1 numeric(21,3),
    trx_c3 numeric(21,3),
    trx_p3 numeric(21,3)
);


CREATE TABLE sandbox.a_align_payer_rollup
(
    ims_id varchar(10),
    sorg_lvl varchar(1),
    sorg varchar(8)
);


CREATE TABLE sandbox.a_payer_rollup_temp
(
    ims_id varchar(10),
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkt_id varchar(4),
    prod_grp varchar(9),
    teva_prod varchar(1),
    SubGroup varchar(1),
    trx_c1 float,
    trx_p1 float,
    trx_c3 float,
    trx_p3 float
);


CREATE TABLE sandbox.a_payer_rollup
(
    ims_id varchar(10),
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkt_id varchar(4),
    prod_grp varchar(9),
    teva_prod varchar(1),
    SubGroup varchar(1),
    trx_c1 float,
    trx_p1 float,
    trx_c3 float,
    trx_p3 float
);


CREATE TABLE sandbox.a_tmp_a
(
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkttrx_c3 float,
    mkttrx_p3 float,
    mkttrx_A_c3 float,
    mkttrx_A_p3 float
);


CREATE TABLE sandbox.a_tmp_b
(
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkttrx_c3 float,
    mkttrx_p3 float,
    mkttrx_A_c3 float,
    mkttrx_A_p3 float,
    Total float,
    RunningTotal float
);


CREATE TABLE sandbox.a_top_plans_rollup
(
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkttrx_c3 float,
    mkttrx_p3 float,
    mkttrx_A_c3 float,
    mkttrx_A_p3 float,
    Total float,
    RunningTotal float
);


CREATE TABLE sandbox.a_plans_by_geo
(
    sorg_lvl varchar(1),
    sorg varchar(8),
    payment_method varchar(250),
    pbm_name varchar(100),
    payer_name varchar(100),
    plan_name varchar(100),
    mkt_id varchar(4),
    prod_grp varchar(9),
    teva_prod varchar(1),
    mkttrx_c3 float,
    Total float,
    mkttrx_p3 float,
    mkttrx_A_c3 float,
    mkttrx_A_p3 float,
    trx_c1 float,
    trx_p1 float,
    trx_c3 float,
    trx_p3 float
);


CREATE TABLE sandbox.override_bridge_ftf_plan_types
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(100),
    iqvia_plan_name_regex varchar(200),
    override_ftf_health_plan_type varchar(100),
    override_precedence int NOT NULL,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (override_bridge_ftf_plan_types.file_id);


CREATE TABLE sandbox.delete_bridge_ftf_plan_types
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(100),
    iqvia_plan_name_regex varchar(200),
    delete_flag varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (delete_bridge_ftf_plan_types.file_id);


CREATE TABLE sandbox.provider_override_default
(
    provider_id varchar(10),
    paytype_regex varchar(100),
    provider_name varchar(100),
    fill_in_iqvia_payer_name_if_no_bridge varchar(100),
    override_best_iqvia_payer varchar(100),
    fill_in_iqvia_pbm_if_no_bridge varchar(100),
    override_best_iqvia_pbm varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (provider_override_default.file_id);


CREATE TABLE sandbox.key_controller_list
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (key_controller_list.file_id);


CREATE TABLE sandbox.presr_rx_resp_07172021
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


CREATE TABLE sandbox.sample_table1
(
    a int
);


CREATE TABLE sandbox.vid_npi
(
    vid varchar(25),
    npi_num varchar(15)
);


CREATE TABLE sandbox.key_controller_list_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    key_controlling_account varchar(100),
    key_controlling_plan_formulary varchar(100),
    key_controlling_parent varchar(100),
    payer_pbm varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (key_controller_list_v1.file_id);


CREATE TABLE sandbox.provider_override_default_v1
(
    provider_id varchar(10),
    paytype_regex varchar(100),
    provider_name varchar(100),
    fill_in_iqvia_payer_name_if_no_bridge varchar(100),
    override_best_iqvia_payer varchar(100),
    fill_in_iqvia_pbm_if_no_bridge varchar(100),
    override_best_iqvia_pbm varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (provider_override_default_v1.file_id);


CREATE TABLE sandbox.teva_iqvia_bridge_v1
(
    iqvia_payer_name varchar(100),
    iqvia_plan_code int,
    iqvia_plan_name varchar(100),
    comments varchar(100),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(100),
    ftf_provider_name varchar(100),
    ftf_health_plan_type varchar(100),
    hp_type varchar(100),
    model varchar(100),
    iqvia_pbm varchar(100),
    iqvia_paytype varchar(50),
    paytype_index varchar(50),
    paytype varchar(50),
    check_pay_types varchar(50),
    check_hp_types varchar(50),
    old_ftf_health_plan_type varchar(50),
    cycle_id int
);


CREATE TABLE sandbox.iqvia_mb_may_v3
(
    iqvia_plan_code varchar(200),
    iqvia_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_fid varchar(200),
    ftf_health_plan_name varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    ajovy_access_for_ftf_plan varchar(200),
    aimovig_access_for_ftf_plan varchar(200),
    emgality_access_for_ftf_plan varchar(200),
    total_lives_for_ftf_plan int,
    key_pbm varchar(200),
    cycle_id int
);


CREATE TABLE sandbox.ftf_restriction_id_group_mapping_v2
(
    restriction_detail_id int,
    restriction_detail_text varchar(15000),
    row_count int,
    restriction_group varchar(15000),
    coverage_cat varchar(1000),
    other_pmf_metrics varchar(1000)
);


CREATE TABLE sandbox.past_mapping_changes
(
    Restrictions varchar(3000),
    Manual_update varchar(3000),
    restrictions_up varchar(3000),
    has_pa int,
    has_st int,
    hasPAST int
);


CREATE TABLE sandbox."digital-affinity"
(
    vid__v int,
    id varchar(50),
    entity_type varchar(50),
    id_type varchar(50)
);


CREATE TABLE sandbox.activity_line_level
(
    activityid varchar(100),
    level varchar(100),
    basket_name varchar(50)
);


CREATE TABLE sandbox.activity_line_item_level
(
    activityid varchar(600),
    level varchar(100)
);


CREATE TABLE sandbox.ic_rx_Feb21
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


CREATE TABLE sandbox.ic_demo_Feb21
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


CREATE TABLE sandbox.act_hub_CSD1015
(
    npi varchar(255),
    activity_id varchar(64),
    federation_id varchar(200),
    contact varchar(200),
    source_name varchar(100),
    "datetime" timestamp,
    trackback_id varchar(200),
    previous_activity varchar(64),
    level_name varchar(64),
    activity_role_name varchar(100),
    type_name varchar(100),
    native_type varchar(200),
    details varchar(200),
    line_item_id varchar(64),
    brand_name varchar(200),
    activity varchar(200),
    line_item_datetime timestamp,
    line_item_previous_line_item varchar(200),
    line_item_trackback_id varchar(200),
    line_item_details varchar(200),
    line_item_type_name varchar(100),
    line_item_native_type varchar(200),
    basket_id varchar(64),
    web_url varchar(5000)
);


CREATE TABLE sandbox.mb_to_monthly_account_summary
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


CREATE TABLE sandbox.health_plan_geography
(
    health_plan_id varchar(10),
    Country_fips_id varchar(10),
    country_id varchar(5),
    country_name varchar(50),
    state_id varchar(2),
    state_name varchar(2),
    country_lives numeric(18,2)
);


CREATE TABLE sandbox.act_hub_CSD1015_nonAustedo
(
    npi varchar(255),
    activity_id varchar(64),
    federation_id varchar(200),
    contact varchar(200),
    source_name varchar(100),
    "datetime" timestamp,
    trackback_id varchar(200),
    previous_activity varchar(64),
    level_name varchar(64),
    activity_role_name varchar(100),
    type_name varchar(100),
    native_type varchar(200),
    details varchar(200),
    line_item_id varchar(64),
    brand_name varchar(200),
    activity varchar(200),
    line_item_datetime timestamp,
    line_item_previous_line_item varchar(200),
    line_item_trackback_id varchar(200),
    line_item_details varchar(200),
    line_item_type_name varchar(100),
    line_item_native_type varchar(200),
    basket_id varchar(64),
    web_url varchar(5000)
);


CREATE TABLE sandbox.Austedo_Enroll
(
    First_name varchar(50),
    Last_name varchar(50),
    NPI varchar(50)
);


CREATE TABLE sandbox.zip_states
(
    ZIP_CODE varchar(10),
    STATE varchar(10)
);


CREATE TABLE sandbox.fcr_summ_0622
(
    rsm_name varchar(121),
    rsm_title varchar(80),
    region_number varchar(26),
    rsm_email varchar(128),
    sales_rep_name varchar(121),
    sales_rep_title varchar(80),
    territory_number varchar(50),
    sales_rep_email varchar(128),
    fcr_date date
);


CREATE TABLE sandbox.payer_test
(
    IMS_ID varchar(50),
    TVCMID int,
    First_Name varchar(50),
    Middle_Name varchar(50),
    Last_Name varchar(50),
    Cred varchar(59),
    Location varchar(112),
    Address_1 varchar(76),
    Address_2 varchar(51),
    City varchar(50),
    State_Code varchar(50),
    Zip_Code varchar(50),
    Zip_Extension varchar(50),
    Telephone varchar(50),
    Alternative_Telephone varchar(50)
);


CREATE TABLE sandbox.ftf_restrictions_v2
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
    grouped_restriction_level varchar(255),
    record_id int,
    file_id int
);


CREATE TABLE sandbox.model_paytype_map
(
    model varchar(64),
    paytype varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (model_paytype_map.file_id);


CREATE TABLE sandbox.drug_assignments
(
    drug_id int,
    drug_seq int,
    product varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (drug_assignments.file_id);


CREATE TABLE sandbox.botox_step_restriction
(
    code int,
    restriction_group varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (botox_step_restriction.file_id);


CREATE TABLE sandbox.patient_pa_restriction
(
    code int,
    restriction_detail_id varchar(64),
    notes varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (patient_pa_restriction.file_id);


CREATE TABLE sandbox.Ajovy_Status
(
    file_date timestamp,
    rx_received_date timestamp,
    order_created_date timestamp,
    unique_patient_id varchar(70),
    status varchar(50),
    is_refill varchar(50),
    script_type varchar(50),
    refills_remaining int,
    patient_age int,
    inventory_item_name varchar(60),
    prescriber_npi varchar(50),
    prescriber_full_name varchar(60),
    prescriber_first_name varchar(50),
    prescriber_middle_name varchar(50),
    prescriber_last_name varchar(50),
    prescriber_address varchar(61),
    prescriber_city varchar(50),
    prescriber_state varchar(50),
    prescriber_zip varchar(50),
    primary_payer_name varchar(68),
    primary_payment_type varchar(50),
    primary_benefit_type varchar(50),
    purchase_status varchar(50)
);


CREATE TABLE sandbox.veeva_suggestions
(
    account_priority_score_vod__c int,
    account_vod__c varchar(55),
    display_dismiss_vod__c varchar(10),
    display_mark_as_complete_vod__c varchar(10),
    display_score_vod__c varchar(10),
    email_template_id_vod__c varchar(255),
    email_template_vault_id_vod__c varchar(255),
    email_template_vod__c varchar(10),
    expiration_date_vod__c date,
    marked_as_complete_vod__c varchar(10),
    mark_complete_count_vod__c int,
    name varchar(255),
    ownerid varchar(255),
    posted_date date,
    priority_vod__c varchar(255),
    reason_vod__c varchar(255),
    record_type_name_vod__c varchar(255),
    suppress_reason_vod__c varchar(10),
    title_vod__c varchar(255),
    business_rule_name varchar(255),
    product varchar(255),
    combined_owner_account_key varchar(255),
    days_since_last_call int
);


CREATE TABLE sandbox.fcr_summary_0714
(
    rsm_name varchar(132),
    rsm_title varchar(80),
    region_number varchar(26),
    rsm_email varchar(128),
    sales_rep_name varchar(132),
    sales_rep_title varchar(80),
    territory_number varchar(80),
    sales_rep_email varchar(128),
    fcr_date date
);


CREATE TABLE sandbox."MediCal HCPs"
(
    Region_ID varchar(50),
    Region_Name varchar(53),
    Territory_ID varchar(50),
    Territory_Name varchar(50),
    IMS_ID varchar(50),
    First_Name varchar(50),
    Last_Name varchar(50),
    Specialty_Name varchar(66),
    Specialty_Group varchar(50),
    ACUTE_MIGRAINE numeric(28,10),
    PREVENT_MIGRAINE numeric(28,10),
    "ANTI-CGRP" numeric(28,10),
    AJOVY numeric(28,10)
);


CREATE TABLE sandbox.presr_rx_for_June_ic_07192021
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


CREATE TABLE sandbox.license_audits
(
    database_size_bytes int,
    license_size_bytes varchar(20),
    usage_percent float,
    audit_start_timestamp timestamptz,
    audit_end_timestamp timestamptz,
    confidence_level_percent float,
    error_tolerance_percent float,
    used_sampling boolean,
    confidence_interval_lower_bound_bytes int,
    confidence_interval_upper_bound_bytes int,
    sample_count int,
    cell_count int,
    audited_data varchar(128)
);


CREATE TABLE sandbox.query_profiles
(
    session_id varchar(128),
    transaction_id int,
    statement_id int,
    identifier varchar(128),
    node_name varchar(128),
    query varchar(64000),
    query_search_path varchar(64000),
    schema_name varchar(128),
    table_name varchar(128),
    query_duration_us numeric(36,6),
    query_start_epoch int,
    query_start varchar(63),
    query_type varchar(128),
    error_code int,
    user_name varchar(128),
    processed_row_count int,
    reserved_extra_memory_b int,
    is_executing boolean
);


CREATE TABLE sandbox.sessions
(
    node_name varchar(128),
    user_name varchar(128),
    client_hostname varchar(128),
    client_pid int,
    login_timestamp timestamptz,
    session_id varchar(80),
    idle_session_timeout interval,
    grace_period interval,
    client_label varchar(256),
    transaction_start timestamptz,
    transaction_id int,
    transaction_description varchar(8192),
    statement_start timestamptz,
    statement_id int,
    last_statement_duration_us int,
    runtime_priority varchar(8192),
    current_statement varchar(8192),
    last_statement varchar(8192),
    ssl_state varchar(80),
    authentication_method varchar(80),
    client_type varchar(128),
    client_version varchar(128),
    client_os varchar(128),
    client_os_user_name varchar(128),
    client_authentication_name varchar(128),
    client_authentication int,
    requested_protocol varchar(128),
    effective_protocol varchar(128),
    external_memory_kb int
);


CREATE TABLE sandbox.test
(
    tmp varchar(5)
);


CREATE TABLE sandbox.iqvia_payer_paytype_override_v1
(
    iqvia_payer_name varchar(200),
    iqvia_plan_name_regex varchar(200),
    paytype varchar(128),
    file_id int,
    record_id int
);


CREATE TABLE sandbox.iqvia_paytypeindex_v1
(
    paytype_index varchar(64),
    paytype varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_paytypeindex_v1.file_id);


CREATE TABLE sandbox.model_paytype_map_v1
(
    model varchar(64),
    paytype varchar(64),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (model_paytype_map_v1.file_id);


CREATE TABLE sandbox.iqvia_plans_discard_v1
(
    payer_id varchar(64),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (iqvia_plans_discard_v1.file_id);


CREATE TABLE sandbox.ftf_plans_paytypeindex_v1
(
    ftf_health_plantype varchar(64),
    paytype_index int,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_plans_paytypeindex_v1.file_id);


CREATE TABLE sandbox.drug_assignments_v1
(
    drug_id int,
    drug_seq int,
    product varchar(64),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (drug_assignments_v1.file_id);


CREATE TABLE sandbox.botox_step_restriction_v1
(
    code int,
    botox_step_flag varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (botox_step_restriction_v1.file_id);


CREATE TABLE sandbox.pa_restriction_v1
(
    code int,
    prescriber_prior_authorization_category varchar(100),
    restriction_detail_id varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (pa_restriction_v1.file_id);


CREATE TABLE sandbox.step_restriction_v1
(
    code int,
    step_category varchar(100),
    restriction_group varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (step_restriction_v1.file_id);


CREATE TABLE sandbox.patient_pa_restriction_v1
(
    code int,
    patient_prior_authorization_category varchar(100),
    restriction_detail_id varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (patient_pa_restriction_v1.file_id);


CREATE TABLE sandbox.medical_rec_restriction_v1
(
    code int,
    medical_records_submission_required_flag varchar(100),
    restriction_detail_id varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (medical_rec_restriction_v1.file_id);


CREATE TABLE sandbox.unspecified_rec_restriction_v1
(
    code int,
    unspecified_restriction_flag varchar(100),
    restriction_detail_id varchar(200),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (unspecified_rec_restriction_v1.file_id);


CREATE TABLE sandbox.override_bridge_ftf_plan_types_v1
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(100),
    iqvia_plan_name_regex varchar(200),
    override_ftf_health_plan_type varchar(100),
    override_precedence int NOT NULL,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (override_bridge_ftf_plan_types_v1.file_id);


CREATE TABLE sandbox.delete_bridge_ftf_plan_types_v1
(
    ftf_health_plan_name_regex varchar(200),
    iqvia_payer_name_regex varchar(100),
    iqvia_plan_name_regex varchar(200),
    delete_flag varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (delete_bridge_ftf_plan_types_v1.file_id);


CREATE TABLE sandbox.ftf_pbm_functions_v1
(
    pbm_function_id int,
    pbm_function varchar(100),
    notes varchar(200),
    used int,
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (ftf_pbm_functions_v1.file_id);


CREATE TABLE sandbox.has_st_mapping_v1
(
    has_st int,
    st_regex varchar(100),
    notes varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (has_st_mapping_v1.file_id);


CREATE TABLE sandbox.has_pa_mapping_v1
(
    has_pa int,
    pa_regex varchar(100),
    notes varchar(200),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (has_pa_mapping_v1.file_id);


CREATE TABLE sandbox.calc_pbm_key_pbm_mapping_v1
(
    calculated_pbm varchar(100),
    key_pbm varchar(100),
    added_by varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (calc_pbm_key_pbm_mapping_v1.file_id);


CREATE TABLE sandbox.calculated_pbm_config_v1
(
    ftf_formulary_management_pbm_regex varchar(100),
    ftf_formulary_influencer_pbm_regex varchar(100),
    ftf_claims_processing_pbm_regex varchar(100),
    calculated_pbm_column varchar(100),
    file_id int NOT NULL,
    record_id int
)
PARTITION BY (calculated_pbm_config_v1.file_id);


CREATE TABLE sandbox.raw_ftf_formularies_v2
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    pharmacy_status varchar(20)
);


CREATE TABLE sandbox.raw_ftf_health_plans_v2
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
    preferred_brand_tier varchar(64)
);


CREATE TABLE sandbox.raw_ftf_health_plan_geography_v2
(
    health_plan_id varchar(6),
    county_fips_id int,
    county_id int,
    county_name varchar(50),
    state_id int,
    state_name varchar(10),
    county_lives numeric(14,2)
);


CREATE TABLE sandbox.raw_ftf_pbms_v2
(
    health_plan_id varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250)
);


CREATE TABLE sandbox.raw_ftf_restrictions_v2
(
    health_plan_id varchar(6),
    drug_id varchar(7),
    restriction_code varchar(20),
    restriction_details_id varchar(6),
    restriction_details_text varchar(500),
    restriction_details_information_1 varchar(4000),
    restriction_details_information_2 varchar(8000),
    step_count varchar(50),
    pa_form varchar(4000),
    indication varchar(255),
    grouped_restriction_level varchar(255)
);


CREATE TABLE sandbox.raw_iqvia_plan_v2
(
    payer_id varchar(6),
    payer_name varchar(100),
    plan_id varchar(7),
    payer_plan_id varchar(10),
    plan_name varchar(35),
    model varchar(10),
    city varchar(30),
    hq_state varchar(2),
    operating_state varchar(2),
    months_with_data varchar(4)
);


CREATE TABLE sandbox.raw_iqvia_pbm_v2
(
    pbm_name varchar(100),
    payer_plan_id varchar(10),
    xref_to_payer_plan_id varchar(10),
    ipd_id varchar(10),
    ipd_type varchar(10),
    plan_name varchar(100),
    pbm_id varchar(10),
    ims_processor_number varchar(10)
);


CREATE TABLE sandbox.raw_teva_ims_bridge_v2
(
    payer_name varchar(200),
    code varchar(10),
    name varchar(50),
    state varchar(5),
    comments varchar(50),
    plan_id varchar(10),
    plan_name varchar(100),
    provider_name varchar(100),
    plan_type_name varchar(20)
);


CREATE TABLE sandbox.payer_spine_iqvia_kcf_level_may
(
    iqvia_plan_code numeric(37,15),
    iqvia_plan_name varchar(500),
    iqvia_payer_name varchar(500),
    iqvia_pbm varchar(500),
    payment_type varchar(500),
    key_controlling_plan_formulary varchar(500),
    key_controlling_account varchar(500),
    ajovy_access_for_ftf_plan varchar(500),
    aimovig_access_for_ftf_plan varchar(500),
    emgality_access_for_ftf_plan varchar(500),
    apportionment_factor numeric(37,15),
    trx numeric(37,15)
);


CREATE TABLE sandbox.saba_mkt_ajovy_payer_spine_prod_list
(
    product_name varchar(200),
    notes varchar(200),
    file_id int,
    record_id int
)
PARTITION BY (saba_mkt_ajovy_payer_spine_prod_list.file_id);


CREATE TABLE sandbox.payer_spine25_detailed_teva_brands
(
    iqvia_plan_code varchar(40),
    iqvia_plan_name varchar(50),
    iqvia_payer_name varchar(50),
    iqvia_pbm varchar(100),
    key_controlling_plan_formulary varchar(200),
    key_controlling_account varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    payment_type varchar(100),
    Ajovy_access_for_ftf_plan varchar(100),
    Aimovig_access_for_ftf_plan varchar(100),
    Emgality_access_for_ftf_plan varchar(100),
    lives_plan_kcf_lvl int,
    lives_plan_lvl int,
    apportionment_factor numeric(36,18),
    saba_trx int,
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.comparison_payer_spine_detailed_kcf
(
    iqvia_plan_code varchar(42),
    iqvia_plan_name varchar(500),
    key_controlling_plan_formulary varchar(500),
    iqvia_payer_name varchar(500),
    iqvia_pbm varchar(500),
    key_controlling_account varchar(500),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    payment_type varchar(500),
    ajovy_access_for_ftf_plan varchar(500),
    aimovig_access_for_ftf_plan varchar(500),
    emgality_access_for_ftf_plan varchar(500),
    apportionment_factor numeric(40,18),
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
    change_apportionment_factor int,
    change_saba_trx int,
    change int,
    month_flag varchar(14),
    status varchar(12),
    cycle_id numeric(18,6),
    modified_time timestamptz(6),
    modified_by varchar(3)
);


CREATE TABLE sandbox.ftf_iqvia_xref_cdw_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    xref_iqvia_payer_name varchar(200),
    best_matched_iqvia_payer_name varchar(200),
    xref_iqvia_pbm varchar(200),
    best_matched_iqvia_pbm varchar(200),
    paytype varchar(200),
    model varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(300),
    ftf_health_plan_type varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    ajovy_access_for_ftf_plan varchar(300),
    aimovig_access_for_ftf_plan varchar(300),
    emgality_access_for_ftf_plan varchar(300),
    ftf_pref_brand_tier int,
    total_lives_for_ftf_plan int,
    key_pbm varchar(300),
    check_iq_payer int,
    check_iq_pbm int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200),
    nurtec_access_for_ftf_plan varchar(300),
    qulipta_access_for_ftf_plan varchar(300),
    austedo_hd_access_for_ftf_plan varchar(200),
    austedo_td_access_for_ftf_plan varchar(200),
    ingrezza_td_access_for_ftf_plan varchar(200)
)
PARTITION BY (ftf_iqvia_xref_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_iqvia_xref_v2_cdw_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_health_plan_type varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    ajovy_access_for_ftf_plan varchar(300),
    aimovig_access_for_ftf_plan varchar(300),
    emgality_access_for_ftf_plan varchar(300),
    ftf_pref_brand_tier int,
    total_lives_for_ftf_plan int,
    key_pbm varchar(300),
    check_iq_payer int,
    check_iq_pbm int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200),
    nurtec_access_for_ftf_plan varchar(300),
    qulipta_access_for_ftf_plan varchar(300),
    austedo_hd_access_for_ftf_plan varchar(200),
    austedo_td_access_for_ftf_plan varchar(200),
    ingrezza_td_access_for_ftf_plan varchar(200)
)
PARTITION BY (ftf_iqvia_xref_v2_cdw_v1.cycle_id);


CREATE TABLE sandbox.comparison_iqvia_fid_plans_cdw_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    ajovy_access_for_ftf_plan varchar(300),
    aimovig_access_for_ftf_plan varchar(300),
    emgality_access_for_ftf_plan varchar(300),
    total_lives_for_ftf_plan int,
    key_pbm varchar(300),
    change_iqvia_plan_code int,
    change_iqvia_plan_name int,
    change_iqvia_payer_name int,
    change_iqvia_pbm int,
    change_payment_type int,
    change_iqvia_model int,
    change_ftf_health_plan_fid int,
    change_ftf_health_plan_name int,
    change_ftf_health_plan_type int,
    change_key_controlling_plan_formulary int,
    change_key_controlling_account int,
    change_key_controlling_parent int,
    change_payer_pbm int,
    change_ajovy_access_for_ftf_plan int,
    change_aimovig_access_for_ftf_plan int,
    change_emgality_access_for_ftf_plan int,
    change_total_lives_for_ftf_plan int,
    change_key_pbm int,
    change int,
    check_iq_payer int,
    check_iq_pbm int,
    change_in_lives numeric(37,15),
    month_flag varchar(200),
    status varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200),
    nurtec_access_for_ftf_plan varchar(300),
    qulipta_access_for_ftf_plan varchar(300),
    change_nurtec_access_for_ftf_plan int,
    change_qulipta_access_for_ftf_plan int
)
PARTITION BY (comparison_iqvia_fid_plans_cdw_v1.cycle_id);


CREATE TABLE sandbox.iqvia_plan_code_ftf_hp_id_cdw_v1
(
    iqvia_plan_code int,
    iqvia_plan_name varchar(300),
    iqvia_payer_name varchar(300),
    iqvia_pbm varchar(300),
    payment_type varchar(200),
    iqvia_model varchar(200),
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(300),
    ftf_health_plan_type varchar(200),
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    ajovy_access_for_ftf_plan varchar(300),
    aimovig_access_for_ftf_plan varchar(300),
    emgality_access_for_ftf_plan varchar(300),
    total_lives_for_ftf_plan int,
    key_pbm varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200),
    nurtec_access_for_ftf_plan varchar(300),
    qulipta_access_for_ftf_plan varchar(300),
    austedo_hd_access_for_ftf_plan varchar(200),
    austedo_td_access_for_ftf_plan varchar(200),
    ingrezza_td_access_for_ftf_plan varchar(200)
);


CREATE TABLE sandbox.key_ctl_account_summary_cdw_v1
(
    paytype varchar(200),
    ftf_health_plan_type varchar(300),
    key_controlling_account varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (key_ctl_account_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.key_pbm_summary_cdw_v1
(
    paytype varchar(200),
    ftf_health_plan_type varchar(300),
    key_pbm varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (key_pbm_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.iqvia_payer_name_summary_cdw_v1
(
    paytype varchar(300),
    iqvia_payer_name varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (iqvia_payer_name_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.iqvia_pbm_summary_cdw_v1
(
    paytype varchar(300),
    iqvia_pbm varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (iqvia_pbm_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_formulary_management_pbm_summary_cdw_v1
(
    paytype varchar(300),
    ftf_formulary_management_pbm varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_formulary_management_pbm_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_formulary_influencer_pbm_summary_cdw_v1
(
    paytype varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_formulary_influencer_pbm_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_claims_processing_pbm_summary_cdw_v1
(
    paytype varchar(300),
    ftf_claims_processing_pbm varchar(300),
    current_month_lives int,
    previous_month_lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_claims_processing_pbm_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_hp_id_key_controlling_account_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(300),
    ftf_provider_name varchar(300),
    payment_type varchar(300),
    key_controlling_account varchar(300),
    key_controlling_plan_formulary varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    key_pbm varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_hp_id_key_controlling_account_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_hp_id_key_pbm_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(300),
    ftf_provider_name varchar(300),
    payment_type varchar(300),
    key_pbm varchar(300),
    assigned_iqvia_pbm varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_hp_id_key_pbm_cdw_v1.cycle_id);


CREATE TABLE sandbox.ftf_plan_master_file_op_cdw_v1
(
    ftf_health_plan_fid int,
    product varchar(200),
    ftf_health_plan_name varchar(300),
    coverage_category varchar(300),
    ftf_provider_name varchar(300),
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    plan_lives int,
    key_controlling_plan_formulary varchar(300),
    key_controlling_account varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    key_pbm varchar(300),
    iqvia_payer_name varchar(300),
    iqvia_pbm varchar(300),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    pref_brand_tier int,
    pharmacy_status varchar(300),
    ftf_tier varchar(300),
    restrictions varchar(300),
    copay_tier varchar(300),
    restriction_category varchar(300),
    step varchar(300),
    botox varchar(300),
    prescriber_pa varchar(300),
    patient_pa varchar(300),
    medical_records varchar(300),
    criteria_unspec varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (ftf_plan_master_file_op_cdw_v1.cycle_id);


CREATE TABLE sandbox.st_lives_summary_cdw_v1
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(300),
    ftf_provider_name varchar(300),
    ftf_parent_name varchar(300),
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    key_controlling_account varchar(300),
    key_controlling_plan_formulary varchar(300),
    key_controlling_parent varchar(300),
    payer_pbm varchar(300),
    key_pbm varchar(300),
    iqvia_payer_name varchar(300),
    iqvia_pbm varchar(300),
    state varchar(200),
    ftf_state_hp_lives int,
    pref_brand_tier int,
    ajovy_formulary varchar(300),
    aimovig_formulary varchar(300),
    emgality_formulary varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (st_lives_summary_cdw_v1.cycle_id);


CREATE TABLE sandbox.paytype_product_coverage_category_cdw_v1
(
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (paytype_product_coverage_category_cdw_v1.cycle_id);


CREATE TABLE sandbox.paytype_product_copay_tier_cdw_v1
(
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (paytype_product_copay_tier_cdw_v1.cycle_id);


CREATE TABLE sandbox.paytype_product_step_category_cdw_v1
(
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (paytype_product_step_category_cdw_v1.cycle_id);


CREATE TABLE sandbox.paytype_product_patient_pa_cdw_v1
(
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (paytype_product_patient_pa_cdw_v1.cycle_id);


CREATE TABLE sandbox.key_controlling_account_product_cov_category_paytype_cdw_v1
(
    key_controlling_account varchar(300),
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (key_controlling_account_product_cov_category_paytype_cdw_v1.cycle_id);


CREATE TABLE sandbox.key_pbm_product_cov_category_paytype_cdw_v1
(
    key_pbm varchar(300),
    paytype varchar(300),
    product varchar(300),
    metric varchar(300),
    lives int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (key_pbm_product_cov_category_paytype_cdw_v1.cycle_id);


CREATE TABLE sandbox.payer_spine25_detailed_teva_brands_cdw_v1
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
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (payer_spine25_detailed_teva_brands_cdw_v1.cycle_id);


CREATE TABLE sandbox.payer_spine25_plan_teva_brands_cdw_v1
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
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(200)
)
PARTITION BY (payer_spine25_plan_teva_brands_cdw_v1.cycle_id);


CREATE TABLE sandbox.tp_pre_calls_anti_psych
(
    sales_force_id varchar(2),
    nation_id varchar(10),
    area_id varchar(10),
    region_id varchar(10),
    territory_id varchar(10),
    rep_name varchar(100),
    user_id varchar(255),
    market_id int,
    market_name varchar(75),
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
    hcp_plan_vol_rank varchar(1),
    prescriber_name varchar(102),
    pdrp_flag varchar(1),
    hcp_restriction_flag varchar(100),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    target_status_flag varchar(1),
    partner_target_status_flag varchar(1),
    method_of_payment varchar(250),
    pri_specialty_code varchar(10),
    segment varchar(1),
    decile varchar(1),
    market_volume_indicator varchar(1),
    product_vol_trx_count float,
    market_vol_trx_count float,
    prev_prod_vol_trx_count float,
    prev_market_vol_trx_count float,
    product_vol_nrx_count float,
    market_vol_nrx_count float,
    prev_prod_vol_nrx_count float,
    prev_market_vol_nrx_count float,
    samples varchar(1),
    details_p1 varchar(1),
    details_p2 varchar(1),
    details_p3 varchar(1),
    focus_target varchar(1)
);


CREATE TABLE sandbox.grouped_restid_mapping_control
(
    restriction_detail_id int,
    restriction_detail_text varchar(15000),
    row_count int,
    restriction_group varchar(15000),
    coverage_cat varchar(3000),
    other_pmf_metrics varchar(3000)
);


CREATE TABLE sandbox.grouped_rest_ranking_control
(
    restriction_group varchar(5000),
    rank_rest_grp int
);


CREATE TABLE sandbox.ftf_formularies_preprocessed_cdw_v3
(
    drug_seq int,
    ftf_health_plan_fid int,
    drug_id int,
    tier_code varchar(200),
    restrictions varchar(500),
    reason_code varchar(200),
    reason_code_description varchar(5000),
    pharmacy_status varchar(500),
    Market_Access_Coverage varchar(500),
    has_pa int,
    has_st int,
    hasPAST int,
    plan_lives int,
    check_blank_pharmstat varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_formularies_preprocessed_cdw_v3.cycle_id);


CREATE TABLE sandbox.ftf_restrictions_preprocessed_cdw_v4
(
    health_plan_id int,
    drug_id int,
    drug_seq int,
    restriction_code varchar(500),
    restriction_detail_id varchar(500),
    restriction_detail_text varchar(30000),
    restriction_group varchar(12000),
    coverage_cat varchar(500),
    other_pmf_metrics varchar(500),
    rank_rest_grp int,
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
)
PARTITION BY (ftf_restrictions_preprocessed_cdw_v4.cycle_id);


CREATE TABLE sandbox.plan_prod_master_cdw_v2
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    calculated_pbm_value varchar(300),
    key_pbm varchar(300),
    drug_id int,
    drug_seq int,
    tier_code varchar(300),
    restrictions varchar(300),
    reason_code varchar(300),
    pharmacy_status varchar(300),
    Market_Access_Coverage varchar(300),
    has_pa int,
    has_st int,
    hasPAST int,
    botox int,
    step int,
    pres_pa int,
    pat_pa int,
    med_rec int,
    unspec int,
    restriction_code varchar(500),
    restriction_detail_id varchar(500),
    restriction_detail_text varchar(30000),
    restriction_group varchar(12000),
    ref_coverage_cat varchar(500),
    other_pmf_metrics varchar(500),
    calc_coverage_cat varchar(300),
    copay_tier varchar(200),
    tier_cat int,
    restcat int,
    restriction_category varchar(200),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
);


CREATE TABLE sandbox.ftf_plan_master_file_cdw_v2
(
    ftf_health_plan_fid int,
    ftf_health_plan_name varchar(200),
    ftf_provider_fid int,
    ftf_provider_name varchar(200),
    ftf_parent_name varchar(200),
    paytype_index int,
    paytype varchar(200),
    ftf_health_plan_type varchar(200),
    pref_brand_tier int,
    fillIn_blank_iqpayer int,
    fillIn_blank_iqpbm int,
    ftf_match_iqvia int,
    iqvia_payer_name varchar(200),
    iqvia_pbm varchar(200),
    ftf_formulary_management_pbm varchar(300),
    ftf_formulary_influencer_pbm varchar(300),
    ftf_claims_processing_pbm varchar(300),
    lives_mn int,
    calculated_pbm_value varchar(300),
    key_pbm varchar(300),
    drug_id int,
    drug_seq int,
    product varchar(200),
    tier_code varchar(200),
    restrictions varchar(200),
    reason_code varchar(200),
    pharmacy_status varchar(200),
    Market_Access_Coverage varchar(300),
    has_pa int,
    has_st int,
    hasPAST int,
    botox int,
    botox_step_flag varchar(200),
    step int,
    step_category varchar(200),
    pres_pa int,
    prescriber_prior_authorization_category varchar(200),
    pat_pa int,
    patient_prior_authorization_category varchar(200),
    med_rec int,
    medical_records_submission_required_flag varchar(100),
    unspec int,
    unspecified_restriction_flag varchar(100),
    copay_Tier varchar(200),
    restriction_code varchar(500),
    restriction_detail_id varchar(500),
    restriction_detail_text varchar(30000),
    restriction_group varchar(12000),
    ref_coverage_cat varchar(500),
    other_pmf_metrics varchar(500),
    calc_coverage_cat varchar(300),
    restriction_category varchar(200),
    tier_cat int,
    restcat int,
    key_controlling_account varchar(200),
    key_controlling_plan_formulary varchar(200),
    key_controlling_parent varchar(200),
    payer_pbm varchar(200),
    market_access_cvg_w_overides varchar(300),
    calc_coverage_cat_w_overrides varchar(300),
    cycle_id int,
    modified_time timestamp,
    modified_by varchar(100)
);


CREATE TABLE sandbox.LAI_monthly_prescriber_summary
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
    details_p3 numeric(37,15),
    GPO varchar(100),
    GPO_1 varchar(100),
    refresh_month varchar(100)
);


CREATE TABLE sandbox.tmp_trend_rows_combined
(
    customer_id varchar(25)
);


CREATE TABLE sandbox.call_check
(
    id varchar(18),
    ownerid varchar(18),
    isdeleted varchar(5),
    name varchar(80),
    recordtypeid varchar(18),
    createddate timestamptz,
    createdbyid varchar(18),
    lastmodifieddate timestamptz,
    lastmodifiedbyid varchar(18),
    systemmodstamp timestamptz,
    lastactivitydate date,
    mayedit varchar(5),
    islocked varchar(5),
    lastvieweddate timestamptz,
    lastreferenceddate timestamptz,
    sample_card_vod__c varchar(15),
    add_detail_vod__c varchar(1000),
    property_vod__c varchar(64),
    account_vod__c varchar(18),
    zvod_product_discussion_vod__c varchar(5),
    status_vod__c varchar(255),
    parent_address_vod__c varchar(18),
    account_plan_vod__c varchar(18),
    zvod_savenew_vod__c varchar(5),
    next_call_notes_vod__c varchar(255),
    mobile_id_vod__c varchar(100),
    zvod_account_credentials_vod_c varchar(5),
    zvod_account_preferred_name_vo varchar(5),
    zvod_account_sample_status_vod varchar(5),
    zvod_attendees_vod__c varchar(5),
    zvod_key_messages_vod__c varchar(5),
    zvod_detailing_vod__c varchar(5),
    zvod_expenses_vod__c varchar(5),
    zvod_followup_vod__c varchar(5),
    zvod_samples_vod__c varchar(5),
    zvod_save_vod__c varchar(5),
    zvod_submit_vod__c varchar(5),
    zvod_delete_vod__c varchar(5),
    activity_type__c varchar(255),
    significant_event__c varchar(5),
    location_vod__c varchar(128),
    subject_vod__c varchar(128),
    call_datetime_vod__c timestamptz,
    disbursed_to_vod__c varchar(255),
    request_receipt_vod__c varchar(5),
    signature_date_vod__c timestamptz,
    territory_vod__c varchar(100),
    submitted_by_mobile_vod__c varchar(5),
    call_type_vod__c varchar(255),
    add_key_message_vod__c varchar(4000),
    address_vod__c varchar(500),
    attendees_vod__c varchar(64),
    attendee_type_vod__c varchar(255),
    call_date_vod__c date,
    detailed_products_vod__c varchar(255),
    no_disbursement_vod__c varchar(5),
    parent_call_vod__c varchar(18),
    user_vod__c varchar(18),
    contact_vod__c varchar(18),
    zvod_entity_vod__c varchar(5),
    medical_event_vod__c varchar(18),
    mobile_created_datetime_vod__c timestamptz,
    mobile_last_modified_datetime timestamptz,
    license_vod__c varchar(25),
    is_parent_call_vod__c varchar(64),
    entity_display_name_vod__c varchar(1300),
    last_device_vod__c varchar(255),
    ship_address_line_1_vod__c varchar(80),
    ship_address_line_2_vod__c varchar(100),
    ship_city_vod__c varchar(40),
    ship_country_vod__c varchar(20),
    ship_license_expiration_date date,
    ship_license_status_vod__c varchar(25),
    ship_license_vod__c varchar(25),
    ship_state_vod__c varchar(30),
    ship_to_address_vod__c varchar(18),
    ship_zip_vod__c varchar(20),
    ship_to_address_text_vod__c varchar(1300),
    clm_vod__c varchar(5),
    zvod_clmdetails_vod__c varchar(5),
    is_sampled_call_vod__c varchar(5),
    zvod_surveys_vod__c varchar(5),
    presentations_vod__c varchar(500),
    entity_reference_id_vod__c varchar(100),
    error_reference_call_vod__c varchar(18),
    duration_vod__c varchar(64),
    color_vod__c varchar(255),
    allowed_products_vod__c varchar(1000),
    zvod_attachments_vod__c varchar(5),
    sample_card_reason_vod__c varchar(255),
    assmca_vod__c varchar(100),
    address_line_1_vod__c varchar(80),
    address_line_2_vod__c varchar(100),
    city_vod__c varchar(40),
    dea_address_line_1_vod__c varchar(80),
    dea_address_line_2_vod__c varchar(100),
    dea_address_vod__c varchar(18),
    dea_city_vod__c varchar(40),
    dea_expiration_date_vod__c date,
    dea_state_vod__c varchar(10),
    dea_zip_4_vod__c varchar(4),
    dea_zip_vod__c varchar(20),
    dea_vod__c varchar(9),
    ship_zip_4_vod__c varchar(4),
    state_vod__c varchar(10),
    zip_4_vod__c varchar(4),
    zip_vod__c varchar(20),
    sample_send_card_vod__c varchar(15),
    zvod_address_vod_c_dea_status_ varchar(5),
    signature_page_image_vod__c varchar(255),
    credentials_vod__c varchar(255),
    salutation_vod__c varchar(255),
    zvod_account_call_reminder_vod varchar(5),
    sales_org_tva__c varchar(1300),
    zvod_business_account_vod__c varchar(5),
    product_priority_1_vod__c varchar(18),
    product_priority_2_vod__c varchar(18),
    product_priority_3_vod__c varchar(18),
    product_priority_4_vod__c varchar(18),
    product_priority_5_vod__c varchar(18),
    zvod_more_actions_vod__c varchar(5),
    zvod_call_conflict_status varchar(5),
    signature_timestamp_vod__c varchar(64),
    expense_amount_vod__c varchar(64),
    total_expense_attendees_count varchar(64),
    attendee_list_vod__c varchar(4000),
    expense_post_status_vod__c varchar(10),
    attendee_post_status_vod__c varchar(10),
    expense_system_external_id varchar(255),
    incurred_expense_vod__c varchar(5),
    assigner_vod__c varchar(18),
    assignment_datetime_vod__c timestamptz,
    zvod_call_objective_vod__c varchar(5),
    signature_location_longitude varchar(64),
    signature_location_latitude varchar(64),
    location_services_status varchar(255),
    created_by_timezone_tva__c varchar(120),
    license_expiration_date_vod__c date,
    license_status_vod__c varchar(255),
    ship_assmca_vod__c varchar(100),
    ship_dea_expiration_date date,
    ship_dea_vod__c varchar(9),
    call_method_tva__c varchar(255),
    bendeka_indication_tva__c varchar(5000),
    file_id int,
    record_id int,
    austedo_indication_tva__c varchar(5000),
    call_duration_tva__c numeric(3,0),
    how_executed_tva__c varchar(40),
    Remote_Meeting_vod__c varchar(100),
    Veeva_Remote_Meeting_Id_vod__c varchar(20),
    Cobrowse_URL_Participant_vod__c varchar(255),
    Signature_Captured_Remotely_vod__c varchar(150),
    Remote_Signature_Attendee_Name_vod__c varchar(5),
    t21s10_austedo_indication_tva__c varchar(255),
    row_num int
);


CREATE  VIEW sandbox.V_HCOS_KAISER_PROF_AFFIL AS
 SELECT hcp.tvcmid AS TVCMID,
        p.ims_id AS IMS_ID,
        p.npi AS NPI,
        p.all_dea AS ALL_DEA,
        p.last_name AS LAST_NAME,
        p.first_name AS FIRST_NAME,
        p.middle_name AS MIDDLE_NAME,
        at.affil_type_desc AS AFFIL_TYPE_DESC,
        b.ims_org_id AS IMS_FACILITY_NUMBER,
        b.cot_facility_type AS COT_FACILITY_TYPE,
        b.business_name AS BUSINESS_NAME,
        b.physical_addr_1 AS PHYSICAL_ADDR_1,
        b.physical_addr_2 AS PHYSICAL_ADDR_2,
        b.physical_city AS PHYSICAL_CITY,
        b.physical_state AS PHYSICAL_STATE,
        b.physical_zip AS PHYSICAL_ZIP
 FROM (((((( SELECT bx.ims_org_id,
        bx.cot_facility_type,
        bx.business_name,
        bx.physical_addr_1,
        bx.physical_addr_2,
        bx.physical_city,
        bx.physical_state,
        bx.physical_zip
 FROM hcos.ims_hcos_business bx
 WHERE (bx.file_id = ( SELECT max(ims_hcos_business.file_id) AS file_id
 FROM hcos.ims_hcos_business))) b JOIN ( SELECT pafx.ims_org_id,
        pafx.hce_id_prfsnl,
        pafx.affil_type_id
 FROM hcos.ims_hcos_provider_affiliation_fact pafx
 WHERE (pafx.file_id = ( SELECT max(ims_hcos_provider_affiliation_fact.file_id) AS file_id
 FROM hcos.ims_hcos_provider_affiliation_fact))) paf ON ((b.ims_org_id = paf.ims_org_id))) JOIN ( SELECT px.ims_id,
        px.npi,
        px.all_dea,
        px.last_name,
        px.first_name,
        px.middle_name,
        px.hce_id_prfsnl
 FROM hcos.ims_hcos_professional px
 WHERE (px.file_id = ( SELECT max(ims_hcos_professional.file_id) AS file_id
 FROM hcos.ims_hcos_professional))) p ON ((paf.hce_id_prfsnl = p.hce_id_prfsnl))) LEFT  JOIN ( SELECT atx.affil_type_id,
        atx.affil_type_desc
 FROM hcos.ims_hcos_affiliation_type atx
 WHERE (atx.file_id = ( SELECT max(ims_hcos_affiliation_type.file_id) AS file_id
 FROM hcos.ims_hcos_affiliation_type))) at ON ((paf.affil_type_id = at.affil_type_id))) JOIN ( SELECT rfx.ims_org_id_child,
        rfx.ims_org_id_parent
 FROM hcos.ims_hcos_relationship_fact rfx
 WHERE (rfx.file_id = ( SELECT max(ims_hcos_relationship_fact.file_id) AS max
 FROM hcos.ims_hcos_relationship_fact))) rf ON ((b.ims_org_id = rf.ims_org_id_child))) LEFT  JOIN mdm.hcp hcp ON ((p.ims_id = hcp.ims_prescriber_id)))
 WHERE (rf.ims_org_id_parent = 'INS00000226'::varchar(11));

CREATE  VIEW sandbox.test_view AS
 SELECT ftf_restrictions.health_plan_id,
        ftf_restrictions.drug_id,
        ftf_restrictions.restriction_detail_id,
        ftf_restrictions.restriction_code,
        ftf_restrictions.formulary_entry_restriction_id,
        ftf_restrictions.restriction_detail_text,
        ftf_restrictions.restriction_addtnl_information_1,
        ftf_restrictions.restriction_addtnl_information_2,
        ftf_restrictions.record_id,
        ftf_restrictions.file_id
 FROM cleansed.ftf_restrictions
 WHERE (ftf_restrictions.file_id IN ( SELECT max(ftf_restrictions.file_id) AS max
 FROM cleansed.ftf_restrictions));

CREATE  VIEW sandbox.vw_ftf_formularies AS
 SELECT ftf_formularies.health_plan_id,
        ftf_formularies.drug_id,
        ftf_formularies.tier_code,
        ftf_formularies.restrictions,
        ftf_formularies.reason_code,
        ftf_formularies.reason_code_description,
        ftf_formularies.file_id,
        ftf_formularies.record_id
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW sandbox.vw_prev_month_payer_spine25_detailed_teva_brands_cdw_v1 AS
 SELECT payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.payment_type,
        payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_detailed_teva_brands_cdw_v1.saba_trx
 FROM sandbox.payer_spine25_detailed_teva_brands_cdw_v1
 WHERE (payer_spine25_detailed_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_detailed_teva_brands_cdw_v1'::varchar(41)))))));

CREATE  VIEW sandbox.vw_curr_comparison_payer_spine_cdw_v1 AS
 SELECT comparison_payer_spine_cdw_v1.iqvia_plan_code,
        comparison_payer_spine_cdw_v1.iqvia_plan_name,
        comparison_payer_spine_cdw_v1.iqvia_payer_name,
        comparison_payer_spine_cdw_v1.iqvia_pbm,
        comparison_payer_spine_cdw_v1.key_controlling_plan_formulary,
        comparison_payer_spine_cdw_v1.key_controlling_account,
        comparison_payer_spine_cdw_v1.key_controlling_parent,
        comparison_payer_spine_cdw_v1.payer_pbm,
        comparison_payer_spine_cdw_v1.payment_type,
        comparison_payer_spine_cdw_v1.ajovy_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.aimovig_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.emgality_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.lives_plan_kcf_lvl,
        comparison_payer_spine_cdw_v1.lives_plan_lvl,
        comparison_payer_spine_cdw_v1.apportionment_factor,
        comparison_payer_spine_cdw_v1.saba_trx,
        comparison_payer_spine_cdw_v1.change_iqvia_plan_code,
        comparison_payer_spine_cdw_v1.change_iqvia_plan_name,
        comparison_payer_spine_cdw_v1.change_iqvia_payer_name,
        comparison_payer_spine_cdw_v1.change_iqvia_pbm,
        comparison_payer_spine_cdw_v1.change_key_controlling_plan_formulary,
        comparison_payer_spine_cdw_v1.change_key_controlling_account,
        comparison_payer_spine_cdw_v1.change_key_controlling_parent,
        comparison_payer_spine_cdw_v1.change_payer_pbm,
        comparison_payer_spine_cdw_v1.change_payment_type,
        comparison_payer_spine_cdw_v1.change_ajovy_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_aimovig_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_emgality_access_for_ftf_plan,
        comparison_payer_spine_cdw_v1.change_lives_plan_kcf_lvl,
        comparison_payer_spine_cdw_v1.change_lives_plan_lvl,
        comparison_payer_spine_cdw_v1.change_apportionment_factor,
        comparison_payer_spine_cdw_v1.change_saba_trx,
        comparison_payer_spine_cdw_v1.change,
        comparison_payer_spine_cdw_v1.month_flag,
        comparison_payer_spine_cdw_v1.status,
        comparison_payer_spine_cdw_v1.cycle_id,
        comparison_payer_spine_cdw_v1.modified_time,
        comparison_payer_spine_cdw_v1.modified_by
 FROM sandbox.comparison_payer_spine_cdw_v1
 WHERE (comparison_payer_spine_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_payer_spine_cdw_v1'::varchar(29)))))));

CREATE  VIEW sandbox.vw_iqvia_plans_discard AS
 SELECT iqvia_plans_discard_v01.payer_id,
        btrim(iqvia_plans_discard_v01.notes) AS notes
 FROM sandbox.iqvia_plans_discard_v01
 WHERE (iqvia_plans_discard_v01.file_id IN ( SELECT max(iqvia_plans_discard_v01.file_id) AS max
 FROM sandbox.iqvia_plans_discard_v01));

CREATE  VIEW sandbox.vw_model_paytype_map AS
 SELECT btrim(model_paytype_map_v01.model) AS model,
        btrim(model_paytype_map_v01.paytype) AS paytype,
        btrim(model_paytype_map_v01.notes) AS notes
 FROM sandbox.model_paytype_map_v01
 WHERE (model_paytype_map_v01.file_id IN ( SELECT max(model_paytype_map_v01.file_id) AS max
 FROM sandbox.model_paytype_map_v01));

CREATE  VIEW sandbox.vw_iqvia_paytypeindex AS
 SELECT iqvia_paytypeindex_v01.paytype_index,
        btrim(iqvia_paytypeindex_v01.paytype) AS paytype
 FROM sandbox.iqvia_paytypeindex_v01
 WHERE (iqvia_paytypeindex_v01.file_id IN ( SELECT max(iqvia_paytypeindex_v01.file_id) AS max
 FROM sandbox.iqvia_paytypeindex_v01));

CREATE  VIEW sandbox.vw_iqvia_payer_paytype_override AS
 SELECT btrim(iqvia_payer_paytype_override_v01.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override_v01.paytype) AS paytype
 FROM sandbox.iqvia_payer_paytype_override_v01
 WHERE (iqvia_payer_paytype_override_v01.file_id IN ( SELECT max(iqvia_payer_paytype_override_v01.file_id) AS max
 FROM sandbox.iqvia_payer_paytype_override_v01));

CREATE  VIEW sandbox.vw_ftf_plans_paytypeindex AS
 SELECT btrim(ftf_plans_paytypeindex_v01.ftf_health_plan_type) AS ftf_health_plan_type,
        ftf_plans_paytypeindex_v01.paytype_index
 FROM sandbox.ftf_plans_paytypeindex_v01
 WHERE (ftf_plans_paytypeindex_v01.file_id IN ( SELECT max(ftf_plans_paytypeindex_v01.file_id) AS max
 FROM sandbox.ftf_plans_paytypeindex_v01));

CREATE  VIEW sandbox.vw_ftf_paytype_paytypeindex AS
 SELECT ftf_paytype_paytypeindex_v01.paytype_index,
        btrim(ftf_paytype_paytypeindex_v01.paytype) AS paytype
 FROM sandbox.ftf_paytype_paytypeindex_v01
 WHERE (ftf_paytype_paytypeindex_v01.file_id IN ( SELECT max(ftf_paytype_paytypeindex_v01.file_id) AS max
 FROM sandbox.ftf_paytype_paytypeindex_v01));

CREATE  VIEW sandbox.vw_ftf_override_provider AS
 SELECT ftf_override_provider_v01.provider_fid,
        ftf_override_provider_v01.paytype_index,
        btrim(ftf_override_provider_v01.notes) AS notes
 FROM sandbox.ftf_override_provider_v01
 WHERE (ftf_override_provider_v01.file_id IN ( SELECT max(ftf_override_provider_v01.file_id) AS max
 FROM sandbox.ftf_override_provider_v01));

CREATE  VIEW sandbox.vw_ftf_override_plan AS
 SELECT ftf_override_plan_v01.ftf_health_plan_fid,
        ftf_override_plan_v01.paytype_index,
        btrim(ftf_override_plan_v01.notes) AS notes
 FROM sandbox.ftf_override_plan_v01
 WHERE (ftf_override_plan_v01.file_id IN ( SELECT max(ftf_override_plan_v01.file_id) AS max
 FROM sandbox.ftf_override_plan_v01));

CREATE  VIEW sandbox.vw_drug_assignments AS
 SELECT drug_assignments_v01.drug_id,
        drug_assignments_v01.drug_seq,
        btrim(drug_assignments_v01.product) AS product
 FROM sandbox.drug_assignments_v01
 WHERE (drug_assignments_v01.file_id IN ( SELECT max(drug_assignments_v01.file_id) AS max
 FROM sandbox.drug_assignments_v01));

CREATE  VIEW sandbox.vw_ftf_pbm_functions AS
 SELECT ftf_pbm_functions_v01.pbm_function_id,
        btrim(ftf_pbm_functions_v01.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions_v01.notes) AS notes,
        ftf_pbm_functions_v01.used
 FROM sandbox.ftf_pbm_functions_v01
 WHERE (ftf_pbm_functions_v01.file_id IN ( SELECT max(ftf_pbm_functions_v01.file_id) AS max
 FROM sandbox.ftf_pbm_functions_v01));

CREATE  VIEW sandbox.vw_botox_step_restriction AS
 SELECT botox_step_restriction_v01.code,
        btrim(botox_step_restriction_v01.botox_step_flag) AS botox_step_flag,
        btrim(botox_step_restriction_v01.restriction_group) AS restriction_group,
        btrim(botox_step_restriction_v01.notes) AS notes
 FROM sandbox.botox_step_restriction_v01
 WHERE (botox_step_restriction_v01.file_id IN ( SELECT max(botox_step_restriction_v01.file_id) AS max
 FROM sandbox.botox_step_restriction_v01));

CREATE  VIEW sandbox.vw_step_restriction AS
 SELECT step_restriction_v01.code,
        btrim(step_restriction_v01.step_category) AS step_category,
        btrim(step_restriction_v01.restriction_group) AS restriction_group,
        btrim(step_restriction_v01.notes) AS notes
 FROM sandbox.step_restriction_v01
 WHERE (step_restriction_v01.file_id IN ( SELECT max(step_restriction_v01.file_id) AS max
 FROM sandbox.step_restriction_v01));

CREATE  VIEW sandbox.vw_pa_restriction AS
 SELECT pa_restriction_v01.code,
        btrim(pa_restriction_v01.prescriber_prior_authorization_category) AS prescriber_prior_authorization_category,
        btrim(pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction_v01.notes) AS notes
 FROM sandbox.pa_restriction_v01
 WHERE (pa_restriction_v01.file_id IN ( SELECT max(pa_restriction_v01.file_id) AS max
 FROM sandbox.pa_restriction_v01));

CREATE  VIEW sandbox.vw_patient_pa_restriction AS
 SELECT patient_pa_restriction_v01.code,
        btrim(patient_pa_restriction_v01.patient_prior_authorization_category) AS patient_prior_authorization_category,
        btrim(patient_pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction_v01.notes) AS notes
 FROM sandbox.patient_pa_restriction_v01
 WHERE (patient_pa_restriction_v01.file_id IN ( SELECT max(patient_pa_restriction_v01.file_id) AS max
 FROM sandbox.patient_pa_restriction_v01));

CREATE  VIEW sandbox.vw_medical_rec_restriction AS
 SELECT medical_rec_restriction_v01.code,
        btrim(medical_rec_restriction_v01.medical_records_submission_required_flag) AS medical_records_submission_required_flag,
        btrim(medical_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction_v01.notes) AS notes
 FROM sandbox.medical_rec_restriction_v01
 WHERE (medical_rec_restriction_v01.file_id IN ( SELECT max(medical_rec_restriction_v01.file_id) AS max
 FROM sandbox.medical_rec_restriction_v01));

CREATE  VIEW sandbox.vw_unspecified_rec_restriction AS
 SELECT unspecified_rec_restriction_v01.code,
        btrim(unspecified_rec_restriction_v01.unspecified_restriction_flag) AS unspecified_restriction_flag,
        btrim(unspecified_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction_v01.notes) AS notes
 FROM sandbox.unspecified_rec_restriction_v01
 WHERE (unspecified_rec_restriction_v01.file_id IN ( SELECT max(unspecified_rec_restriction_v01.file_id) AS max
 FROM sandbox.unspecified_rec_restriction_v01));

CREATE  VIEW sandbox.vw_override_bridge_ftf_plan_types AS
 SELECT btrim(override_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.override_ftf_health_plan_type) AS override_ftf_health_plan_type,
        override_bridge_ftf_plan_types_v01.override_precedence
 FROM sandbox.override_bridge_ftf_plan_types_v01
 WHERE (override_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(override_bridge_ftf_plan_types_v01.file_id) AS max
 FROM sandbox.override_bridge_ftf_plan_types_v01));

CREATE  VIEW sandbox.vw_delete_bridge_ftf_plan_types AS
 SELECT btrim(delete_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.delete_flag) AS delete_flag
 FROM sandbox.delete_bridge_ftf_plan_types_v01
 WHERE (delete_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(delete_bridge_ftf_plan_types_v01.file_id) AS max
 FROM sandbox.delete_bridge_ftf_plan_types_v01));

CREATE  VIEW sandbox.vw_provider_override_default AS
 SELECT provider_override_default_v01.provider_id,
        btrim(provider_override_default_v01.paytype_regex) AS paytype_regex,
        btrim(provider_override_default_v01.provider_name) AS provider_name,
        btrim(provider_override_default_v01.fill_in_iqvia_payer_name_if_no_bridge) AS fill_in_iqvia_payer_name_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_payer) AS override_best_iqvia_payer,
        btrim(provider_override_default_v01.fill_in_iqvia_pbm_if_no_bridge) AS fill_in_iqvia_pbm_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_pbm) AS override_best_iqvia_pbm
 FROM sandbox.provider_override_default_v01
 WHERE (provider_override_default_v01.file_id IN ( SELECT max(provider_override_default_v01.file_id) AS max
 FROM sandbox.provider_override_default_v01));

CREATE  VIEW sandbox.vw_key_controller_list AS
 SELECT key_controller_list_v01.ftf_health_plan_fid,
        btrim(key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(key_controller_list_v01.payer_pbm) AS payer_pbm
 FROM sandbox.key_controller_list_v01
 WHERE (key_controller_list_v01.file_id IN ( SELECT max(key_controller_list_v01.file_id) AS max
 FROM sandbox.key_controller_list_v01));

CREATE  VIEW sandbox.vw_calculated_pbm_config AS
 SELECT btrim(calculated_pbm_config_v01.ftf_formulary_management_pbm_regex) AS ftf_formulary_management_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_formulary_influencer_pbm_regex) AS ftf_formulary_influencer_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_claims_processing_pbm_regex) AS ftf_claims_processing_pbm_regex,
        btrim(calculated_pbm_config_v01.calculated_pbm_column) AS calculated_pbm_column
 FROM sandbox.calculated_pbm_config_v01
 WHERE (calculated_pbm_config_v01.file_id IN ( SELECT max(calculated_pbm_config_v01.file_id) AS max
 FROM sandbox.calculated_pbm_config_v01));

CREATE  VIEW sandbox.vw_calc_pbm_key_pbm_mapping AS
 SELECT btrim(calc_pbm_key_pbm_mapping_v01.calculated_pbm) AS calculated_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.key_pbm) AS key_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.added_by) AS added_by
 FROM sandbox.calc_pbm_key_pbm_mapping_v01
 WHERE (calc_pbm_key_pbm_mapping_v01.file_id IN ( SELECT max(calc_pbm_key_pbm_mapping_v01.file_id) AS max
 FROM sandbox.calc_pbm_key_pbm_mapping_v01));

CREATE  VIEW sandbox.vw_has_pa_mapping AS
 SELECT has_pa_mapping_v01.has_pa,
        btrim(has_pa_mapping_v01.pa_regex) AS pa_regex,
        btrim(has_pa_mapping_v01.notes) AS notes
 FROM sandbox.has_pa_mapping_v01
 WHERE (has_pa_mapping_v01.file_id IN ( SELECT max(has_pa_mapping_v01.file_id) AS max
 FROM sandbox.has_pa_mapping_v01));

CREATE  VIEW sandbox.vw_has_st_mapping AS
 SELECT has_st_mapping_v01.has_st,
        btrim(has_st_mapping_v01.st_regex) AS st_regex,
        btrim(has_st_mapping_v01.notes) AS notes
 FROM sandbox.has_st_mapping_v01
 WHERE (has_st_mapping_v01.file_id IN ( SELECT max(has_st_mapping_v01.file_id) AS max
 FROM sandbox.has_st_mapping_v01));

CREATE  VIEW sandbox.vw_formulary_derivation_config AS
 SELECT btrim(formulary_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(formulary_derivation_config_v01.has_pa_regex) AS has_pa_regex,
        btrim(formulary_derivation_config_v01.has_st_regex) AS has_st_regex,
        btrim(formulary_derivation_config_v01.formulary) AS formulary,
        btrim(formulary_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(formulary_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(formulary_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex
 FROM sandbox.formulary_derivation_config_v01
 WHERE (formulary_derivation_config_v01.file_id IN ( SELECT max(formulary_derivation_config_v01.file_id) AS max
 FROM sandbox.formulary_derivation_config_v01));

CREATE  VIEW sandbox.vw_copay_tier_derivation_config AS
 SELECT btrim(copay_tier_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        copay_tier_derivation_config_v01.tier_cat,
        btrim(copay_tier_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(copay_tier_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(copay_tier_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        btrim(copay_tier_derivation_config_v01.copay_tier) AS copay_tier
 FROM sandbox.copay_tier_derivation_config_v01
 WHERE (copay_tier_derivation_config_v01.file_id IN ( SELECT max(copay_tier_derivation_config_v01.file_id) AS max
 FROM sandbox.copay_tier_derivation_config_v01));

CREATE  VIEW sandbox.vw_tier_cat_description_mapping AS
 SELECT tier_cat_description_mapping_v01.tier_cat,
        btrim(tier_cat_description_mapping_v01.description) AS description,
        btrim(tier_cat_description_mapping_v01.notes) AS notes
 FROM sandbox.tier_cat_description_mapping_v01
 WHERE (tier_cat_description_mapping_v01.file_id IN ( SELECT max(tier_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.tier_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_restriction_category_derivation_config AS
 SELECT btrim(restriction_category_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(restriction_category_derivation_config_v01.has_pa_has_st_regex) AS has_pa_has_st_regex,
        btrim(restriction_category_derivation_config_v01.unspec_regex) AS unspec_regex,
        btrim(restriction_category_derivation_config_v01.step_regex) AS step_regex,
        btrim(restriction_category_derivation_config_v01.botox_regex) AS botox_regex,
        btrim(restriction_category_derivation_config_v01.prespa_regex) AS prespa_regex,
        btrim(restriction_category_derivation_config_v01.tier_cat_regex) AS tier_cat_regex,
        btrim(restriction_category_derivation_config_v01.medrecs_regex) AS medrecs_regex,
        restriction_category_derivation_config_v01.restcat,
        btrim(restriction_category_derivation_config_v01.restriction_category) AS restriction_category,
        btrim(restriction_category_derivation_config_v01.meaning) AS meaning
 FROM sandbox.restriction_category_derivation_config_v01
 WHERE (restriction_category_derivation_config_v01.file_id IN ( SELECT max(restriction_category_derivation_config_v01.file_id) AS max
 FROM sandbox.restriction_category_derivation_config_v01));

CREATE  VIEW sandbox.vw_restriction_cat_description_mapping AS
 SELECT btrim(restriction_cat_description_mapping_v01.rest_cat) AS rest_cat,
        btrim(restriction_cat_description_mapping_v01.description) AS description,
        btrim(restriction_cat_description_mapping_v01.notes) AS notes
 FROM sandbox.restriction_cat_description_mapping_v01
 WHERE (restriction_cat_description_mapping_v01.file_id IN ( SELECT max(restriction_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.restriction_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_coverage_category_derivation_config AS
 SELECT btrim(coverage_category_derivation_config_v01.paytype_regex) AS paytype_regex,
        btrim(coverage_category_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        coverage_category_derivation_config_v01.coverage_cat_code,
        btrim(coverage_category_derivation_config_v01.coverage_category) AS coverage_category,
        btrim(coverage_category_derivation_config_v01.restriction_cat_code_regex) AS restriction_cat_code_regex,
        btrim(coverage_category_derivation_config_v01.meaning) AS meaning
 FROM sandbox.coverage_category_derivation_config_v01
 WHERE (coverage_category_derivation_config_v01.file_id IN ( SELECT max(coverage_category_derivation_config_v01.file_id) AS max
 FROM sandbox.coverage_category_derivation_config_v01));

CREATE  VIEW sandbox.vw_coverage_cat_description_mapping AS
 SELECT btrim(coverage_cat_description_mapping_v01.coverage_cat) AS coverage_cat,
        btrim(coverage_cat_description_mapping_v01.description) AS description,
        btrim(coverage_cat_description_mapping_v01.notes) AS notes
 FROM sandbox.coverage_cat_description_mapping_v01
 WHERE (coverage_cat_description_mapping_v01.file_id IN ( SELECT max(coverage_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.coverage_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_step_restriction_description AS
 SELECT step_restriction_description_v01.step,
        btrim(step_restriction_description_v01.description) AS description
 FROM sandbox.step_restriction_description_v01
 WHERE (step_restriction_description_v01.file_id IN ( SELECT max(step_restriction_description_v01.file_id) AS max
 FROM sandbox.step_restriction_description_v01));

CREATE  VIEW sandbox.vw_pres_pa_restriction_description AS
 SELECT pres_pa_restriction_description_v01.prespa,
        btrim(pres_pa_restriction_description_v01.description) AS description
 FROM sandbox.pres_pa_restriction_description_v01
 WHERE (pres_pa_restriction_description_v01.file_id IN ( SELECT max(pres_pa_restriction_description_v01.file_id) AS max
 FROM sandbox.pres_pa_restriction_description_v01));

CREATE  VIEW sandbox.vw_pat_pa_restriction_description AS
 SELECT pat_pa_restriction_description_v01.patpa,
        btrim(pat_pa_restriction_description_v01.description) AS description
 FROM sandbox.pat_pa_restriction_description_v01
 WHERE (pat_pa_restriction_description_v01.file_id IN ( SELECT max(pat_pa_restriction_description_v01.file_id) AS max
 FROM sandbox.pat_pa_restriction_description_v01));

CREATE  VIEW sandbox.vw_override_fid_iqvia_key_controller_list AS
 SELECT override_fid_iqvia_key_controller_list_v01.iqvia_plan_code,
        btrim(override_fid_iqvia_key_controller_list_v01.iqvia_plan_name) AS iqvia_plan_name,
        override_fid_iqvia_key_controller_list_v01.ftf_health_plan_fid,
        btrim(override_fid_iqvia_key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(override_fid_iqvia_key_controller_list_v01.payer_pbm) AS payer_pbm
 FROM sandbox.override_fid_iqvia_key_controller_list_v01
 WHERE (override_fid_iqvia_key_controller_list_v01.file_id IN ( SELECT max(override_fid_iqvia_key_controller_list_v01.file_id) AS max
 FROM sandbox.override_fid_iqvia_key_controller_list_v01));

CREATE  VIEW sandbox.vw_comparison_payer_spine_detailed_report AS
 SELECT a.iqvia_plan_code AS "IQVIA Plan Code",
        a.iqvia_plan_name AS "IQVIA Plan Name",
        a.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        a.iqvia_payer_name AS "IQVIA Payer Name",
        a.iqvia_pbm AS "IQVIA PBM",
        a.key_controlling_account AS "Key Controlling Account",
        a.key_controlling_parent AS "Key Controlling Parent",
        a.payer_pbm AS "PBM/Payer",
        a.payment_type AS "Payment Type",
        a.ajovy_access_for_ftf_plan AS "AJOVY Access for FTF Plan",
        a.aimovig_access_for_ftf_plan AS "Aimovig Access for FTF Plan",
        a.emgality_access_for_ftf_plan AS "Emgality Access for FTF Plan",
        a.apportionment_factor AS "Apportionment Factor",
        a.saba_trx AS "Apportionment SABA TRx",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_code = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Code Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan Formulary Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "PBM/Payer Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payment_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payment Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ajovy_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "AJOVY Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_aimovig_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Aimovig Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_emgality_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Emgality Access for FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_apportionment_factor = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Apportionment Factor Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_saba_trx = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Apportionment SABA TRx Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        a.month_flag AS "Month Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        0 AS "Change in TRx",
        tbl_lvl_audit.date_run AS "Date Run",
        (to_timestamptz((a.cycle_id)::float))::timestamp AS "Modified Time"
 FROM (sandbox.vw_curr_comparison_payer_spine_cdw_v1 a LEFT  JOIN sandbox.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_payer_spine_cdw_v1'::varchar(29))))
 ORDER BY a.iqvia_plan_code,
          a.key_controlling_plan_formulary;

CREATE  VIEW sandbox.vw_curr_saba_mkt_ajovy_payer_spine_prod_list AS
 SELECT btrim(saba_mkt_ajovy_payer_spine_prod_list.product_name) AS product_name,
        btrim(saba_mkt_ajovy_payer_spine_prod_list.notes) AS notes,
        saba_mkt_ajovy_payer_spine_prod_list.file_id,
        saba_mkt_ajovy_payer_spine_prod_list.record_id
 FROM sandbox.saba_mkt_ajovy_payer_spine_prod_list
 WHERE (saba_mkt_ajovy_payer_spine_prod_list.file_id IN ( SELECT max(saba_mkt_ajovy_payer_spine_prod_list.file_id) AS max
 FROM sandbox.saba_mkt_ajovy_payer_spine_prod_list));

CREATE  VIEW sandbox.vw_curr_comparison_iqvia_fid_plans_cdw_v1 AS
 SELECT comparison_iqvia_fid_plans_cdw_v1.iqvia_plan_code,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_payer_name,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_pbm,
        comparison_iqvia_fid_plans_cdw_v1.payment_type,
        comparison_iqvia_fid_plans_cdw_v1.iqvia_model,
        comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_type,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_plan_formulary,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_account,
        comparison_iqvia_fid_plans_cdw_v1.key_controlling_parent,
        comparison_iqvia_fid_plans_cdw_v1.payer_pbm,
        comparison_iqvia_fid_plans_cdw_v1.ajovy_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.aimovig_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.emgality_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.nurtec_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.qulipta_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.total_lives_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.key_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_plan_code,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_payer_name,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_payment_type,
        comparison_iqvia_fid_plans_cdw_v1.change_iqvia_model,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_fid,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_name,
        comparison_iqvia_fid_plans_cdw_v1.change_ftf_health_plan_type,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_plan_formulary,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_account,
        comparison_iqvia_fid_plans_cdw_v1.change_key_controlling_parent,
        comparison_iqvia_fid_plans_cdw_v1.change_payer_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_ajovy_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_aimovig_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_emgality_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_nurtec_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_qulipta_access_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_total_lives_for_ftf_plan,
        comparison_iqvia_fid_plans_cdw_v1.change_key_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change,
        comparison_iqvia_fid_plans_cdw_v1.check_iq_payer,
        comparison_iqvia_fid_plans_cdw_v1.check_iq_pbm,
        comparison_iqvia_fid_plans_cdw_v1.change_in_lives,
        comparison_iqvia_fid_plans_cdw_v1.month_flag,
        comparison_iqvia_fid_plans_cdw_v1.status,
        comparison_iqvia_fid_plans_cdw_v1.cycle_id,
        comparison_iqvia_fid_plans_cdw_v1.modified_time,
        comparison_iqvia_fid_plans_cdw_v1.modified_by
 FROM sandbox.comparison_iqvia_fid_plans_cdw_v1
 WHERE (comparison_iqvia_fid_plans_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_iqvia_fid_plans_cdw_v1'::varchar(33)))))));

CREATE  VIEW sandbox.vw_curr_comparison_ftf_health_plan_fid_cdw_v1 AS
 SELECT comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_fid,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_name,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_fid,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_name,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_parent_name,
        comparison_ftf_health_plan_fid_cdw_v1.paytype,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_type,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_account,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_plan_formulary,
        comparison_ftf_health_plan_fid_cdw_v1.key_controlling_parent,
        comparison_ftf_health_plan_fid_cdw_v1.payer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.key_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_management_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_influencer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.ftf_claims_processing_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.lives_mn,
        comparison_ftf_health_plan_fid_cdw_v1.iqvia_payer_name,
        comparison_ftf_health_plan_fid_cdw_v1.iqvia_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.pref_brand_tier,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Ajovy,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Aimovig,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Emgality,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Nurtec,
        comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Qulipta,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_fid,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_provider_fid,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_provider_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_parent_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_paytype,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_health_plan_type,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_account,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_plan_formulary,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_controlling_parent,
        comparison_ftf_health_plan_fid_cdw_v1.change_payer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_key_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_formulary_management_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_formulary_influencer_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_ftf_claims_processing_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_lives_mn,
        comparison_ftf_health_plan_fid_cdw_v1.change_iqvia_payer_name,
        comparison_ftf_health_plan_fid_cdw_v1.change_iqvia_pbm,
        comparison_ftf_health_plan_fid_cdw_v1.change_pref_brand_tier,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Ajovy,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Aimovig,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Emgality,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Nurtec,
        comparison_ftf_health_plan_fid_cdw_v1.change_Coverage_Category_Qulipta,
        comparison_ftf_health_plan_fid_cdw_v1.change,
        comparison_ftf_health_plan_fid_cdw_v1.month_flag,
        comparison_ftf_health_plan_fid_cdw_v1.status,
        comparison_ftf_health_plan_fid_cdw_v1.change_in_lives,
        comparison_ftf_health_plan_fid_cdw_v1.cycle_id,
        comparison_ftf_health_plan_fid_cdw_v1.modified_time,
        comparison_ftf_health_plan_fid_cdw_v1.modified_by
 FROM sandbox.comparison_ftf_health_plan_fid_cdw_v1
 WHERE (comparison_ftf_health_plan_fid_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_ftf_health_plan_fid_cdw_v1'::varchar(37)))))));

CREATE  VIEW sandbox.vw_curr_ftf_iqvia_xref_v2_cdw_v1 AS
 SELECT ftf_iqvia_xref_v2_cdw_v1.iqvia_plan_code,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_plan_name,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_payer_name,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_pbm,
        ftf_iqvia_xref_v2_cdw_v1.payment_type,
        ftf_iqvia_xref_v2_cdw_v1.iqvia_model,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_xref_v2_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_xref_v2_cdw_v1.ftf_provider_fid,
        ftf_iqvia_xref_v2_cdw_v1.ftf_provider_name,
        ftf_iqvia_xref_v2_cdw_v1.ftf_parent_name,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_plan_formulary,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_account,
        ftf_iqvia_xref_v2_cdw_v1.key_controlling_parent,
        ftf_iqvia_xref_v2_cdw_v1.payer_pbm,
        ftf_iqvia_xref_v2_cdw_v1.ajovy_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.aimovig_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.emgality_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.nurtec_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.qulipta_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.austedo_hd_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.austedo_td_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.ingrezza_td_access_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.ftf_pref_brand_tier,
        ftf_iqvia_xref_v2_cdw_v1.total_lives_for_ftf_plan,
        ftf_iqvia_xref_v2_cdw_v1.key_pbm,
        ftf_iqvia_xref_v2_cdw_v1.check_iq_payer,
        ftf_iqvia_xref_v2_cdw_v1.check_iq_pbm,
        ftf_iqvia_xref_v2_cdw_v1.cycle_id,
        ftf_iqvia_xref_v2_cdw_v1.modified_time,
        ftf_iqvia_xref_v2_cdw_v1.modified_by
 FROM sandbox.ftf_iqvia_xref_v2_cdw_v1
 WHERE (ftf_iqvia_xref_v2_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_xref_v2_cdw_v1'::varchar(24)))))));

CREATE  VIEW sandbox.vw_curr_access_master_bridge_cdw_v1 AS
 SELECT access_master_bridge_cdw_v1.ftf_health_plan_fid,
        access_master_bridge_cdw_v1.ftf_health_plan_name,
        access_master_bridge_cdw_v1.coverage_category_ajovy,
        access_master_bridge_cdw_v1.coverage_category_aimovig,
        access_master_bridge_cdw_v1.coverage_category_emgality,
        access_master_bridge_cdw_v1.coverage_category_nurtec,
        access_master_bridge_cdw_v1.coverage_category_qulitpa,
        access_master_bridge_cdw_v1.coverage_category_austedo_hd,
        access_master_bridge_cdw_v1.coverage_category_austedo_td,
        access_master_bridge_cdw_v1.coverage_category_ingrezza_td,
        access_master_bridge_cdw_v1.ftf_provider_fid,
        access_master_bridge_cdw_v1.ftf_provider_name,
        access_master_bridge_cdw_v1.ftf_parent_name,
        access_master_bridge_cdw_v1.paytype_index,
        access_master_bridge_cdw_v1.paytype,
        access_master_bridge_cdw_v1.ftf_health_plan_type,
        access_master_bridge_cdw_v1.key_controlling_plan_formulary,
        access_master_bridge_cdw_v1.key_controlling_account,
        access_master_bridge_cdw_v1.key_controlling_parent,
        access_master_bridge_cdw_v1.payer_pbm,
        access_master_bridge_cdw_v1.key_pbm,
        access_master_bridge_cdw_v1.iqvia_payer_name,
        access_master_bridge_cdw_v1.iqvia_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_management_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm,
        access_master_bridge_cdw_v1.ftf_claims_processing_pbm,
        access_master_bridge_cdw_v1.pref_brand_tier,
        access_master_bridge_cdw_v1.ftf_match_iqvia,
        access_master_bridge_cdw_v1.previous_lives,
        access_master_bridge_cdw_v1.current_lives,
        access_master_bridge_cdw_v1.cycle_id,
        access_master_bridge_cdw_v1.modified_time,
        access_master_bridge_cdw_v1.modified_by
 FROM sandbox.access_master_bridge_cdw_v1
 WHERE (access_master_bridge_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'access_master_bridge_cdw_v1'::varchar(27)))))));

CREATE  VIEW sandbox.vw_prev_month_access_master_bridge_cdw_v1 AS
 SELECT access_master_bridge_cdw_v1.ftf_health_plan_fid,
        access_master_bridge_cdw_v1.ftf_health_plan_name,
        access_master_bridge_cdw_v1.coverage_category_ajovy,
        access_master_bridge_cdw_v1.coverage_category_aimovig,
        access_master_bridge_cdw_v1.coverage_category_emgality,
        access_master_bridge_cdw_v1.coverage_category_nurtec,
        access_master_bridge_cdw_v1.coverage_category_qulitpa,
        access_master_bridge_cdw_v1.coverage_category_austedo_hd,
        access_master_bridge_cdw_v1.coverage_category_austedo_td,
        access_master_bridge_cdw_v1.coverage_category_ingrezza_td,
        access_master_bridge_cdw_v1.ftf_provider_fid,
        access_master_bridge_cdw_v1.ftf_provider_name,
        access_master_bridge_cdw_v1.ftf_parent_name,
        access_master_bridge_cdw_v1.paytype_index,
        access_master_bridge_cdw_v1.paytype,
        access_master_bridge_cdw_v1.ftf_health_plan_type,
        access_master_bridge_cdw_v1.key_controlling_plan_formulary,
        access_master_bridge_cdw_v1.key_controlling_account,
        access_master_bridge_cdw_v1.key_controlling_parent,
        access_master_bridge_cdw_v1.payer_pbm,
        access_master_bridge_cdw_v1.key_pbm,
        access_master_bridge_cdw_v1.iqvia_payer_name,
        access_master_bridge_cdw_v1.iqvia_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_management_pbm,
        access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm,
        access_master_bridge_cdw_v1.ftf_claims_processing_pbm,
        access_master_bridge_cdw_v1.pref_brand_tier,
        access_master_bridge_cdw_v1.ftf_match_iqvia,
        access_master_bridge_cdw_v1.previous_lives,
        access_master_bridge_cdw_v1.current_lives,
        access_master_bridge_cdw_v1.cycle_id,
        access_master_bridge_cdw_v1.modified_time,
        access_master_bridge_cdw_v1.modified_by
 FROM sandbox.access_master_bridge_cdw_v1
 WHERE (access_master_bridge_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'access_master_bridge_cdw_v1'::varchar(27)))))));

CREATE  VIEW sandbox.vw_curr_amb4_cdw_v1 AS
 SELECT amb4_cdw_v1.ftf_health_plan_fid,
        amb4_cdw_v1.ftf_health_plan_name,
        amb4_cdw_v1.old_coverage_category_ajovy,
        amb4_cdw_v1.old_coverage_category_aimovig,
        amb4_cdw_v1.old_coverage_category_emgality,
        amb4_cdw_v1.old_coverage_category_nurtec,
        amb4_cdw_v1.old_coverage_category_qulitpa,
        amb4_cdw_v1.old_coverage_category_austedo_hd,
        amb4_cdw_v1.old_coverage_category_austedo_td,
        amb4_cdw_v1.old_coverage_category_ingrezza_td,
        amb4_cdw_v1.old_ftf_provider_fid,
        amb4_cdw_v1.old_ftf_provider_name,
        amb4_cdw_v1.old_ftf_parent_name,
        amb4_cdw_v1.old_paytype_index,
        amb4_cdw_v1.old_paytype,
        amb4_cdw_v1.old_ftf_health_plan_type,
        amb4_cdw_v1.old_pref_brand_tier,
        amb4_cdw_v1.old_key_controlling_plan_formulary,
        amb4_cdw_v1.old_key_controlling_account,
        amb4_cdw_v1.old_key_pbm,
        amb4_cdw_v1.old_payer_pbm,
        amb4_cdw_v1.fillIn_blank_iqpayer,
        amb4_cdw_v1.fillIn_blank_iqpbm,
        amb4_cdw_v1.ftf_match_iqvia,
        amb4_cdw_v1.old_iqvia_payer_name,
        amb4_cdw_v1.old_iqvia_pbm,
        amb4_cdw_v1.old_ftf_formulary_management_pbm,
        amb4_cdw_v1.old_ftf_formulary_influencer_pbm,
        amb4_cdw_v1.old_ftf_claims_processing_pbm,
        amb4_cdw_v1.lives_mx,
        amb4_cdw_v1.new_ftf_health_plan_fid,
        amb4_cdw_v1.old_ftf_health_plan_fid,
        amb4_cdw_v1.new_ftf_health_plan_name,
        amb4_cdw_v1.old_ftf_health_plan_name,
        amb4_cdw_v1.ftf_provider_fid,
        amb4_cdw_v1.ftf_provider_name,
        amb4_cdw_v1.ftf_parent_name,
        amb4_cdw_v1.paytype_index,
        amb4_cdw_v1.paytype,
        amb4_cdw_v1.ftf_health_plan_type,
        amb4_cdw_v1.pref_brand_tier,
        amb4_cdw_v1.lives_mn,
        amb4_cdw_v1.iqvia_payer_name,
        amb4_cdw_v1.iqvia_pbm,
        amb4_cdw_v1.ftf_formulary_management_pbm,
        amb4_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_cdw_v1.ftf_claims_processing_pbm,
        amb4_cdw_v1.cycle_id,
        amb4_cdw_v1.modified_time,
        amb4_cdw_v1.modified_by
 FROM sandbox.amb4_cdw_v1
 WHERE (amb4_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_cdw_v1'::varchar(11)))))));

CREATE  VIEW sandbox.vw_curr_pivot_plan_prod_master_cdw_v1 AS
 SELECT pivot_plan_prod_master_cdw_v1.ftf_health_plan_fid,
        pivot_plan_prod_master_cdw_v1.ftf_health_plan_name,
        pivot_plan_prod_master_cdw_v1.ftf_provider_fid,
        pivot_plan_prod_master_cdw_v1.ftf_provider_name,
        pivot_plan_prod_master_cdw_v1.ftf_parent_name,
        pivot_plan_prod_master_cdw_v1.paytype,
        pivot_plan_prod_master_cdw_v1.paytype_index,
        pivot_plan_prod_master_cdw_v1.ftf_health_plan_type,
        pivot_plan_prod_master_cdw_v1.key_controlling_account,
        pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary,
        pivot_plan_prod_master_cdw_v1.key_controlling_parent,
        pivot_plan_prod_master_cdw_v1.payer_pbm,
        pivot_plan_prod_master_cdw_v1.key_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_formulary_management_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_formulary_influencer_pbm,
        pivot_plan_prod_master_cdw_v1.ftf_claims_processing_pbm,
        pivot_plan_prod_master_cdw_v1.lives_mn,
        pivot_plan_prod_master_cdw_v1.iqvia_payer_name,
        pivot_plan_prod_master_cdw_v1.iqvia_pbm,
        pivot_plan_prod_master_cdw_v1.pref_brand_tier,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Nurtec,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Qulipta,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Austedo_HD,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Austedo_TD,
        pivot_plan_prod_master_cdw_v1.Coverage_Category_Ingrezza_TD,
        pivot_plan_prod_master_cdw_v1.prev_lives,
        pivot_plan_prod_master_cdw_v1.ftf_match_iqvia,
        pivot_plan_prod_master_cdw_v1.cycle_id,
        pivot_plan_prod_master_cdw_v1.modified_time,
        pivot_plan_prod_master_cdw_v1.modified_by
 FROM sandbox.pivot_plan_prod_master_cdw_v1
 WHERE (pivot_plan_prod_master_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'pivot_plan_prod_master_cdw_v1'::varchar(29)))))));

CREATE  VIEW sandbox.vw_curr_ftf_iqvia_xref_cdw_v1 AS
 SELECT ftf_iqvia_xref_cdw_v1.iqvia_plan_code,
        ftf_iqvia_xref_cdw_v1.iqvia_plan_name,
        ftf_iqvia_xref_cdw_v1.xref_iqvia_payer_name,
        ftf_iqvia_xref_cdw_v1.best_matched_iqvia_payer_name,
        ftf_iqvia_xref_cdw_v1.xref_iqvia_pbm,
        ftf_iqvia_xref_cdw_v1.best_matched_iqvia_pbm,
        ftf_iqvia_xref_cdw_v1.paytype,
        ftf_iqvia_xref_cdw_v1.model,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_xref_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_xref_cdw_v1.ftf_provider_fid,
        ftf_iqvia_xref_cdw_v1.ftf_provider_name,
        ftf_iqvia_xref_cdw_v1.ftf_parent_name,
        ftf_iqvia_xref_cdw_v1.key_controlling_plan_formulary,
        ftf_iqvia_xref_cdw_v1.key_controlling_account,
        ftf_iqvia_xref_cdw_v1.key_controlling_parent,
        ftf_iqvia_xref_cdw_v1.payer_pbm,
        ftf_iqvia_xref_cdw_v1.ajovy_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.aimovig_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.emgality_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.nurtec_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.qulipta_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.austedo_hd_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.austedo_td_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.ingrezza_td_access_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.ftf_pref_brand_tier,
        ftf_iqvia_xref_cdw_v1.total_lives_for_ftf_plan,
        ftf_iqvia_xref_cdw_v1.key_pbm,
        ftf_iqvia_xref_cdw_v1.check_iq_payer,
        ftf_iqvia_xref_cdw_v1.check_iq_pbm,
        ftf_iqvia_xref_cdw_v1.cycle_id,
        ftf_iqvia_xref_cdw_v1.modified_time,
        ftf_iqvia_xref_cdw_v1.modified_by
 FROM sandbox.ftf_iqvia_xref_cdw_v1
 WHERE (ftf_iqvia_xref_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_xref_cdw_v1'::varchar(21)))))));

CREATE  VIEW sandbox.vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1 AS
 SELECT iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_time,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_by
 FROM sandbox.iqvia_plan_code_ftf_hp_id_cdw_v1
 WHERE (iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_code_ftf_hp_id_cdw_v1'::varchar(32)))))));

CREATE  VIEW sandbox.vw_prev_month_iqvia_plan_code_ftf_hp_id_cdw_v1 AS
 SELECT iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent,
        iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan,
        iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm,
        iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_time,
        iqvia_plan_code_ftf_hp_id_cdw_v1.modified_by
 FROM sandbox.iqvia_plan_code_ftf_hp_id_cdw_v1
 WHERE (iqvia_plan_code_ftf_hp_id_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = 'COMPLETED'::varchar(9)) AND (a.date_run < ( SELECT parent_process_execution.date_run
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_code_ftf_hp_id_cdw_v1'::varchar(32)))))));

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_ftf_health_plan_detail AS
 SELECT lpad((vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_ajovy AS "Coverage Category Ajovy",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_aimovig AS "Coverage Category Aimovig",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_emgality AS "Coverage Category Emgality",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_nurtec AS "Coverage Category Nurtec",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_qulitpa AS "Coverage Category Qulipta",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_austedo_hd AS "Coverage Category Austedo HD",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_austedo_td AS "Coverage Category Austedo TD",
        vw_curr_access_master_bridge_cdw_v1.coverage_category_ingrezza_td AS "Coverage Category Ingrezza TD",
        vw_curr_access_master_bridge_cdw_v1.ftf_provider_fid AS "FTF Provider FID",
        vw_curr_access_master_bridge_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_access_master_bridge_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_access_master_bridge_cdw_v1.paytype AS "Payment Type",
        vw_curr_access_master_bridge_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_access_master_bridge_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_access_master_bridge_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_access_master_bridge_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_access_master_bridge_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_access_master_bridge_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_access_master_bridge_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_access_master_bridge_cdw_v1.ftf_match_iqvia AS "FTF Match IQVIA",
        vw_curr_access_master_bridge_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_access_master_bridge_cdw_v1.previous_lives AS "Previous Month Lives",
        vw_curr_access_master_bridge_cdw_v1.current_lives AS "Current Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_access_master_bridge_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_iqvia_plan_code_ftf_hp_id AS
 SELECT lpad((vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.payment_type AS "Payment Type",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.iqvia_model AS "IQVIA Model",
        lpad((vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ajovy_access_for_ftf_plan AS "Ajovy Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.aimovig_access_for_ftf_plan AS "Aimovig Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.emgality_access_for_ftf_plan AS "Emgality Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.nurtec_access_for_ftf_plan AS "Nurtec Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.qulipta_access_for_ftf_plan AS "Qulipta Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_hd_access_for_ftf_plan AS "Austedo HD Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.austedo_td_access_for_ftf_plan AS "Austedo TD Access For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.ingrezza_td_access_for_ftf_plan AS "Ingrezza TD Access For FTF Plan",
        (vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.total_lives_for_ftf_plan)::varchar AS "Total Lives For FTF Plan",
        vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1.key_pbm AS "Key PBM"
 FROM sandbox.vw_curr_iqvia_plan_code_ftf_hp_id_cdw_v1 UNION  SELECT '0000010001'::varchar(10) AS "IQVIA Plan Code",
        'CASH'::varchar(4) AS "IQVIA Plan Name",
        'CASH'::varchar(4) AS "IQVIA Payer Name",
        ''::varchar AS "IQVIA PBM",
        'CASH'::varchar(4) AS "Payment Type",
        ''::varchar AS "IQVIA Model",
        ''::varchar AS "FTF Health Plan FID",
        ''::varchar AS "FTF Health Plan Name",
        ''::varchar AS "FTF Health Plan Type",
        ''::varchar AS "Key Controlling Plan Formulary",
        ''::varchar AS "Key Controlling Account",
        ''::varchar AS "Key Controlling Parent",
        ''::varchar AS "Payer/PBM",
        ''::varchar AS "Ajovy Access For FTF Plan",
        ''::varchar AS "Aimovig Access For FTF Plan",
        ''::varchar AS "Emgality Access For FTF Plan",
        ''::varchar AS "Nurtec Access For FTF Plan",
        ''::varchar AS "Qulipta Access For FTF Plan",
        ''::varchar AS "Austedo HD Access For FTF Plan",
        ''::varchar AS "Austedo TD Access For FTF Plan",
        ''::varchar AS "Ingrezza TD Access For FTF Plan",
        ''::varchar AS "Total Lives For FTF Plan",
        ''::varchar AS "Key PBM"
 FROM v_catalog.dual;

CREATE  VIEW sandbox.create_paragard_anda_sales AS
SELECT sh.source_customer_id AS "BP #", NULL AS "Ortho E", sh.customer_name AS "BP Name", coalesce(sh.ship_to_address_line_2, sh.ship_to_address_line_1) AS "Ship-to Street", sh.ship_to_city AS "Ship-to City", sh.ship_to_state AS "Ship-to State", sh.ship_to_zip AS "Ship-to ZipCd", NULL AS "Ship-to Ctry", NULL AS "Ship-to Phone", NULL AS "Ship-to Fax", NULL AS "Ship-to Email", ad.address AS "Bill-to Street", ad.city AS "Bill-to City", ad.state AS "Bill-to State", ad.zip_code AS "Bill-to ZipCd", NULL AS "Bill-to Ctry", NULL AS "Bill-to Phone", NULL AS "Bill-to Fax", NULL AS "Bill-to Email", CASE mod(sh.customer_type, 1::float) WHEN NULLSEQUAL 0::float THEN sh.customer_type ELSE rtrim(sh.customer_type, '0'::varchar(1)) END AS "Class of Trade", CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END AS "Invoice #", CASE mod(sh.invoice_amount, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.invoice_amount)::int)::varchar ELSE rtrim((sh.invoice_amount)::varchar, '0'::varchar(1)) END AS "Del Amt", to_char(sh.invoice_date, 'YYYY-MM-DD'::varchar(10)) AS "Inv Date", CASE mod(sh.quantity, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.quantity)::int)::varchar ELSE rtrim((sh.quantity)::varchar, '0'::varchar(1)) END AS "24237", NULL AS "24238", NULL AS "24800", NULL AS "33223", CASE mod(sh.package_size, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN (sh.package_size)::varchar ELSE rtrim((sh.package_size)::varchar, '0'::varchar(1)) END AS Packs, NULL AS UnitPrice, NULL AS Territory, NULL AS "Order Type Cd", NULL AS "Order Type Desc", NULL AS LOBCdDesc, NULL AS PriceMatrixDef, ('A'::varchar(1) || btrim(to_char(sh.source_parent_customer_id, '000000000'::varchar(9)))) AS ParentBPCd, NULL AS ParentBPCdDesc, NULL AS GrandParentBPCdDesc, NULL AS "PO#", NULL AS "UPS#", CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END AS OrdNbr, NULL AS OrdLnNbr, NULL AS DiscAmt, NULL AS WhseCd, 'ANDA'::varchar(4) AS DATA_SOURCE, '51285020401'::varchar(11) AS NDC11_CODE FROM (datamart.specialty_pharmacy_shipment sh LEFT JOIN (SELECT tw_address.address_id, tw_address.address, tw_address.city, tw_address.state, tw_address.zip_code FROM datamart.tw_address) ad ON ((sh.tw_bill_to_address_id = ad.address_id))) WHERE ((sh.basket_name ~~ '%PARAGARD%'::varchar(10)) AND (sh.specialty_pharmacy_data_source = 'Anda'::varchar(4)) AND (sh.ship_date >= add_months(trunc(('now()'::varchar(5))::date, 'MM'::varchar(2)), (-1))) AND (sh.ship_date < trunc(('now()'::varchar(5))::date, 'MM'::varchar(2)))) GROUP BY sh.source_customer_id, NULL, sh.customer_name, coalesce(sh.ship_to_address_line_2, sh.ship_to_address_line_1), sh.ship_to_city, sh.ship_to_state, sh.ship_to_zip, ad.address, ad.city, ad.state, ad.zip_code, CASE mod(sh.customer_type, 1::float) WHEN NULLSEQUAL 0::float THEN sh.customer_type ELSE rtrim(sh.customer_type, '0'::varchar(1)) END, CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END, CASE mod(sh.invoice_amount, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.invoice_amount)::int)::varchar ELSE rtrim((sh.invoice_amount)::varchar, '0'::varchar(1)) END, to_char(sh.invoice_date, 'YYYY-MM-DD'::varchar(10)), CASE mod(sh.quantity, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.quantity)::int)::varchar ELSE rtrim((sh.quantity)::varchar, '0'::varchar(1)) END, CASE mod(sh.package_size, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN (sh.package_size)::varchar ELSE rtrim((sh.package_size)::varchar, '0'::varchar(1)) END, ('A'::varchar(1) || btrim(to_char(sh.source_parent_customer_id, '000000000'::varchar(9)))), 'ANDA'::varchar(4), '51285020401'::varchar(11);

CREATE  VIEW sandbox.knipper_merge_test AS
 SELECT merges.current_tvcmid AS TVCMIDWinner,
        merges.previous_tvcmid AS TVCMIDLoser,
        to_char((now())::date, 'MM/DD/YYYY'::varchar(10)) AS TVCMIDMergeEffectiveDate
 FROM mdm.merges
 GROUP BY merges.current_tvcmid,
          merges.previous_tvcmid,
          to_char((now())::date, 'MM/DD/YYYY'::varchar(10));

CREATE  VIEW sandbox.knipper_supplemental_test AS
 SELECT a.tvcmid AS TVCMID,
        CASE WHEN (a.medical_suffix IS NULL) THEN ''::varchar ELSE a.medical_suffix END AS ProfDesig,
        a.first_name AS FName,
        a.last_name AS Lname,
        CASE WHEN (a.middle_name IS NULL) THEN ''::varchar ELSE a.middle_name END AS MI,
        CASE WHEN (a.personal_suffix IS NULL) THEN ''::varchar ELSE a.personal_suffix END AS Suffix,
        CASE WHEN (a.hce_status_desc IS NULL) THEN 'A'::varchar(1) WHEN (a.hce_status_desc = 'ACTIVE'::varchar(6)) THEN 'A'::varchar(1) WHEN (a.hce_status_desc = 'INACTIVE'::varchar(8)) THEN 'I'::varchar(1) ELSE 'D'::varchar(1) END AS Status,
        CASE WHEN (a.hce_status_desc = 'PRESUMED DEAD'::varchar(13)) THEN 'D'::varchar(1) WHEN (a.hce_status_desc = 'SEMI-RETIRED'::varchar(12)) THEN 'O'::varchar(1) WHEN (a.hce_status_desc = 'RETIRED'::varchar(7)) THEN 'R'::varchar(1) ELSE ''::varchar END AS DeleteReason,
        CASE WHEN ((a.hce_status_desc IS NULL) OR (a.hce_status_desc <> ALL (ARRAY['ACTIVE'::varchar(8), 'INACTIVE'::varchar(8)]))) THEN to_char(e.last_update_date, 'MM/DD/YYYY'::varchar(10)) ELSE ''::varchar END AS DeleteDate,
        CASE WHEN (a.primary_specialty IS NULL) THEN 'US'::varchar(2) ELSE a.primary_specialty END AS Specialty,
        CASE WHEN (a.address_line1 IS NULL) THEN ''::varchar ELSE a.address_line1 END AS Address1,
        CASE WHEN (a.address_line2 IS NULL) THEN ''::varchar ELSE a.address_line2 END AS Address2,
        ''::varchar AS Address3,
        CASE WHEN (a.city IS NULL) THEN ''::varchar ELSE a.city END AS City,
        CASE WHEN (a.state IS NULL) THEN ''::varchar ELSE a.state END AS State,
        CASE WHEN (a.zip IS NULL) THEN ''::varchar ELSE a.zip END AS Zip,
        CASE WHEN (b.sln IS NULL) THEN ''::varchar ELSE b.sln END AS SLN,
        CASE WHEN ((b.sln IS NULL) OR (b.sln = ''::varchar)) THEN ''::varchar ELSE CASE WHEN (b.sln_status_code = 'A'::varchar(1)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END END AS SLNActiveFlag,
        CASE WHEN ((b.sln IS NULL) OR (b.sln = ''::varchar)) THEN ''::varchar ELSE to_char(b.sln_expiration_date, 'MM/DD/YYYY'::varchar(10)) END AS SLNExpirationDate,
        CASE WHEN (c.flag_value = 'Y'::varchar(1)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS DNCWakeFlag,
        CASE WHEN (d.tvcmid IS NOT NULL) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS DNP
 FROM (((((( SELECT prescriber_rx.tvcmid
 FROM datamart.prescriber_rx
 GROUP BY prescriber_rx.tvcmid) exp JOIN ( SELECT hcp_demo.tvcmid,
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
        hcp_demo.state_code AS state,
        hcp_demo.zip,
        hcp_demo.business_phone,
        hcp_demo.business_email,
        hcp_demo.hce_status_desc,
        hcp_demo.file_id,
        hcp_demo.record_id,
        hcp_demo.np_pa_flag
 FROM datamart.customer_hcp_demographics hcp_demo
 WHERE (hcp_demo.file_id = ( SELECT max(customer_hcp_demographics.file_id) AS MAX
 FROM datamart.customer_hcp_demographics))) a ON ((exp.tvcmid = a.tvcmid))) JOIN ( SELECT sample_eligibility.sln,
        sample_eligibility.sln_state,
        sample_eligibility.sln_expiration_date,
        sample_eligibility.sln_status_code,
        sample_eligibility.tvcmid
 FROM mdm.sample_eligibility
 WHERE (sample_eligibility.file_id = ( SELECT max(sample_eligibility.file_id) AS MAX
 FROM mdm.sample_eligibility))) b ON (((a.tvcmid = b.tvcmid) AND (a.state = b.sln_state)))) LEFT  JOIN ( SELECT ims_flag.tvcmid,
        ims_flag.flag_type,
        ims_flag.flag_value
 FROM mdm.ims_flag
 WHERE ((ims_flag.file_id = ( SELECT max(ims_flag.file_id) AS MAX
 FROM mdm.ims_flag)) AND (ims_flag.flag_type = 'AMADNC'::varchar(6)))) c ON ((a.tvcmid = c.tvcmid))) LEFT  JOIN datamart.do_not_promote d ON ((a.tvcmid = d.tvcmid))) LEFT  JOIN ( SELECT hcp.updated_date AS last_update_date,
        hcp.tvcmid
 FROM mdm.hcp
 WHERE (hcp.file_id = ( SELECT max(hcp.file_id) AS MAX
 FROM mdm.hcp))) e ON ((a.tvcmid = e.tvcmid)));

CREATE  VIEW sandbox.ad_hoc_ad AS
 SELECT ('"'::varchar(1) || fed.id_num) AS federation_id,
        NULL AS contact,
        'Third_Party_Redemptions'::varchar(23) AS source,
        to_char(c.fill_date, 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) AS "datetime",
        concat((c.file_id)::varchar, (c.record_id)::varchar) AS trackback_id,
        NULL AS previous_activity,
        (brand.basket_id)::varchar(20) AS level_master_id,
        'HCP'::varchar(3) AS activity_role,
        'Voucher/Coupon_Redemption'::varchar(25) AS type,
        'Voucher/Coupon_Redemption'::varchar(25) AS native_type,
        ((((('Voucher/Coupon Redemption - '::varchar(28) || coalesce(b.name, ''::varchar)) || ','::varchar(1)) || coalesce(cvp.program_description, ''::varchar)) || ','::varchar(1)) || c.redemption_type) AS details,
        to_char(now(), 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) AS created,
        (to_char(now(), 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) || '"'::varchar(1)) AS modified
 FROM ((((datamart.copay c JOIN reference.copay_voucher_program cvp ON (((c.program_number = cvp.program_number) AND (c.redemption_type = cvp.redemption_type)))) JOIN datamart.tvcmid_xref fed ON (((c.physician_tvcmid = fed.tvcmid) AND (fed.id_type = 'FED_ID'::varchar(6))))) LEFT  JOIN product.basket b ON ((c.basket_id = b.basket_id))) LEFT  JOIN ( SELECT bb.basket_id,
        bb.name,
        bp.basket_id AS prod_id
 FROM ((product.basket_item bip JOIN product.basket bp ON ((bip.entity_id = bp.basket_id))) JOIN product.basket bb ON (((bip.basket_id = bb.basket_id) AND (bb.basket_type = 'brand'::varchar(5)))))) brand ON ((c.basket_id = brand.prod_id)));

CREATE  VIEW sandbox.v_sent_email AS
 SELECT se.id,
        se.isdeleted,
        se.name,
        se.createddate,
        se.createdbyid,
        se.lastmodifieddate,
        se.lastmodifiedbyid,
        se.systemmodstamp,
        se.mayedit,
        se.islocked,
        se.is_parent_call_vod__c,
        se.call2_vod__c,
        se.product_vod__c,
        se.detail_priority_vod__c,
        se.mobile_id_vod__c,
        se.type_vod__c,
        se.file_id,
        se.record_id
 FROM (veeva.call_detail se JOIN ( SELECT call_detail.id,
        max(call_detail.file_id) AS file_id
 FROM veeva.call_detail
 WHERE (call_detail.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call_detail.id) se2 ON (((se.id = se2.id) AND (se.file_id = se2.file_id))));

CREATE  VIEW sandbox.account AS
 SELECT x.id,
        x.isdeleted,
        x.masterrecordid,
        x.name,
        x.lastname,
        x.firstname,
        x.salutation,
        x.type,
        x.recordtypeid,
        x.phone,
        x.fax,
        x.website,
        x.numberofemployees,
        x.ownership,
        x.ownerid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.isexcludedfromrealign,
        x.personcontactid,
        x.ispersonaccount,
        x.personmailingstreet,
        x.personmailingcity,
        x.personmailingstate,
        x.personmailingpostalcode,
        x.personmailingcountry,
        x.personmailinglatitude,
        x.personmailinglongitude,
        x.personotherstreet,
        x.personothercity,
        x.personotherstate,
        x.personotherpostalcode,
        x.personothercountry,
        x.personotherlatitude,
        x.personotherlongitude,
        x.personmobilephone,
        x.personhomephone,
        x.personotherphone,
        x.personassistantphone,
        x.personemail,
        x.persontitle,
        x.persondepartment,
        x.personassistantname,
        x.personbirthdate,
        x.personhasoptedoutofemail,
        x.personhasoptedoutoffax,
        x.persondonotcall,
        x.personlastcurequestdate,
        x.personlastcuupdatedate,
        x.personemailbouncedreason,
        x.personemailbounceddate,
        x.jigsaw,
        x.jigsawcompanyid,
        x.accountsource,
        x.sicdesc,
        x.external_id_vod__c,
        x.credentials_vod__c,
        x.exclude_from_zip_to_terr_proce,
        x.group_specialty_1_vod__c,
        x.group_specialty_2_vod__c,
        x.specialty_1_vod__c,
        x.specialty_2_vod__c,
        x.formatted_name_vod__c,
        x.territory_test_vod__c,
        x.mobile_id_vod__c,
        x.gender_vod__c,
        x.id_vod__c,
        x.do_not_sync_sales_data_vod__c,
        x.id2_vod__c,
        x.preferred_name_vod__c,
        x.sample_default_vod__c,
        x.segmentations_vod__c,
        x.restricted_products_vod__c,
        x.payer_id_vod__c,
        x.account_status_tva__c,
        x.do_not_call_vod__c,
        x.beds__c,
        x.spend_amount__c,
        x.pdrp_opt_out_vod__c,
        x.spend_status_value_vod__c,
        x.pdrp_opt_out_date_vod__c,
        x.spend_status_vod__c,
        x.enable_restricted_products,
        x.call_reminder_vod__c,
        x.account_group_vod__c,
        x.primary_parent_vod__c,
        x.color_vod__c,
        x.middle_vod__c,
        x.suffix_vod__c,
        x.account_location_tva__c,
        x.no_orders_vod__c,
        x.account_master_id_tva__c,
        x.account_email_tva__c,
        x.account_search_firstlast,
        x.account_search_lastfirst,
        x.person_preferred_name_tva__c,
        x.practice_at_hospital_vod__c,
        x.practice_near_hospital_vod__c,
        x.do_not_create_child_account,
        x.total_mds_dos__c,
        x.aha__c,
        x.order_type_vod__c,
        x.npi_vod__c,
        x.me__c,
        x.speaker__c,
        x.investigator_vod__c,
        x.default_order_type_vod__c,
        x.person_degree_tva__c,
        x.tax_status__c,
        x.model__c,
        x.offerings__c,
        x.departments__c,
        x.account_type__c,
        x.account_search_business_vod__c,
        x.business_professional_person,
        x.no_spend_tva__c,
        x.hospital_type_vod__c,
        x.account_class_vod__c,
        x.furigana_vod__c,
        x.tirf_rems_tva__c,
        x.fentora_app_tva__c,
        x.total_revenue_000__c,
        x.net_income_loss_000__c,
        x.pmpm_income_loss_000__c,
        x.commercial_premiums_pmpm__c,
        x.medical_loss_ratio__c,
        x.medical_expenses_pmpm__c,
        x.commercial_patient_days_1000,
        x.hmo_market_shr__c,
        x.hmo__c,
        x.hmo_pos__c,
        x.ppo__c,
        x.ppo_pos__c,
        x.medicare__c,
        x.medicaid__c,
        x.nuvigil_app_tva__c,
        x.mds_status_tva__c,
        x.lis_status_tva__c,
        x.dnc_pcs_tva__c,
        x.dnc_cns_tva__c,
        x.suffix_tva__c,
        x.tysabri_status_tva__c,
        x.business_description__c,
        x.regional_strategy__c,
        x.contracts_process__c,
        x.cml_profiled_tva__c,
        x.cell_phone_tva__c,
        x.no_contact_tva__c,
        x.outlet_id_tva__c,
        x.pmo_gpo_account_affiliations,
        x.territory_status_tva__c,
        x.zdea_number_tva__c,
        x.veeva_id_tva__c,
        x.treanda_lq_tgt_tva__c,
        x.tbo_filgrastim_target_tva__c,
        x.sln_rescrub_tva__c,
        x.account_identifier_vod__c,
        x.target__c,
        x.kol_vod__c,
        x.rems_expiration_date_teva__c,
        x.account_demo_id_tva__c,
        x.total_lives__c,
        x.total_physicians_enrolled__c,
        x.tirf_rems_eff_date_tva__c,
        x.business_associate_agreement,
        x.do_not_promote_tva__c,
        x.account_dea_tva__c,
        x.bp_number__c,
        x.paragard_segmentation_tva__c,
        x.telesales_activity_tva__c,
        x.designation_tva__c,
        x.total_pharmacists__c,
        x.comp_pricing_tva__c,
        x.formulary_tva__c,
        x.gln_tva__c,
        x.gpo_contracts_tva__c,
        x.hin_tva__c,
        x.max_id_tva__c,
        x.oncology_services_tva__c,
        x.pcp_program_tva__c,
        x.pharmacy_location_tva__c,
        x.primary_credential_tva__c,
        x.primary_wholesaler_tva__c,
        x.rep_credentialing_tva__c,
        x.secondary_credential_tva__c,
        x.sign_in_location_tva__c,
        x.special_tva__c,
        x.sub_type_id_tva__c,
        x.sub_type_tva__c,
        x.teva_contracts_tva__c,
        x.ims_org_id_tva__c,
        x.year_of_birth_tva__c,
        x.teaching_hospital_tva__c,
        x.account_archived_tva__c,
        x.mobile_id_vod__pc,
        x.file_id,
        x.record_id,
        x.cm_id_tva__c,
        x.staff_email,
        x.company_managed_email,
        x.alternate_email
 FROM (veeva.account x JOIN ( SELECT account.id,
        max(account.file_id) AS file_id
 FROM veeva.account
 GROUP BY account.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_account AS
 SELECT x.id,
        x.isdeleted,
        x.masterrecordid,
        x.name,
        x.lastname,
        x.firstname,
        x.salutation,
        x.type,
        x.recordtypeid,
        x.phone,
        x.fax,
        x.website,
        x.numberofemployees,
        x.ownership,
        x.ownerid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.isexcludedfromrealign,
        x.personcontactid,
        x.ispersonaccount,
        x.personmailingstreet,
        x.personmailingcity,
        x.personmailingstate,
        x.personmailingpostalcode,
        x.personmailingcountry,
        x.personmailinglatitude,
        x.personmailinglongitude,
        x.personotherstreet,
        x.personothercity,
        x.personotherstate,
        x.personotherpostalcode,
        x.personothercountry,
        x.personotherlatitude,
        x.personotherlongitude,
        x.personmobilephone,
        x.personhomephone,
        x.personotherphone,
        x.personassistantphone,
        x.personemail,
        x.persontitle,
        x.persondepartment,
        x.personassistantname,
        x.personbirthdate,
        x.personhasoptedoutofemail,
        x.personhasoptedoutoffax,
        x.persondonotcall,
        x.personlastcurequestdate,
        x.personlastcuupdatedate,
        x.personemailbouncedreason,
        x.personemailbounceddate,
        x.jigsaw,
        x.jigsawcompanyid,
        x.accountsource,
        x.sicdesc,
        x.external_id_vod__c,
        x.credentials_vod__c,
        x.exclude_from_zip_to_terr_proce,
        x.group_specialty_1_vod__c,
        x.group_specialty_2_vod__c,
        x.specialty_1_vod__c,
        x.specialty_2_vod__c,
        x.formatted_name_vod__c,
        x.territory_test_vod__c,
        x.mobile_id_vod__c,
        x.gender_vod__c,
        x.id_vod__c,
        x.do_not_sync_sales_data_vod__c,
        x.id2_vod__c,
        x.preferred_name_vod__c,
        x.sample_default_vod__c,
        x.segmentations_vod__c,
        x.restricted_products_vod__c,
        x.payer_id_vod__c,
        x.account_status_tva__c,
        x.do_not_call_vod__c,
        x.beds__c,
        x.spend_amount__c,
        x.pdrp_opt_out_vod__c,
        x.spend_status_value_vod__c,
        x.pdrp_opt_out_date_vod__c,
        x.spend_status_vod__c,
        x.enable_restricted_products,
        x.call_reminder_vod__c,
        x.account_group_vod__c,
        x.primary_parent_vod__c,
        x.color_vod__c,
        x.middle_vod__c,
        x.suffix_vod__c,
        x.account_location_tva__c,
        x.no_orders_vod__c,
        x.account_master_id_tva__c,
        x.account_email_tva__c,
        x.account_search_firstlast,
        x.account_search_lastfirst,
        x.person_preferred_name_tva__c,
        x.practice_at_hospital_vod__c,
        x.practice_near_hospital_vod__c,
        x.do_not_create_child_account,
        x.total_mds_dos__c,
        x.aha__c,
        x.order_type_vod__c,
        x.npi_vod__c,
        x.me__c,
        x.speaker__c,
        x.investigator_vod__c,
        x.default_order_type_vod__c,
        x.person_degree_tva__c,
        x.tax_status__c,
        x.model__c,
        x.offerings__c,
        x.departments__c,
        x.account_type__c,
        x.account_search_business_vod__c,
        x.business_professional_person,
        x.no_spend_tva__c,
        x.hospital_type_vod__c,
        x.account_class_vod__c,
        x.furigana_vod__c,
        x.tirf_rems_tva__c,
        x.fentora_app_tva__c,
        x.total_revenue_000__c,
        x.net_income_loss_000__c,
        x.pmpm_income_loss_000__c,
        x.commercial_premiums_pmpm__c,
        x.medical_loss_ratio__c,
        x.medical_expenses_pmpm__c,
        x.commercial_patient_days_1000,
        x.hmo_market_shr__c,
        x.hmo__c,
        x.hmo_pos__c,
        x.ppo__c,
        x.ppo_pos__c,
        x.medicare__c,
        x.medicaid__c,
        x.nuvigil_app_tva__c,
        x.mds_status_tva__c,
        x.lis_status_tva__c,
        x.dnc_pcs_tva__c,
        x.dnc_cns_tva__c,
        x.suffix_tva__c,
        x.tysabri_status_tva__c,
        x.business_description__c,
        x.regional_strategy__c,
        x.contracts_process__c,
        x.cml_profiled_tva__c,
        x.cell_phone_tva__c,
        x.no_contact_tva__c,
        x.outlet_id_tva__c,
        x.pmo_gpo_account_affiliations,
        x.territory_status_tva__c,
        x.zdea_number_tva__c,
        x.veeva_id_tva__c,
        x.treanda_lq_tgt_tva__c,
        x.tbo_filgrastim_target_tva__c,
        x.sln_rescrub_tva__c,
        x.account_identifier_vod__c,
        x.target__c,
        x.kol_vod__c,
        x.rems_expiration_date_teva__c,
        x.account_demo_id_tva__c,
        x.total_lives__c,
        x.total_physicians_enrolled__c,
        x.tirf_rems_eff_date_tva__c,
        x.business_associate_agreement,
        x.do_not_promote_tva__c,
        x.account_dea_tva__c,
        x.bp_number__c,
        x.paragard_segmentation_tva__c,
        x.telesales_activity_tva__c,
        x.designation_tva__c,
        x.total_pharmacists__c,
        x.comp_pricing_tva__c,
        x.formulary_tva__c,
        x.gln_tva__c,
        x.gpo_contracts_tva__c,
        x.hin_tva__c,
        x.max_id_tva__c,
        x.oncology_services_tva__c,
        x.pcp_program_tva__c,
        x.pharmacy_location_tva__c,
        x.primary_credential_tva__c,
        x.primary_wholesaler_tva__c,
        x.rep_credentialing_tva__c,
        x.secondary_credential_tva__c,
        x.sign_in_location_tva__c,
        x.special_tva__c,
        x.sub_type_id_tva__c,
        x.sub_type_tva__c,
        x.teva_contracts_tva__c,
        x.ims_org_id_tva__c,
        x.year_of_birth_tva__c,
        x.teaching_hospital_tva__c,
        x.account_archived_tva__c,
        x.mobile_id_vod__pc,
        x.file_id,
        x.record_id,
        x.cm_id_tva__c,
        x.staff_email,
        x.company_managed_email,
        x.alternate_email
 FROM (veeva.account x JOIN ( SELECT account.id,
        max(account.file_id) AS file_id
 FROM veeva.account
 GROUP BY account.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_call AS
 SELECT x.id,
        x.ownerid,
        x.isdeleted,
        x.name,
        x.recordtypeid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.sample_card_vod__c,
        x.add_detail_vod__c,
        x.property_vod__c,
        x.account_vod__c,
        x.zvod_product_discussion_vod__c,
        x.status_vod__c,
        x.parent_address_vod__c,
        x.account_plan_vod__c,
        x.zvod_savenew_vod__c,
        x.next_call_notes_vod__c,
        x.mobile_id_vod__c,
        x.zvod_account_credentials_vod_c,
        x.zvod_account_preferred_name_vo,
        x.zvod_account_sample_status_vod,
        x.zvod_attendees_vod__c,
        x.zvod_key_messages_vod__c,
        x.zvod_detailing_vod__c,
        x.zvod_expenses_vod__c,
        x.zvod_followup_vod__c,
        x.zvod_samples_vod__c,
        x.zvod_save_vod__c,
        x.zvod_submit_vod__c,
        x.zvod_delete_vod__c,
        x.activity_type__c,
        x.significant_event__c,
        x.location_vod__c,
        x.subject_vod__c,
        x.call_datetime_vod__c,
        x.disbursed_to_vod__c,
        x.request_receipt_vod__c,
        x.signature_date_vod__c,
        x.territory_vod__c,
        x.submitted_by_mobile_vod__c,
        x.call_type_vod__c,
        x.add_key_message_vod__c,
        x.address_vod__c,
        x.attendees_vod__c,
        x.attendee_type_vod__c,
        x.call_date_vod__c,
        x.detailed_products_vod__c,
        x.no_disbursement_vod__c,
        x.parent_call_vod__c,
        x.user_vod__c,
        x.contact_vod__c,
        x.zvod_entity_vod__c,
        x.medical_event_vod__c,
        x.mobile_created_datetime_vod__c,
        x.mobile_last_modified_datetime,
        x.license_vod__c,
        x.is_parent_call_vod__c,
        x.entity_display_name_vod__c,
        x.last_device_vod__c,
        x.ship_address_line_1_vod__c,
        x.ship_address_line_2_vod__c,
        x.ship_city_vod__c,
        x.ship_country_vod__c,
        x.ship_license_expiration_date,
        x.ship_license_status_vod__c,
        x.ship_license_vod__c,
        x.ship_state_vod__c,
        x.ship_to_address_vod__c,
        x.ship_zip_vod__c,
        x.ship_to_address_text_vod__c,
        x.clm_vod__c,
        x.zvod_clmdetails_vod__c,
        x.is_sampled_call_vod__c,
        x.zvod_surveys_vod__c,
        x.presentations_vod__c,
        x.entity_reference_id_vod__c,
        x.error_reference_call_vod__c,
        x.duration_vod__c,
        x.color_vod__c,
        x.allowed_products_vod__c,
        x.zvod_attachments_vod__c,
        x.sample_card_reason_vod__c,
        x.assmca_vod__c,
        x.address_line_1_vod__c,
        x.address_line_2_vod__c,
        x.city_vod__c,
        x.dea_address_line_1_vod__c,
        x.dea_address_line_2_vod__c,
        x.dea_address_vod__c,
        x.dea_city_vod__c,
        x.dea_expiration_date_vod__c,
        x.dea_state_vod__c,
        x.dea_zip_4_vod__c,
        x.dea_zip_vod__c,
        x.dea_vod__c,
        x.ship_zip_4_vod__c,
        x.state_vod__c,
        x.zip_4_vod__c,
        x.zip_vod__c,
        x.sample_send_card_vod__c,
        x.zvod_address_vod_c_dea_status_,
        x.signature_page_image_vod__c,
        x.credentials_vod__c,
        x.salutation_vod__c,
        x.zvod_account_call_reminder_vod,
        x.sales_org_tva__c,
        x.zvod_business_account_vod__c,
        x.product_priority_1_vod__c,
        x.product_priority_2_vod__c,
        x.product_priority_3_vod__c,
        x.product_priority_4_vod__c,
        x.product_priority_5_vod__c,
        x.zvod_more_actions_vod__c,
        x.zvod_call_conflict_status,
        x.signature_timestamp_vod__c,
        x.expense_amount_vod__c,
        x.total_expense_attendees_count,
        x.attendee_list_vod__c,
        x.expense_post_status_vod__c,
        x.attendee_post_status_vod__c,
        x.expense_system_external_id,
        x.incurred_expense_vod__c,
        x.assigner_vod__c,
        x.assignment_datetime_vod__c,
        x.zvod_call_objective_vod__c,
        x.signature_location_longitude,
        x.signature_location_latitude,
        x.location_services_status,
        x.created_by_timezone_tva__c,
        x.license_expiration_date_vod__c,
        x.license_status_vod__c,
        x.ship_assmca_vod__c,
        x.ship_dea_expiration_date,
        x.ship_dea_vod__c,
        x.call_method_tva__c,
        x.bendeka_indication_tva__c,
        x.file_id,
        x.record_id,
        x.austedo_indication_tva__c,
        x.call_duration_tva__c,
        x.how_executed_tva__c,
        x.Remote_Meeting_vod__c,
        x.Veeva_Remote_Meeting_Id_vod__c,
        x.Cobrowse_URL_Participant_vod__c,
        x.Signature_Captured_Remotely_vod__c,
        x.Remote_Signature_Attendee_Name_vod__c
 FROM (veeva.call x JOIN ( SELECT call.id,
        max(call.file_id) AS file_id
 FROM veeva.call
 WHERE (call.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_call_detail AS
 SELECT x.id,
        x.isdeleted,
        x.name,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.mayedit,
        x.islocked,
        x.is_parent_call_vod__c,
        x.call2_vod__c,
        x.product_vod__c,
        x.detail_priority_vod__c,
        x.mobile_id_vod__c,
        x.type_vod__c,
        x.file_id,
        x.record_id
 FROM (veeva.call_detail x JOIN ( SELECT call_detail.id,
        max(call_detail.file_id) AS file_id
 FROM veeva.call_detail
 WHERE (call_detail.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call_detail.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.vw_curr_provider_override_default_v1 AS
 SELECT btrim(provider_override_default_v1.provider_id) AS provider_id,
        btrim(provider_override_default_v1.paytype_regex) AS paytype_regex,
        btrim(provider_override_default_v1.provider_name) AS provider_name,
        btrim(provider_override_default_v1.fill_in_iqvia_payer_name_if_no_bridge) AS fill_in_iqvia_payer_name_if_no_bridge,
        btrim(provider_override_default_v1.override_best_iqvia_payer) AS override_best_iqvia_payer,
        btrim(provider_override_default_v1.fill_in_iqvia_pbm_if_no_bridge) AS fill_in_iqvia_pbm_if_no_bridge,
        btrim(provider_override_default_v1.override_best_iqvia_pbm) AS override_best_iqvia_pbm,
        provider_override_default_v1.file_id,
        provider_override_default_v1.record_id
 FROM sandbox.provider_override_default_v1
 WHERE (provider_override_default_v1.file_id IN ( SELECT max(provider_override_default_v1.file_id) AS max
 FROM sandbox.provider_override_default_v1));

CREATE  VIEW sandbox.vw_curr_calculated_pbm_config_v1 AS
 SELECT btrim(calculated_pbm_config_v1.ftf_formulary_management_pbm_regex) AS ftf_formulary_management_pbm_regex,
        btrim(calculated_pbm_config_v1.ftf_formulary_influencer_pbm_regex) AS ftf_formulary_influencer_pbm_regex,
        btrim(calculated_pbm_config_v1.ftf_claims_processing_pbm_regex) AS ftf_claims_processing_pbm_regex,
        btrim(calculated_pbm_config_v1.calculated_pbm_column) AS calculated_pbm_column,
        calculated_pbm_config_v1.file_id,
        calculated_pbm_config_v1.record_id
 FROM sandbox.calculated_pbm_config_v1
 WHERE (calculated_pbm_config_v1.file_id IN ( SELECT max(calculated_pbm_config_v1.file_id) AS max
 FROM sandbox.calculated_pbm_config_v1));

CREATE  VIEW sandbox.vw_curr_has_pa_mapping_v1 AS
 SELECT has_pa_mapping_v1.has_pa,
        btrim(has_pa_mapping_v1.pa_regex) AS pa_regex,
        btrim(has_pa_mapping_v1.notes) AS notes,
        has_pa_mapping_v1.file_id,
        has_pa_mapping_v1.record_id
 FROM sandbox.has_pa_mapping_v1
 WHERE (has_pa_mapping_v1.file_id IN ( SELECT max(has_pa_mapping_v1.file_id) AS max
 FROM sandbox.has_pa_mapping_v1));

CREATE  VIEW sandbox.vw_curr_has_st_mapping_v1 AS
 SELECT has_st_mapping_v1.has_st,
        btrim(has_st_mapping_v1.st_regex) AS st_regex,
        btrim(has_st_mapping_v1.notes) AS notes,
        has_st_mapping_v1.file_id,
        has_st_mapping_v1.record_id
 FROM sandbox.has_st_mapping_v1
 WHERE (has_st_mapping_v1.file_id IN ( SELECT max(has_st_mapping_v1.file_id) AS max
 FROM sandbox.has_st_mapping_v1));

CREATE  VIEW sandbox.vw_curr_calc_pbm_key_pbm_mapping_v1 AS
 SELECT btrim(calc_pbm_key_pbm_mapping_v1.calculated_pbm) AS calculated_pbm_value,
        btrim(calc_pbm_key_pbm_mapping_v1.key_pbm) AS key_pbm,
        btrim(calc_pbm_key_pbm_mapping_v1.added_by) AS added_by,
        calc_pbm_key_pbm_mapping_v1.file_id,
        calc_pbm_key_pbm_mapping_v1.record_id
 FROM sandbox.calc_pbm_key_pbm_mapping_v1
 WHERE (calc_pbm_key_pbm_mapping_v1.file_id IN ( SELECT max(calc_pbm_key_pbm_mapping_v1.file_id) AS max
 FROM sandbox.calc_pbm_key_pbm_mapping_v1));

CREATE  VIEW sandbox.vw_curr_copay_tier_derivation_config AS
 SELECT btrim(copay_tier_derivation_config_v1.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(copay_tier_derivation_config_v1.tier_cat) AS tier_cat,
        btrim(copay_tier_derivation_config_v1.tier_regex) AS tier_regex,
        btrim(copay_tier_derivation_config_v1.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(copay_tier_derivation_config_v1.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        btrim(copay_tier_derivation_config_v1.copay_tier) AS copay_tier,
        copay_tier_derivation_config_v1.file_id,
        copay_tier_derivation_config_v1.record_id
 FROM sandbox.copay_tier_derivation_config_v1
 WHERE (copay_tier_derivation_config_v1.file_id IN ( SELECT max(copay_tier_derivation_config_v1.file_id) AS max
 FROM sandbox.copay_tier_derivation_config_v1));

CREATE  VIEW sandbox.vw_curr_restriction_category_derivation_config AS
 SELECT btrim(restriction_category_derivation_config_v1.tier_regex) AS tier_regex,
        btrim(restriction_category_derivation_config_v1.has_pa_has_st_regex) AS has_pa_has_st_regex,
        btrim(restriction_category_derivation_config_v1.unspec_regex) AS unspec_regex,
        btrim(restriction_category_derivation_config_v1.step_regex) AS step_regex,
        btrim(restriction_category_derivation_config_v1.botox_regex) AS botox_regex,
        btrim(restriction_category_derivation_config_v1.prespa_regex) AS prespa_regex,
        btrim(restriction_category_derivation_config_v1.tier_cat_regex) AS tier_cat_regex,
        btrim(restriction_category_derivation_config_v1.medrecs_regex) AS medrecs_regex,
        restriction_category_derivation_config_v1.restcat,
        btrim(restriction_category_derivation_config_v1.restriction_category) AS restriction_category,
        btrim(restriction_category_derivation_config_v1.meaning) AS meaning,
        restriction_category_derivation_config_v1.file_id,
        restriction_category_derivation_config_v1.record_id
 FROM sandbox.restriction_category_derivation_config_v1
 WHERE (restriction_category_derivation_config_v1.file_id IN ( SELECT max(restriction_category_derivation_config_v1.file_id) AS max
 FROM sandbox.restriction_category_derivation_config_v1));

CREATE  VIEW sandbox.vw_curr_formulary_derivation_config AS
 SELECT btrim(formulary_derivation_config_v1.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(formulary_derivation_config_v1.has_pa_regex) AS has_pa_regex,
        btrim(formulary_derivation_config_v1.has_st_regex) AS has_st_regex,
        btrim(formulary_derivation_config_v1.formulary) AS formulary,
        btrim(formulary_derivation_config_v1.tier_regex) AS tier_regex,
        btrim(formulary_derivation_config_v1.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(formulary_derivation_config_v1.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        formulary_derivation_config_v1.file_id,
        formulary_derivation_config_v1.record_id
 FROM sandbox.formulary_derivation_config_v1
 WHERE (formulary_derivation_config_v1.file_id IN ( SELECT max(formulary_derivation_config_v1.file_id) AS max
 FROM sandbox.formulary_derivation_config_v1));

CREATE  VIEW sandbox.vw_curr_key_controller_list_v1 AS
 SELECT key_controller_list_v1.ftf_health_plan_fid,
        btrim(key_controller_list_v1.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(key_controller_list_v1.key_controlling_account) AS key_controlling_account,
        btrim(key_controller_list_v1.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(key_controller_list_v1.key_controlling_parent) AS key_controlling_parent,
        btrim(key_controller_list_v1.payer_pbm) AS payer_pbm,
        key_controller_list_v1.file_id,
        key_controller_list_v1.record_id
 FROM sandbox.key_controller_list_v1
 WHERE (key_controller_list_v1.file_id IN ( SELECT max(key_controller_list_v1.file_id) AS max
 FROM sandbox.key_controller_list_v1));

CREATE  VIEW sandbox.vw_curr_botox_step_restriction_v1 AS
 SELECT botox_step_restriction_v1.code,
        btrim(botox_step_restriction_v1.botox_step_flag) AS botox_step_flag,
        btrim(botox_step_restriction_v1.restriction_group) AS restriction_group,
        btrim(botox_step_restriction_v1.notes) AS notes,
        botox_step_restriction_v1.file_id,
        botox_step_restriction_v1.record_id
 FROM sandbox.botox_step_restriction_v1
 WHERE (botox_step_restriction_v1.file_id IN ( SELECT max(botox_step_restriction_v1.file_id) AS max
 FROM sandbox.botox_step_restriction_v1));

CREATE  VIEW sandbox.vw_curr_step_restriction_v1 AS
 SELECT step_restriction_v1.code,
        btrim(step_restriction_v1.step_category) AS step_category,
        btrim(step_restriction_v1.restriction_group) AS restriction_group,
        btrim(step_restriction_v1.notes) AS notes,
        step_restriction_v1.file_id,
        step_restriction_v1.record_id
 FROM sandbox.step_restriction_v1
 WHERE (step_restriction_v1.file_id IN ( SELECT max(step_restriction_v1.file_id) AS max
 FROM sandbox.step_restriction_v1));

CREATE  VIEW sandbox.vw_curr_pa_restriction_v1 AS
 SELECT pa_restriction_v1.code,
        btrim(pa_restriction_v1.prescriber_prior_authorization_category) AS prescriber_prior_authorization_category,
        btrim(pa_restriction_v1.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction_v1.notes) AS notes,
        pa_restriction_v1.file_id,
        pa_restriction_v1.record_id
 FROM sandbox.pa_restriction_v1
 WHERE (pa_restriction_v1.file_id IN ( SELECT max(pa_restriction_v1.file_id) AS max
 FROM sandbox.pa_restriction_v1));

CREATE  VIEW sandbox.vw_curr_patient_pa_restriction_v1 AS
 SELECT patient_pa_restriction_v1.code,
        btrim(patient_pa_restriction_v1.patient_prior_authorization_category) AS patient_prior_authorization_category,
        btrim(patient_pa_restriction_v1.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction_v1.notes) AS notes,
        patient_pa_restriction_v1.file_id,
        patient_pa_restriction_v1.record_id
 FROM sandbox.patient_pa_restriction_v1
 WHERE (patient_pa_restriction_v1.file_id IN ( SELECT max(patient_pa_restriction_v1.file_id) AS max
 FROM sandbox.patient_pa_restriction_v1));

CREATE  VIEW sandbox.vw_curr_medical_rec_restriction_v1 AS
 SELECT medical_rec_restriction_v1.code,
        btrim(medical_rec_restriction_v1.medical_records_submission_required_flag) AS medical_records_submission_required_flag,
        btrim(medical_rec_restriction_v1.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction_v1.notes) AS notes,
        medical_rec_restriction_v1.file_id,
        medical_rec_restriction_v1.record_id
 FROM sandbox.medical_rec_restriction_v1
 WHERE (medical_rec_restriction_v1.file_id IN ( SELECT max(medical_rec_restriction_v1.file_id) AS max
 FROM sandbox.medical_rec_restriction_v1));

CREATE  VIEW sandbox.vw_curr_unspecified_rec_restriction_v1 AS
 SELECT unspecified_rec_restriction_v1.code,
        btrim(unspecified_rec_restriction_v1.unspecified_restriction_flag) AS unspecified_restriction_flag,
        btrim(unspecified_rec_restriction_v1.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction_v1.notes) AS notes,
        unspecified_rec_restriction_v1.file_id,
        unspecified_rec_restriction_v1.record_id
 FROM sandbox.unspecified_rec_restriction_v1
 WHERE (unspecified_rec_restriction_v1.file_id IN ( SELECT max(unspecified_rec_restriction_v1.file_id) AS max
 FROM sandbox.unspecified_rec_restriction_v1));

CREATE  VIEW sandbox.vw_curr_step_restriction_description_v1 AS
 SELECT step_restriction_description_v1.step,
        btrim(step_restriction_description_v1.description) AS description,
        step_restriction_description_v1.file_id,
        step_restriction_description_v1.record_id
 FROM sandbox.step_restriction_description_v1
 WHERE (step_restriction_description_v1.file_id IN ( SELECT max(step_restriction_description_v1.file_id) AS max
 FROM sandbox.step_restriction_description_v1));

CREATE  VIEW sandbox.vw_curr_pres_pa_restriction_description_v1 AS
 SELECT pres_pa_restriction_description_v1.prespa,
        btrim(pres_pa_restriction_description_v1.description) AS description,
        pres_pa_restriction_description_v1.file_id,
        pres_pa_restriction_description_v1.record_id
 FROM sandbox.pres_pa_restriction_description_v1
 WHERE (pres_pa_restriction_description_v1.file_id IN ( SELECT max(pres_pa_restriction_description_v1.file_id) AS max
 FROM sandbox.pres_pa_restriction_description_v1));

CREATE  VIEW sandbox.vw_curr_pat_pa_restriction_description_v1 AS
 SELECT pat_pa_restriction_description_v1.patpa,
        btrim(pat_pa_restriction_description_v1.description) AS description,
        pat_pa_restriction_description_v1.file_id,
        pat_pa_restriction_description_v1.record_id
 FROM sandbox.pat_pa_restriction_description_v1
 WHERE (pat_pa_restriction_description_v1.file_id IN ( SELECT max(pat_pa_restriction_description_v1.file_id) AS max
 FROM sandbox.pat_pa_restriction_description_v1));

CREATE  VIEW sandbox.vw_curr_ftf_paytype_paytypeindex_v1 AS
 SELECT ftf_paytype_paytypeindex_v1.paytype_index,
        btrim(ftf_paytype_paytypeindex_v1.paytype) AS paytype,
        ftf_paytype_paytypeindex_v1.file_id,
        ftf_paytype_paytypeindex_v1.record_id
 FROM sandbox.ftf_paytype_paytypeindex_v1
 WHERE (ftf_paytype_paytypeindex_v1.file_id IN ( SELECT max(ftf_paytype_paytypeindex_v1.file_id) AS max
 FROM sandbox.ftf_paytype_paytypeindex_v1));

CREATE  VIEW sandbox.vw_curr_ftf_override_provider_v1 AS
 SELECT ftf_override_provider_v1.paytype_index,
        ftf_override_provider_v1.ftf_provider_fid,
        ftf_override_provider_v1.file_id,
        ftf_override_provider_v1.record_id
 FROM sandbox.ftf_override_provider_v1
 WHERE (ftf_override_provider_v1.file_id IN ( SELECT max(ftf_override_provider_v1.file_id) AS max
 FROM sandbox.ftf_override_provider_v1));

CREATE  VIEW sandbox.vw_curr_ftf_override_plan_v1 AS
 SELECT ftf_override_plan_v1.paytype_index,
        ftf_override_plan_v1.ftf_health_plan_fid,
        ftf_override_plan_v1.file_id,
        ftf_override_plan_v1.record_id
 FROM sandbox.ftf_override_plan_v1
 WHERE (ftf_override_plan_v1.file_id IN ( SELECT max(ftf_override_plan_v1.file_id) AS max
 FROM sandbox.ftf_override_plan_v1));

CREATE  VIEW sandbox.vw_curr_coverage_category_derivation_config AS
 SELECT btrim(coverage_category_derivation_config_v1.paytype_regex) AS paytype_regex,
        btrim(coverage_category_derivation_config_v1.pharmacy_status_regex) AS pharmacy_status_regex,
        coverage_category_derivation_config_v1.coverage_cat_code,
        btrim(coverage_category_derivation_config_v1.coverage_category) AS coverage_category,
        btrim(coverage_category_derivation_config_v1.restriction_cat_code_regex) AS restriction_cat_code_regex,
        btrim(coverage_category_derivation_config_v1.meaning) AS meaning,
        coverage_category_derivation_config_v1.file_id,
        coverage_category_derivation_config_v1.record_id
 FROM sandbox.coverage_category_derivation_config_v1
 WHERE (coverage_category_derivation_config_v1.file_id IN ( SELECT max(coverage_category_derivation_config_v1.file_id) AS max
 FROM sandbox.coverage_category_derivation_config_v1));

CREATE  VIEW sandbox.vw_key_controlling_plan_formulary_coverage_categories AS
 SELECT pivot_plan_prod_master_v1.key_controlling_plan_formulary,
        pivot_plan_prod_master_v1.paytype,
        pivot_plan_prod_master_v1.ftf_health_plan_type,
        pivot_plan_prod_master_v1.Coverage_Category_Ajovy,
        pivot_plan_prod_master_v1.Coverage_Category_Aimovig,
        pivot_plan_prod_master_v1.Coverage_Category_Emgality,
        count(DISTINCT pivot_plan_prod_master_v1.ftf_health_plan_fid) AS count_ftf_health_plan_fid,
        sum(pivot_plan_prod_master_v1.lives_mn) AS sum_lives,
        dense_rank() OVER (PARTITION BY pivot_plan_prod_master_v1.key_controlling_plan_formulary ORDER BY pivot_plan_prod_master_v1.key_controlling_plan_formulary) AS sequence
 FROM sandbox.pivot_plan_prod_master_v1 pivot_plan_prod_master_v1
 GROUP BY pivot_plan_prod_master_v1.key_controlling_plan_formulary,
          pivot_plan_prod_master_v1.paytype,
          pivot_plan_prod_master_v1.ftf_health_plan_type,
          pivot_plan_prod_master_v1.Coverage_Category_Ajovy,
          pivot_plan_prod_master_v1.Coverage_Category_Aimovig,
          pivot_plan_prod_master_v1.Coverage_Category_Emgality
 ORDER BY pivot_plan_prod_master_v1.key_controlling_plan_formulary,
          pivot_plan_prod_master_v1.paytype,
          pivot_plan_prod_master_v1.ftf_health_plan_type;

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_formularies_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_formularies_cdw.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(raw_ftf_formularies_cdw.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(raw_ftf_formularies_cdw.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(raw_ftf_formularies_cdw.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(raw_ftf_formularies_cdw.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(raw_ftf_formularies_cdw.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status
 FROM sandbox.raw_ftf_formularies_cdw
 WHERE (raw_ftf_formularies_cdw.file_id IN ( SELECT max(raw_ftf_formularies_cdw.file_id) AS max
 FROM sandbox.raw_ftf_formularies_cdw));

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plan_geography_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_health_plan_geography_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plan_geography_cdw.state_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_ftf_health_plan_geography_cdw.county_lives AS lives_coverage
 FROM sandbox.raw_ftf_health_plan_geography_cdw
 WHERE (raw_ftf_health_plan_geography_cdw.file_id IN ( SELECT max(raw_ftf_health_plan_geography_cdw.file_id) AS max
 FROM sandbox.raw_ftf_health_plan_geography_cdw));

CREATE  VIEW sandbox.vw_curr_month_ftf_pbms_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_pbms_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_pbms_cdw.pbm_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_id,
        replace(replace(btrim(raw_ftf_pbms_cdw.pbm), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm,
        (replace(replace(btrim(raw_ftf_pbms_cdw.pbm_function_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_function_id,
        replace(replace(btrim(raw_ftf_pbms_cdw.pbm_function), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function
 FROM sandbox.raw_ftf_pbms_cdw
 WHERE (raw_ftf_pbms_cdw.file_id IN ( SELECT max(raw_ftf_pbms_cdw.file_id) AS max
 FROM sandbox.raw_ftf_pbms_cdw));

CREATE  VIEW sandbox.vw_curr_month_ftf_restrictions_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_restrictions_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_restrictions_cdw.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_code,
        raw_ftf_restrictions_cdw.restriction_detail_id,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_detail_text), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_detail_text,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_addtnl_information_1), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_1,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_addtnl_information_2), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_2,
        replace(replace(btrim(raw_ftf_restrictions_cdw.step_count), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS step_count,
        replace(replace(btrim(raw_ftf_restrictions_cdw.pa_form), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pa_form,
        replace(replace(btrim(raw_ftf_restrictions_cdw.indication), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS indication,
        replace(replace(btrim(raw_ftf_restrictions_cdw.grouped_restriction_level), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS grouped_restriction_level
 FROM sandbox.raw_ftf_restrictions_cdw
 WHERE (raw_ftf_restrictions_cdw.file_id IN ( SELECT max(raw_ftf_restrictions_cdw.file_id) AS max
 FROM sandbox.raw_ftf_restrictions_cdw));

CREATE  VIEW sandbox.vw_curr_month_ims_plan_xref_cdw AS
 SELECT (replace(replace(btrim(raw_iqvia_plan_cdw.payer_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_num,
        replace(replace(btrim(raw_iqvia_plan_cdw.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(raw_iqvia_plan_cdw.plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_num,
        (replace(replace(btrim(raw_iqvia_plan_cdw.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_plan_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_iqvia_plan_cdw.model), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS model,
        replace(replace(btrim(raw_iqvia_plan_cdw.city), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS city,
        replace(replace(btrim(raw_iqvia_plan_cdw.hq_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS hq_state,
        replace(replace(btrim(raw_iqvia_plan_cdw.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_iqvia_plan_cdw.months_with_data
 FROM sandbox.raw_iqvia_plan_cdw
 WHERE (raw_iqvia_plan_cdw.file_id IN ( SELECT max(raw_iqvia_plan_cdw.file_id) AS max
 FROM sandbox.raw_iqvia_plan_cdw));

CREATE  VIEW sandbox.vw_curr_month_ims_pbm_xref_cdw AS
 SELECT replace(replace(btrim(raw_iqvia_pbm_cdw.pbm_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_name,
        (replace(replace(btrim(raw_iqvia_pbm_cdw.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm_cdw.xref_to_payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS xref_to_payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm_cdw.ipd_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_id,
        replace(replace(btrim(raw_iqvia_pbm_cdw.ipd_type), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_type,
        replace(replace(btrim(raw_iqvia_pbm_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        raw_iqvia_pbm_cdw.pbm_num,
        raw_iqvia_pbm_cdw.ims_processor_num
 FROM sandbox.raw_iqvia_pbm_cdw
 WHERE (raw_iqvia_pbm_cdw.file_id IN ( SELECT max(raw_iqvia_pbm_cdw.file_id) AS max
 FROM sandbox.raw_iqvia_pbm_cdw));

CREATE  VIEW sandbox.vw_prev_month_ftf_formularies_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_formularies_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_formularies_cdw.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(raw_ftf_formularies_cdw.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(raw_ftf_formularies_cdw.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(raw_ftf_formularies_cdw.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(raw_ftf_formularies_cdw.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(raw_ftf_formularies_cdw.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status
 FROM sandbox.raw_ftf_formularies_cdw
 WHERE (raw_ftf_formularies_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_ftf_formularies_cdw.file_id
 FROM sandbox.raw_ftf_formularies_cdw
 GROUP BY raw_ftf_formularies_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plans_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_health_plans_cdw.formularyf_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS formularyf_id,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.provider_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS provider_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.provider), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.health_plan), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.parent_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS parent_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.parent), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent,
        raw_ftf_health_plans_cdw.national_lives_count,
        replace(replace(btrim(raw_ftf_health_plans_cdw.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name,
        raw_ftf_health_plans_cdw.preferred_brand_tier
 FROM sandbox.raw_ftf_health_plans_cdw
 WHERE (raw_ftf_health_plans_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_ftf_health_plans_cdw.file_id
 FROM sandbox.raw_ftf_health_plans_cdw
 GROUP BY raw_ftf_health_plans_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plan_geography_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_health_plan_geography_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plan_geography_cdw.state_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_ftf_health_plan_geography_cdw.county_lives AS lives_coverage
 FROM sandbox.raw_ftf_health_plan_geography_cdw
 WHERE (raw_ftf_health_plan_geography_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_ftf_health_plan_geography_cdw.file_id
 FROM sandbox.raw_ftf_health_plan_geography_cdw
 GROUP BY raw_ftf_health_plan_geography_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_pbms_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_pbms_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_pbms_cdw.pbm_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_id,
        replace(replace(btrim(raw_ftf_pbms_cdw.pbm), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm,
        (replace(replace(btrim(raw_ftf_pbms_cdw.pbm_function_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS pbm_function_id,
        replace(replace(btrim(raw_ftf_pbms_cdw.pbm_function), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function
 FROM sandbox.raw_ftf_pbms_cdw
 WHERE (raw_ftf_pbms_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_ftf_pbms_cdw.file_id
 FROM sandbox.raw_ftf_pbms_cdw
 GROUP BY raw_ftf_pbms_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_restrictions_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_restrictions_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(raw_ftf_restrictions_cdw.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_code,
        raw_ftf_restrictions_cdw.restriction_detail_id,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_detail_text), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_detail_text,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_addtnl_information_1), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_1,
        replace(replace(btrim(raw_ftf_restrictions_cdw.restriction_addtnl_information_2), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_2,
        replace(replace(btrim(raw_ftf_restrictions_cdw.step_count), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS step_count,
        replace(replace(btrim(raw_ftf_restrictions_cdw.pa_form), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pa_form,
        replace(replace(btrim(raw_ftf_restrictions_cdw.indication), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS indication,
        replace(replace(btrim(raw_ftf_restrictions_cdw.grouped_restriction_level), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS grouped_restriction_level
 FROM sandbox.raw_ftf_restrictions_cdw
 WHERE (raw_ftf_restrictions_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_ftf_restrictions_cdw.file_id
 FROM sandbox.raw_ftf_restrictions_cdw
 GROUP BY raw_ftf_restrictions_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_plan_xref_cdw AS
 SELECT (replace(replace(btrim(raw_iqvia_plan_cdw.payer_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_num,
        replace(replace(btrim(raw_iqvia_plan_cdw.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(raw_iqvia_plan_cdw.plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_num,
        (replace(replace(btrim(raw_iqvia_plan_cdw.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_plan_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_iqvia_plan_cdw.model), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS model,
        replace(replace(btrim(raw_iqvia_plan_cdw.city), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS city,
        replace(replace(btrim(raw_iqvia_plan_cdw.hq_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS hq_state,
        replace(replace(btrim(raw_iqvia_plan_cdw.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_iqvia_plan_cdw.months_with_data
 FROM sandbox.raw_iqvia_plan_cdw
 WHERE (raw_iqvia_plan_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_iqvia_plan_cdw.file_id
 FROM sandbox.raw_iqvia_plan_cdw
 GROUP BY raw_iqvia_plan_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_pbm_xref_cdw AS
 SELECT replace(replace(btrim(raw_iqvia_pbm_cdw.pbm_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_name,
        (replace(replace(btrim(raw_iqvia_pbm_cdw.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm_cdw.xref_to_payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS xref_to_payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm_cdw.ipd_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_id,
        replace(replace(btrim(raw_iqvia_pbm_cdw.ipd_type), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_type,
        replace(replace(btrim(raw_iqvia_pbm_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        raw_iqvia_pbm_cdw.pbm_num,
        raw_iqvia_pbm_cdw.ims_processor_num
 FROM sandbox.raw_iqvia_pbm_cdw
 WHERE (raw_iqvia_pbm_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_iqvia_pbm_cdw.file_id
 FROM sandbox.raw_iqvia_pbm_cdw
 GROUP BY raw_iqvia_pbm_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_curr_iqvia_plans_discard_cdw AS
 SELECT iqvia_plans_discard_v01.payer_id,
        btrim(iqvia_plans_discard_v01.notes) AS notes,
        iqvia_plans_discard_v01.file_id,
        iqvia_plans_discard_v01.record_id
 FROM sandbox.iqvia_plans_discard_v01
 WHERE (iqvia_plans_discard_v01.file_id IN ( SELECT max(iqvia_plans_discard_v01.file_id) AS max
 FROM sandbox.iqvia_plans_discard_v01));

CREATE  VIEW sandbox.vw_curr_model_paytype_map_cdw AS
 SELECT btrim(model_paytype_map_v01.model) AS model,
        btrim(model_paytype_map_v01.paytype) AS paytype,
        btrim(model_paytype_map_v01.notes) AS notes,
        model_paytype_map_v01.file_id,
        model_paytype_map_v01.record_id
 FROM sandbox.model_paytype_map_v01
 WHERE (model_paytype_map_v01.file_id IN ( SELECT max(model_paytype_map_v01.file_id) AS max
 FROM sandbox.model_paytype_map_v01));

CREATE  VIEW sandbox.vw_curr_iqvia_paytypeindex_cdw AS
 SELECT iqvia_paytypeindex_v01.paytype_index,
        btrim(iqvia_paytypeindex_v01.paytype) AS paytype,
        iqvia_paytypeindex_v01.file_id,
        iqvia_paytypeindex_v01.record_id
 FROM sandbox.iqvia_paytypeindex_v01
 WHERE (iqvia_paytypeindex_v01.file_id IN ( SELECT max(iqvia_paytypeindex_v01.file_id) AS max
 FROM sandbox.iqvia_paytypeindex_v01));

CREATE  VIEW sandbox.vw_curr_iqvia_payer_paytype_override_cdw AS
 SELECT btrim(iqvia_payer_paytype_override_v01.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override_v01.paytype) AS paytype,
        iqvia_payer_paytype_override_v01.file_id,
        iqvia_payer_paytype_override_v01.record_id
 FROM sandbox.iqvia_payer_paytype_override_v01
 WHERE (iqvia_payer_paytype_override_v01.file_id IN ( SELECT max(iqvia_payer_paytype_override_v01.file_id) AS max
 FROM sandbox.iqvia_payer_paytype_override_v01));

CREATE  VIEW sandbox.vw_curr_ftf_plans_paytypeindex_cdw AS
 SELECT btrim(ftf_plans_paytypeindex_v01.ftf_health_plan_type) AS ftf_health_plan_type,
        ftf_plans_paytypeindex_v01.paytype_index,
        ftf_plans_paytypeindex_v01.file_id,
        ftf_plans_paytypeindex_v01.record_id
 FROM sandbox.ftf_plans_paytypeindex_v01
 WHERE (ftf_plans_paytypeindex_v01.file_id IN ( SELECT max(ftf_plans_paytypeindex_v01.file_id) AS max
 FROM sandbox.ftf_plans_paytypeindex_v01));

CREATE  VIEW sandbox.vw_curr_ftf_paytype_paytypeindex_cdw AS
 SELECT ftf_paytype_paytypeindex_v01.paytype_index,
        btrim(ftf_paytype_paytypeindex_v01.paytype) AS paytype,
        ftf_paytype_paytypeindex_v01.file_id,
        ftf_paytype_paytypeindex_v01.record_id
 FROM sandbox.ftf_paytype_paytypeindex_v01
 WHERE (ftf_paytype_paytypeindex_v01.file_id IN ( SELECT max(ftf_paytype_paytypeindex_v01.file_id) AS max
 FROM sandbox.ftf_paytype_paytypeindex_v01));

CREATE  VIEW sandbox.vw_curr_ftf_override_provider_cdw AS
 SELECT ftf_override_provider_v01.provider_fid,
        ftf_override_provider_v01.paytype_index,
        btrim(ftf_override_provider_v01.notes) AS notes,
        ftf_override_provider_v01.file_id,
        ftf_override_provider_v01.record_id
 FROM sandbox.ftf_override_provider_v01
 WHERE (ftf_override_provider_v01.file_id IN ( SELECT max(ftf_override_provider_v01.file_id) AS max
 FROM sandbox.ftf_override_provider_v01));

CREATE  VIEW sandbox.vw_curr_ftf_override_plan_cdw AS
 SELECT ftf_override_plan_v01.ftf_health_plan_fid,
        ftf_override_plan_v01.paytype_index,
        btrim(ftf_override_plan_v01.notes) AS notes,
        ftf_override_plan_v01.file_id,
        ftf_override_plan_v01.record_id
 FROM sandbox.ftf_override_plan_v01
 WHERE (ftf_override_plan_v01.file_id IN ( SELECT max(ftf_override_plan_v01.file_id) AS max
 FROM sandbox.ftf_override_plan_v01));

CREATE  VIEW sandbox.vw_curr_drug_assignments_cdw AS
 SELECT drug_assignments_v01.drug_id,
        drug_assignments_v01.drug_seq,
        btrim(drug_assignments_v01.product) AS product,
        drug_assignments_v01.file_id,
        drug_assignments_v01.record_id
 FROM sandbox.drug_assignments_v01
 WHERE (drug_assignments_v01.file_id IN ( SELECT max(drug_assignments_v01.file_id) AS max
 FROM sandbox.drug_assignments_v01));

CREATE  VIEW sandbox.vw_curr_ftf_pbm_functions_cdw AS
 SELECT ftf_pbm_functions_v01.pbm_function_id,
        btrim(ftf_pbm_functions_v01.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions_v01.notes) AS notes,
        ftf_pbm_functions_v01.used,
        ftf_pbm_functions_v01.file_id,
        ftf_pbm_functions_v01.record_id
 FROM sandbox.ftf_pbm_functions_v01
 WHERE (ftf_pbm_functions_v01.file_id IN ( SELECT max(ftf_pbm_functions_v01.file_id) AS max
 FROM sandbox.ftf_pbm_functions_v01));

CREATE  VIEW sandbox.vw_curr_botox_step_restriction_cdw AS
 SELECT botox_step_restriction_v01.code,
        btrim(botox_step_restriction_v01.botox_step_flag) AS botox_step_flag,
        btrim(botox_step_restriction_v01.restriction_group) AS restriction_group,
        btrim(botox_step_restriction_v01.notes) AS notes,
        botox_step_restriction_v01.file_id,
        botox_step_restriction_v01.record_id
 FROM sandbox.botox_step_restriction_v01
 WHERE (botox_step_restriction_v01.file_id IN ( SELECT max(botox_step_restriction_v01.file_id) AS max
 FROM sandbox.botox_step_restriction_v01));

CREATE  VIEW sandbox.vw_curr_step_restriction_cdw AS
 SELECT step_restriction_v01.code,
        btrim(step_restriction_v01.step_category) AS step_category,
        btrim(step_restriction_v01.restriction_group) AS restriction_group,
        btrim(step_restriction_v01.notes) AS notes,
        step_restriction_v01.file_id,
        step_restriction_v01.record_id
 FROM sandbox.step_restriction_v01
 WHERE (step_restriction_v01.file_id IN ( SELECT max(step_restriction_v01.file_id) AS max
 FROM sandbox.step_restriction_v01));

CREATE  VIEW sandbox.vw_curr_pa_restriction_cdw AS
 SELECT pa_restriction_v01.code,
        btrim(pa_restriction_v01.prescriber_prior_authorization_category) AS prescriber_prior_authorization_category,
        btrim(pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction_v01.notes) AS notes,
        pa_restriction_v01.file_id,
        pa_restriction_v01.record_id
 FROM sandbox.pa_restriction_v01
 WHERE (pa_restriction_v01.file_id IN ( SELECT max(pa_restriction_v01.file_id) AS max
 FROM sandbox.pa_restriction_v01));

CREATE  VIEW sandbox.vw_curr_patient_pa_restriction_cdw AS
 SELECT patient_pa_restriction_v01.code,
        btrim(patient_pa_restriction_v01.patient_prior_authorization_category) AS patient_prior_authorization_category,
        btrim(patient_pa_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction_v01.notes) AS notes,
        patient_pa_restriction_v01.file_id,
        patient_pa_restriction_v01.record_id
 FROM sandbox.patient_pa_restriction_v01
 WHERE (patient_pa_restriction_v01.file_id IN ( SELECT max(patient_pa_restriction_v01.file_id) AS max
 FROM sandbox.patient_pa_restriction_v01));

CREATE  VIEW sandbox.vw_curr_medical_rec_restriction_cdw AS
 SELECT medical_rec_restriction_v01.code,
        btrim(medical_rec_restriction_v01.medical_records_submission_required_flag) AS medical_records_submission_required_flag,
        btrim(medical_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction_v01.notes) AS notes,
        medical_rec_restriction_v01.file_id,
        medical_rec_restriction_v01.record_id
 FROM sandbox.medical_rec_restriction_v01
 WHERE (medical_rec_restriction_v01.file_id IN ( SELECT max(medical_rec_restriction_v01.file_id) AS max
 FROM sandbox.medical_rec_restriction_v01));

CREATE  VIEW sandbox.vw_curr_unspecified_rec_restriction_cdw AS
 SELECT unspecified_rec_restriction_v01.code,
        btrim(unspecified_rec_restriction_v01.unspecified_restriction_flag) AS unspecified_restriction_flag,
        btrim(unspecified_rec_restriction_v01.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction_v01.notes) AS notes,
        unspecified_rec_restriction_v01.file_id,
        unspecified_rec_restriction_v01.record_id
 FROM sandbox.unspecified_rec_restriction_v01
 WHERE (unspecified_rec_restriction_v01.file_id IN ( SELECT max(unspecified_rec_restriction_v01.file_id) AS max
 FROM sandbox.unspecified_rec_restriction_v01));

CREATE  VIEW sandbox.vw_curr_override_bridge_ftf_plan_types_cdw AS
 SELECT btrim(override_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v01.override_ftf_health_plan_type) AS override_ftf_health_plan_type,
        override_bridge_ftf_plan_types_v01.override_precedence,
        override_bridge_ftf_plan_types_v01.file_id,
        override_bridge_ftf_plan_types_v01.record_id
 FROM sandbox.override_bridge_ftf_plan_types_v01
 WHERE (override_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(override_bridge_ftf_plan_types_v01.file_id) AS max
 FROM sandbox.override_bridge_ftf_plan_types_v01));

CREATE  VIEW sandbox.vw_curr_delete_bridge_ftf_plan_types_cdw AS
 SELECT btrim(delete_bridge_ftf_plan_types_v01.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v01.delete_flag) AS delete_flag,
        delete_bridge_ftf_plan_types_v01.file_id,
        delete_bridge_ftf_plan_types_v01.record_id
 FROM sandbox.delete_bridge_ftf_plan_types_v01
 WHERE (delete_bridge_ftf_plan_types_v01.file_id IN ( SELECT max(delete_bridge_ftf_plan_types_v01.file_id) AS max
 FROM sandbox.delete_bridge_ftf_plan_types_v01));

CREATE  VIEW sandbox.vw_curr_provider_override_default_cdw AS
 SELECT provider_override_default_v01.provider_id,
        btrim(provider_override_default_v01.paytype_regex) AS paytype_regex,
        btrim(provider_override_default_v01.provider_name) AS provider_name,
        btrim(provider_override_default_v01.fill_in_iqvia_payer_name_if_no_bridge) AS fill_in_iqvia_payer_name_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_payer) AS override_best_iqvia_payer,
        btrim(provider_override_default_v01.fill_in_iqvia_pbm_if_no_bridge) AS fill_in_iqvia_pbm_if_no_bridge,
        btrim(provider_override_default_v01.override_best_iqvia_pbm) AS override_best_iqvia_pbm,
        provider_override_default_v01.file_id,
        provider_override_default_v01.record_id
 FROM sandbox.provider_override_default_v01
 WHERE (provider_override_default_v01.file_id IN ( SELECT max(provider_override_default_v01.file_id) AS max
 FROM sandbox.provider_override_default_v01));

CREATE  VIEW sandbox.vw_curr_key_controller_list_cdw AS
 SELECT key_controller_list_v01.ftf_health_plan_fid,
        btrim(key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(key_controller_list_v01.payer_pbm) AS payer_pbm,
        key_controller_list_v01.file_id,
        key_controller_list_v01.record_id
 FROM sandbox.key_controller_list_v01
 WHERE (key_controller_list_v01.file_id IN ( SELECT max(key_controller_list_v01.file_id) AS max
 FROM sandbox.key_controller_list_v01));

CREATE  VIEW sandbox.vw_curr_calculated_pbm_config_cdw AS
 SELECT btrim(calculated_pbm_config_v01.ftf_formulary_management_pbm_regex) AS ftf_formulary_management_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_formulary_influencer_pbm_regex) AS ftf_formulary_influencer_pbm_regex,
        btrim(calculated_pbm_config_v01.ftf_claims_processing_pbm_regex) AS ftf_claims_processing_pbm_regex,
        btrim(calculated_pbm_config_v01.calculated_pbm_column) AS calculated_pbm_column,
        calculated_pbm_config_v01.file_id,
        calculated_pbm_config_v01.record_id
 FROM sandbox.calculated_pbm_config_v01
 WHERE (calculated_pbm_config_v01.file_id IN ( SELECT max(calculated_pbm_config_v01.file_id) AS max
 FROM sandbox.calculated_pbm_config_v01));

CREATE  VIEW sandbox.vw_curr_calc_pbm_key_pbm_mapping_cdw AS
 SELECT btrim(calc_pbm_key_pbm_mapping_v01.calculated_pbm) AS calculated_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.key_pbm) AS key_pbm,
        btrim(calc_pbm_key_pbm_mapping_v01.added_by) AS added_by,
        calc_pbm_key_pbm_mapping_v01.file_id,
        calc_pbm_key_pbm_mapping_v01.record_id
 FROM sandbox.calc_pbm_key_pbm_mapping_v01
 WHERE (calc_pbm_key_pbm_mapping_v01.file_id IN ( SELECT max(calc_pbm_key_pbm_mapping_v01.file_id) AS max
 FROM sandbox.calc_pbm_key_pbm_mapping_v01));

CREATE  VIEW sandbox.vw_curr_has_pa_mapping_cdw AS
 SELECT has_pa_mapping_v01.has_pa,
        btrim(has_pa_mapping_v01.pa_regex) AS pa_regex,
        btrim(has_pa_mapping_v01.notes) AS notes,
        has_pa_mapping_v01.file_id,
        has_pa_mapping_v01.record_id
 FROM sandbox.has_pa_mapping_v01
 WHERE (has_pa_mapping_v01.file_id IN ( SELECT max(has_pa_mapping_v01.file_id) AS max
 FROM sandbox.has_pa_mapping_v01));

CREATE  VIEW sandbox.vw_curr_has_st_mapping_cdw AS
 SELECT has_st_mapping_v01.has_st,
        btrim(has_st_mapping_v01.st_regex) AS st_regex,
        btrim(has_st_mapping_v01.notes) AS notes,
        has_st_mapping_v01.file_id,
        has_st_mapping_v01.record_id
 FROM sandbox.has_st_mapping_v01
 WHERE (has_st_mapping_v01.file_id IN ( SELECT max(has_st_mapping_v01.file_id) AS max
 FROM sandbox.has_st_mapping_v01));

CREATE  VIEW sandbox.vw_curr_formulary_derivation_config_cdw AS
 SELECT btrim(formulary_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        btrim(formulary_derivation_config_v01.has_pa_regex) AS has_pa_regex,
        btrim(formulary_derivation_config_v01.has_st_regex) AS has_st_regex,
        btrim(formulary_derivation_config_v01.formulary) AS formulary,
        btrim(formulary_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(formulary_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(formulary_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        formulary_derivation_config_v01.file_id,
        formulary_derivation_config_v01.record_id
 FROM sandbox.formulary_derivation_config_v01
 WHERE (formulary_derivation_config_v01.file_id IN ( SELECT max(formulary_derivation_config_v01.file_id) AS max
 FROM sandbox.formulary_derivation_config_v01));

CREATE  VIEW sandbox.vw_curr_restriction_category_derivation_config_cdw AS
 SELECT btrim(restriction_category_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(restriction_category_derivation_config_v01.has_pa_has_st_regex) AS has_pa_has_st_regex,
        btrim(restriction_category_derivation_config_v01.unspec_regex) AS unspec_regex,
        btrim(restriction_category_derivation_config_v01.step_regex) AS step_regex,
        btrim(restriction_category_derivation_config_v01.botox_regex) AS botox_regex,
        btrim(restriction_category_derivation_config_v01.prespa_regex) AS prespa_regex,
        btrim(restriction_category_derivation_config_v01.tier_cat_regex) AS tier_cat_regex,
        btrim(restriction_category_derivation_config_v01.medrecs_regex) AS medrecs_regex,
        restriction_category_derivation_config_v01.restcat,
        btrim(restriction_category_derivation_config_v01.restriction_category) AS restriction_category,
        btrim(restriction_category_derivation_config_v01.meaning) AS meaning,
        restriction_category_derivation_config_v01.file_id,
        restriction_category_derivation_config_v01.record_id
 FROM sandbox.restriction_category_derivation_config_v01
 WHERE (restriction_category_derivation_config_v01.file_id IN ( SELECT max(restriction_category_derivation_config_v01.file_id) AS max
 FROM sandbox.restriction_category_derivation_config_v01));

CREATE  VIEW sandbox.vw_curr_restriction_cat_description_mapping_cdw AS
 SELECT btrim(restriction_cat_description_mapping_v01.rest_cat) AS rest_cat,
        btrim(restriction_cat_description_mapping_v01.description) AS description,
        btrim(restriction_cat_description_mapping_v01.notes) AS notes,
        restriction_cat_description_mapping_v01.file_id,
        restriction_cat_description_mapping_v01.record_id
 FROM sandbox.restriction_cat_description_mapping_v01
 WHERE (restriction_cat_description_mapping_v01.file_id IN ( SELECT max(restriction_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.restriction_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_curr_coverage_cat_description_mapping_cdw AS
 SELECT btrim(coverage_cat_description_mapping_v01.coverage_cat) AS coverage_cat,
        btrim(coverage_cat_description_mapping_v01.description) AS description,
        btrim(coverage_cat_description_mapping_v01.notes) AS notes,
        coverage_cat_description_mapping_v01.file_id,
        coverage_cat_description_mapping_v01.record_id
 FROM sandbox.coverage_cat_description_mapping_v01
 WHERE (coverage_cat_description_mapping_v01.file_id IN ( SELECT max(coverage_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.coverage_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_curr_step_restriction_description_cdw AS
 SELECT step_restriction_description_v01.step,
        btrim(step_restriction_description_v01.description) AS description,
        step_restriction_description_v01.file_id,
        step_restriction_description_v01.record_id
 FROM sandbox.step_restriction_description_v01
 WHERE (step_restriction_description_v01.file_id IN ( SELECT max(step_restriction_description_v01.file_id) AS max
 FROM sandbox.step_restriction_description_v01));

CREATE  VIEW sandbox.vw_curr_pres_pa_restriction_description_cdw AS
 SELECT pres_pa_restriction_description_v01.prespa,
        btrim(pres_pa_restriction_description_v01.description) AS description,
        pres_pa_restriction_description_v01.file_id,
        pres_pa_restriction_description_v01.record_id
 FROM sandbox.pres_pa_restriction_description_v01
 WHERE (pres_pa_restriction_description_v01.file_id IN ( SELECT max(pres_pa_restriction_description_v01.file_id) AS max
 FROM sandbox.pres_pa_restriction_description_v01));

CREATE  VIEW sandbox.vw_curr_pat_pa_restriction_description_cdw AS
 SELECT pat_pa_restriction_description_v01.patpa,
        btrim(pat_pa_restriction_description_v01.description) AS description,
        pat_pa_restriction_description_v01.file_id,
        pat_pa_restriction_description_v01.record_id
 FROM sandbox.pat_pa_restriction_description_v01
 WHERE (pat_pa_restriction_description_v01.file_id IN ( SELECT max(pat_pa_restriction_description_v01.file_id) AS max
 FROM sandbox.pat_pa_restriction_description_v01));

CREATE  VIEW sandbox.vw_curr_override_fid_iqvia_key_controller_list_cdw AS
 SELECT override_fid_iqvia_key_controller_list_v01.iqvia_plan_code,
        btrim(override_fid_iqvia_key_controller_list_v01.iqvia_plan_name) AS iqvia_plan_name,
        override_fid_iqvia_key_controller_list_v01.ftf_health_plan_fid,
        btrim(override_fid_iqvia_key_controller_list_v01.ftf_health_plan_name) AS ftf_health_plan_name,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_plan_formulary) AS key_controlling_plan_formulary,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_account) AS key_controlling_account,
        btrim(override_fid_iqvia_key_controller_list_v01.key_controlling_parent) AS key_controlling_parent,
        btrim(override_fid_iqvia_key_controller_list_v01.payer_pbm) AS payer_pbm,
        override_fid_iqvia_key_controller_list_v01.file_id,
        override_fid_iqvia_key_controller_list_v01.record_id
 FROM sandbox.override_fid_iqvia_key_controller_list_v01
 WHERE (override_fid_iqvia_key_controller_list_v01.file_id IN ( SELECT max(override_fid_iqvia_key_controller_list_v01.file_id) AS max
 FROM sandbox.override_fid_iqvia_key_controller_list_v01));

CREATE  VIEW sandbox.vw_curr_iqvia_plan_preprocessed_cdw_v1 AS
 SELECT iqvia_plan_preprocessed_cdw_v1.iqvia_payer_id,
        iqvia_plan_preprocessed_cdw_v1.iqvia_payer_name,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_id,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_code,
        iqvia_plan_preprocessed_cdw_v1.iqvia_plan_name,
        iqvia_plan_preprocessed_cdw_v1.model,
        iqvia_plan_preprocessed_cdw_v1.iqvia_pbm,
        iqvia_plan_preprocessed_cdw_v1.paytype,
        iqvia_plan_preprocessed_cdw_v1.paytype_index,
        iqvia_plan_preprocessed_cdw_v1.cycle_id,
        iqvia_plan_preprocessed_cdw_v1.modified_time,
        iqvia_plan_preprocessed_cdw_v1.modified_by
 FROM sandbox.iqvia_plan_preprocessed_cdw_v1
 WHERE (iqvia_plan_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plan_preprocessed_cdw_v1'::varchar(30)))))));

CREATE  VIEW sandbox.vw_curr_iqvia_pbm_preprocessed_cdw_v1 AS
 SELECT iqvia_pbm_preprocessed_cdw_v1.iqvia_plan_code,
        iqvia_pbm_preprocessed_cdw_v1.iqvia_pbm,
        iqvia_pbm_preprocessed_cdw_v1.xref_to,
        iqvia_pbm_preprocessed_cdw_v1.iqvia_plan_name,
        iqvia_pbm_preprocessed_cdw_v1.cycle_id,
        iqvia_pbm_preprocessed_cdw_v1.modified_time,
        iqvia_pbm_preprocessed_cdw_v1.modified_by
 FROM sandbox.iqvia_pbm_preprocessed_cdw_v1
 WHERE (iqvia_pbm_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_pbm_preprocessed_cdw_v1'::varchar(29)))))));

CREATE  VIEW sandbox.vw_curr_ftf_health_plans_preprocessed_cdw_v1 AS
 SELECT ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_name,
        ftf_health_plans_preprocessed_cdw_v1.ftf_provider_fid,
        ftf_health_plans_preprocessed_cdw_v1.ftf_provider_name,
        ftf_health_plans_preprocessed_cdw_v1.parent_id,
        ftf_health_plans_preprocessed_cdw_v1.ftf_parent_name,
        ftf_health_plans_preprocessed_cdw_v1.ftf_health_plan_type,
        ftf_health_plans_preprocessed_cdw_v1.pref_brand_tier,
        ftf_health_plans_preprocessed_cdw_v1.plan_lives,
        ftf_health_plans_preprocessed_cdw_v1.paytype,
        ftf_health_plans_preprocessed_cdw_v1.paytype_index,
        ftf_health_plans_preprocessed_cdw_v1.cycle_id,
        ftf_health_plans_preprocessed_cdw_v1.modified_time,
        ftf_health_plans_preprocessed_cdw_v1.modified_by
 FROM sandbox.ftf_health_plans_preprocessed_cdw_v1
 WHERE (ftf_health_plans_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_health_plans_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW sandbox.vw_curr_ftf_formularies_preprocessed_cdw_v1 AS
 SELECT ftf_formularies_preprocessed_cdw_v1.drug_seq,
        ftf_formularies_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_formularies_preprocessed_cdw_v1.drug_id,
        ftf_formularies_preprocessed_cdw_v1.tier_code,
        ftf_formularies_preprocessed_cdw_v1.restrictions,
        ftf_formularies_preprocessed_cdw_v1.reason_code,
        ftf_formularies_preprocessed_cdw_v1.reason_code_description,
        ftf_formularies_preprocessed_cdw_v1.pharmacy_status,
        ftf_formularies_preprocessed_cdw_v1.plan_lives,
        ftf_formularies_preprocessed_cdw_v1.check_blank_pharmstat,
        ftf_formularies_preprocessed_cdw_v1.cycle_id,
        ftf_formularies_preprocessed_cdw_v1.modified_time,
        ftf_formularies_preprocessed_cdw_v1.modified_by
 FROM sandbox.ftf_formularies_preprocessed_cdw_v1
 WHERE (ftf_formularies_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formularies_preprocessed_cdw_v1'::varchar(35)))))));

CREATE  VIEW sandbox.vw_curr_ftf_pbms_preprocessed_cdw_v1 AS
 SELECT ftf_pbms_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_pbms_preprocessed_cdw_v1.pbm_id,
        ftf_pbms_preprocessed_cdw_v1.pbm,
        ftf_pbms_preprocessed_cdw_v1.pbm_function_id,
        ftf_pbms_preprocessed_cdw_v1.pbm_function,
        ftf_pbms_preprocessed_cdw_v1.cycle_id,
        ftf_pbms_preprocessed_cdw_v1.modified_time,
        ftf_pbms_preprocessed_cdw_v1.modified_by
 FROM sandbox.ftf_pbms_preprocessed_cdw_v1
 WHERE (ftf_pbms_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_pbms_preprocessed_cdw_v1'::varchar(28)))))));

CREATE  VIEW sandbox.vw_curr_ftf_restrictions_preprocessed_cdw_v1 AS
 SELECT ftf_restrictions_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_restrictions_preprocessed_cdw_v1.drug_id,
        ftf_restrictions_preprocessed_cdw_v1.restriction_code,
        ftf_restrictions_preprocessed_cdw_v1.restriction_detail_id,
        ftf_restrictions_preprocessed_cdw_v1.restriction_detail_text,
        ftf_restrictions_preprocessed_cdw_v1.grouped_restriction_level,
        ftf_restrictions_preprocessed_cdw_v1.drug_seq,
        ftf_restrictions_preprocessed_cdw_v1.botox,
        ftf_restrictions_preprocessed_cdw_v1.step,
        ftf_restrictions_preprocessed_cdw_v1.pres_pa,
        ftf_restrictions_preprocessed_cdw_v1.pat_pa,
        ftf_restrictions_preprocessed_cdw_v1.med_rec,
        ftf_restrictions_preprocessed_cdw_v1.unspec,
        ftf_restrictions_preprocessed_cdw_v1.cycle_id,
        ftf_restrictions_preprocessed_cdw_v1.modified_time,
        ftf_restrictions_preprocessed_cdw_v1.modified_by
 FROM sandbox.ftf_restrictions_preprocessed_cdw_v1
 WHERE (ftf_restrictions_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_restrictions_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW sandbox.vw_curr_ftf_restrictions_preprocessed_cdw_v2 AS
 SELECT ftf_restrictions_preprocessed_cdw_v2.ftf_health_plan_fid,
        ftf_restrictions_preprocessed_cdw_v2.drug_id,
        ftf_restrictions_preprocessed_cdw_v2.drug_seq,
        ftf_restrictions_preprocessed_cdw_v2.restriction_detail_id,
        ftf_restrictions_preprocessed_cdw_v2.botox,
        ftf_restrictions_preprocessed_cdw_v2.step,
        ftf_restrictions_preprocessed_cdw_v2.pres_pa,
        ftf_restrictions_preprocessed_cdw_v2.pat_pa,
        ftf_restrictions_preprocessed_cdw_v2.med_rec,
        ftf_restrictions_preprocessed_cdw_v2.unspec,
        ftf_restrictions_preprocessed_cdw_v2.cycle_id,
        ftf_restrictions_preprocessed_cdw_v2.modified_time,
        ftf_restrictions_preprocessed_cdw_v2.modified_by
 FROM sandbox.ftf_restrictions_preprocessed_cdw_v2
 WHERE (ftf_restrictions_preprocessed_cdw_v2.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_restrictions_preprocessed_cdw_v2'::varchar(36)))))));

CREATE  VIEW sandbox.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 AS
 SELECT ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_payer_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_code,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.comments,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_fid,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_provider_name,
        ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.hp_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.overriden_ftf_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.model,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_pbm,
        ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_paytype,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_delete,
        ftf_iqvia_bridge_preprocessed_cdw_v1.paytype_index,
        ftf_iqvia_bridge_preprocessed_cdw_v1.paytype,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_pay_types,
        ftf_iqvia_bridge_preprocessed_cdw_v1.check_hp_types,
        ftf_iqvia_bridge_preprocessed_cdw_v1.old_ftf_health_plan_type,
        ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id,
        ftf_iqvia_bridge_preprocessed_cdw_v1.modified_time,
        ftf_iqvia_bridge_preprocessed_cdw_v1.modified_by
 FROM sandbox.ftf_iqvia_bridge_preprocessed_cdw_v1
 WHERE (ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_iqvia_bridge_preprocessed_cdw_v1'::varchar(36)))))));

CREATE  VIEW sandbox.vw_curr_month_ftf_ims_bridge_cdw AS
 SELECT replace(replace(btrim(raw_teva_ims_bridge_cdw.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(raw_teva_ims_bridge_cdw.code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS code,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS state,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.comments), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS comments,
        (replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_id,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.provider_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name
 FROM sandbox.raw_teva_ims_bridge_cdw
 WHERE (raw_teva_ims_bridge_cdw.file_id IN ( SELECT max(raw_teva_ims_bridge_cdw.file_id) AS max
 FROM sandbox.raw_teva_ims_bridge_cdw));

CREATE  VIEW sandbox.vw_prev_month_ftf_ims_bridge_cdw AS
 SELECT replace(replace(btrim(raw_teva_ims_bridge_cdw.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        (replace(replace(btrim(raw_teva_ims_bridge_cdw.code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS code,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS state,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.comments), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS comments,
        (replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS plan_id,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.provider_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_name,
        replace(replace(btrim(raw_teva_ims_bridge_cdw.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name
 FROM sandbox.raw_teva_ims_bridge_cdw
 WHERE (raw_teva_ims_bridge_cdw.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata_cdw.file_id,
        data_file_metadata_cdw.processed_date,
        rank() OVER (ORDER BY data_file_metadata_cdw.processed_date DESC) AS rn
 FROM sandbox.data_file_metadata_cdw
 WHERE ((data_file_metadata_cdw.file_id IN ( SELECT raw_teva_ims_bridge_cdw.file_id
 FROM sandbox.raw_teva_ims_bridge_cdw
 GROUP BY raw_teva_ims_bridge_cdw.file_id)) AND (data_file_metadata_cdw.processed_date < ( SELECT max(parent_process_execution.date_run) AS max
 FROM sandbox.parent_process_execution
 WHERE (parent_process_execution.parent_process_id = 1))))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.ftf_delta_report AS
 SELECT comparison_ftf_health_plan_fid.ftf_health_plan_fid AS "FTF Health Plan FID",
        comparison_ftf_health_plan_fid.ftf_health_plan_name AS "FTF Health Plan Name",
        comparison_ftf_health_plan_fid.ftf_provider_fid AS "FTF Provider FID",
        comparison_ftf_health_plan_fid.ftf_provider_name AS "FTF Provider Name",
        comparison_ftf_health_plan_fid.ftf_parent_name AS "FTF Parent Name",
        comparison_ftf_health_plan_fid.paytype AS "Pay Type",
        comparison_ftf_health_plan_fid.ftf_health_plan_type AS "FTF Health Plan Type",
        comparison_ftf_health_plan_fid.key_controlling_account AS "Key Controlling Account",
        comparison_ftf_health_plan_fid.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        comparison_ftf_health_plan_fid.key_controlling_parent AS "Key Controlling Parent",
        comparison_ftf_health_plan_fid.payer_pbm AS "Payer/PBM",
        comparison_ftf_health_plan_fid.key_pbm AS "Key PBM",
        comparison_ftf_health_plan_fid.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        comparison_ftf_health_plan_fid.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        comparison_ftf_health_plan_fid.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        comparison_ftf_health_plan_fid.lives_mn AS Lives,
        comparison_ftf_health_plan_fid.iqvia_payer_name AS "IQVIA Payer Name best matched to FTF Plan",
        comparison_ftf_health_plan_fid.iqvia_pbm AS "IQVIA PBM best matched to FTF Plan",
        comparison_ftf_health_plan_fid.Coverage_Category_Ajovy AS "Coverage Category for Ajovy",
        comparison_ftf_health_plan_fid.Coverage_Category_Aimovig AS "Coverage Category for Aimovig",
        comparison_ftf_health_plan_fid.Coverage_Category_Emgality AS "Coverage Category for Emgality",
        comparison_ftf_health_plan_fid.pref_brand_tier AS "Pref Brand Tier",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan FID Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Name Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_provider_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider FID Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_provider_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider Name Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_parent_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Parent Name Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_paytype = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pay Type Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Type Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan/Formulary Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payer/PBM Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key PBM Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_formulary_management_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Management PBM Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_formulary_influencer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Influencer PBM Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_ftf_claims_processing_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Claims Processing PBM Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_lives_mn = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Lives Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name best matched to FTF Plan Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM best matched to FTF Plan Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_Coverage_Category_Ajovy = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Ajovy Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_Coverage_Category_Aimovig = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Aimovig Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_Coverage_Category_Emgality = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Emgality Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change_pref_brand_tier = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pref Brand Tier Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN comparison_ftf_health_plan_fid.status WHEN (comparison_ftf_health_plan_fid.change > 0) THEN 'FALSE'::varchar(5) ELSE comparison_ftf_health_plan_fid.status END AS "Final Flag",
        comparison_ftf_health_plan_fid.month_flag AS "Month Flag",
        CASE WHEN (comparison_ftf_health_plan_fid.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (comparison_ftf_health_plan_fid.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE comparison_ftf_health_plan_fid.status END AS Status,
        comparison_ftf_health_plan_fid.change_in_lives AS "Change in Lives",
        (now())::date AS date_run,
        ('2021-08-10 10:58:30+00'::timestamptz)::timestamp AS modified_time
 FROM sandbox.comparison_ftf_health_plan_fid
 WHERE (comparison_ftf_health_plan_fid.cycle_id IN ( SELECT max(comparison_ftf_health_plan_fid.cycle_id) AS max
 FROM sandbox.comparison_ftf_health_plan_fid));

CREATE  VIEW sandbox.teva_iqvia_bridge_mismatch_analysis AS
 SELECT vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_code AS IQVIA_Plan_Code,
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_plan_name AS IQVIA_Plan_Name,
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_fid AS "FTF Health Plan FID",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.paytype_index AS PayTypeIndex,
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.paytype AS "Pay Type",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.hp_type AS "HP Type",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_paytype AS "IQVIA Pay Type",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.model AS Model,
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.check_pay_types AS "Check Pay Types",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.check_hp_types AS "Check HP Types",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.old_ftf_health_plan_type AS "Old_FTF Health Plan Type",
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.cycle_id,
        vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.modified_time
 FROM sandbox.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1
 WHERE (coalesce(vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1.check_delete, ''::varchar) <> 'DELETE'::varchar(6));

CREATE  VIEW sandbox.vw_iqvia_plan_change AS
 SELECT a.entity AS "Change Type",
        a.id AS ID,
        a.name AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM ((((((((((( SELECT 'Payer'::varchar(5) AS entity,
        curr_month_ims_plan_xref.payer_num AS id,
        curr_month_ims_plan_xref.payer_name AS name,
        'Added'::varchar(5) AS status
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ANTI  JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        prev_month_ims_plan_xref.payer_num AS id,
        prev_month_ims_plan_xref.payer_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ANTI  JOIN sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num)))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        vw_curr_month_ims_plan_xref_cdw.payer_num AS id,
        vw_curr_month_ims_plan_xref_cdw.payer_name AS name,
        'Changed to'::varchar(10) AS status
 FROM sandbox.vw_curr_month_ims_plan_xref_cdw
 WHERE (vw_curr_month_ims_plan_xref_cdw.payer_num IN ( SELECT curr_month_ims_plan_xref.payer_num
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num) AND (curr_month_ims_plan_xref.payer_name <> prev_month_ims_plan_xref.payer_name))))))) UNION  SELECT 'Payer'::varchar(5) AS entity,
        vw_prev_month_ims_plan_xref_cdw.payer_num AS id,
        vw_prev_month_ims_plan_xref_cdw.payer_name AS name,
        'Changed from'::varchar(12) AS status
 FROM sandbox.vw_prev_month_ims_plan_xref_cdw
 WHERE (vw_prev_month_ims_plan_xref_cdw.payer_num IN ( SELECT prev_month_ims_plan_xref.payer_num
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_num = prev_month_ims_plan_xref.payer_num) AND (curr_month_ims_plan_xref.payer_name <> prev_month_ims_plan_xref.payer_name))))))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        curr_month_ims_plan_xref.payer_plan_num AS id,
        curr_month_ims_plan_xref.plan_name AS name,
        'Added'::varchar(5) AS status
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ANTI  JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num)))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        prev_month_ims_plan_xref.payer_plan_num AS id,
        prev_month_ims_plan_xref.plan_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ANTI  JOIN sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref ON ((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num)))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        vw_curr_month_ims_plan_xref_cdw.payer_plan_num AS id,
        vw_curr_month_ims_plan_xref_cdw.plan_name AS name,
        'Changed to'::varchar(10) AS status
 FROM sandbox.vw_curr_month_ims_plan_xref_cdw
 WHERE (vw_curr_month_ims_plan_xref_cdw.payer_plan_num IN ( SELECT curr_month_ims_plan_xref.payer_plan_num
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num) AND (curr_month_ims_plan_xref.plan_name <> prev_month_ims_plan_xref.plan_name))))))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        vw_prev_month_ims_plan_xref_cdw.payer_plan_num AS id,
        vw_prev_month_ims_plan_xref_cdw.plan_name AS name,
        'Changed from'::varchar(12) AS status
 FROM sandbox.vw_prev_month_ims_plan_xref_cdw
 WHERE (vw_prev_month_ims_plan_xref_cdw.payer_plan_num IN ( SELECT prev_month_ims_plan_xref.payer_plan_num
 FROM (sandbox.vw_curr_month_ims_plan_xref_cdw curr_month_ims_plan_xref JOIN sandbox.vw_prev_month_ims_plan_xref_cdw prev_month_ims_plan_xref ON (((curr_month_ims_plan_xref.payer_plan_num = prev_month_ims_plan_xref.payer_plan_num) AND (curr_month_ims_plan_xref.plan_name <> prev_month_ims_plan_xref.plan_name))))))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        curr_month_ims_pbm_xref.payer_plan_num AS id,
        curr_month_ims_pbm_xref.pbm_name AS name,
        'Added'::varchar(5) AS status
 FROM (sandbox.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref ANTI  JOIN sandbox.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON ((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num)))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        prev_month_ims_pbm_xref.payer_plan_num AS id,
        prev_month_ims_pbm_xref.pbm_name AS name,
        'Deleted'::varchar(7) AS status
 FROM (sandbox.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ANTI  JOIN sandbox.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref ON ((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num)))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        vw_curr_month_ims_pbm_xref_cdw.payer_plan_num AS id,
        vw_curr_month_ims_pbm_xref_cdw.pbm_name AS name,
        'Changed to'::varchar(10) AS status
 FROM sandbox.vw_curr_month_ims_pbm_xref_cdw
 WHERE (vw_curr_month_ims_pbm_xref_cdw.payer_plan_num IN ( SELECT curr_month_ims_pbm_xref.payer_plan_num
 FROM (sandbox.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref JOIN sandbox.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON (((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num) AND (curr_month_ims_pbm_xref.pbm_name <> prev_month_ims_pbm_xref.pbm_name))))))) UNION  SELECT 'PBM'::varchar(3) AS entity,
        vw_prev_month_ims_pbm_xref_cdw.payer_plan_num AS id,
        vw_prev_month_ims_pbm_xref_cdw.pbm_name AS name,
        'Changed from'::varchar(12) AS status
 FROM sandbox.vw_prev_month_ims_pbm_xref_cdw
 WHERE (vw_prev_month_ims_pbm_xref_cdw.payer_plan_num IN ( SELECT prev_month_ims_pbm_xref.payer_plan_num
 FROM (sandbox.vw_curr_month_ims_pbm_xref_cdw curr_month_ims_pbm_xref JOIN sandbox.vw_prev_month_ims_pbm_xref_cdw prev_month_ims_pbm_xref ON (((curr_month_ims_pbm_xref.payer_plan_num = prev_month_ims_pbm_xref.payer_plan_num) AND (curr_month_ims_pbm_xref.pbm_name <> prev_month_ims_pbm_xref.pbm_name))))))) a
 ORDER BY a.entity,
          a.status,
          a.id,
          a.name;

CREATE  VIEW sandbox.vw_curr_iqvia_plancode_fid_xref_cdw_v1 AS
 SELECT iqvia_plancode_fid_xref_cdw_v1.iqvia_payer_name,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_plan_code,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_plan_name,
        iqvia_plancode_fid_xref_cdw_v1.comments,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_fid,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_provider_fid,
        iqvia_plancode_fid_xref_cdw_v1.ftf_provider_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_parent_name,
        iqvia_plancode_fid_xref_cdw_v1.ftf_health_plan_type,
        iqvia_plancode_fid_xref_cdw_v1.paytype_index,
        iqvia_plancode_fid_xref_cdw_v1.paytype,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_pbm,
        iqvia_plancode_fid_xref_cdw_v1.hp_type,
        iqvia_plancode_fid_xref_cdw_v1.iqvia_paytype,
        iqvia_plancode_fid_xref_cdw_v1.pref_brand_tier,
        iqvia_plancode_fid_xref_cdw_v1.lives,
        iqvia_plancode_fid_xref_cdw_v1.cycle_id,
        iqvia_plancode_fid_xref_cdw_v1.modified_time,
        iqvia_plancode_fid_xref_cdw_v1.modified_by
 FROM sandbox.iqvia_plancode_fid_xref_cdw_v1
 WHERE (iqvia_plancode_fid_xref_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_plancode_fid_xref_cdw_v1'::varchar(30)))))));

CREATE  VIEW sandbox.vw_curr_fid_best_iqviapayer_cdw_v1 AS
 SELECT fid_best_iqviapayer_cdw_v1.ftf_health_plan_fid,
        fid_best_iqviapayer_cdw_v1.ftf_health_plan_name,
        fid_best_iqviapayer_cdw_v1.ftf_provider_fid,
        fid_best_iqviapayer_cdw_v1.ftf_provider_name,
        fid_best_iqviapayer_cdw_v1.iqvia_payer_name,
        fid_best_iqviapayer_cdw_v1.frequency,
        fid_best_iqviapayer_cdw_v1.cycle_id,
        fid_best_iqviapayer_cdw_v1.modified_time,
        fid_best_iqviapayer_cdw_v1.modified_by
 FROM sandbox.fid_best_iqviapayer_cdw_v1
 WHERE (fid_best_iqviapayer_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'fid_best_iqviapayer_cdw_v1'::varchar(26)))))));

CREATE  VIEW sandbox.vw_curr_fid_best_iqviapbm_cdw_v1 AS
 SELECT fid_best_iqviapbm_cdw_v1.ftf_health_plan_fid,
        fid_best_iqviapbm_cdw_v1.ftf_health_plan_name,
        fid_best_iqviapbm_cdw_v1.ftf_provider_fid,
        fid_best_iqviapbm_cdw_v1.ftf_provider_name,
        fid_best_iqviapbm_cdw_v1.iqvia_pbm,
        fid_best_iqviapbm_cdw_v1.frequency,
        fid_best_iqviapbm_cdw_v1.cycle_id,
        fid_best_iqviapbm_cdw_v1.modified_time,
        fid_best_iqviapbm_cdw_v1.modified_by
 FROM sandbox.fid_best_iqviapbm_cdw_v1
 WHERE (fid_best_iqviapbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'fid_best_iqviapbm_cdw_v1'::varchar(24)))))));

CREATE  VIEW sandbox.vw_curr_amb4_iqvia_payer_cdw_v1 AS
 SELECT amb4_iqvia_payer_cdw_v1.ftf_health_plan_fid,
        amb4_iqvia_payer_cdw_v1.ftf_health_plan_name,
        amb4_iqvia_payer_cdw_v1.ftf_provider_fid,
        amb4_iqvia_payer_cdw_v1.ftf_provider_name,
        amb4_iqvia_payer_cdw_v1.ftf_parent_name,
        amb4_iqvia_payer_cdw_v1.paytype_index,
        amb4_iqvia_payer_cdw_v1.paytype,
        amb4_iqvia_payer_cdw_v1.ftf_health_plan_type,
        amb4_iqvia_payer_cdw_v1.pref_brand_tier,
        amb4_iqvia_payer_cdw_v1.fillIn_blank_iqpayer,
        amb4_iqvia_payer_cdw_v1.fillIn_blank_iqpbm,
        amb4_iqvia_payer_cdw_v1.ftf_match_iqvia,
        amb4_iqvia_payer_cdw_v1.iqvia_payer_name,
        amb4_iqvia_payer_cdw_v1.iqvia_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_formulary_management_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_iqvia_payer_cdw_v1.ftf_claims_processing_pbm,
        amb4_iqvia_payer_cdw_v1.lives_mn,
        amb4_iqvia_payer_cdw_v1.cycle_id,
        amb4_iqvia_payer_cdw_v1.modified_time,
        amb4_iqvia_payer_cdw_v1.modified_by
 FROM sandbox.amb4_iqvia_payer_cdw_v1
 WHERE (amb4_iqvia_payer_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_iqvia_payer_cdw_v1'::varchar(23)))))));

CREATE  VIEW sandbox.vw_curr_amb4_iqvia_pbm_cdw_v1 AS
 SELECT amb4_iqvia_pbm_cdw_v1.ftf_health_plan_fid,
        amb4_iqvia_pbm_cdw_v1.ftf_health_plan_name,
        amb4_iqvia_pbm_cdw_v1.ftf_provider_fid,
        amb4_iqvia_pbm_cdw_v1.ftf_provider_name,
        amb4_iqvia_pbm_cdw_v1.ftf_parent_name,
        amb4_iqvia_pbm_cdw_v1.paytype_index,
        amb4_iqvia_pbm_cdw_v1.paytype,
        amb4_iqvia_pbm_cdw_v1.ftf_health_plan_type,
        amb4_iqvia_pbm_cdw_v1.pref_brand_tier,
        amb4_iqvia_pbm_cdw_v1.fillIn_blank_iqpayer,
        amb4_iqvia_pbm_cdw_v1.fillIn_blank_iqpbm,
        amb4_iqvia_pbm_cdw_v1.ftf_match_iqvia,
        amb4_iqvia_pbm_cdw_v1.iqvia_payer_name,
        amb4_iqvia_pbm_cdw_v1.iqvia_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_formulary_management_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_formulary_influencer_pbm,
        amb4_iqvia_pbm_cdw_v1.ftf_claims_processing_pbm,
        amb4_iqvia_pbm_cdw_v1.lives_mn,
        amb4_iqvia_pbm_cdw_v1.cycle_id,
        amb4_iqvia_pbm_cdw_v1.modified_time,
        amb4_iqvia_pbm_cdw_v1.modified_by
 FROM sandbox.amb4_iqvia_pbm_cdw_v1
 WHERE (amb4_iqvia_pbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'amb4_iqvia_pbm_cdw_v1'::varchar(21)))))));

CREATE  VIEW sandbox.vw_curr_amb7_cdw_v1 AS
 SELECT amb7_cdw_v1.ftf_health_plan_fid,
        amb7_cdw_v1.ftf_health_plan_name,
        amb7_cdw_v1.ftf_provider_fid,
        amb7_cdw_v1.ftf_provider_name,
        amb7_cdw_v1.ftf_parent_name,
        amb7_cdw_v1.paytype_index,
        amb7_cdw_v1.paytype,
        amb7_cdw_v1.ftf_health_plan_type,
        amb7_cdw_v1.pref_brand_tier,
        amb7_cdw_v1.fillIn_blank_iqpayer,
        amb7_cdw_v1.fillIn_blank_iqpbm,
        amb7_cdw_v1.ftf_match_iqvia,
        amb7_cdw_v1.iqvia_payer_name,
        amb7_cdw_v1.iqvia_pbm,
        amb7_cdw_v1.ftf_formulary_management_pbm,
        amb7_cdw_v1.ftf_formulary_influencer_pbm,
        amb7_cdw_v1.ftf_claims_processing_pbm,
        amb7_cdw_v1.lives_mn,
        amb7_cdw_v1.calculated_pbm_value,
        amb7_cdw_v1.key_pbm,
        amb7_cdw_v1.cycle_id,
        amb7_cdw_v1.modified_time,
        amb7_cdw_v1.modified_by
 FROM sandbox.amb7_cdw_v1
 WHERE (amb7_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'amb7_cdw_v1'::varchar(11)))))));

CREATE  VIEW sandbox.vw_curr_ftf_hpid_keypbm_cdw_v1 AS
 SELECT ftf_hpid_keypbm_cdw_v1.ftf_health_plan_fid,
        ftf_hpid_keypbm_cdw_v1.ftf_health_plan_name,
        ftf_hpid_keypbm_cdw_v1.ftf_provider_name,
        ftf_hpid_keypbm_cdw_v1.paytype,
        ftf_hpid_keypbm_cdw_v1.iqvia_pbm,
        ftf_hpid_keypbm_cdw_v1.key_pbm,
        ftf_hpid_keypbm_cdw_v1.cycle_id,
        ftf_hpid_keypbm_cdw_v1.modified_time,
        ftf_hpid_keypbm_cdw_v1.modified_by
 FROM sandbox.ftf_hpid_keypbm_cdw_v1
 WHERE (ftf_hpid_keypbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hpid_keypbm_cdw_v1'::varchar(22)))))));

CREATE  VIEW sandbox.vw_curr_plan_prod_master_cdw_v1 AS
 SELECT plan_prod_master_cdw_v1.ftf_health_plan_fid,
        plan_prod_master_cdw_v1.ftf_health_plan_name,
        plan_prod_master_cdw_v1.ftf_provider_fid,
        plan_prod_master_cdw_v1.ftf_provider_name,
        plan_prod_master_cdw_v1.ftf_parent_name,
        plan_prod_master_cdw_v1.paytype_index,
        plan_prod_master_cdw_v1.paytype,
        plan_prod_master_cdw_v1.ftf_health_plan_type,
        plan_prod_master_cdw_v1.pref_brand_tier,
        plan_prod_master_cdw_v1.fillIn_blank_iqpayer,
        plan_prod_master_cdw_v1.fillIn_blank_iqpbm,
        plan_prod_master_cdw_v1.ftf_match_iqvia,
        plan_prod_master_cdw_v1.iqvia_payer_name,
        plan_prod_master_cdw_v1.iqvia_pbm,
        plan_prod_master_cdw_v1.ftf_formulary_management_pbm,
        plan_prod_master_cdw_v1.ftf_formulary_influencer_pbm,
        plan_prod_master_cdw_v1.ftf_claims_processing_pbm,
        plan_prod_master_cdw_v1.lives_mn,
        plan_prod_master_cdw_v1.calculated_pbm_value,
        plan_prod_master_cdw_v1.key_pbm,
        plan_prod_master_cdw_v1.drug_id,
        plan_prod_master_cdw_v1.drug_seq,
        plan_prod_master_cdw_v1.tier_code,
        plan_prod_master_cdw_v1.restrictions,
        plan_prod_master_cdw_v1.reason_code,
        plan_prod_master_cdw_v1.pharmacy_status,
        plan_prod_master_cdw_v1.botox,
        plan_prod_master_cdw_v1.step,
        plan_prod_master_cdw_v1.pres_pa,
        plan_prod_master_cdw_v1.pat_pa,
        plan_prod_master_cdw_v1.med_rec,
        plan_prod_master_cdw_v1.unspec,
        plan_prod_master_cdw_v1.tier,
        plan_prod_master_cdw_v1.has_pa,
        plan_prod_master_cdw_v1.has_st,
        plan_prod_master_cdw_v1.formulary,
        plan_prod_master_cdw_v1.copay_tier,
        plan_prod_master_cdw_v1.tier_cat,
        plan_prod_master_cdw_v1.restcat,
        plan_prod_master_cdw_v1.restriction_category,
        plan_prod_master_cdw_v1.coverage_cat_code,
        plan_prod_master_cdw_v1.coverage_category,
        plan_prod_master_cdw_v1.cycle_id,
        plan_prod_master_cdw_v1.modified_time,
        plan_prod_master_cdw_v1.modified_by
 FROM sandbox.plan_prod_master_cdw_v1
 WHERE (plan_prod_master_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'plan_prod_master_cdw_v1'::varchar(23)))))));

CREATE  VIEW sandbox.vw_curr_ftf_plan_master_file_cdw_v1 AS
 SELECT ftf_plan_master_file_cdw_v1.ftf_health_plan_fid,
        ftf_plan_master_file_cdw_v1.ftf_health_plan_name,
        ftf_plan_master_file_cdw_v1.ftf_provider_fid,
        ftf_plan_master_file_cdw_v1.ftf_provider_name,
        ftf_plan_master_file_cdw_v1.ftf_parent_name,
        ftf_plan_master_file_cdw_v1.paytype_index,
        ftf_plan_master_file_cdw_v1.paytype,
        ftf_plan_master_file_cdw_v1.ftf_health_plan_type,
        ftf_plan_master_file_cdw_v1.pref_brand_tier,
        ftf_plan_master_file_cdw_v1.fillIn_blank_iqpayer,
        ftf_plan_master_file_cdw_v1.fillIn_blank_iqpbm,
        ftf_plan_master_file_cdw_v1.ftf_match_iqvia,
        ftf_plan_master_file_cdw_v1.iqvia_payer_name,
        ftf_plan_master_file_cdw_v1.iqvia_pbm,
        ftf_plan_master_file_cdw_v1.ftf_formulary_management_pbm,
        ftf_plan_master_file_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_plan_master_file_cdw_v1.ftf_claims_processing_pbm,
        ftf_plan_master_file_cdw_v1.lives_mn,
        ftf_plan_master_file_cdw_v1.calculated_pbm_value,
        ftf_plan_master_file_cdw_v1.key_pbm,
        ftf_plan_master_file_cdw_v1.drug_id,
        ftf_plan_master_file_cdw_v1.drug_seq,
        ftf_plan_master_file_cdw_v1.product,
        ftf_plan_master_file_cdw_v1.tier_code,
        ftf_plan_master_file_cdw_v1.restrictions,
        ftf_plan_master_file_cdw_v1.reason_code,
        ftf_plan_master_file_cdw_v1.pharmacy_status,
        ftf_plan_master_file_cdw_v1.botox,
        ftf_plan_master_file_cdw_v1.botox_step_flag,
        ftf_plan_master_file_cdw_v1.step,
        ftf_plan_master_file_cdw_v1.step_category,
        ftf_plan_master_file_cdw_v1.pres_pa,
        ftf_plan_master_file_cdw_v1.prescriber_prior_authorization_category,
        ftf_plan_master_file_cdw_v1.pat_pa,
        ftf_plan_master_file_cdw_v1.med_rec,
        ftf_plan_master_file_cdw_v1.unspec,
        ftf_plan_master_file_cdw_v1.patient_prior_authorization_category,
        ftf_plan_master_file_cdw_v1.medical_records_submission_required_flag,
        ftf_plan_master_file_cdw_v1.unspecified_restriction_flag,
        ftf_plan_master_file_cdw_v1.ftf_tier,
        ftf_plan_master_file_cdw_v1.has_pa,
        ftf_plan_master_file_cdw_v1.has_st,
        ftf_plan_master_file_cdw_v1.formulary,
        ftf_plan_master_file_cdw_v1.copay_Tier,
        ftf_plan_master_file_cdw_v1.tier_cat,
        ftf_plan_master_file_cdw_v1.restcat,
        ftf_plan_master_file_cdw_v1.restriction_category,
        ftf_plan_master_file_cdw_v1.coverage_cat_code,
        ftf_plan_master_file_cdw_v1.coverage_category,
        ftf_plan_master_file_cdw_v1.key_controlling_account,
        ftf_plan_master_file_cdw_v1.key_controlling_plan_formulary,
        ftf_plan_master_file_cdw_v1.key_controlling_parent,
        ftf_plan_master_file_cdw_v1.payer_pbm,
        ftf_plan_master_file_cdw_v1.cycle_id,
        ftf_plan_master_file_cdw_v1.modified_time,
        ftf_plan_master_file_cdw_v1.modified_by
 FROM sandbox.ftf_plan_master_file_cdw_v1
 WHERE (ftf_plan_master_file_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_plan_master_file_cdw_v1'::varchar(27)))))));

CREATE  VIEW sandbox.vw_curr_copay_tier_derivation_config_cdw AS
 SELECT btrim(copay_tier_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        copay_tier_derivation_config_v01.tier_cat,
        btrim(copay_tier_derivation_config_v01.tier_regex) AS tier_regex,
        btrim(copay_tier_derivation_config_v01.pref_brand_tier_regex) AS pref_brand_tier_regex,
        btrim(copay_tier_derivation_config_v01.ftf_health_plan_type_regex) AS ftf_health_plan_type_regex,
        btrim(copay_tier_derivation_config_v01.copay_tier) AS copay_tier,
        copay_tier_derivation_config_v01.file_id,
        copay_tier_derivation_config_v01.record_id
 FROM sandbox.copay_tier_derivation_config_v01
 WHERE (copay_tier_derivation_config_v01.file_id IN ( SELECT max(copay_tier_derivation_config_v01.file_id) AS max
 FROM sandbox.copay_tier_derivation_config_v01));

CREATE  VIEW sandbox.vw_curr_tier_cat_description_mapping_cdw AS
 SELECT tier_cat_description_mapping_v01.tier_cat,
        btrim(tier_cat_description_mapping_v01.description) AS description,
        btrim(tier_cat_description_mapping_v01.notes) AS notes,
        tier_cat_description_mapping_v01.file_id,
        tier_cat_description_mapping_v01.record_id
 FROM sandbox.tier_cat_description_mapping_v01
 WHERE (tier_cat_description_mapping_v01.file_id IN ( SELECT max(tier_cat_description_mapping_v01.file_id) AS max
 FROM sandbox.tier_cat_description_mapping_v01));

CREATE  VIEW sandbox.vw_curr_coverage_category_derivation_config_cdw AS
 SELECT btrim(coverage_category_derivation_config_v01.paytype_regex) AS paytype_regex,
        btrim(coverage_category_derivation_config_v01.pharmacy_status_regex) AS pharmacy_status_regex,
        coverage_category_derivation_config_v01.coverage_cat_code,
        btrim(coverage_category_derivation_config_v01.coverage_category) AS coverage_category,
        btrim(coverage_category_derivation_config_v01.restriction_cat_code_regex) AS restriction_cat_code_regex,
        btrim(coverage_category_derivation_config_v01.meaning) AS meaning,
        coverage_category_derivation_config_v01.file_id,
        coverage_category_derivation_config_v01.record_id
 FROM sandbox.coverage_category_derivation_config_v01
 WHERE (coverage_category_derivation_config_v01.file_id IN ( SELECT max(coverage_category_derivation_config_v01.file_id) AS max
 FROM sandbox.coverage_category_derivation_config_v01));

CREATE  VIEW sandbox.vw_curr_payer_spine25_detailed_teva_brands_cdw_v1 AS
 SELECT payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_detailed_teva_brands_cdw_v1.payment_type,
        payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_detailed_teva_brands_cdw_v1.saba_trx,
        payer_spine25_detailed_teva_brands_cdw_v1.cycle_id,
        payer_spine25_detailed_teva_brands_cdw_v1.modified_time,
        payer_spine25_detailed_teva_brands_cdw_v1.modified_by
 FROM sandbox.payer_spine25_detailed_teva_brands_cdw_v1
 WHERE (payer_spine25_detailed_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_detailed_teva_brands_cdw_v1'::varchar(41)))))));

CREATE  VIEW sandbox.ics_mop AS
 SELECT rx_vertical.ims_id,
        rx_vertical.hcp_id,
        rx_vertical.plan_code,
        rx_vertical.plan_name,
        rx_vertical.model,
        rx_vertical.basket_name,
        sum(CASE WHEN (rx_vertical.month_bucket = 24) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth24,
        sum(CASE WHEN (rx_vertical.month_bucket = 23) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth23,
        sum(CASE WHEN (rx_vertical.month_bucket = 22) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth22,
        sum(CASE WHEN (rx_vertical.month_bucket = 21) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth21,
        sum(CASE WHEN (rx_vertical.month_bucket = 20) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth20,
        sum(CASE WHEN (rx_vertical.month_bucket = 19) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth19,
        sum(CASE WHEN (rx_vertical.month_bucket = 18) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth18,
        sum(CASE WHEN (rx_vertical.month_bucket = 17) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth17,
        sum(CASE WHEN (rx_vertical.month_bucket = 16) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth16,
        sum(CASE WHEN (rx_vertical.month_bucket = 15) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth15,
        sum(CASE WHEN (rx_vertical.month_bucket = 14) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth14,
        sum(CASE WHEN (rx_vertical.month_bucket = 13) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth13,
        sum(CASE WHEN (rx_vertical.month_bucket = 12) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth12,
        sum(CASE WHEN (rx_vertical.month_bucket = 11) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth11,
        sum(CASE WHEN (rx_vertical.month_bucket = 10) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth10,
        sum(CASE WHEN (rx_vertical.month_bucket = 9) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth9,
        sum(CASE WHEN (rx_vertical.month_bucket = 8) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth8,
        sum(CASE WHEN (rx_vertical.month_bucket = 7) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth7,
        sum(CASE WHEN (rx_vertical.month_bucket = 6) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth6,
        sum(CASE WHEN (rx_vertical.month_bucket = 5) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth5,
        sum(CASE WHEN (rx_vertical.month_bucket = 4) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth4,
        sum(CASE WHEN (rx_vertical.month_bucket = 3) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth3,
        sum(CASE WHEN (rx_vertical.month_bucket = 2) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth2,
        sum(CASE WHEN (rx_vertical.month_bucket = 1) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth1
 FROM ( SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id,
        CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(xref.veeva_account_id, rx.ims_id) END AS hcp_id,
        rx.payer_plan_number AS plan_code,
        rx.plan_name,
        rx.model,
        rx.basket_name,
        w.month_bucket,
        rx.trx_count
 FROM ((datamart.prescriber_rx rx JOIN ( SELECT ims_week_buckets.month_ending,
        ims_week_buckets.month_bucket
 FROM integration.ims_week_buckets
 GROUP BY ims_week_buckets.month_ending,
          ims_week_buckets.month_bucket) w ON ((rx.rollup_month = w.month_ending))) LEFT  JOIN ( SELECT a.tvcmid,
        a.veeva_account_id
 FROM ( SELECT xref.tvcmid,
        xref.id_num AS veeva_account_id,
        row_number() OVER (PARTITION BY xref.tvcmid ORDER BY xref.id_num) AS rnk
 FROM datamart.tvcmid_xref xref
 WHERE (xref.id_type = 'VEEVA_ID'::varchar(8))) a
 WHERE (a.rnk = 1)) xref ON ((xref.tvcmid = rx.tvcmid)))
 WHERE ((rx.market_name = 'ICS MARKET TOTAL'::varchar(16)) AND (rx.basket_type = 'product'::varchar(7)) AND (rx.report_frequency = 'SPLITWEEK'::varchar(9)) AND (w.month_bucket >= 1) AND (w.month_bucket <= 24))) rx_vertical
 GROUP BY rx_vertical.ims_id,
          rx_vertical.hcp_id,
          rx_vertical.plan_code,
          rx_vertical.plan_name,
          rx_vertical.model,
          rx_vertical.basket_name;

CREATE  VIEW sandbox.call AS
 SELECT a.id,
        a.ownerid,
        a.isdeleted,
        a.name,
        a.recordtypeid,
        a.createddate,
        a.createdbyid,
        a.lastmodifieddate,
        a.lastmodifiedbyid,
        a.systemmodstamp,
        a.lastactivitydate,
        a.mayedit,
        a.islocked,
        a.lastvieweddate,
        a.lastreferenceddate,
        a.sample_card_vod__c,
        a.add_detail_vod__c,
        a.property_vod__c,
        a.account_vod__c,
        a.zvod_product_discussion_vod__c,
        a.status_vod__c,
        a.parent_address_vod__c,
        a.account_plan_vod__c,
        a.zvod_savenew_vod__c,
        a.next_call_notes_vod__c,
        a.mobile_id_vod__c,
        a.zvod_account_credentials_vod_c,
        a.zvod_account_preferred_name_vo,
        a.zvod_account_sample_status_vod,
        a.zvod_attendees_vod__c,
        a.zvod_key_messages_vod__c,
        a.zvod_detailing_vod__c,
        a.zvod_expenses_vod__c,
        a.zvod_followup_vod__c,
        a.zvod_samples_vod__c,
        a.zvod_save_vod__c,
        a.zvod_submit_vod__c,
        a.zvod_delete_vod__c,
        a.activity_type__c,
        a.significant_event__c,
        a.location_vod__c,
        a.subject_vod__c,
        a.call_datetime_vod__c,
        a.disbursed_to_vod__c,
        a.request_receipt_vod__c,
        a.signature_date_vod__c,
        a.territory_vod__c,
        a.submitted_by_mobile_vod__c,
        a.call_type_vod__c,
        a.add_key_message_vod__c,
        a.address_vod__c,
        a.attendees_vod__c,
        a.attendee_type_vod__c,
        a.call_date_vod__c,
        a.detailed_products_vod__c,
        a.no_disbursement_vod__c,
        a.parent_call_vod__c,
        a.user_vod__c,
        a.contact_vod__c,
        a.zvod_entity_vod__c,
        a.medical_event_vod__c,
        a.mobile_created_datetime_vod__c,
        a.mobile_last_modified_datetime,
        a.license_vod__c,
        a.is_parent_call_vod__c,
        a.entity_display_name_vod__c,
        a.last_device_vod__c,
        a.ship_address_line_1_vod__c,
        a.ship_address_line_2_vod__c,
        a.ship_city_vod__c,
        a.ship_country_vod__c,
        a.ship_license_expiration_date,
        a.ship_license_status_vod__c,
        a.ship_license_vod__c,
        a.ship_state_vod__c,
        a.ship_to_address_vod__c,
        a.ship_zip_vod__c,
        a.ship_to_address_text_vod__c,
        a.clm_vod__c,
        a.zvod_clmdetails_vod__c,
        a.is_sampled_call_vod__c,
        a.zvod_surveys_vod__c,
        a.presentations_vod__c,
        a.entity_reference_id_vod__c,
        a.error_reference_call_vod__c,
        a.duration_vod__c,
        a.color_vod__c,
        a.allowed_products_vod__c,
        a.zvod_attachments_vod__c,
        a.sample_card_reason_vod__c,
        a.assmca_vod__c,
        a.address_line_1_vod__c,
        a.address_line_2_vod__c,
        a.city_vod__c,
        a.dea_address_line_1_vod__c,
        a.dea_address_line_2_vod__c,
        a.dea_address_vod__c,
        a.dea_city_vod__c,
        a.dea_expiration_date_vod__c,
        a.dea_state_vod__c,
        a.dea_zip_4_vod__c,
        a.dea_zip_vod__c,
        a.dea_vod__c,
        a.ship_zip_4_vod__c,
        a.state_vod__c,
        a.zip_4_vod__c,
        a.zip_vod__c,
        a.sample_send_card_vod__c,
        a.zvod_address_vod_c_dea_status_,
        a.signature_page_image_vod__c,
        a.credentials_vod__c,
        a.salutation_vod__c,
        a.zvod_account_call_reminder_vod,
        a.sales_org_tva__c,
        a.zvod_business_account_vod__c,
        a.product_priority_1_vod__c,
        a.product_priority_2_vod__c,
        a.product_priority_3_vod__c,
        a.product_priority_4_vod__c,
        a.product_priority_5_vod__c,
        a.zvod_more_actions_vod__c,
        a.zvod_call_conflict_status,
        a.signature_timestamp_vod__c,
        a.expense_amount_vod__c,
        a.total_expense_attendees_count,
        a.attendee_list_vod__c,
        a.expense_post_status_vod__c,
        a.attendee_post_status_vod__c,
        a.expense_system_external_id,
        a.incurred_expense_vod__c,
        a.assigner_vod__c,
        a.assignment_datetime_vod__c,
        a.zvod_call_objective_vod__c,
        a.signature_location_longitude,
        a.signature_location_latitude,
        a.location_services_status,
        a.created_by_timezone_tva__c,
        a.license_expiration_date_vod__c,
        a.license_status_vod__c,
        a.ship_assmca_vod__c,
        a.ship_dea_expiration_date,
        a.ship_dea_vod__c,
        a.call_method_tva__c,
        a.bendeka_indication_tva__c,
        a.file_id,
        a.record_id,
        a.austedo_indication_tva__c,
        a.call_duration_tva__c,
        a.how_executed_tva__c,
        a.Remote_Meeting_vod__c,
        a.Veeva_Remote_Meeting_Id_vod__c,
        a.Cobrowse_URL_Participant_vod__c,
        a.Signature_Captured_Remotely_vod__c,
        a.Remote_Signature_Attendee_Name_vod__c,
        a.rowrank
 FROM ( SELECT c.id,
        c.ownerid,
        c.isdeleted,
        c.name,
        c.recordtypeid,
        c.createddate,
        c.createdbyid,
        c.lastmodifieddate,
        c.lastmodifiedbyid,
        c.systemmodstamp,
        c.lastactivitydate,
        c.mayedit,
        c.islocked,
        c.lastvieweddate,
        c.lastreferenceddate,
        c.sample_card_vod__c,
        c.add_detail_vod__c,
        c.property_vod__c,
        c.account_vod__c,
        c.zvod_product_discussion_vod__c,
        c.status_vod__c,
        c.parent_address_vod__c,
        c.account_plan_vod__c,
        c.zvod_savenew_vod__c,
        c.next_call_notes_vod__c,
        c.mobile_id_vod__c,
        c.zvod_account_credentials_vod_c,
        c.zvod_account_preferred_name_vo,
        c.zvod_account_sample_status_vod,
        c.zvod_attendees_vod__c,
        c.zvod_key_messages_vod__c,
        c.zvod_detailing_vod__c,
        c.zvod_expenses_vod__c,
        c.zvod_followup_vod__c,
        c.zvod_samples_vod__c,
        c.zvod_save_vod__c,
        c.zvod_submit_vod__c,
        c.zvod_delete_vod__c,
        c.activity_type__c,
        c.significant_event__c,
        c.location_vod__c,
        c.subject_vod__c,
        c.call_datetime_vod__c,
        c.disbursed_to_vod__c,
        c.request_receipt_vod__c,
        c.signature_date_vod__c,
        c.territory_vod__c,
        c.submitted_by_mobile_vod__c,
        c.call_type_vod__c,
        c.add_key_message_vod__c,
        c.address_vod__c,
        c.attendees_vod__c,
        c.attendee_type_vod__c,
        c.call_date_vod__c,
        c.detailed_products_vod__c,
        c.no_disbursement_vod__c,
        c.parent_call_vod__c,
        c.user_vod__c,
        c.contact_vod__c,
        c.zvod_entity_vod__c,
        c.medical_event_vod__c,
        c.mobile_created_datetime_vod__c,
        c.mobile_last_modified_datetime,
        c.license_vod__c,
        c.is_parent_call_vod__c,
        c.entity_display_name_vod__c,
        c.last_device_vod__c,
        c.ship_address_line_1_vod__c,
        c.ship_address_line_2_vod__c,
        c.ship_city_vod__c,
        c.ship_country_vod__c,
        c.ship_license_expiration_date,
        c.ship_license_status_vod__c,
        c.ship_license_vod__c,
        c.ship_state_vod__c,
        c.ship_to_address_vod__c,
        c.ship_zip_vod__c,
        c.ship_to_address_text_vod__c,
        c.clm_vod__c,
        c.zvod_clmdetails_vod__c,
        c.is_sampled_call_vod__c,
        c.zvod_surveys_vod__c,
        c.presentations_vod__c,
        c.entity_reference_id_vod__c,
        c.error_reference_call_vod__c,
        c.duration_vod__c,
        c.color_vod__c,
        c.allowed_products_vod__c,
        c.zvod_attachments_vod__c,
        c.sample_card_reason_vod__c,
        c.assmca_vod__c,
        c.address_line_1_vod__c,
        c.address_line_2_vod__c,
        c.city_vod__c,
        c.dea_address_line_1_vod__c,
        c.dea_address_line_2_vod__c,
        c.dea_address_vod__c,
        c.dea_city_vod__c,
        c.dea_expiration_date_vod__c,
        c.dea_state_vod__c,
        c.dea_zip_4_vod__c,
        c.dea_zip_vod__c,
        c.dea_vod__c,
        c.ship_zip_4_vod__c,
        c.state_vod__c,
        c.zip_4_vod__c,
        c.zip_vod__c,
        c.sample_send_card_vod__c,
        c.zvod_address_vod_c_dea_status_,
        c.signature_page_image_vod__c,
        c.credentials_vod__c,
        c.salutation_vod__c,
        c.zvod_account_call_reminder_vod,
        c.sales_org_tva__c,
        c.zvod_business_account_vod__c,
        c.product_priority_1_vod__c,
        c.product_priority_2_vod__c,
        c.product_priority_3_vod__c,
        c.product_priority_4_vod__c,
        c.product_priority_5_vod__c,
        c.zvod_more_actions_vod__c,
        c.zvod_call_conflict_status,
        c.signature_timestamp_vod__c,
        c.expense_amount_vod__c,
        c.total_expense_attendees_count,
        c.attendee_list_vod__c,
        c.expense_post_status_vod__c,
        c.attendee_post_status_vod__c,
        c.expense_system_external_id,
        c.incurred_expense_vod__c,
        c.assigner_vod__c,
        c.assignment_datetime_vod__c,
        c.zvod_call_objective_vod__c,
        c.signature_location_longitude,
        c.signature_location_latitude,
        c.location_services_status,
        c.created_by_timezone_tva__c,
        c.license_expiration_date_vod__c,
        c.license_status_vod__c,
        c.ship_assmca_vod__c,
        c.ship_dea_expiration_date,
        c.ship_dea_vod__c,
        c.call_method_tva__c,
        c.bendeka_indication_tva__c,
        c.file_id,
        c.record_id,
        c.austedo_indication_tva__c,
        c.call_duration_tva__c,
        c.how_executed_tva__c,
        c.Remote_Meeting_vod__c,
        c.Veeva_Remote_Meeting_Id_vod__c,
        c.Cobrowse_URL_Participant_vod__c,
        c.Signature_Captured_Remotely_vod__c,
        c.Remote_Signature_Attendee_Name_vod__c,
        rank() OVER (PARTITION BY c.id ORDER BY c.file_id DESC) AS rowrank
 FROM veeva.call c
 WHERE (c.call_date_vod__c >= add_months((statement_timestamp())::timestamp, (-24)))) a
 WHERE (a.rowrank = 1);

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies AS
 SELECT btrim(ftf_formularies.health_plan_id) AS health_plan_id,
        btrim(ftf_formularies.drug_id) AS drug_id,
        btrim(ftf_formularies.tier_code) AS tier_code,
        btrim(ftf_formularies.restrictions) AS restrictions,
        btrim(ftf_formularies.reason_code) AS reason_code,
        btrim(ftf_formularies.reason_code_description) AS btrim,
        ftf_formularies.file_id,
        ftf_formularies.record_id
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plans AS
 SELECT btrim(ftf_health_plans.formularyf_id) AS formularyf_id,
        btrim(ftf_health_plans.provider_id) AS provider_id,
        btrim(ftf_health_plans.provider) AS provider,
        btrim(ftf_health_plans.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plans.health_plan) AS health_plan,
        btrim(ftf_health_plans.parent_id) AS parent_id,
        btrim(ftf_health_plans.parent) AS parent,
        ftf_health_plans.national_lives_count,
        btrim(ftf_health_plans.plan_type_name) AS plan_type_name,
        ftf_health_plans.preferred_brand_tier,
        ftf_health_plans.file_id,
        ftf_health_plans.record_id
 FROM cleansed.ftf_health_plans
 WHERE (ftf_health_plans.file_id IN ( SELECT max(ftf_health_plans.file_id) AS max
 FROM cleansed.ftf_health_plans));

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plan_geography AS
 SELECT btrim(ftf_health_plan_geography.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plan_geography.operating_state) AS operating_state,
        ftf_health_plan_geography.lives_coverage,
        ftf_health_plan_geography.file_id,
        ftf_health_plan_geography.record_id
 FROM cleansed.ftf_health_plan_geography
 WHERE (ftf_health_plan_geography.file_id IN ( SELECT max(ftf_health_plan_geography.file_id) AS max
 FROM cleansed.ftf_health_plan_geography));

CREATE  VIEW sandbox.vw_curr_month_ftf_pbms AS
 SELECT btrim(ftf_pbms.health_plan_id) AS health_plan_id,
        btrim(ftf_pbms.pbm_id) AS pbm_id,
        btrim(ftf_pbms.pbm) AS pbm,
        btrim(ftf_pbms.pbm_function_id) AS pbm_function_id,
        btrim(ftf_pbms.pbm_function) AS pbm_function,
        ftf_pbms.file_id,
        ftf_pbms.record_id
 FROM cleansed.ftf_pbms
 WHERE (ftf_pbms.file_id IN ( SELECT max(ftf_pbms.file_id) AS max
 FROM cleansed.ftf_pbms));

CREATE  VIEW sandbox.vw_curr_month_ftf_restrictions AS
 SELECT btrim(ftf_restrictions_v2.health_plan_id) AS health_plan_id,
        btrim(ftf_restrictions_v2.drug_id) AS drug_id,
        btrim(ftf_restrictions_v2.restriction_code) AS restriction_code,
        ftf_restrictions_v2.restriction_detail_id,
        btrim(ftf_restrictions_v2.restriction_detail_text) AS restriction_detail_text,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_1) AS restriction_addtnl_information_1,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_2) AS restriction_addtnl_information_2,
        btrim(ftf_restrictions_v2.step_count) AS step_count,
        btrim(ftf_restrictions_v2.pa_form) AS pa_form,
        btrim(ftf_restrictions_v2.indication) AS indication,
        btrim(ftf_restrictions_v2.grouped_restriction_level) AS grouped_restriction_level,
        ftf_restrictions_v2.record_id,
        ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 WHERE (ftf_restrictions_v2.file_id IN ( SELECT max(ftf_restrictions_v2.file_id) AS max
 FROM cleansed.ftf_restrictions_v2));

CREATE  VIEW sandbox.vw_curr_month_ims_plan_xref AS
 SELECT btrim(ims_plan_xref.payer_num) AS payer_num,
        btrim(ims_plan_xref.payer_name) AS payer_name,
        btrim(ims_plan_xref.plan_num) AS plan_num,
        btrim(ims_plan_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_plan_xref.plan_name) AS plan_name,
        btrim(ims_plan_xref.model) AS model,
        btrim(ims_plan_xref.city) AS city,
        btrim(ims_plan_xref.hq_state) AS hq_state,
        btrim(ims_plan_xref.operating_state) AS operating_state,
        ims_plan_xref.months_with_data,
        ims_plan_xref.file_id,
        ims_plan_xref.record_id
 FROM cleansed.ims_plan_xref
 WHERE (ims_plan_xref.file_id IN ( SELECT max(ims_plan_xref.file_id) AS max
 FROM cleansed.ims_plan_xref));

CREATE  VIEW sandbox.vw_curr_month_ims_pbm_xref AS
 SELECT btrim(ims_pbm_xref.pbm_name) AS pbm_name,
        btrim(ims_pbm_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_pbm_xref.xref_to_payer_plan_num) AS xref_to_payer_plan_num,
        btrim(ims_pbm_xref.ipd_id) AS ipd_id,
        btrim(ims_pbm_xref.ipd_type) AS ipd_type,
        btrim(ims_pbm_xref.plan_name) AS plan_name,
        ims_pbm_xref.pbm_num,
        ims_pbm_xref.ims_processor_num,
        ims_pbm_xref.file_id,
        ims_pbm_xref.record_id
 FROM cleansed.ims_pbm_xref
 WHERE (ims_pbm_xref.file_id IN ( SELECT max(ims_pbm_xref.file_id) AS max
 FROM cleansed.ims_pbm_xref));

CREATE  VIEW sandbox.vw_curr_month_ftf_ims_bridge AS
 SELECT btrim(ftf_ims_bridge.payer_name) AS payer_name,
        btrim(ftf_ims_bridge.code) AS code,
        btrim(ftf_ims_bridge.name) AS name,
        btrim(ftf_ims_bridge.state) AS state,
        btrim(ftf_ims_bridge.comments) AS comments,
        ftf_ims_bridge.plan_id,
        btrim(ftf_ims_bridge.plan_name) AS plan_name,
        btrim(ftf_ims_bridge.provider_name) AS provider_name,
        btrim(ftf_ims_bridge.plan_type_name) AS plan_type_name,
        ftf_ims_bridge.file_id,
        ftf_ims_bridge.record_id
 FROM cleansed.ftf_ims_bridge
 WHERE (ftf_ims_bridge.file_id IN ( SELECT max(ftf_ims_bridge.file_id) AS max
 FROM cleansed.ftf_ims_bridge));

CREATE  VIEW sandbox.vw_prev_month_ftf_formularies AS
 SELECT btrim(ftf_formularies.health_plan_id) AS health_plan_id,
        btrim(ftf_formularies.drug_id) AS drug_id,
        btrim(ftf_formularies.tier_code) AS tier_code,
        btrim(ftf_formularies.restrictions) AS restrictions,
        btrim(ftf_formularies.reason_code) AS reason_code,
        btrim(ftf_formularies.reason_code_description) AS btrim,
        ftf_formularies.file_id,
        ftf_formularies.record_id
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_formularies.file_id
 FROM cleansed.ftf_formularies
 GROUP BY ftf_formularies.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plans AS
 SELECT btrim(ftf_health_plans.formularyf_id) AS formularyf_id,
        btrim(ftf_health_plans.provider_id) AS provider_id,
        btrim(ftf_health_plans.provider) AS provider,
        btrim(ftf_health_plans.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plans.health_plan) AS health_plan,
        btrim(ftf_health_plans.parent_id) AS parent_id,
        btrim(ftf_health_plans.parent) AS parent,
        ftf_health_plans.national_lives_count,
        btrim(ftf_health_plans.plan_type_name) AS plan_type_name,
        ftf_health_plans.preferred_brand_tier,
        ftf_health_plans.file_id,
        ftf_health_plans.record_id
 FROM cleansed.ftf_health_plans
 WHERE (ftf_health_plans.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plans.file_id
 FROM cleansed.ftf_health_plans
 GROUP BY ftf_health_plans.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plan_geography AS
 SELECT btrim(ftf_health_plan_geography.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plan_geography.operating_state) AS operating_state,
        ftf_health_plan_geography.lives_coverage,
        ftf_health_plan_geography.file_id,
        ftf_health_plan_geography.record_id
 FROM cleansed.ftf_health_plan_geography
 WHERE (ftf_health_plan_geography.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plan_geography.file_id
 FROM cleansed.ftf_health_plan_geography
 GROUP BY ftf_health_plan_geography.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_pbms AS
 SELECT btrim(ftf_pbms.health_plan_id) AS health_plan_id,
        btrim(ftf_pbms.pbm_id) AS pbm_id,
        btrim(ftf_pbms.pbm) AS pbm,
        btrim(ftf_pbms.pbm_function_id) AS pbm_function_id,
        btrim(ftf_pbms.pbm_function) AS pbm_function,
        ftf_pbms.file_id,
        ftf_pbms.record_id
 FROM cleansed.ftf_pbms
 WHERE (ftf_pbms.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_pbms.file_id
 FROM cleansed.ftf_pbms
 GROUP BY ftf_pbms.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_restrictions AS
 SELECT btrim(ftf_restrictions_v2.health_plan_id) AS health_plan_id,
        btrim(ftf_restrictions_v2.drug_id) AS drug_id,
        btrim(ftf_restrictions_v2.restriction_code) AS restriction_code,
        ftf_restrictions_v2.restriction_detail_id,
        btrim(ftf_restrictions_v2.restriction_detail_text) AS restriction_detail_text,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_1) AS restriction_addtnl_information_1,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_2) AS restriction_addtnl_information_2,
        btrim(ftf_restrictions_v2.step_count) AS step_count,
        btrim(ftf_restrictions_v2.pa_form) AS pa_form,
        btrim(ftf_restrictions_v2.indication) AS indication,
        btrim(ftf_restrictions_v2.grouped_restriction_level) AS grouped_restriction_level,
        ftf_restrictions_v2.record_id,
        ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 WHERE (ftf_restrictions_v2.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 GROUP BY ftf_restrictions_v2.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_plan_xref AS
 SELECT btrim(ims_plan_xref.payer_num) AS payer_num,
        btrim(ims_plan_xref.payer_name) AS payer_name,
        btrim(ims_plan_xref.plan_num) AS plan_num,
        btrim(ims_plan_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_plan_xref.plan_name) AS plan_name,
        btrim(ims_plan_xref.model) AS model,
        btrim(ims_plan_xref.city) AS city,
        btrim(ims_plan_xref.hq_state) AS hq_state,
        btrim(ims_plan_xref.operating_state) AS operating_state,
        ims_plan_xref.months_with_data,
        ims_plan_xref.file_id,
        ims_plan_xref.record_id
 FROM cleansed.ims_plan_xref
 WHERE (ims_plan_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_plan_xref.file_id
 FROM cleansed.ims_plan_xref
 GROUP BY ims_plan_xref.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_pbm_xref AS
 SELECT btrim(ims_pbm_xref.pbm_name) AS pbm_name,
        btrim(ims_pbm_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_pbm_xref.xref_to_payer_plan_num) AS xref_to_payer_plan_num,
        btrim(ims_pbm_xref.ipd_id) AS ipd_id,
        btrim(ims_pbm_xref.ipd_type) AS ipd_type,
        btrim(ims_pbm_xref.plan_name) AS plan_name,
        ims_pbm_xref.pbm_num,
        ims_pbm_xref.ims_processor_num,
        ims_pbm_xref.file_id,
        ims_pbm_xref.record_id
 FROM cleansed.ims_pbm_xref
 WHERE (ims_pbm_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_pbm_xref.file_id
 FROM cleansed.ims_pbm_xref
 GROUP BY ims_pbm_xref.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_ims_bridge AS
 SELECT btrim(ftf_ims_bridge.payer_name) AS payer_name,
        btrim(ftf_ims_bridge.code) AS code,
        btrim(ftf_ims_bridge.name) AS name,
        btrim(ftf_ims_bridge.state) AS state,
        btrim(ftf_ims_bridge.comments) AS comments,
        ftf_ims_bridge.plan_id,
        btrim(ftf_ims_bridge.plan_name) AS plan_name,
        btrim(ftf_ims_bridge.provider_name) AS provider_name,
        btrim(ftf_ims_bridge.plan_type_name) AS plan_type_name,
        ftf_ims_bridge.file_id,
        ftf_ims_bridge.record_id
 FROM cleansed.ftf_ims_bridge
 WHERE (ftf_ims_bridge.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_ims_bridge.file_id
 FROM cleansed.ftf_ims_bridge
 GROUP BY ftf_ims_bridge.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_qc_uniq_iqvia_model_plan_count AS
 SELECT iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.model;

CREATE  VIEW sandbox.vw_qc_uniq_paytype_plan_count AS
 SELECT iqvia_plan_preprocessed.paytype,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_uniq_payer_plan_count AS
 SELECT iqvia_plan_preprocessed.iqvia_payer_name,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_payer_name;

CREATE  VIEW sandbox.vw_qc_uniq_pbm_plan_count AS
 SELECT iqvia_plan_preprocessed.iqvia_pbm,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_pbm;

CREATE  VIEW sandbox.vw_qc_uniq_plan_model_codes AS
 SELECT iqvia_plan_preprocessed.iqvia_payer_name,
        iqvia_plan_preprocessed.paytype,
        iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_code) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_payer_name,
          iqvia_plan_preprocessed.paytype,
          iqvia_plan_preprocessed.model
 ORDER BY iqvia_plan_preprocessed.iqvia_payer_name,
          iqvia_plan_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_uniq_paytype_model_plan_count AS
 SELECT iqvia_plan_preprocessed.paytype,
        iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS plan_counts
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.paytype,
          iqvia_plan_preprocessed.model;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_paytype_plan_count AS
 SELECT ftf_health_plans_preprocessed.paytype,
        count(DISTINCT ftf_health_plans_preprocessed.ftf_health_plan_name) AS plan_count
 FROM sandbox.ftf_health_plans_preprocessed
 WHERE (ftf_health_plans_preprocessed.cycle_id IN ( SELECT max(ftf_health_plans_preprocessed.cycle_id) AS max
 FROM sandbox.ftf_health_plans_preprocessed))
 GROUP BY ftf_health_plans_preprocessed.paytype
 ORDER BY ftf_health_plans_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_paytype_plantype_plan_count AS
 SELECT ftf_health_plans_preprocessed.paytype,
        ftf_health_plans_preprocessed.ftf_health_plan_type,
        count(DISTINCT ftf_health_plans_preprocessed.ftf_health_plan_name) AS plan_count
 FROM sandbox.ftf_health_plans_preprocessed
 WHERE (ftf_health_plans_preprocessed.cycle_id IN ( SELECT max(ftf_health_plans_preprocessed.cycle_id) AS max
 FROM sandbox.ftf_health_plans_preprocessed))
 GROUP BY ftf_health_plans_preprocessed.paytype,
          ftf_health_plans_preprocessed.ftf_health_plan_type
 ORDER BY ftf_health_plans_preprocessed.paytype,
          ftf_health_plans_preprocessed.ftf_health_plan_type;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_restriction_group_plan_count AS
 SELECT ftf_restrictions_preprocessed_v1.grouped_restriction_level,
        count(DISTINCT ftf_restrictions_preprocessed_v1.ftf_health_plan_fid) AS plan_count
 FROM sandbox.ftf_restrictions_preprocessed_v1
 GROUP BY ftf_restrictions_preprocessed_v1.grouped_restriction_level
 ORDER BY ftf_restrictions_preprocessed_v1.grouped_restriction_level;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_restriction_detail_plan_count AS
 SELECT ftf_restrictions_preprocessed_v1.restriction_detail_text,
        count(DISTINCT ftf_restrictions_preprocessed_v1.ftf_health_plan_fid) AS plan_count
 FROM sandbox.ftf_restrictions_preprocessed_v1
 GROUP BY ftf_restrictions_preprocessed_v1.restriction_detail_text
 ORDER BY ftf_restrictions_preprocessed_v1.restriction_detail_text;

CREATE  VIEW sandbox.vw_curr_iqvia_plans_discard_v1 AS
 SELECT btrim(iqvia_plans_discard_v1.payer_id) AS payer_id,
        btrim(iqvia_plans_discard_v1.notes) AS notes,
        iqvia_plans_discard_v1.file_id,
        iqvia_plans_discard_v1.record_id
 FROM sandbox.iqvia_plans_discard_v1
 WHERE (iqvia_plans_discard_v1.file_id IN ( SELECT max(iqvia_plans_discard_v1.file_id) AS max
 FROM sandbox.iqvia_plans_discard_v1));

CREATE  VIEW sandbox.vw_curr_model_paytype_map_v1 AS
 SELECT btrim(model_paytype_map_v1.model) AS model,
        btrim(model_paytype_map_v1.paytype) AS paytype,
        btrim(model_paytype_map_v1.notes) AS notes,
        model_paytype_map_v1.file_id,
        model_paytype_map_v1.record_id
 FROM sandbox.model_paytype_map_v1
 WHERE (model_paytype_map_v1.file_id IN ( SELECT max(model_paytype_map_v1.file_id) AS max
 FROM sandbox.model_paytype_map_v1));

CREATE  VIEW sandbox.vw_curr_iqvia_payer_paytype_override_v1 AS
 SELECT btrim(iqvia_payer_paytype_override_v1.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override_v1.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override_v1.paytype) AS paytype,
        iqvia_payer_paytype_override_v1.file_id,
        iqvia_payer_paytype_override_v1.record_id
 FROM sandbox.iqvia_payer_paytype_override_v1
 WHERE (iqvia_payer_paytype_override_v1.file_id IN ( SELECT max(iqvia_payer_paytype_override_v1.file_id) AS max
 FROM sandbox.iqvia_payer_paytype_override_v1));

CREATE  VIEW sandbox.vw_curr_iqvia_paytypeindex_v1 AS
 SELECT btrim(iqvia_paytypeindex_v1.paytype_index) AS paytype_index,
        btrim(iqvia_paytypeindex_v1.paytype) AS paytype,
        iqvia_paytypeindex_v1.file_id,
        iqvia_paytypeindex_v1.record_id
 FROM sandbox.iqvia_paytypeindex_v1
 WHERE (iqvia_paytypeindex_v1.file_id IN ( SELECT max(iqvia_paytypeindex_v1.file_id) AS max
 FROM sandbox.iqvia_paytypeindex_v1));

CREATE  VIEW sandbox.vw_curr_drug_assignments_v1 AS
 SELECT drug_assignments_v1.drug_id,
        drug_assignments_v1.drug_seq,
        btrim(drug_assignments_v1.product) AS product,
        drug_assignments_v1.file_id,
        drug_assignments_v1.record_id
 FROM sandbox.drug_assignments_v1
 WHERE (drug_assignments_v1.file_id IN ( SELECT max(drug_assignments_v1.file_id) AS max
 FROM sandbox.drug_assignments_v1));

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plans_v1 AS
 SELECT replace(replace(btrim(raw_ftf_health_plans.formularyf_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS formularyf_id,
        replace(replace(btrim(raw_ftf_health_plans.provider_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_id,
        replace(replace(btrim(raw_ftf_health_plans.provider), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider,
        replace(replace(btrim(raw_ftf_health_plans.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plans.health_plan), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan,
        replace(replace(btrim(raw_ftf_health_plans.parent_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent_id,
        replace(replace(btrim(raw_ftf_health_plans.parent), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent,
        raw_ftf_health_plans.national_lives_count,
        replace(replace(btrim(raw_ftf_health_plans.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name,
        raw_ftf_health_plans.preferred_brand_tier
 FROM sandbox.raw_ftf_health_plans;

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plan_geography_v1 AS
 SELECT replace(replace(btrim(raw_ftf_health_plan_geography.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plan_geography.state_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_ftf_health_plan_geography.county_lives AS lives_coverage
 FROM sandbox.raw_ftf_health_plan_geography;

CREATE  VIEW sandbox.vw_curr_month_ftf_pbms_v1 AS
 SELECT replace(replace(btrim(raw_ftf_pbms.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan_id,
        replace(replace(btrim(raw_ftf_pbms.pbm_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_id,
        replace(replace(btrim(raw_ftf_pbms.pbm), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm,
        replace(replace(btrim(raw_ftf_pbms.pbm_function_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function_id,
        replace(replace(btrim(raw_ftf_pbms.pbm_function), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_function
 FROM sandbox.raw_ftf_pbms;

CREATE  VIEW sandbox.vw_curr_month_ftf_restrictions_v1 AS
 SELECT replace(replace(btrim(raw_ftf_restrictions.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan_id,
        replace(replace(btrim(raw_ftf_restrictions.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS drug_id,
        replace(replace(btrim(raw_ftf_restrictions.restriction_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_code,
        raw_ftf_restrictions.restriction_detail_id,
        replace(replace(btrim(raw_ftf_restrictions.restriction_detail_text), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_detail_text,
        replace(replace(btrim(raw_ftf_restrictions.restriction_addtnl_information_1), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_1,
        replace(replace(btrim(raw_ftf_restrictions.restriction_addtnl_information_2), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restriction_addtnl_information_2,
        replace(replace(btrim(raw_ftf_restrictions.step_count), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS step_count,
        replace(replace(btrim(raw_ftf_restrictions.pa_form), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pa_form,
        replace(replace(btrim(raw_ftf_restrictions.indication), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS indication,
        replace(replace(btrim(raw_ftf_restrictions.grouped_restriction_level), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS grouped_restriction_level
 FROM sandbox.raw_ftf_restrictions;

CREATE  VIEW sandbox.vw_curr_month_ims_plan_xref_v1 AS
 SELECT replace(replace(btrim(raw_iqvia_plan.payer_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_num,
        replace(replace(btrim(raw_iqvia_plan.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        replace(replace(btrim(raw_iqvia_plan.plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_num,
        replace(replace(btrim(raw_iqvia_plan.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_plan.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_iqvia_plan.model), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS model,
        replace(replace(btrim(raw_iqvia_plan.city), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS city,
        replace(replace(btrim(raw_iqvia_plan.hq_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS hq_state,
        replace(replace(btrim(raw_iqvia_plan.operating_state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS operating_state,
        raw_iqvia_plan.months_with_data
 FROM sandbox.raw_iqvia_plan;

CREATE  VIEW sandbox.vw_curr_month_ims_pbm_xref_v1 AS
 SELECT replace(replace(btrim(raw_iqvia_pbm.pbm_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pbm_name,
        replace(replace(btrim(raw_iqvia_pbm.payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm.xref_to_payer_plan_num), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS xref_to_payer_plan_num,
        replace(replace(btrim(raw_iqvia_pbm.ipd_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_id,
        replace(replace(btrim(raw_iqvia_pbm.ipd_type), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS ipd_type,
        replace(replace(btrim(raw_iqvia_pbm.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        raw_iqvia_pbm.pbm_num,
        raw_iqvia_pbm.ims_processor_num
 FROM sandbox.raw_iqvia_pbm;

CREATE  VIEW sandbox.vw_curr_month_ftf_ims_bridge_v1 AS
 SELECT replace(replace(btrim(raw_teva_ims_bridge.payer_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS payer_name,
        replace(replace(btrim(raw_teva_ims_bridge.code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS code,
        replace(replace(btrim(raw_teva_ims_bridge.name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS name,
        replace(replace(btrim(raw_teva_ims_bridge.state), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS state,
        replace(replace(btrim(raw_teva_ims_bridge.comments), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS comments,
        raw_teva_ims_bridge.plan_id,
        replace(replace(btrim(raw_teva_ims_bridge.plan_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_name,
        replace(replace(btrim(raw_teva_ims_bridge.provider_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider_name,
        replace(replace(btrim(raw_teva_ims_bridge.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name
 FROM sandbox.raw_teva_ims_bridge;

CREATE  VIEW sandbox.vw_curr_ftf_plans_paytypeindex_v1 AS
 SELECT btrim(ftf_plans_paytypeindex_v1.ftf_health_plantype) AS ftf_health_plantype,
        ftf_plans_paytypeindex_v1.paytype_index,
        ftf_plans_paytypeindex_v1.file_id,
        ftf_plans_paytypeindex_v1.record_id
 FROM sandbox.ftf_plans_paytypeindex_v1
 WHERE (ftf_plans_paytypeindex_v1.file_id IN ( SELECT max(ftf_plans_paytypeindex_v1.file_id) AS max
 FROM sandbox.ftf_plans_paytypeindex_v1));

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies_v1 AS
 SELECT replace(replace(btrim(raw_ftf_formularies.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan_id,
        replace(replace(btrim(raw_ftf_formularies.drug_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS drug_id,
        replace(replace(btrim(raw_ftf_formularies.tier_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(raw_ftf_formularies.restrictions), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(raw_ftf_formularies.reason_code), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(raw_ftf_formularies.reason_code_description), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(raw_ftf_formularies.pharmacy_status), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS pharmacy_status
 FROM sandbox.raw_ftf_formularies;

CREATE  VIEW sandbox.vw_curr_ftf_pbm_functions_v1 AS
 SELECT ftf_pbm_functions_v1.pbm_function_id,
        btrim(ftf_pbm_functions_v1.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions_v1.notes) AS notes,
        ftf_pbm_functions_v1.used,
        ftf_pbm_functions_v1.file_id,
        ftf_pbm_functions_v1.record_id
 FROM sandbox.ftf_pbm_functions_v1
 WHERE (ftf_pbm_functions_v1.file_id IN ( SELECT max(ftf_pbm_functions_v1.file_id) AS max
 FROM sandbox.ftf_pbm_functions_v1));

CREATE  VIEW sandbox.vw_override_bridge_ftf_plan_types_v1 AS
 SELECT btrim(override_bridge_ftf_plan_types_v1.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v1.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(override_bridge_ftf_plan_types_v1.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(override_bridge_ftf_plan_types_v1.override_ftf_health_plan_type) AS override_ftf_health_plan_type,
        override_bridge_ftf_plan_types_v1.override_precedence,
        override_bridge_ftf_plan_types_v1.file_id,
        override_bridge_ftf_plan_types_v1.record_id
 FROM sandbox.override_bridge_ftf_plan_types_v1
 WHERE (override_bridge_ftf_plan_types_v1.file_id IN ( SELECT max(override_bridge_ftf_plan_types_v1.file_id) AS max
 FROM sandbox.override_bridge_ftf_plan_types_v1));

CREATE  VIEW sandbox.vw_delete_bridge_ftf_plan_types_v1 AS
 SELECT btrim(delete_bridge_ftf_plan_types_v1.ftf_health_plan_name_regex) AS ftf_health_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v1.iqvia_payer_name_regex) AS iqvia_payer_name_regex,
        btrim(delete_bridge_ftf_plan_types_v1.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(delete_bridge_ftf_plan_types_v1.delete_flag) AS delete_flag,
        delete_bridge_ftf_plan_types_v1.file_id,
        delete_bridge_ftf_plan_types_v1.record_id
 FROM sandbox.delete_bridge_ftf_plan_types_v1
 WHERE (delete_bridge_ftf_plan_types_v1.file_id IN ( SELECT max(delete_bridge_ftf_plan_types_v1.file_id) AS max
 FROM sandbox.delete_bridge_ftf_plan_types_v1));

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plans_cdw AS
 SELECT (replace(replace(btrim(raw_ftf_health_plans_cdw.formularyf_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS formularyf_id,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.provider_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS provider_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.provider), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS provider,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.health_plan_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS health_plan_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.health_plan), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS health_plan,
        (replace(replace(btrim(raw_ftf_health_plans_cdw.parent_id), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)))::float AS parent_id,
        replace(replace(btrim(raw_ftf_health_plans_cdw.parent), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS parent,
        raw_ftf_health_plans_cdw.national_lives_count,
        replace(replace(btrim(raw_ftf_health_plans_cdw.plan_type_name), '   '::varchar(3), ' '::varchar(1)), '  '::varchar(2), ' '::varchar(1)) AS plan_type_name,
        (raw_ftf_health_plans_cdw.preferred_brand_tier)::int AS preferred_brand_tier
 FROM sandbox.raw_ftf_health_plans_cdw
 WHERE (raw_ftf_health_plans_cdw.file_id IN ( SELECT max(raw_ftf_health_plans_cdw.file_id) AS max
 FROM sandbox.raw_ftf_health_plans_cdw));

CREATE  VIEW sandbox.vw_curr_ftf_plan_master_file_op_cdw_v1 AS
 SELECT ftf_plan_master_file_op_cdw_v1.ftf_health_plan_fid,
        ftf_plan_master_file_op_cdw_v1.product,
        ftf_plan_master_file_op_cdw_v1.ftf_health_plan_name,
        ftf_plan_master_file_op_cdw_v1.coverage_category,
        ftf_plan_master_file_op_cdw_v1.ftf_provider_name,
        ftf_plan_master_file_op_cdw_v1.paytype,
        ftf_plan_master_file_op_cdw_v1.ftf_health_plan_type,
        ftf_plan_master_file_op_cdw_v1.plan_lives,
        ftf_plan_master_file_op_cdw_v1.key_controlling_plan_formulary,
        ftf_plan_master_file_op_cdw_v1.key_controlling_account,
        ftf_plan_master_file_op_cdw_v1.key_controlling_parent,
        ftf_plan_master_file_op_cdw_v1.payer_pbm,
        ftf_plan_master_file_op_cdw_v1.key_pbm,
        ftf_plan_master_file_op_cdw_v1.iqvia_payer_name,
        ftf_plan_master_file_op_cdw_v1.iqvia_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_formulary_management_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_plan_master_file_op_cdw_v1.ftf_claims_processing_pbm,
        ftf_plan_master_file_op_cdw_v1.pref_brand_tier,
        ftf_plan_master_file_op_cdw_v1.pharmacy_status,
        ftf_plan_master_file_op_cdw_v1.ftf_tier,
        ftf_plan_master_file_op_cdw_v1.restrictions,
        ftf_plan_master_file_op_cdw_v1.copay_tier,
        ftf_plan_master_file_op_cdw_v1.restriction_category,
        ftf_plan_master_file_op_cdw_v1.step,
        ftf_plan_master_file_op_cdw_v1.botox,
        ftf_plan_master_file_op_cdw_v1.prescriber_pa,
        ftf_plan_master_file_op_cdw_v1.patient_pa,
        ftf_plan_master_file_op_cdw_v1.medical_records,
        ftf_plan_master_file_op_cdw_v1.criteria_unspec,
        ftf_plan_master_file_op_cdw_v1.cycle_id,
        ftf_plan_master_file_op_cdw_v1.modified_time,
        ftf_plan_master_file_op_cdw_v1.modified_by
 FROM sandbox.ftf_plan_master_file_op_cdw_v1
 WHERE (ftf_plan_master_file_op_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_plan_master_file_op_cdw_v1'::varchar(30)))))));

CREATE  VIEW sandbox.vw_curr_key_ctl_account_summary_cdw_v1 AS
 SELECT key_ctl_account_summary_cdw_v1.paytype,
        key_ctl_account_summary_cdw_v1.ftf_health_plan_type,
        key_ctl_account_summary_cdw_v1.key_controlling_account,
        key_ctl_account_summary_cdw_v1.current_month_lives,
        key_ctl_account_summary_cdw_v1.previous_month_lives,
        key_ctl_account_summary_cdw_v1.cycle_id,
        key_ctl_account_summary_cdw_v1.modified_time,
        key_ctl_account_summary_cdw_v1.modified_by
 FROM sandbox.key_ctl_account_summary_cdw_v1
 WHERE (key_ctl_account_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'key_ctl_account_summary_cdw_v1'::varchar(30)))))));

CREATE  VIEW sandbox.vw_curr_key_pbm_summary_cdw_v1 AS
 SELECT key_pbm_summary_cdw_v1.paytype,
        key_pbm_summary_cdw_v1.ftf_health_plan_type,
        key_pbm_summary_cdw_v1.key_pbm,
        key_pbm_summary_cdw_v1.current_month_lives,
        key_pbm_summary_cdw_v1.previous_month_lives,
        key_pbm_summary_cdw_v1.cycle_id,
        key_pbm_summary_cdw_v1.modified_time,
        key_pbm_summary_cdw_v1.modified_by
 FROM sandbox.key_pbm_summary_cdw_v1
 WHERE (key_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'key_pbm_summary_cdw_v1'::varchar(22)))))));

CREATE  VIEW sandbox.vw_curr_iqvia_payer_name_summary_cdw_v1 AS
 SELECT iqvia_payer_name_summary_cdw_v1.paytype,
        iqvia_payer_name_summary_cdw_v1.iqvia_payer_name,
        iqvia_payer_name_summary_cdw_v1.current_month_lives,
        iqvia_payer_name_summary_cdw_v1.previous_month_lives,
        iqvia_payer_name_summary_cdw_v1.cycle_id,
        iqvia_payer_name_summary_cdw_v1.modified_time,
        iqvia_payer_name_summary_cdw_v1.modified_by
 FROM sandbox.iqvia_payer_name_summary_cdw_v1
 WHERE (iqvia_payer_name_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_payer_name_summary_cdw_v1'::varchar(31)))))));

CREATE  VIEW sandbox.vw_curr_ftf_formulary_management_pbm_summary_cdw_v1 AS
 SELECT ftf_formulary_management_pbm_summary_cdw_v1.paytype,
        ftf_formulary_management_pbm_summary_cdw_v1.ftf_formulary_management_pbm,
        ftf_formulary_management_pbm_summary_cdw_v1.current_month_lives,
        ftf_formulary_management_pbm_summary_cdw_v1.previous_month_lives,
        ftf_formulary_management_pbm_summary_cdw_v1.cycle_id,
        ftf_formulary_management_pbm_summary_cdw_v1.modified_time,
        ftf_formulary_management_pbm_summary_cdw_v1.modified_by
 FROM sandbox.ftf_formulary_management_pbm_summary_cdw_v1
 WHERE (ftf_formulary_management_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formulary_management_pbm_summary_cdw_v1'::varchar(43)))))));

CREATE  VIEW sandbox.vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1 AS
 SELECT ftf_formulary_influencer_pbm_summary_cdw_v1.paytype,
        ftf_formulary_influencer_pbm_summary_cdw_v1.ftf_formulary_influencer_pbm,
        ftf_formulary_influencer_pbm_summary_cdw_v1.current_month_lives,
        ftf_formulary_influencer_pbm_summary_cdw_v1.previous_month_lives,
        ftf_formulary_influencer_pbm_summary_cdw_v1.cycle_id,
        ftf_formulary_influencer_pbm_summary_cdw_v1.modified_time,
        ftf_formulary_influencer_pbm_summary_cdw_v1.modified_by
 FROM sandbox.ftf_formulary_influencer_pbm_summary_cdw_v1
 WHERE (ftf_formulary_influencer_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_formulary_influencer_pbm_summary_cdw_v1'::varchar(43)))))));

CREATE  VIEW sandbox.vw_curr_ftf_claims_processing_pbm_summary_cdw_v1 AS
 SELECT ftf_claims_processing_pbm_summary_cdw_v1.paytype,
        ftf_claims_processing_pbm_summary_cdw_v1.ftf_claims_processing_pbm,
        ftf_claims_processing_pbm_summary_cdw_v1.current_month_lives,
        ftf_claims_processing_pbm_summary_cdw_v1.previous_month_lives,
        ftf_claims_processing_pbm_summary_cdw_v1.cycle_id,
        ftf_claims_processing_pbm_summary_cdw_v1.modified_time,
        ftf_claims_processing_pbm_summary_cdw_v1.modified_by
 FROM sandbox.ftf_claims_processing_pbm_summary_cdw_v1
 WHERE (ftf_claims_processing_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_claims_processing_pbm_summary_cdw_v1'::varchar(40)))))));

CREATE  VIEW sandbox.vw_curr_st_lives_summary_cdw_v1 AS
 SELECT st_lives_summary_cdw_v1.ftf_health_plan_fid,
        st_lives_summary_cdw_v1.ftf_health_plan_name,
        st_lives_summary_cdw_v1.ftf_provider_name,
        st_lives_summary_cdw_v1.ftf_parent_name,
        st_lives_summary_cdw_v1.paytype,
        st_lives_summary_cdw_v1.ftf_health_plan_type,
        st_lives_summary_cdw_v1.key_controlling_account,
        st_lives_summary_cdw_v1.key_controlling_plan_formulary,
        st_lives_summary_cdw_v1.key_controlling_parent,
        st_lives_summary_cdw_v1.payer_pbm,
        st_lives_summary_cdw_v1.key_pbm,
        st_lives_summary_cdw_v1.iqvia_payer_name,
        st_lives_summary_cdw_v1.iqvia_pbm,
        st_lives_summary_cdw_v1.state,
        st_lives_summary_cdw_v1.ftf_state_hp_lives,
        st_lives_summary_cdw_v1.pref_brand_tier,
        st_lives_summary_cdw_v1.ajovy_formulary,
        st_lives_summary_cdw_v1.aimovig_formulary,
        st_lives_summary_cdw_v1.emgality_formulary,
        st_lives_summary_cdw_v1.cycle_id,
        st_lives_summary_cdw_v1.modified_time,
        st_lives_summary_cdw_v1.modified_by
 FROM sandbox.st_lives_summary_cdw_v1
 WHERE (st_lives_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'st_lives_summary_cdw_v1'::varchar(23)))))));

CREATE  VIEW sandbox.vw_curr_ftf_hp_id_key_controlling_account_cdw_v1 AS
 SELECT ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_fid,
        ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_name,
        ftf_hp_id_key_controlling_account_cdw_v1.ftf_provider_name,
        ftf_hp_id_key_controlling_account_cdw_v1.payment_type,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_account,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_plan_formulary,
        ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_parent,
        ftf_hp_id_key_controlling_account_cdw_v1.payer_pbm,
        ftf_hp_id_key_controlling_account_cdw_v1.key_pbm,
        ftf_hp_id_key_controlling_account_cdw_v1.cycle_id,
        ftf_hp_id_key_controlling_account_cdw_v1.modified_time,
        ftf_hp_id_key_controlling_account_cdw_v1.modified_by
 FROM sandbox.ftf_hp_id_key_controlling_account_cdw_v1
 WHERE (ftf_hp_id_key_controlling_account_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hp_id_key_controlling_account_cdw_v1'::varchar(40)))))));

CREATE  VIEW sandbox.vw_curr_ftf_hp_id_key_pbm_cdw_v1 AS
 SELECT ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_fid,
        ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_name,
        ftf_hp_id_key_pbm_cdw_v1.ftf_provider_name,
        ftf_hp_id_key_pbm_cdw_v1.payment_type,
        ftf_hp_id_key_pbm_cdw_v1.key_pbm,
        ftf_hp_id_key_pbm_cdw_v1.assigned_iqvia_pbm,
        ftf_hp_id_key_pbm_cdw_v1.cycle_id,
        ftf_hp_id_key_pbm_cdw_v1.modified_time,
        ftf_hp_id_key_pbm_cdw_v1.modified_by
 FROM sandbox.ftf_hp_id_key_pbm_cdw_v1
 WHERE (ftf_hp_id_key_pbm_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'ftf_hp_id_key_pbm_cdw_v1'::varchar(24)))))));

CREATE  VIEW sandbox.vw_curr_paytype_product_coverage_category_cdw_v1 AS
 SELECT paytype_product_coverage_category_cdw_v1.paytype,
        paytype_product_coverage_category_cdw_v1.product,
        paytype_product_coverage_category_cdw_v1.metric,
        paytype_product_coverage_category_cdw_v1.lives,
        paytype_product_coverage_category_cdw_v1.cycle_id,
        paytype_product_coverage_category_cdw_v1.modified_time,
        paytype_product_coverage_category_cdw_v1.modified_by
 FROM sandbox.paytype_product_coverage_category_cdw_v1
 WHERE (paytype_product_coverage_category_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_coverage_category_cdw_v1'::varchar(40)))))));

CREATE  VIEW sandbox.vw_curr_paytype_product_copay_tier_cdw_v1 AS
 SELECT paytype_product_copay_tier_cdw_v1.paytype,
        paytype_product_copay_tier_cdw_v1.product,
        paytype_product_copay_tier_cdw_v1.metric,
        paytype_product_copay_tier_cdw_v1.lives,
        paytype_product_copay_tier_cdw_v1.cycle_id,
        paytype_product_copay_tier_cdw_v1.modified_time,
        paytype_product_copay_tier_cdw_v1.modified_by
 FROM sandbox.paytype_product_copay_tier_cdw_v1
 WHERE (paytype_product_copay_tier_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_copay_tier_cdw_v1'::varchar(33)))))));

CREATE  VIEW sandbox.vw_curr_paytype_product_step_category_cdw_v1 AS
 SELECT paytype_product_step_category_cdw_v1.paytype,
        paytype_product_step_category_cdw_v1.product,
        paytype_product_step_category_cdw_v1.metric,
        paytype_product_step_category_cdw_v1.lives,
        paytype_product_step_category_cdw_v1.cycle_id,
        paytype_product_step_category_cdw_v1.modified_time,
        paytype_product_step_category_cdw_v1.modified_by
 FROM sandbox.paytype_product_step_category_cdw_v1
 WHERE (paytype_product_step_category_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_step_category_cdw_v1'::varchar(36)))))));

CREATE  VIEW sandbox.vw_curr_paytype_product_patient_pa_cdw_v1 AS
 SELECT paytype_product_patient_pa_cdw_v1.paytype,
        paytype_product_patient_pa_cdw_v1.product,
        paytype_product_patient_pa_cdw_v1.metric,
        paytype_product_patient_pa_cdw_v1.lives,
        paytype_product_patient_pa_cdw_v1.cycle_id,
        paytype_product_patient_pa_cdw_v1.modified_time,
        paytype_product_patient_pa_cdw_v1.modified_by
 FROM sandbox.paytype_product_patient_pa_cdw_v1
 WHERE (paytype_product_patient_pa_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'paytype_product_patient_pa_cdw_v1'::varchar(33)))))));

CREATE  VIEW sandbox.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1 AS
 SELECT key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account,
        key_controlling_account_product_cov_category_paytype_cdw_v1.paytype,
        key_controlling_account_product_cov_category_paytype_cdw_v1.product,
        key_controlling_account_product_cov_category_paytype_cdw_v1.metric,
        key_controlling_account_product_cov_category_paytype_cdw_v1.lives,
        key_controlling_account_product_cov_category_paytype_cdw_v1.cycle_id,
        key_controlling_account_product_cov_category_paytype_cdw_v1.modified_time,
        key_controlling_account_product_cov_category_paytype_cdw_v1.modified_by
 FROM sandbox.key_controlling_account_product_cov_category_paytype_cdw_v1
 WHERE (key_controlling_account_product_cov_category_paytype_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'key_controlling_account_product_cov_category_paytype_cdw_v1'::varchar(59)))))));

CREATE  VIEW sandbox.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1 AS
 SELECT key_pbm_product_cov_category_paytype_cdw_v1.key_pbm,
        key_pbm_product_cov_category_paytype_cdw_v1.paytype,
        key_pbm_product_cov_category_paytype_cdw_v1.product,
        key_pbm_product_cov_category_paytype_cdw_v1.metric,
        key_pbm_product_cov_category_paytype_cdw_v1.lives,
        key_pbm_product_cov_category_paytype_cdw_v1.cycle_id,
        key_pbm_product_cov_category_paytype_cdw_v1.modified_time,
        key_pbm_product_cov_category_paytype_cdw_v1.modified_by
 FROM sandbox.key_pbm_product_cov_category_paytype_cdw_v1
 WHERE (key_pbm_product_cov_category_paytype_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'key_pbm_product_cov_category_paytype_cdw_v1'::varchar(43)))))));

CREATE  VIEW sandbox.vw_curr_iqvia_pbm_summary_cdw_v1 AS
 SELECT iqvia_pbm_summary_cdw_v1.paytype,
        iqvia_pbm_summary_cdw_v1.iqvia_pbm,
        iqvia_pbm_summary_cdw_v1.current_month_lives,
        iqvia_pbm_summary_cdw_v1.previous_month_lives,
        iqvia_pbm_summary_cdw_v1.cycle_id,
        iqvia_pbm_summary_cdw_v1.modified_time,
        iqvia_pbm_summary_cdw_v1.modified_by
 FROM sandbox.iqvia_pbm_summary_cdw_v1
 WHERE (iqvia_pbm_summary_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'iqvia_pbm_summary_cdw_v1'::varchar(24)))))));

CREATE  VIEW sandbox.vw_ftf_delta_report AS
 SELECT a.ftf_health_plan_fid AS "FTF Health Plan FID",
        a.ftf_health_plan_name AS "FTF Health Plan Name",
        a.ftf_provider_fid AS "FTF Provider FID",
        a.ftf_provider_name AS "FTF Provider Name",
        a.ftf_parent_name AS "FTF Parent Name",
        a.paytype AS "Pay Type",
        a.ftf_health_plan_type AS "FTF Health Plan Type",
        a.key_controlling_account AS "Key Controlling Account",
        a.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        a.key_controlling_parent AS "Key Controlling Parent",
        a.payer_pbm AS "Payer/PBM",
        a.key_pbm AS "Key PBM",
        a.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        a.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        a.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        a.lives_mn AS Lives,
        a.iqvia_payer_name AS "IQVIA Payer Name best matched to FTF Plan",
        a.iqvia_pbm AS "IQVIA PBM best matched to FTF Plan",
        a.Coverage_Category_Ajovy AS "Coverage Category for Ajovy",
        a.Coverage_Category_Aimovig AS "Coverage Category for Aimovig",
        a.Coverage_Category_Emgality AS "Coverage Category for Emgality",
        a.pref_brand_tier AS "Pref Brand Tier",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan FID Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider FID Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Provider Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_parent_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Parent Name Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_paytype = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pay Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Type Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan/Formulary Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payer/PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_management_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Management PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_influencer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Formulary Influencer PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_claims_processing_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Claims Processing PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_lives_mn = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Lives Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name best matched to FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM best matched to FTF Plan Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Ajovy = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Ajovy Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Aimovig = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Aimovig Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Emgality = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Coverage Category for Emgality Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_pref_brand_tier = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Pref Brand Tier Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        a.month_flag AS "Month Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        a.change_in_lives AS "Change in Lives",
        tbl_lvl_audit.date_run,
        (to_timestamptz((a.cycle_id)::float))::timestamp AS modified_time
 FROM (sandbox.vw_curr_comparison_ftf_health_plan_fid_cdw_v1 a LEFT  JOIN sandbox.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_ftf_health_plan_fid_cdw_v1'::varchar(37))))
 GROUP BY a.ftf_health_plan_fid,
          a.ftf_health_plan_name,
          a.ftf_provider_fid,
          a.ftf_provider_name,
          a.ftf_parent_name,
          a.paytype,
          a.ftf_health_plan_type,
          a.key_controlling_account,
          a.key_controlling_plan_formulary,
          a.key_controlling_parent,
          a.payer_pbm,
          a.key_pbm,
          a.ftf_formulary_management_pbm,
          a.ftf_formulary_influencer_pbm,
          a.ftf_claims_processing_pbm,
          a.lives_mn,
          a.iqvia_payer_name,
          a.iqvia_pbm,
          a.Coverage_Category_Ajovy,
          a.Coverage_Category_Aimovig,
          a.Coverage_Category_Emgality,
          a.pref_brand_tier,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_provider_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_parent_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_paytype = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_management_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_formulary_influencer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_claims_processing_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_lives_mn = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Ajovy = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Aimovig = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_Coverage_Category_Emgality = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_pref_brand_tier = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END,
          a.month_flag,
          CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END,
          a.change_in_lives,
          tbl_lvl_audit.date_run,
          (to_timestamptz((a.cycle_id)::float))::timestamp
 ORDER BY a.ftf_health_plan_fid;

CREATE  VIEW sandbox.vw_curr_payer_spine25_plan_teva_brands_cdw_v1 AS
 SELECT payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_code,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_name,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_payer_name,
        payer_spine25_plan_teva_brands_cdw_v1.iqvia_pbm,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_plan_formulary,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_account,
        payer_spine25_plan_teva_brands_cdw_v1.key_controlling_parent,
        payer_spine25_plan_teva_brands_cdw_v1.payer_pbm,
        payer_spine25_plan_teva_brands_cdw_v1.payment_type,
        payer_spine25_plan_teva_brands_cdw_v1.ajovy_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.aimovig_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.emgality_access_for_ftf_plan,
        payer_spine25_plan_teva_brands_cdw_v1.lives_plan_kcf_lvl,
        payer_spine25_plan_teva_brands_cdw_v1.lives_plan_lvl,
        payer_spine25_plan_teva_brands_cdw_v1.apportionment_factor,
        payer_spine25_plan_teva_brands_cdw_v1.saba_trx
 FROM sandbox.payer_spine25_plan_teva_brands_cdw_v1
 WHERE (payer_spine25_plan_teva_brands_cdw_v1.cycle_id IN ( SELECT max(b.cycle_id) AS max
 FROM (sandbox.tbl_lvl_audit a JOIN sandbox.process_audit_tbl b ON (((a.process_id = b.process_id) AND (a.cycle_id = b.cycle_id))))
 WHERE ((b.status = ANY (ARRAY['COMPLETED'::varchar(9), 'INITIATED'::varchar(9)])) AND (a.tbl_id IN ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'payer_spine25_plan_teva_brands_cdw_v1'::varchar(37)))))));

CREATE  VIEW sandbox.access_granularity_ftf AS
 SELECT vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy AS "Coverage Category for Ajovy",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig AS "Coverage Category for Aimovig",
        vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality AS "Coverage Category for Emgality",
        count(DISTINCT vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_fid) AS "FTF Health Plan FID",
        vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_pivot_plan_prod_master_cdw_v1.paytype AS "Pay Type",
        sum(vw_curr_pivot_plan_prod_master_cdw_v1.lives_mn) AS Lives
 FROM sandbox.vw_curr_pivot_plan_prod_master_cdw_v1
 GROUP BY vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_plan_formulary,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Ajovy,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Aimovig,
          vw_curr_pivot_plan_prod_master_cdw_v1.Coverage_Category_Emgality,
          vw_curr_pivot_plan_prod_master_cdw_v1.paytype,
          vw_curr_pivot_plan_prod_master_cdw_v1.ftf_health_plan_type,
          vw_curr_pivot_plan_prod_master_cdw_v1.key_controlling_account;

CREATE  VIEW sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.restriction_code,
        a.restriction_detail_id,
        a.restriction_detail_text,
        a.restriction_addtnl_information_1,
        a.restriction_addtnl_information_2,
        a.step_count,
        a.pa_form,
        a.indication,
        a.grouped_restriction_level
 FROM (sandbox.vw_curr_month_ftf_restrictions_cdw a JOIN sandbox.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.restriction_code,
        a.restriction_detail_id,
        a.restriction_detail_text,
        a.restriction_addtnl_information_1,
        a.restriction_addtnl_information_2,
        a.step_count,
        a.pa_form,
        a.indication,
        a.grouped_restriction_level
 FROM (sandbox.vw_prev_month_ftf_restrictions_cdw a JOIN sandbox.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.tier_code,
        a.restrictions,
        a.reason_code,
        a.reason_code_description,
        a.pharmacy_status
 FROM (sandbox.vw_curr_month_ftf_formularies_cdw a JOIN sandbox.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW sandbox.vw_prev_month_ftf_formularies_cdw_required_drugs AS
 SELECT a.health_plan_id,
        a.drug_id,
        a.tier_code,
        a.restrictions,
        a.reason_code,
        a.reason_code_description,
        a.pharmacy_status
 FROM (sandbox.vw_prev_month_ftf_formularies_cdw a JOIN sandbox.vw_curr_drug_assignments_cdw drug_assignments ON ((a.drug_id = drug_assignments.drug_id)));

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies_cdw_v2 AS
 SELECT (replace(replace(btrim(ftf_formularies.health_plan_id), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)))::float AS health_plan_id,
        (replace(replace(btrim(ftf_formularies.drug_id), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)))::float AS drug_id,
        replace(replace(btrim(ftf_formularies.tier_code), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)) AS tier_code,
        replace(replace(btrim(ftf_formularies.restrictions), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)) AS restrictions,
        replace(replace(btrim(ftf_formularies.reason_code), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)) AS reason_code,
        replace(replace(btrim(ftf_formularies.reason_code_description), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)) AS reason_code_description,
        replace(replace(btrim(ftf_formularies.pharmacy_status), ' '::varchar(1), ' '::varchar(1)), ' '::varchar(1), ' '::varchar(1)) AS pharmacy_status,
        ftf_formularies.Market_Access_Coverage
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW sandbox.vw_comparison_iqvia_fid_delta_report AS
 SELECT a.iqvia_plan_code AS "IQVIA Plan Code",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_code = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Code Flag",
        a.iqvia_plan_name AS "IQVIA Plan Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Plan Name Flag",
        a.iqvia_payer_name AS "IQVIA Payer Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_payer_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Payer Name Flag",
        a.iqvia_pbm AS "IQVIA PBM",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA PBM Flag",
        a.payment_type AS "Payment Type",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payment_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Payment Type Flag",
        a.iqvia_model AS "IQVIA Model ",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_iqvia_model = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "IQVIA Model  Flag",
        a.ftf_health_plan_fid AS "FTF Plan ID",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_fid = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Plan ID Flag",
        a.ftf_health_plan_name AS "FTF Plan Name",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_name = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Plan Name Flag",
        a.ftf_health_plan_type AS "FTF Health Plan Type",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ftf_health_plan_type = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "FTF Health Plan Type Flag",
        a.key_controlling_plan_formulary AS "Key Controlling Plan/Formulary",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_plan_formulary = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Plan/Formulary Flag",
        a.key_controlling_account AS "Key Controlling Account",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_account = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Account Flag",
        a.key_controlling_parent AS "Key Controlling Parent",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_controlling_parent = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key Controlling Parent Flag",
        a.payer_pbm AS "PBM/Payer",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_payer_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "PBM/Payer Flag",
        a.ajovy_access_for_ftf_plan AS "Ajovy Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_ajovy_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Ajovy Access for FTF Plan Flag",
        a.aimovig_access_for_ftf_plan AS "Aimovig Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_aimovig_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Aimovig Access for FTF Plan Flag",
        a.emgality_access_for_ftf_plan AS "Emgality Access for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_emgality_access_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Emgality Access for FTF Plan Flag",
        a.total_lives_for_ftf_plan AS "Total Lives for FTF Plan",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_total_lives_for_ftf_plan = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Total Lives for FTF Plan Flag",
        a.key_pbm AS "Key PBM",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change_key_pbm = 0) THEN 'TRUE'::varchar(4) ELSE 'FALSE'::varchar(5) END AS "Key PBM Flag",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN 'Added'::varchar(5) WHEN (a.status = 'Delete'::varchar(6)) THEN 'Deleted'::varchar(7) ELSE a.status END AS Status,
        a.change_in_lives AS "Change in Lives",
        CASE WHEN (a.status = 'New'::varchar(3)) THEN a.status WHEN (a.status = 'Delete'::varchar(6)) THEN a.status WHEN (a.change > 0) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Final Flag",
        round((a.total_lives_for_ftf_plan / b.ck), 0) AS "Apportioned Lives for FTF/IQVIA Plan",
        a.month_flag,
        tbl_lvl_audit.date_run,
        (to_timestamptz((a.cycle_id)::float))::timestamp AS modified_time
 FROM ((sandbox.vw_curr_comparison_iqvia_fid_plans_cdw_v1 a LEFT  JOIN ( SELECT vw_curr_comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid,
        count(*) AS ck
 FROM sandbox.vw_curr_comparison_iqvia_fid_plans_cdw_v1
 GROUP BY vw_curr_comparison_iqvia_fid_plans_cdw_v1.ftf_health_plan_fid) b ON ((a.ftf_health_plan_fid = b.ftf_health_plan_fid))) LEFT  JOIN sandbox.tbl_lvl_audit tbl_lvl_audit ON ((tbl_lvl_audit.cycle_id = a.cycle_id)))
 WHERE (tbl_lvl_audit.tbl_id = ( SELECT tbl_info.tbl_id
 FROM sandbox.tbl_info
 WHERE (tbl_info.tbl_name = 'comparison_iqvia_fid_plans_cdw_v1'::varchar(33))))
 ORDER BY a.iqvia_plan_code,
          a.ftf_health_plan_fid,
          a.month_flag;

CREATE  VIEW sandbox.vw_teva_iqvia_bridge_mismatch_analysis AS
 SELECT bridge_dt.iqvia_payer_name AS "IQVIA Payer Name",
        bridge_dt.iqvia_plan_code AS IQVIA_Plan_Code,
        bridge_dt.iqvia_plan_name AS IQVIA_Plan_Name,
        bridge_dt.ftf_health_plan_fid AS "FTF Health Plan FID",
        bridge_dt.ftf_health_plan_name AS "FTF Health Plan Name",
        ftf_health_plans_preprocessed.ftf_provider_fid AS "FTF Provider FID",
        bridge_dt.ftf_provider_name AS "FTF Provider Name",
        bridge_dt.ftf_health_plan_type AS "FTF Health Plan Type",
        bridge_dt.paytype_index AS PayTypeIndex,
        bridge_dt.paytype AS "Pay Type",
        bridge_dt.hp_type AS "HP Type",
        bridge_dt.iqvia_paytype AS "IQVIA Pay Type",
        bridge_dt.model AS Model,
        bridge_dt.check_pay_types AS "Check Pay Types",
        bridge_dt.check_hp_types AS "Check HP Types",
        bridge_dt.iqvia_pbm AS "IQVIA PBM",
        bridge_dt.old_ftf_health_plan_type AS "Old_FTF Health Plan Type",
        (to_timestamptz((bridge_dt.cycle_id)::float))::timestamp AS modified_time,
        process_audit_tbl.date_run
 FROM ((sandbox.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 bridge_dt LEFT  JOIN sandbox.vw_curr_ftf_health_plans_preprocessed_cdw_v1 ftf_health_plans_preprocessed ON ((bridge_dt.ftf_health_plan_fid = ftf_health_plans_preprocessed.ftf_health_plan_fid))) LEFT  JOIN sandbox.process_audit_tbl process_audit_tbl ON (((bridge_dt.cycle_id = process_audit_tbl.cycle_id) AND (process_audit_tbl.process_id = 1) AND (process_audit_tbl.status = 'COMPLETED'::varchar(9)))))
 WHERE (coalesce(bridge_dt.check_delete, ''::varchar) <> 'DELETE'::varchar(6));

CREATE  VIEW sandbox.vw_ftf_formularies_pharmacy_status_check AS
 SELECT vw_curr_ftf_formularies_preprocessed_cdw_v1.drug_seq AS "Drug Seq",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.ftf_health_plan_fid AS "FTF Health Plan FID",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.drug_id AS "Drug Id",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.tier_code AS "Tier Code",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.restrictions AS Restrictions,
        vw_curr_ftf_formularies_preprocessed_cdw_v1.reason_code AS "Reason Code",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.reason_code_description AS "Reason Code Description",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.pharmacy_status AS "Pharmacy Status",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.plan_lives AS "Plan Lives",
        vw_curr_ftf_formularies_preprocessed_cdw_v1.check_blank_pharmstat AS "Check Pharmacy Status"
 FROM sandbox.vw_curr_ftf_formularies_preprocessed_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_key_controlling_account_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_key_controlling_account_product_coverage_category_commercial AS
 SELECT vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_controlling_account_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW sandbox.vw_final_extract_key_pbm_product_coverage_category_allpaytypes AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_key_pbm_product_coverage_category_commercial AS
 SELECT vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.product AS Product,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.metric AS Metric,
        vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_key_pbm_product_cov_category_paytype_cdw_v1
 WHERE (upper(vw_curr_key_pbm_product_cov_category_paytype_cdw_v1.paytype) = 'COMMERCIAL'::varchar(10));

CREATE  VIEW sandbox.vw_final_extract_pay_type_product_copay_tier AS
 SELECT vw_curr_paytype_product_copay_tier_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_copay_tier_cdw_v1.product AS Product,
        vw_curr_paytype_product_copay_tier_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_copay_tier_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_copay_tier_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_pay_type_product_coverage_category AS
 SELECT vw_curr_paytype_product_coverage_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_coverage_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_coverage_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_coverage_category_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_coverage_category_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_pay_type_product_patient_pa AS
 SELECT vw_curr_paytype_product_patient_pa_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_patient_pa_cdw_v1.product AS Product,
        vw_curr_paytype_product_patient_pa_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_patient_pa_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_patient_pa_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_pay_type_product_step_edit_type AS
 SELECT vw_curr_paytype_product_step_category_cdw_v1.paytype AS "Payment Type",
        vw_curr_paytype_product_step_category_cdw_v1.product AS Product,
        vw_curr_paytype_product_step_category_cdw_v1.metric AS Metric,
        vw_curr_paytype_product_step_category_cdw_v1.lives AS Lives
 FROM sandbox.vw_curr_paytype_product_step_category_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ftf_hp_id_key_controlling_plan_account AS
 SELECT lpad((vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_ftf_hp_id_key_controlling_account_cdw_v1.payer_pbm AS "Payer/PBM"
 FROM sandbox.vw_curr_ftf_hp_id_key_controlling_account_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ftf_hp_id_key_pbm AS
 SELECT lpad((vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.payment_type AS "Payment Type",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_ftf_hp_id_key_pbm_cdw_v1.assigned_iqvia_pbm AS "Assigned IQVIA PBM"
 FROM sandbox.vw_curr_ftf_hp_id_key_pbm_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ftf_plan_master_file AS
 SELECT lpad((vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_ftf_plan_master_file_op_cdw_v1.product AS Product,
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_ftf_plan_master_file_op_cdw_v1.coverage_category AS "Coverage Category",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_ftf_plan_master_file_op_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_ftf_plan_master_file_op_cdw_v1.plan_lives AS "Plan Lives",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_ftf_plan_master_file_op_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_ftf_plan_master_file_op_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_ftf_plan_master_file_op_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_ftf_plan_master_file_op_cdw_v1.pharmacy_status AS "Pharmacy Status",
        vw_curr_ftf_plan_master_file_op_cdw_v1.ftf_tier AS "FTF Tier",
        vw_curr_ftf_plan_master_file_op_cdw_v1.restrictions AS Restrictions,
        vw_curr_ftf_plan_master_file_op_cdw_v1.copay_tier AS "Tier Cat",
        vw_curr_ftf_plan_master_file_op_cdw_v1.restriction_category AS "Restriction Category",
        vw_curr_ftf_plan_master_file_op_cdw_v1.step AS Step,
        vw_curr_ftf_plan_master_file_op_cdw_v1.botox AS Botox,
        vw_curr_ftf_plan_master_file_op_cdw_v1.prescriber_pa AS "Prescriber PA",
        vw_curr_ftf_plan_master_file_op_cdw_v1.patient_pa AS "Patient PA",
        vw_curr_ftf_plan_master_file_op_cdw_v1.medical_records AS "Medical Records",
        vw_curr_ftf_plan_master_file_op_cdw_v1.criteria_unspec AS "Criteria Unspec"
 FROM sandbox.vw_curr_ftf_plan_master_file_op_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_key_controlling_account_summary AS
 SELECT vw_curr_key_ctl_account_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_ctl_account_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_ctl_account_summary_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_key_ctl_account_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_ctl_account_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_key_ctl_account_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_key_pbm_summary AS
 SELECT vw_curr_key_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_key_pbm_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_key_pbm_summary_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_key_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_key_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_key_pbm_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_iqvia_player_summary AS
 SELECT vw_curr_iqvia_payer_name_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_payer_name_summary_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_iqvia_payer_name_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_payer_name_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_iqvia_payer_name_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_iqvia_pbm_summary AS
 SELECT vw_curr_iqvia_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_iqvia_pbm_summary_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_iqvia_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_iqvia_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_iqvia_pbm_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_mgt_summary AS
 SELECT vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_management_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_formulary_management_pbm_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_ftf_pbm_formulary_infl_summary AS
 SELECT vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_formulary_influencer_pbm_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_ftf_pbm_claims_proc_summary AS
 SELECT vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.current_month_lives AS "Current Month Lives",
        vw_curr_ftf_claims_processing_pbm_summary_cdw_v1.previous_month_lives AS "Previous Month Lives",
        ''::varchar AS "Current VS Prior",
        ''::varchar AS "% Change"
 FROM sandbox.vw_curr_ftf_claims_processing_pbm_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_cm_state_lives_formular_status AS
 SELECT lpad((vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_st_lives_summary_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_st_lives_summary_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_st_lives_summary_cdw_v1.paytype AS "Payment Type",
        vw_curr_st_lives_summary_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_st_lives_summary_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_st_lives_summary_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_st_lives_summary_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_st_lives_summary_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_st_lives_summary_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_st_lives_summary_cdw_v1.state AS State,
        vw_curr_st_lives_summary_cdw_v1.ftf_state_hp_lives AS "FTF State HP Lives",
        vw_curr_st_lives_summary_cdw_v1.pref_brand_tier AS "Pref Band Tier",
        vw_curr_st_lives_summary_cdw_v1.ajovy_formulary AS "Ajovy Formulary",
        vw_curr_st_lives_summary_cdw_v1.aimovig_formulary AS "Aimovig Formulary",
        vw_curr_st_lives_summary_cdw_v1.emgality_formulary AS "Emgality Formulary"
 FROM sandbox.vw_curr_st_lives_summary_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_payer_spine25_detailed_teva_brands AS
 SELECT lpad((vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.payment_type AS "Payment Type",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.ajovy_access_for_ftf_plan AS "Coverage Category Ajovy",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.aimovig_access_for_ftf_plan AS "Coverage Category Aimovig",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.emgality_access_for_ftf_plan AS "Coverage Category Emgality",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_kcf_lvl AS "Lives KCF Level",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.lives_plan_lvl AS "Lives Plan Level",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.apportionment_factor AS "Apportionment Factor",
        vw_curr_payer_spine25_detailed_teva_brands_cdw_v1.saba_trx AS "SABA TRx"
 FROM sandbox.vw_curr_payer_spine25_detailed_teva_brands_cdw_v1;

CREATE  VIEW sandbox.vw_final_extract_payer_spine25_plan_teva_brands AS
 SELECT lpad((vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_code)::varchar, 10, '0'::varchar(1)) AS "IQVIA Plan Code",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_plan_name AS "IQVIA Plan Name",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.iqvia_pbm AS "IQVIA PBM",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.payment_type AS "Payment Type",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.ajovy_access_for_ftf_plan AS "Coverage Category Ajovy",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.aimovig_access_for_ftf_plan AS "Coverage Category Aimovig",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.emgality_access_for_ftf_plan AS "Coverage Category Emgality",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.lives_plan_kcf_lvl AS "Lives KCF Level",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.lives_plan_lvl AS "Lives Plan Level",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.apportionment_factor AS "Apportionment Factor",
        vw_curr_payer_spine25_plan_teva_brands_cdw_v1.saba_trx AS "SABA TRx"
 FROM sandbox.vw_curr_payer_spine25_plan_teva_brands_cdw_v1;

CREATE  VIEW sandbox.vw_ftf_plan_change AS
 SELECT a.entity AS "Change Type",
        a.id AS ID,
        a.name AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM ((((((( SELECT 'Plan'::varchar(4) AS entity,
        curr_month_ftf_health_plans.formularyf_id AS id,
        curr_month_ftf_health_plans.health_plan AS name,
        'Added'::varchar(5) AS status
 FROM (sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ANTI  JOIN sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ON ((curr_month_ftf_health_plans.formularyf_id = prev_month_ftf_health_plans.formularyf_id))) UNION  SELECT 'Plan'::varchar(4) AS entity,
        prev_month_ftf_health_plans.formularyf_id AS ftf_health_plan_fid,
        prev_month_ftf_health_plans.health_plan AS ftf_health_plan_name,
        'Deleted'::varchar(7) AS status
 FROM (sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ANTI  JOIN sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ON ((curr_month_ftf_health_plans.formularyf_id = prev_month_ftf_health_plans.formularyf_id)))) UNION  SELECT 'Provider'::varchar(8) AS entity,
        curr_month_ftf_health_plans.provider_id AS ftf_provider_fid,
        curr_month_ftf_health_plans.provider AS ftf_provider_name,
        'Added'::varchar(5) AS status
 FROM (sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ANTI  JOIN sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ON ((curr_month_ftf_health_plans.provider_id = prev_month_ftf_health_plans.provider_id)))) UNION  SELECT 'Provider'::varchar(8) AS entity,
        prev_month_ftf_health_plans.provider_id AS ftf_provider_fid,
        prev_month_ftf_health_plans.provider AS ftf_provider_name,
        'Deleted'::varchar(7) AS status
 FROM (sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans ANTI  JOIN sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans ON ((curr_month_ftf_health_plans.provider_id = prev_month_ftf_health_plans.provider_id)))) UNION  SELECT 'Pharmacy Status'::varchar(15) AS entity,
        NULL AS id,
        b.pharmacy_status,
        'Added'::varchar(5) AS status
 FROM ( SELECT curr_month_ftf_formularies.pharmacy_status
 FROM sandbox.vw_curr_month_ftf_formularies_cdw_required_drugs curr_month_ftf_formularies
 GROUP BY curr_month_ftf_formularies.pharmacy_status EXCEPT  SELECT prev_month_ftf_formularies.pharmacy_status
 FROM sandbox.vw_prev_month_ftf_formularies_cdw_required_drugs prev_month_ftf_formularies
 GROUP BY prev_month_ftf_formularies.pharmacy_status) b) UNION  SELECT 'Pharmacy Status'::varchar(15) AS entity,
        NULL AS id,
        b.pharmacy_status,
        'Added'::varchar(5) AS status
 FROM ( SELECT prev_month_ftf_formularies.pharmacy_status
 FROM sandbox.vw_prev_month_ftf_formularies_cdw_required_drugs prev_month_ftf_formularies
 GROUP BY prev_month_ftf_formularies.pharmacy_status EXCEPT  SELECT curr_month_ftf_formularies.pharmacy_status
 FROM sandbox.vw_curr_month_ftf_formularies_cdw_required_drugs curr_month_ftf_formularies
 GROUP BY curr_month_ftf_formularies.pharmacy_status) b) UNION  SELECT 'Health Plan Type'::varchar(16) AS entity,
        NULL AS id,
        b.plan_type_name,
        'Added'::varchar(5) AS status
 FROM ( SELECT curr_month_ftf_health_plans.plan_type_name
 FROM sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans
 GROUP BY curr_month_ftf_health_plans.plan_type_name EXCEPT  SELECT prev_month_ftf_health_plans.plan_type_name
 FROM sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans
 GROUP BY prev_month_ftf_health_plans.plan_type_name) b) UNION  SELECT 'Health Plan Type'::varchar(16) AS entity,
        NULL AS id,
        b.plan_type_name,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT prev_month_ftf_health_plans.plan_type_name
 FROM sandbox.vw_prev_month_ftf_health_plans_cdw prev_month_ftf_health_plans
 GROUP BY prev_month_ftf_health_plans.plan_type_name EXCEPT  SELECT curr_month_ftf_health_plans.plan_type_name
 FROM sandbox.vw_curr_month_ftf_health_plans_cdw curr_month_ftf_health_plans
 GROUP BY curr_month_ftf_health_plans.plan_type_name) b) a
 ORDER BY a.entity,
          a.status,
          a.id,
          a.name;

CREATE  VIEW sandbox.vw_bridge_mismatch_detailed_report AS
 SELECT bridge_dt.iqvia_payer_name AS "IQVIA Payer Name",
        bridge_dt.iqvia_plan_code AS "IQVIA Plan Code",
        bridge_dt.iqvia_plan_name AS "IQVIA Plan Name",
        bridge_dt.comments AS Comments,
        bridge_dt.ftf_health_plan_fid AS "FTF Health Plan FID",
        bridge_dt.ftf_health_plan_name AS "FTF Health Plan Name",
        ftf_health_plans_preprocessed.ftf_provider_fid AS "FTF Provider FID",
        bridge_dt.ftf_provider_name AS "FTF Provider Name",
        bridge_dt.ftf_health_plan_type AS "FTF Health Plan Type",
        bridge_dt.hp_type AS "HP Type",
        bridge_dt.overriden_ftf_plan_type AS "Overriden FTF Plan Type",
        bridge_dt.model AS Model,
        bridge_dt.iqvia_pbm AS "IQVIA PBM",
        bridge_dt.iqvia_paytype AS "IQVIA Paytype",
        bridge_dt.check_delete AS "Delete Flag",
        bridge_dt.paytype_index AS "Paytype Index",
        bridge_dt.paytype AS Paytype,
        bridge_dt.check_pay_types AS "Check Paytypes",
        bridge_dt.check_hp_types AS "Check HP Types",
        bridge_dt.old_ftf_health_plan_type AS "Old FTF health Plan Type"
 FROM ((sandbox.vw_curr_ftf_iqvia_bridge_preprocessed_cdw_v1 bridge_dt LEFT  JOIN sandbox.vw_curr_ftf_health_plans_preprocessed_cdw_v1 ftf_health_plans_preprocessed ON ((bridge_dt.ftf_health_plan_fid = ftf_health_plans_preprocessed.ftf_health_plan_fid))) LEFT  JOIN sandbox.process_audit_tbl process_audit_tbl ON (((bridge_dt.cycle_id = process_audit_tbl.cycle_id) AND (process_audit_tbl.process_id = 1) AND (process_audit_tbl.status = 'COMPLETED'::varchar(9)))))
 WHERE (coalesce(bridge_dt.check_delete, ''::varchar) <> 'DELETE'::varchar(6));

CREATE  VIEW sandbox.vw_final_extract_ajovy_migraine_market_all_changes AS
 SELECT lpad((vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_fid)::varchar, 6, '0'::varchar(1)) AS "FTF Health Plan FID",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_name AS "FTF Health Plan Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Ajovy AS "Coverage Category Ajovy",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Aimovig AS "Coverage Category Aimovig",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Emgality AS "Coverage Category Emgality",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Nurtec AS "Coverage Category Nurtec",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.Coverage_Category_Qulipta AS "Coverage Category Qulipta",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_fid AS "FTF Provider FID",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_provider_name AS "FTF Provider Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_parent_name AS "FTF Parent Name",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.paytype AS "Payment Type",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_health_plan_type AS "FTF Health Plan Type",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_plan_formulary AS "Key Controlling Plan Formulary",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_account AS "Key Controlling Account",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_controlling_parent AS "Key Controlling Parent",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.payer_pbm AS "Payer/PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.key_pbm AS "Key PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.iqvia_payer_name AS "IQVIA Payer Name Best Matched to FTF Plan",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.iqvia_pbm AS "IQVIA PBM Best Matched to FTF Plan",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_management_pbm AS "FTF Formulary Management PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_formulary_influencer_pbm AS "FTF Formulary Influencer PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.ftf_claims_processing_pbm AS "FTF Claims Processing PBM",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.lives_mn AS Lives,
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.month_flag AS "Month Flag",
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.status AS Status,
        vw_curr_comparison_ftf_health_plan_fid_cdw_v1.change_in_lives AS "Change in Lives"
 FROM sandbox.vw_curr_comparison_ftf_health_plan_fid_cdw_v1;

CREATE  VIEW sandbox.vw_ftf_restriction_change AS
 SELECT a.entity AS "Change Type",
        a.category_value AS Name,
        a.status AS Status,
        CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END AS "Status Flag"
 FROM (((( SELECT 'Group Restriction'::varchar(17) AS entity,
        b.category_value,
        'No Change'::varchar(9) AS status
 FROM (( SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level) a JOIN ( SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level) b ON ((a.category_value = b.category_value))) UNION  SELECT 'Group Restriction'::varchar(17) AS entity,
        vw_curr_month_ftf_restrictions.category_value,
        'Added'::varchar(5) AS status
 FROM ( SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level EXCEPT  SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level) vw_curr_month_ftf_restrictions) UNION  SELECT 'Group Restriction'::varchar(17) AS entity,
        vw_prev_month_ftf_restrictions_cdw.category_value,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level AS category_value
 FROM sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.grouped_restriction_level EXCEPT  SELECT vw_curr_month_ftf_restrictions.grouped_restriction_level AS category_value
 FROM sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.grouped_restriction_level) vw_prev_month_ftf_restrictions_cdw) UNION  SELECT 'Restriction Detail'::varchar(18) AS entity,
        vw_curr_month_ftf_restrictions.category_value,
        'Added'::varchar(5) AS status
 FROM ( SELECT vw_curr_month_ftf_restrictions.restriction_detail_text AS category_value
 FROM sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.restriction_detail_text EXCEPT  SELECT vw_prev_month_ftf_restrictions_cdw.restriction_detail_text AS category_value
 FROM sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.restriction_detail_text) vw_curr_month_ftf_restrictions) UNION  SELECT 'Restriction Detail'::varchar(18) AS entity,
        vw_prev_month_ftf_restrictions_cdw.category_value,
        'Deleted'::varchar(7) AS status
 FROM ( SELECT vw_prev_month_ftf_restrictions_cdw.restriction_detail_text AS category_value
 FROM sandbox.vw_prev_month_ftf_restrictions_cdw_required_drugs vw_prev_month_ftf_restrictions_cdw
 GROUP BY vw_prev_month_ftf_restrictions_cdw.restriction_detail_text EXCEPT  SELECT vw_curr_month_ftf_restrictions.restriction_detail_text AS category_value
 FROM sandbox.vw_curr_month_ftf_restrictions_cdw_required_drugs vw_curr_month_ftf_restrictions
 GROUP BY vw_curr_month_ftf_restrictions.restriction_detail_text) vw_prev_month_ftf_restrictions_cdw) a
 WHERE (coalesce(a.category_value, ''::varchar) <> ''::varchar)
 GROUP BY a.entity,
          a.category_value,
          a.status,
          CASE WHEN (a.status = 'Changed to'::varchar(10)) THEN 'FALSE'::varchar(5) WHEN (a.status = 'Changed from'::varchar(12)) THEN 'FALSE'::varchar(5) ELSE a.status END
 ORDER BY a.entity,
          a.status,
          a.category_value;

CREATE  VIEW sandbox.asi_market_access_w_test AS
SELECT A.zip, A.state, A.payer_plan_num, A.report_num, A.ims_product_group_num, A.data_month, A.nrx_001, A.nrx_002, A.nrx_003, A.nrx_004, A.nrx_005, A.nrx_006, A.nrx_007, A.nrx_008, A.nrx_009, A.nrx_010, A.nrx_011, A.nrx_012, A.nrx_013, A.nrx_014, A.nrx_015, A.nrx_016, A.nrx_017, A.nrx_018, A.nrx_019, A.nrx_020, A.nrx_021, A.nrx_022, A.nrx_023, A.nrx_024, A.trx_001, A.trx_002, A.trx_003, A.trx_004, A.trx_005, A.trx_006, A.trx_007, A.trx_008, A.trx_009, A.trx_010, A.trx_011, A.trx_012, A.trx_013, A.trx_014, A.trx_015, A.trx_016, A.trx_017, A.trx_018, A.trx_019, A.trx_020, A.trx_021, A.trx_022, A.trx_023, A.trx_024 FROM ((SELECT coalesce(d.zip, o.zip, pcd.ptr_zip) AS zip, coalesce(d.state, o.state, pcd.ptr_state, mpzd.state) AS state, rx.payer_plan_number AS payer_plan_num, CASE WHEN (length(rx.ims_report_number_cnt) = 1) THEN btrim(to_char(rx.ims_report_number_cnt, '00'::varchar(2))) ELSE rx.ims_report_number_cnt END AS report_num, rx.ims_product_group AS ims_product_group_num, to_char(rx.data_date, 'MM/YYYY'::varchar(7)) AS data_month, sum(CASE WHEN (iwb.month_bucket = 1) THEN rx.nrx_count ELSE NULL::float END) AS nrx_001, sum(CASE WHEN (iwb.month_bucket = 2) THEN rx.nrx_count ELSE NULL::float END) AS nrx_002, sum(CASE WHEN (iwb.month_bucket = 3) THEN rx.nrx_count ELSE NULL::float END) AS nrx_003, sum(CASE WHEN (iwb.month_bucket = 4) THEN rx.nrx_count ELSE NULL::float END) AS nrx_004, sum(CASE WHEN (iwb.month_bucket = 5) THEN rx.nrx_count ELSE NULL::float END) AS nrx_005, sum(CASE WHEN (iwb.month_bucket = 6) THEN rx.nrx_count ELSE NULL::float END) AS nrx_006, sum(CASE WHEN (iwb.month_bucket = 7) THEN rx.nrx_count ELSE NULL::float END) AS nrx_007, sum(CASE WHEN (iwb.month_bucket = 8) THEN rx.nrx_count ELSE NULL::float END) AS nrx_008, sum(CASE WHEN (iwb.month_bucket = 9) THEN rx.nrx_count ELSE NULL::float END) AS nrx_009, sum(CASE WHEN (iwb.month_bucket = 10) THEN rx.nrx_count ELSE NULL::float END) AS nrx_010, sum(CASE WHEN (iwb.month_bucket = 11) THEN rx.nrx_count ELSE NULL::float END) AS nrx_011, sum(CASE WHEN (iwb.month_bucket = 12) THEN rx.nrx_count ELSE NULL::float END) AS nrx_012, sum(CASE WHEN (iwb.month_bucket = 13) THEN rx.nrx_count ELSE NULL::float END) AS nrx_013, sum(CASE WHEN (iwb.month_bucket = 14) THEN rx.nrx_count ELSE NULL::float END) AS nrx_014, sum(CASE WHEN (iwb.month_bucket = 15) THEN rx.nrx_count ELSE NULL::float END) AS nrx_015, sum(CASE WHEN (iwb.month_bucket = 16) THEN rx.nrx_count ELSE NULL::float END) AS nrx_016, sum(CASE WHEN (iwb.month_bucket = 17) THEN rx.nrx_count ELSE NULL::float END) AS nrx_017, sum(CASE WHEN (iwb.month_bucket = 18) THEN rx.nrx_count ELSE NULL::float END) AS nrx_018, sum(CASE WHEN (iwb.month_bucket = 19) THEN rx.nrx_count ELSE NULL::float END) AS nrx_019, sum(CASE WHEN (iwb.month_bucket = 20) THEN rx.nrx_count ELSE NULL::float END) AS nrx_020, sum(CASE WHEN (iwb.month_bucket = 21) THEN rx.nrx_count ELSE NULL::float END) AS nrx_021, sum(CASE WHEN (iwb.month_bucket = 22) THEN rx.nrx_count ELSE NULL::float END) AS nrx_022, sum(CASE WHEN (iwb.month_bucket = 23) THEN rx.nrx_count ELSE NULL::float END) AS nrx_023, sum(CASE WHEN (iwb.month_bucket = 24) THEN rx.nrx_count ELSE NULL::float END) AS nrx_024, sum(CASE WHEN (iwb.month_bucket = 1) THEN rx.trx_count ELSE NULL::float END) AS trx_001, sum(CASE WHEN (iwb.month_bucket = 2) THEN rx.trx_count ELSE NULL::float END) AS trx_002, sum(CASE WHEN (iwb.month_bucket = 3) THEN rx.trx_count ELSE NULL::float END) AS trx_003, sum(CASE WHEN (iwb.month_bucket = 4) THEN rx.trx_count ELSE NULL::float END) AS trx_004, sum(CASE WHEN (iwb.month_bucket = 5) THEN rx.trx_count ELSE NULL::float END) AS trx_005, sum(CASE WHEN (iwb.month_bucket = 6) THEN rx.trx_count ELSE NULL::float END) AS trx_006, sum(CASE WHEN (iwb.month_bucket = 7) THEN rx.trx_count ELSE NULL::float END) AS trx_007, sum(CASE WHEN (iwb.month_bucket = 8) THEN rx.trx_count ELSE NULL::float END) AS trx_008, sum(CASE WHEN (iwb.month_bucket = 9) THEN rx.trx_count ELSE NULL::float END) AS trx_009, sum(CASE WHEN (iwb.month_bucket = 10) THEN rx.trx_count ELSE NULL::float END) AS trx_010, sum(CASE WHEN (iwb.month_bucket = 11) THEN rx.trx_count ELSE NULL::float END) AS trx_011, sum(CASE WHEN (iwb.month_bucket = 12) THEN rx.trx_count ELSE NULL::float END) AS trx_012, sum(CASE WHEN (iwb.month_bucket = 13) THEN rx.trx_count ELSE NULL::float END) AS trx_013, sum(CASE WHEN (iwb.month_bucket = 14) THEN rx.trx_count ELSE NULL::float END) AS trx_014, sum(CASE WHEN (iwb.month_bucket = 15) THEN rx.trx_count ELSE NULL::float END) AS trx_015, sum(CASE WHEN (iwb.month_bucket = 16) THEN rx.trx_count ELSE NULL::float END) AS trx_016, sum(CASE WHEN (iwb.month_bucket = 17) THEN rx.trx_count ELSE NULL::float END) AS trx_017, sum(CASE WHEN (iwb.month_bucket = 18) THEN rx.trx_count ELSE NULL::float END) AS trx_018, sum(CASE WHEN (iwb.month_bucket = 19) THEN rx.trx_count ELSE NULL::float END) AS trx_019, sum(CASE WHEN (iwb.month_bucket = 20) THEN rx.trx_count ELSE NULL::float END) AS trx_020, sum(CASE WHEN (iwb.month_bucket = 21) THEN rx.trx_count ELSE NULL::float END) AS trx_021, sum(CASE WHEN (iwb.month_bucket = 22) THEN rx.trx_count ELSE NULL::float END) AS trx_022, sum(CASE WHEN (iwb.month_bucket = 23) THEN rx.trx_count ELSE NULL::float END) AS trx_023, sum(CASE WHEN (iwb.month_bucket = 24) THEN rx.trx_count ELSE NULL::float END) AS trx_024 FROM (((((datamart.prescriber_rx rx JOIN outbound.month_rollup_and_bucket iwb ON ((rx.rollup_month = iwb.month_ending))) LEFT JOIN (SELECT market_presc_zip_divisor.ims_id, market_presc_zip_divisor.ims_client_number, market_presc_zip_divisor.ims_report_number, market_presc_zip_divisor.state FROM outbound.market_presc_zip_divisor GROUP BY market_presc_zip_divisor.ims_id, market_presc_zip_divisor.ims_client_number, market_presc_zip_divisor.ims_report_number, market_presc_zip_divisor.state) mpzd ON (((rx.ims_id = mpzd.ims_id) AND (rx.ims_client_number = mpzd.ims_client_number) AND (rx.ims_report_number_cnt = mpzd.ims_report_number)))) LEFT JOIN (SELECT hcp_demo.tvcmid, hcp_demo.state_code AS state, hcp_demo.zip FROM datamart.customer_hcp_demographics hcp_demo WHERE (hcp_demo.file_id = (SELECT max(customer_hcp_demographics.file_id) AS MAX FROM datamart.customer_hcp_demographics))) d ON ((rx.tvcmid = d.tvcmid))) LEFT JOIN (SELECT hco_demo.tvcmid, hco_demo.state_code AS state, hco_demo.zip FROM datamart.customer_hco_demographics hco_demo WHERE (hco_demo.file_id = (SELECT max(customer_hco_demographics.file_id) AS MAX FROM datamart.customer_hco_demographics))) o ON ((rx.tvcmid = o.tvcmid))) LEFT JOIN (SELECT rnk.ims_id, rnk.ptr_state, rnk.ptr_zip FROM (SELECT DISTINCT prescriber_combined_demographics.ims_id, prescriber_combined_demographics.ptr_state, prescriber_combined_demographics.ptr_zip, prescriber_combined_demographics.ptr_address_source, row_number() OVER (PARTITION BY prescriber_combined_demographics.ims_id ORDER BY prescriber_combined_demographics.ptr_address_source) AS rnk FROM datamart.prescriber_combined_demographics ORDER BY prescriber_combined_demographics.ims_id, prescriber_combined_demographics.ptr_state, prescriber_combined_demographics.ptr_zip, prescriber_combined_demographics.ptr_address_source, row_number() OVER (PARTITION BY prescriber_combined_demographics.ims_id ORDER BY prescriber_combined_demographics.ptr_address_source)) rnk WHERE (rnk.rnk = 1)) pcd ON ((pcd.ims_id = rx.ims_id))) WHERE ((rx.basket_type = 'product'::varchar(7)) AND (rx.ims_report_number_cnt = ANY (ARRAY['1'::varchar(1), '2'::varchar(1), '3'::varchar(1), '4'::varchar(1), '5'::varchar(1), '6'::varchar(1), '68'::varchar(2)])) AND (rx.report_frequency = 'SPLITWEEK'::varchar(9))) GROUP BY coalesce(d.zip, o.zip, pcd.ptr_zip), coalesce(d.state, o.state, pcd.ptr_state, mpzd.state), rx.payer_plan_number, CASE WHEN (length(rx.ims_report_number_cnt) = 1) THEN btrim(to_char(rx.ims_report_number_cnt, '00'::varchar(2))) ELSE rx.ims_report_number_cnt END, rx.ims_product_group, to_char(rx.data_date, 'MM/YYYY'::varchar(7)) UNION ALL SELECT CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END AS ship_to_zip, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END AS payer_plan_num, '55'::varchar(2) AS report_num, pg.ims_product_group AS ims_product_group_num, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x) AS data_month, NULL::float AS nrx_001, NULL::float AS nrx_002, NULL::float AS nrx_003, NULL::float AS nrx_004, NULL::float AS nrx_005, NULL::float AS nrx_006, NULL::float AS nrx_007, NULL::float AS nrx_008, NULL::float AS nrx_009, NULL::float AS nrx_010, NULL::float AS nrx_011, NULL::float AS nrx_012, NULL::float AS nrx_013, NULL::float AS nrx_014, NULL::float AS nrx_015, NULL::float AS nrx_016, NULL::float AS nrx_017, NULL::float AS nrx_018, NULL::float AS nrx_019, NULL::float AS nrx_020, NULL::float AS nrx_021, NULL::float AS nrx_022, NULL::float AS nrx_023, NULL::float AS nrx_024, sum(CASE WHEN (mth.month_bucket = 1) THEN sp.trx_cnt ELSE NULL::float END) AS trx_001, sum(CASE WHEN (mth.month_bucket = 2) THEN sp.trx_cnt ELSE NULL::float END) AS trx_002, sum(CASE WHEN (mth.month_bucket = 3) THEN sp.trx_cnt ELSE NULL::float END) AS trx_003, sum(CASE WHEN (mth.month_bucket = 4) THEN sp.trx_cnt ELSE NULL::float END) AS trx_004, sum(CASE WHEN (mth.month_bucket = 5) THEN sp.trx_cnt ELSE NULL::float END) AS trx_005, sum(CASE WHEN (mth.month_bucket = 6) THEN sp.trx_cnt ELSE NULL::float END) AS trx_006, sum(CASE WHEN (mth.month_bucket = 7) THEN sp.trx_cnt ELSE NULL::float END) AS trx_007, sum(CASE WHEN (mth.month_bucket = 8) THEN sp.trx_cnt ELSE NULL::float END) AS trx_008, sum(CASE WHEN (mth.month_bucket = 9) THEN sp.trx_cnt ELSE NULL::float END) AS trx_009, sum(CASE WHEN (mth.month_bucket = 10) THEN sp.trx_cnt ELSE NULL::float END) AS trx_010, sum(CASE WHEN (mth.month_bucket = 11) THEN sp.trx_cnt ELSE NULL::float END) AS trx_011, sum(CASE WHEN (mth.month_bucket = 12) THEN sp.trx_cnt ELSE NULL::float END) AS trx_012, sum(CASE WHEN (mth.month_bucket = 13) THEN sp.trx_cnt ELSE NULL::float END) AS trx_013, sum(CASE WHEN (mth.month_bucket = 14) THEN sp.trx_cnt ELSE NULL::float END) AS trx_014, sum(CASE WHEN (mth.month_bucket = 15) THEN sp.trx_cnt ELSE NULL::float END) AS trx_015, sum(CASE WHEN (mth.month_bucket = 16) THEN sp.trx_cnt ELSE NULL::float END) AS trx_016, sum(CASE WHEN (mth.month_bucket = 17) THEN sp.trx_cnt ELSE NULL::float END) AS trx_017, sum(CASE WHEN (mth.month_bucket = 18) THEN sp.trx_cnt ELSE NULL::float END) AS trx_018, sum(CASE WHEN (mth.month_bucket = 19) THEN sp.trx_cnt ELSE NULL::float END) AS trx_019, sum(CASE WHEN (mth.month_bucket = 20) THEN sp.trx_cnt ELSE NULL::float END) AS trx_020, sum(CASE WHEN (mth.month_bucket = 21) THEN sp.trx_cnt ELSE NULL::float END) AS trx_021, sum(CASE WHEN (mth.month_bucket = 22) THEN sp.trx_cnt ELSE NULL::float END) AS trx_022, sum(CASE WHEN (mth.month_bucket = 23) THEN sp.trx_cnt ELSE NULL::float END) AS trx_023, sum(CASE WHEN (mth.month_bucket = 24) THEN sp.trx_cnt ELSE NULL::float END) AS trx_024 FROM ((datamart.specialty_pharmacy_shipment sp JOIN (SELECT month_rollup_and_bucket.month_ending, month_rollup_and_bucket.month_bucket FROM outbound.month_rollup_and_bucket) mth ON ((last_day(sp.ship_date) = mth.month_ending))) JOIN (SELECT asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source FROM reference.asi_outbound_ims_product_group_mapping WHERE (asi_outbound_ims_product_group_mapping.market_name = 'MS MARKET'::varchar(9)) GROUP BY asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source) pg ON (((pg.basket_id = sp.basket_id) AND (pg.data_source = sp.specialty_pharmacy_data_source)))) WHERE ((sp.specialty_pharmacy_data_source = ANY (ARRAY['Prime Therapeutics'::varchar(18), 'Prime Therapeutics'::varchar(18)])) AND (sp.ims_id IS NOT NULL)) GROUP BY CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END, pg.ims_product_group, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x)) UNION ALL SELECT CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END AS ship_to_zip, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END AS payer_plan_num, '55'::varchar(2) AS report_num, pg.ims_product_group AS ims_product_group_num, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x) AS data_month, NULL::float AS nrx_001, NULL::float AS nrx_002, NULL::float AS nrx_003, NULL::float AS nrx_004, NULL::float AS nrx_005, NULL::float AS nrx_006, NULL::float AS nrx_007, NULL::float AS nrx_008, NULL::float AS nrx_009, NULL::float AS nrx_010, NULL::float AS nrx_011, NULL::float AS nrx_012, NULL::float AS nrx_013, NULL::float AS nrx_014, NULL::float AS nrx_015, NULL::float AS nrx_016, NULL::float AS nrx_017, NULL::float AS nrx_018, NULL::float AS nrx_019, NULL::float AS nrx_020, NULL::float AS nrx_021, NULL::float AS nrx_022, NULL::float AS nrx_023, NULL::float AS nrx_024, sum(CASE WHEN (mth.month_bucket = 1) THEN sp.trx_cnt ELSE NULL::float END) AS trx_001, sum(CASE WHEN (mth.month_bucket = 2) THEN sp.trx_cnt ELSE NULL::float END) AS trx_002, sum(CASE WHEN (mth.month_bucket = 3) THEN sp.trx_cnt ELSE NULL::float END) AS trx_003, sum(CASE WHEN (mth.month_bucket = 4) THEN sp.trx_cnt ELSE NULL::float END) AS trx_004, sum(CASE WHEN (mth.month_bucket = 5) THEN sp.trx_cnt ELSE NULL::float END) AS trx_005, sum(CASE WHEN (mth.month_bucket = 6) THEN sp.trx_cnt ELSE NULL::float END) AS trx_006, sum(CASE WHEN (mth.month_bucket = 7) THEN sp.trx_cnt ELSE NULL::float END) AS trx_007, sum(CASE WHEN (mth.month_bucket = 8) THEN sp.trx_cnt ELSE NULL::float END) AS trx_008, sum(CASE WHEN (mth.month_bucket = 9) THEN sp.trx_cnt ELSE NULL::float END) AS trx_009, sum(CASE WHEN (mth.month_bucket = 10) THEN sp.trx_cnt ELSE NULL::float END) AS trx_010, sum(CASE WHEN (mth.month_bucket = 11) THEN sp.trx_cnt ELSE NULL::float END) AS trx_011, sum(CASE WHEN (mth.month_bucket = 12) THEN sp.trx_cnt ELSE NULL::float END) AS trx_012, sum(CASE WHEN (mth.month_bucket = 13) THEN sp.trx_cnt ELSE NULL::float END) AS trx_013, sum(CASE WHEN (mth.month_bucket = 14) THEN sp.trx_cnt ELSE NULL::float END) AS trx_014, sum(CASE WHEN (mth.month_bucket = 15) THEN sp.trx_cnt ELSE NULL::float END) AS trx_015, sum(CASE WHEN (mth.month_bucket = 16) THEN sp.trx_cnt ELSE NULL::float END) AS trx_016, sum(CASE WHEN (mth.month_bucket = 17) THEN sp.trx_cnt ELSE NULL::float END) AS trx_017, sum(CASE WHEN (mth.month_bucket = 18) THEN sp.trx_cnt ELSE NULL::float END) AS trx_018, sum(CASE WHEN (mth.month_bucket = 19) THEN sp.trx_cnt ELSE NULL::float END) AS trx_019, sum(CASE WHEN (mth.month_bucket = 20) THEN sp.trx_cnt ELSE NULL::float END) AS trx_020, sum(CASE WHEN (mth.month_bucket = 21) THEN sp.trx_cnt ELSE NULL::float END) AS trx_021, sum(CASE WHEN (mth.month_bucket = 22) THEN sp.trx_cnt ELSE NULL::float END) AS trx_022, sum(CASE WHEN (mth.month_bucket = 23) THEN sp.trx_cnt ELSE NULL::float END) AS trx_023, sum(CASE WHEN (mth.month_bucket = 24) THEN sp.trx_cnt ELSE NULL::float END) AS trx_024 FROM ((datamart.specialty_pharmacy_shipment sp JOIN (SELECT month_rollup_and_bucket.month_ending, month_rollup_and_bucket.month_bucket FROM outbound.month_rollup_and_bucket) mth ON ((add_months(last_day(sp.ship_date), 1) = mth.month_ending))) JOIN (SELECT asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source FROM reference.asi_outbound_ims_product_group_mapping WHERE (asi_outbound_ims_product_group_mapping.market_name = 'MS MARKET'::varchar(9)) GROUP BY asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source) pg ON (((pg.basket_id = sp.basket_id) AND (pg.data_source = sp.specialty_pharmacy_data_source)))) WHERE ((sp.specialty_pharmacy_data_source = ANY (ARRAY['OptumRx'::varchar(7), 'OptumRx'::varchar(7)])) AND (sp.ims_id IS NOT NULL)) GROUP BY CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END, pg.ims_product_group, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x)) A;

CREATE  VIEW sandbox.vw_concur_hcp_delta_0928 AS
 SELECT concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar) AS cust_id,
        NULL AS organization_name,
        'HCP'::varchar(3) AS contact_type,
        initcap(hcp.first_name) AS first_name,
        initcap(hcp.middle_name) AS middle_name,
        initcap(hcp.last_name) AS last_name,
        hcp.suffix,
        npi.npi,
        addr.address_line_1,
        addr.address_line_2,
        addr.city,
        addr.state,
        addr.zipcode,
        sln.license_number AS sln,
        sln.state AS sln_state,
        dea.dea_number AS dea,
        NULL AS affiliation,
        CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END AS credential,
        hcp.healthcare_professional_status_code,
        date((statement_timestamp())::timestamp) AS create_date
 FROM (((((( SELECT hcp.TVCMID AS tvcmid,
        hcp.FIRST_NAME AS first_name,
        hcp.MIDDLE_NAME AS middle_name,
        hcp.LAST_NAME AS last_name,
        hcp.SUFFIX AS suffix,
        hcp.HEALTHCARE_PROFESSIONAL_STATUS_CODE AS healthcare_professional_status_code,
        hcp.TEVA_SPECIALTY_CODE AS teva_specialty_code
 FROM (raw.mdm_hcp hcp JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_hcp.file_id
 FROM raw.mdm_hcp
 GROUP BY mdm_hcp.file_id) a) hcp_file ON (((hcp.file_id = hcp_file.file_id) AND (hcp_file.file_rank = 1))))) hcp JOIN ( SELECT ad.TVCMID AS tvcmid,
        ad.ADDRESS_ID AS address_id,
        ad.ADDRESS_STATUS AS address_status,
        ad.ADDRESS_TYPE AS address_type,
        initcap(ad.ADDRESS_LINE_1) AS address_line_1,
        initcap(ad.ADDRESS_LINE_2) AS address_line_2,
        initcap(ad.CITY) AS city,
        ad.STATE AS state,
        ad.ZIP5_POSTAL_CODE AS zipcode,
        rank() OVER (PARTITION BY ad.TVCMID ORDER BY ad.PRACTICE_LOCATION_RANK DESC, ad.record_id) AS addr_rank
 FROM (raw.mdm_address ad JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_address.file_id
 FROM raw.mdm_address
 GROUP BY mdm_address.file_id) a) addr_file ON (((ad.file_id = addr_file.file_id) AND (ad.ADDRESS_STATUS = 'A'::varchar(1)) AND (ad.SINGLE_ADDRESS_INDICATOR = 'Y'::varchar(1)) AND (addr_file.file_rank = 1))))) addr ON (((hcp.tvcmid = addr.tvcmid) AND (addr.addr_rank = 1)))) JOIN ( SELECT p.TVCMID AS tvcmid,
        d.profession_code_shortname,
        rank() OVER (PARTITION BY p.TVCMID ORDER BY p.CREATED_DATE DESC) AS rnk
 FROM (raw.mdm_professional p JOIN reference.Designations d ON (((p.PROFESSION_CODE = d.profession_code) AND (p.PROFESSION_RANK = 1::float) AND (p.STATUS = 'A'::varchar(1)))))) prof ON (((hcp.tvcmid = prof.tvcmid) AND (prof.rnk = 1)))) LEFT  JOIN ( SELECT mdm_dea_address.TVCMID AS tvcmid,
        mdm_dea_address.DEA_NUMBER AS dea_number,
        mdm_dea_address.ADDRESS_ID AS address_id,
        rank() OVER (PARTITION BY mdm_dea_address.TVCMID, mdm_dea_address.ADDRESS_ID ORDER BY mdm_dea_address.DEA_EXPIRATION_DATE DESC, mdm_dea_address.UPDATED_DATE DESC, mdm_dea_address.record_id) AS rnk
 FROM raw.mdm_dea_address
 WHERE (mdm_dea_address.DEA_STATUS_CODE = 'A'::varchar(1))) dea ON (((addr.address_id = dea.address_id) AND (addr.tvcmid = dea.tvcmid) AND (dea.rnk = 1)))) LEFT  JOIN ( SELECT npi.tvcmid,
        npi.npi
 FROM (( SELECT mdm_alternate_id.file_id,
        mdm_alternate_id.TVCMID AS tvcmid,
        max(mdm_alternate_id.ALTERNATE_ID_VALUE) AS npi
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id,
          mdm_alternate_id.TVCMID) npi JOIN ( SELECT b.file_id,
        rank() OVER (ORDER BY b.file_id DESC) AS file_rank
 FROM ( SELECT mdm_alternate_id.file_id
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id) b) npi2 ON (((npi.file_id = npi2.file_id) AND (npi2.file_rank = 1))))) npi ON ((hcp.tvcmid = npi.tvcmid))) LEFT  JOIN ( SELECT sln.TVCMID AS tvcmid,
        sln.AUTHORIZATION_NUMBER AS license_number,
        sln.STATE AS state,
        rank() OVER (PARTITION BY sln.TVCMID, sln.STATE ORDER BY sln.LICENSE_TYPE_PRIVILEGE_RANK, sln.LICENSE_EXPIRATION_DATE DESC, sln.LICENSE_EFFECTIVE_DATE DESC, sln.UPDATED_DATE DESC, sln.record_id) AS rnk
 FROM raw.mdm_license sln
 WHERE (sln.LICENSE_STATUS_CODE = 'A'::varchar(1))) sln ON (((hcp.tvcmid = sln.tvcmid) AND (addr.state = sln.state) AND (sln.rnk = 1))))
 GROUP BY concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar),
          NULL,
          'HCP'::varchar(3),
          initcap(hcp.first_name),
          initcap(hcp.middle_name),
          initcap(hcp.last_name),
          hcp.suffix,
          npi.npi,
          addr.address_line_1,
          addr.address_line_2,
          addr.city,
          addr.state,
          addr.zipcode,
          sln.license_number,
          sln.state,
          dea.dea_number,
          CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END,
          hcp.healthcare_professional_status_code,
          date((statement_timestamp())::timestamp) EXCEPT  SELECT concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar) AS cust_id,
        NULL AS organization_name,
        'HCP'::varchar(3) AS contact_type,
        initcap(hcp.first_name) AS first_name,
        initcap(hcp.middle_name) AS middle_name,
        initcap(hcp.last_name) AS last_name,
        hcp.suffix,
        npi.npi,
        addr.address_line_1,
        addr.address_line_2,
        addr.city,
        addr.state,
        addr.zipcode,
        sln.license_number AS sln,
        sln.state AS sln_state,
        dea.dea_number AS dea,
        NULL AS affiliation,
        CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END AS credential,
        hcp.healthcare_professional_status_code,
        date((statement_timestamp())::timestamp) AS create_date
 FROM (((((( SELECT hcp.TVCMID AS tvcmid,
        hcp.FIRST_NAME AS first_name,
        hcp.MIDDLE_NAME AS middle_name,
        hcp.LAST_NAME AS last_name,
        hcp.SUFFIX AS suffix,
        hcp.HEALTHCARE_PROFESSIONAL_STATUS_CODE AS healthcare_professional_status_code,
        hcp.TEVA_SPECIALTY_CODE AS teva_specialty_code
 FROM (raw.mdm_hcp hcp JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_hcp.file_id
 FROM raw.mdm_hcp
 GROUP BY mdm_hcp.file_id) a) hcp_file ON (((hcp.file_id = hcp_file.file_id) AND (hcp_file.file_rank = 2))))) hcp JOIN ( SELECT ad.TVCMID AS tvcmid,
        ad.ADDRESS_ID AS address_id,
        ad.ADDRESS_STATUS AS address_status,
        ad.ADDRESS_TYPE AS address_type,
        initcap(ad.ADDRESS_LINE_1) AS address_line_1,
        initcap(ad.ADDRESS_LINE_2) AS address_line_2,
        initcap(ad.CITY) AS city,
        ad.STATE AS state,
        ad.ZIP5_POSTAL_CODE AS zipcode,
        rank() OVER (PARTITION BY ad.TVCMID ORDER BY ad.PRACTICE_LOCATION_RANK DESC, ad.record_id) AS addr_rank
 FROM (raw.mdm_address ad JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_address.file_id
 FROM raw.mdm_address
 GROUP BY mdm_address.file_id) a) addr_file ON (((ad.file_id = addr_file.file_id) AND (ad.ADDRESS_STATUS = 'A'::varchar(1)) AND (ad.SINGLE_ADDRESS_INDICATOR = 'Y'::varchar(1)) AND (addr_file.file_rank = 2))))) addr ON (((hcp.tvcmid = addr.tvcmid) AND (addr.addr_rank = 1)))) JOIN ( SELECT p.TVCMID AS tvcmid,
        d.profession_code_shortname,
        rank() OVER (PARTITION BY p.TVCMID ORDER BY p.CREATED_DATE DESC) AS rnk
 FROM (raw.mdm_professional p JOIN reference.Designations d ON (((p.PROFESSION_CODE = d.profession_code) AND (p.PROFESSION_RANK = 1::float) AND (p.STATUS = 'A'::varchar(1)))))) prof ON (((hcp.tvcmid = prof.tvcmid) AND (prof.rnk = 1)))) LEFT  JOIN ( SELECT mdm_dea_address.TVCMID AS tvcmid,
        mdm_dea_address.DEA_NUMBER AS dea_number,
        mdm_dea_address.ADDRESS_ID AS address_id,
        rank() OVER (PARTITION BY mdm_dea_address.TVCMID, mdm_dea_address.ADDRESS_ID ORDER BY mdm_dea_address.DEA_EXPIRATION_DATE DESC, mdm_dea_address.UPDATED_DATE DESC, mdm_dea_address.record_id) AS rnk
 FROM raw.mdm_dea_address
 WHERE (mdm_dea_address.DEA_STATUS_CODE = 'A'::varchar(1))) dea ON (((addr.address_id = dea.address_id) AND (addr.tvcmid = dea.tvcmid) AND (dea.rnk = 1)))) LEFT  JOIN ( SELECT npi.tvcmid,
        npi.npi
 FROM (( SELECT mdm_alternate_id.file_id,
        mdm_alternate_id.TVCMID AS tvcmid,
        max(mdm_alternate_id.ALTERNATE_ID_VALUE) AS npi
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id,
          mdm_alternate_id.TVCMID) npi JOIN ( SELECT b.file_id,
        rank() OVER (ORDER BY b.file_id DESC) AS file_rank
 FROM ( SELECT mdm_alternate_id.file_id
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id) b) npi2 ON (((npi.file_id = npi2.file_id) AND (npi2.file_rank = 2))))) npi ON ((hcp.tvcmid = npi.tvcmid))) LEFT  JOIN ( SELECT sln.TVCMID AS tvcmid,
        sln.AUTHORIZATION_NUMBER AS license_number,
        sln.STATE AS state,
        rank() OVER (PARTITION BY sln.TVCMID, sln.STATE ORDER BY sln.LICENSE_TYPE_PRIVILEGE_RANK, sln.LICENSE_EXPIRATION_DATE DESC, sln.LICENSE_EFFECTIVE_DATE DESC, sln.UPDATED_DATE DESC, sln.record_id) AS rnk
 FROM raw.mdm_license sln
 WHERE (sln.LICENSE_STATUS_CODE = 'A'::varchar(1))) sln ON (((hcp.tvcmid = sln.tvcmid) AND (addr.state = sln.state) AND (sln.rnk = 1))))
 GROUP BY concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar),
          NULL,
          'HCP'::varchar(3),
          initcap(hcp.first_name),
          initcap(hcp.middle_name),
          initcap(hcp.last_name),
          hcp.suffix,
          npi.npi,
          addr.address_line_1,
          addr.address_line_2,
          addr.city,
          addr.state,
          addr.zipcode,
          sln.license_number,
          sln.state,
          dea.dea_number,
          CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END,
          hcp.healthcare_professional_status_code,
          date((statement_timestamp())::timestamp);