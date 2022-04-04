CREATE SCHEMA reference;

CREATE SEQUENCE reference.ONC_SALES_ADJUST_SEQ  CACHE      1 ;
CREATE SEQUENCE reference.unreported_sales_seq  CACHE      1 ;

CREATE TABLE reference.call_plan_active_dates
(
    call_plan_file_id int,
    call_plan_name varchar(100),
    start_date date,
    end_date date,
    call_plan_description varchar(50),
    include_in_alternates varchar(1),
    period varchar(20),
    sales_force_id varchar(5)
);


CREATE TABLE reference.bag_product
(
    bag_id int,
    basket_id int,
    basket_name varchar(300),
    "position" float,
    weight float,
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date
);


CREATE TABLE reference.bag_territory
(
    bag_id int,
    territory_number varchar(8),
    detail_first_valid_date date,
    detail_last_valid_date date,
    ic_first_valid_date date,
    ic_last_valid_date date,
    valid_for_today varchar(1),
    valid_for_ic varchar(1),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date
);


CREATE TABLE reference.comp_alignment_exceptions
(
    sales_force_id varchar(5),
    territory_number varchar(8),
    ims_id varchar(10),
    tvcmid int,
    first_name varchar(50),
    last_name varchar(50),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    notes varchar(255),
    requested_by varchar(50),
    create_date date DEFAULT "sysdate"(),
    active_ind varchar(1) DEFAULT 'Y'
);


CREATE TABLE reference.ddd_category
(
    category_code varchar(2),
    category_description varchar(30),
    category_definition varchar(300)
);


CREATE TABLE reference.ddd_subcategory
(
    subcategory_code varchar(2),
    category_code varchar(2),
    cot_code varchar(2),
    mailorder_flag varchar(1),
    nonretail_flag varchar(1),
    outlet_example varchar(50),
    outlet_description varchar(100),
    outlet_definition varchar(200),
    mdm_flag varchar(1),
    adm_flag varchar(1),
    onc_subcat_group varchar(50)
);


CREATE TABLE reference.ims_model_payment_method
(
    model varchar(100),
    payment_method varchar(250)
);


CREATE TABLE reference.zzz_oncology_account_id_867_xref
(
    acct_demo_id int,
    id_type varchar(10),
    id_value varchar(50),
    create_date date,
    create_user varchar(30),
    update_date date,
    update_user varchar(30)
);


CREATE TABLE reference.oncology_account_id_ims_xref
(
    acct_demo_id int,
    ims_outlet_number varchar(10),
    ims_facility_number varchar(20),
    ims_prescriber_number varchar(10),
    create_date date,
    create_user varchar(30),
    update_date date,
    update_user varchar(30),
    sales_force_id varchar(2),
    tvcmid int,
    adjustment_outlet_number varchar(10)
);


CREATE TABLE reference.oncology_excluded_outlets
(
    acct_demo_id int,
    reason varchar(50),
    status char(1),
    status_note varchar(50),
    add_date date,
    add_user varchar(30),
    change_date date,
    change_user varchar(30),
    tvcmid int
);


CREATE TABLE reference.us_states
(
    state_code varchar(2),
    state_name varchar(50)
);


CREATE TABLE reference.unreported_sales
(
    unreported_sales_id int,
    acct_demo_id int,
    sales_type varchar(10),
    alloc_acct_demo_id int,
    month date,
    basket_id int,
    sales_qty float,
    sales_dol float,
    create_date date,
    create_user varchar(25),
    update_date date,
    update_user varchar(25),
    tvcmid int
);


CREATE TABLE reference.date_dim
(
    date_key int,
    calendar_date timestamp,
    current_day varchar(1) DEFAULT 'N',
    day_num_of_week int,
    day_num_of_month int,
    day_num_of_quarter int,
    day_num_of_year int,
    day_of_week_name varchar(10),
    day_of_week_abbreviation varchar(3),
    weekday varchar(1),
    last_day_of_week varchar(1) DEFAULT 'N',
    last_day_of_month varchar(1) DEFAULT 'N',
    last_day_of_quarter varchar(1) DEFAULT 'N',
    last_day_of_year varchar(1) DEFAULT 'N',
    week_of_year_begin_date timestamp,
    week_of_year_begin_date_key int,
    week_of_year_end_date timestamp,
    week_of_year_end_date_key int,
    week_of_month_begin_date timestamp,
    week_of_month_begin_date_key int,
    week_of_month_end_date timestamp,
    week_of_month_end_date_key int,
    week_of_quarter_begin_date timestamp,
    week_of_quarter_begin_date_key int,
    week_of_quarter_end_date timestamp,
    week_of_quarter_end_date_key int,
    week_num_of_month int,
    week_num_of_quarter int,
    week_num_of_year int,
    month_num_of_year int,
    month_name varchar(10),
    month_name_abbreviation varchar(3),
    month_begin_date timestamp,
    month_begin_date_key int,
    month_end_date timestamp,
    month_end_date_key int,
    quarter_num_of_year int,
    quarter_begin_date timestamp,
    quarter_begin_date_key int,
    quarter_end_date timestamp,
    quarter_end_date_key int,
    quarter_time_period varchar(7),
    semester_begin_date timestamp,
    semester_begin_date_key int,
    semester_end_date timestamp,
    semester_end_date_key int,
    semester_time_period varchar(9),
    year_num int,
    year_begin_date timestamp,
    year_begin_date_key int,
    year_end_date timestamp,
    year_end_date_key int,
    friday_week_end_date timestamp,
    friday_week_end_date_key int
);


CREATE TABLE reference.zzz_invoice_adjustments_alloc
(
    ONC_SALES_ADJUST_ID int,
    ACCT_DEMO_ID int,
    ADJ_FACTOR numeric(37,15),
    ADJ_REASON varchar(200),
    CREATE_DATE timestamp,
    CREATE_USER varchar(25),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25),
    tvcmid int
);


CREATE TABLE reference.zzz_invoice_adjustments
(
    onc_sales_adjust_id int,
    adj_code varchar(10),
    adj_descr varchar(50),
    act_time_period varchar(10),
    act_start_date date,
    act_end_date date,
    status_code varchar(10),
    acct_demo_id int,
    basket_id int,
    adj_factor float,
    adj_reason varchar(200),
    create_date timestamp,
    create_user varchar(25),
    update_date timestamp,
    update_user varchar(25),
    tvcmid int
);


CREATE TABLE reference.ddd_445_calendar
(
    start_date date,
    end_date date,
    period varchar(7)
);


CREATE TABLE reference.Designations
(
    profession_code varchar(5),
    profession_code_fullname varchar(50),
    profession_code_shortname varchar(10)
);


CREATE TABLE reference.specialties
(
    Specialty_Code varchar(10),
    Specialty_Description varchar(100)
);


CREATE TABLE reference.supplier_validation_rules
(
    data_field_name varchar(50),
    type varchar(10),
    size int,
    data_field_description varchar(1000),
    value varchar(20),
    meaning varchar(500)
);


CREATE TABLE reference.zzz_sfa_specialty_xref
(
    specialty_desc varchar(100),
    specialty_code varchar(5)
);


CREATE TABLE reference.basket_type
(
    basket_type varchar(100)
);


CREATE TABLE reference.zzz_invoice_adjustments_033018
(
    onc_sales_adjust_id int,
    adj_code varchar(10),
    adj_descr varchar(50),
    act_time_period varchar(10),
    act_start_date date,
    act_end_date date,
    status_code varchar(10),
    acct_demo_id int,
    basket_id int,
    adj_factor float,
    adj_reason varchar(200),
    create_date timestamp,
    create_user varchar(25),
    update_date timestamp,
    update_user varchar(25),
    tvcmid int
);


CREATE TABLE reference.frozen_demographics_control
(
    sales_force_id varchar(20),
    start_date date,
    end_date date,
    active_flag boolean DEFAULT true,
    comments varchar(255),
    create_date date DEFAULT now()
);


CREATE TABLE reference.zzz_sales_geography_063018
(
    sales_force_id varchar(2),
    geography_number varchar(10),
    geography_name varchar(100),
    geography_desc varchar(100),
    geography_type varchar(15),
    employee_type varchar(10),
    sales_team varchar(50),
    parent_geography_number varchar(10)
);


CREATE TABLE reference.reporting_workdays
(
    sales_force_id varchar(5),
    month date,
    expected_workdays numeric(6,4),
    delivery_rate numeric(4,4)
);


CREATE TABLE reference.reporting_sales_force_headcounts
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int,
    sub_team varchar(15)
);


CREATE TABLE reference.reporting_ho_users
(
    email varchar(255) NOT NULL,
    user_id varchar(100),
    user_name varchar(100),
    user_type varchar(10),
    CONSTRAINT PK_reporting_ho_users PRIMARY KEY (email) DISABLED
);


CREATE TABLE reference.ims_xpd_mapping
(
    ims_client_number varchar(5) NOT NULL,
    ims_report_number varchar(5) NOT NULL,
    report_frequency varchar(20) NOT NULL,
    include_in_datamart_tables boolean DEFAULT true,
    create_date date DEFAULT "sysdate"(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT ims_xpd_mapping_pk PRIMARY KEY (ims_client_number, ims_report_number) DISABLED
);


CREATE TABLE reference.bkp_ims_rpt_cnt_qty_map_20200114
(
    ims_client_number varchar(5),
    ims_report_number_cnt varchar(5),
    ims_report_number_qty varchar(5),
    report_frequency varchar(20),
    active_flag char(1),
    indication_flag char(1),
    sent_from_iqvia_to_asi_flag char(1),
    include_in_prescriber_rx boolean,
    comments varchar(255),
    load_step int
);


CREATE TABLE reference.bkp_rptg_calls_per_day_goal_05282020
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.mb_rptng_mrkts
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


CREATE TABLE reference.bkp_rptg_calls_per_day_goal_12162020
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.bkp_rptng_wrkdays_12162020
(
    sales_force_id varchar(5),
    month date,
    expected_workdays numeric(6,4),
    delivery_rate numeric(4,4)
);


CREATE TABLE reference.bkp_rptng_sf_hdcnts_12162020
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int
);


CREATE TABLE reference.bkp_rptg_mrkt_sales_force_12162020
(
    market_basket_id int,
    market_name varchar(300),
    sales_force_id varchar(5),
    specialty_group_name varchar(300)
);


CREATE TABLE reference.bkp_rptg_par_brands_12162020
(
    sales_force_id varchar(5),
    brand_name varchar(300),
    brand_id int
);


CREATE TABLE reference.bkp_rptg_cust_groups_12162020
(
    sales_force_id varchar(5),
    customer_type varchar(50),
    customer_group varchar(50)
);


CREATE TABLE reference.bag
(
    bag_id int,
    bag_name varchar(100),
    first_valid_date timestamp,
    last_valid_date timestamp,
    valid_for_today varchar(1),
    create_user varchar(30),
    create_date timestamp,
    update_user varchar(30),
    update_date timestamp
);


CREATE TABLE reference.zzz_market_sales_force
(
    market_name varchar(75),
    basket_id int,
    sales_force_id varchar(5),
    primary_sales_force varchar(1)
);


CREATE TABLE reference.zipcode_timezone
(
    zip varchar(5),
    timezone_name varchar(30),
    timezone_offset float,
    observes_dst varchar(1),
    source varchar(30),
    create_date timestamp
);


CREATE TABLE reference.payer_parent
(
    payer_id varchar(6),
    payer_name varchar(100),
    parent_payer_id varchar(6),
    parent_payer_name varchar(100),
    create_date timestamp,
    create_user varchar(50),
    notes varchar(255)
);


CREATE TABLE reference.pbm_parent
(
    pbm_id varchar(6),
    processor_number varchar(10),
    pbm_name varchar(100),
    parent_pbm_id varchar(6),
    parent_processor_number varchar(10),
    parent_pbm_name varchar(100),
    create_date timestamp,
    create_user varchar(50),
    notes varchar(255)
);


CREATE TABLE reference.pcd_sales_force
(
    sales_force_id varchar(5),
    report_frequency varchar(10),
    ims_client_number varchar(64),
    ims_report_number varchar(64),
    include_in_demo boolean DEFAULT true,
    comments varchar(255)
);


CREATE TABLE reference.ims_report_cnt_qty_mapping
(
    ims_client_number varchar(5) NOT NULL,
    ims_report_number_cnt varchar(5),
    ims_report_number_qty varchar(5),
    report_frequency varchar(20) NOT NULL,
    active_flag char(1) NOT NULL,
    indication_flag char(1),
    sent_from_iqvia_to_asi_flag char(1) NOT NULL DEFAULT 'N',
    include_in_prescriber_rx boolean DEFAULT true,
    comments varchar(255),
    load_step int DEFAULT 2,
    CONSTRAINT QQ_ims_report_cnt_qty_mapping_cnt UNIQUE (ims_client_number, ims_report_number_cnt, ims_report_number_qty) ENABLED
);


CREATE TABLE reference.zzz_sales_geography
(
    sales_force_id varchar(2),
    geography_number varchar(10),
    geography_name varchar(100),
    geography_desc varchar(100),
    geography_type varchar(15),
    employee_type varchar(10),
    sales_team varchar(50),
    parent_geography_number varchar(10)
);


CREATE TABLE reference.salesforce_reference
(
    id int,
    sales_force_id varchar(10),
    ref_code varchar(10),
    ref_desc varchar(50),
    ref_type varchar(50)
);


CREATE TABLE reference.zzz_product_catalog
(
    id int,
    sales_force_id varchar(5),
    product_catalog varchar(10),
    product varchar(300),
    business_unit varchar(100),
    start_date date,
    end_date date,
    field_release_date date
);


CREATE TABLE reference.ims_report_dol_qty_mapping
(
    ims_client_number varchar(5),
    ims_report_number_dol varchar(5),
    ims_report_number_qty varchar(5),
    report_frequency varchar(20),
    active_flag char(1),
    indication_flag char(1)
);


CREATE TABLE reference.valid_value_exclusion
(
    feed_id int,
    lov_name varchar(255),
    exclusion_value varchar(255)
);


CREATE TABLE reference.CERTIFIED_FIELD_TRAINER_XREF
(
    CFT_Name varchar(20) NOT NULL,
    Territory_Name varchar(30) NOT NULL,
    Manager_Name varchar(30) NOT NULL,
    Certified varchar(10) NOT NULL,
    Employee_ID_Raw varchar(10) NOT NULL,
    Teva_ID varchar(10) NOT NULL,
    InsertDate timestamp
);


CREATE TABLE reference.excluded_specialty
(
    basket_id int,
    basket_name varchar(300) NOT NULL,
    primary_specialty varchar(255) NOT NULL,
    create_date date DEFAULT "sysdate"(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT excluded_specialty_pk PRIMARY KEY (basket_name, primary_specialty) DISABLED
);


CREATE TABLE reference.excluded_specialty_override
(
    basket_id int,
    basket_name varchar(300) NOT NULL,
    primary_specialty varchar(255) NOT NULL,
    allowed_specialty varchar(255) NOT NULL,
    create_date date DEFAULT "sysdate"(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT excluded_specialty_override_pk PRIMARY KEY (basket_name, primary_specialty, allowed_specialty) DISABLED
);


CREATE TABLE reference.specialty_group_xref
(
    category_name varchar(300) NOT NULL,
    specialty_code varchar(5) NOT NULL,
    specialty_group varchar(300),
    CONSTRAINT excluded_specialty_pk PRIMARY KEY (category_name, specialty_code) DISABLED
);


CREATE TABLE reference.xpo_sales_category
(
    category_code varchar(2),
    category_description varchar(30)
);


CREATE TABLE reference.reporting_markets
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


CREATE TABLE reference.reporting_par_brands
(
    sales_force_id varchar(5) NOT NULL,
    brand_name varchar(300),
    brand_id int NOT NULL,
    CONSTRAINT PK_reporting_par_brands PRIMARY KEY (sales_force_id, brand_id) DISABLED
);


CREATE TABLE reference.reporting_calls_per_day_goal
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.ims_payer_payment_method
(
    payer_number varchar(6),
    payment_method varchar(250)
);


CREATE TABLE reference.acute_market_definition
(
    market_name varchar(100),
    market_id int,
    brand_form_strength varchar(100),
    bfs_id int,
    teva_prod varchar(2),
    product_group varchar(100),
    create_user varchar(30),
    create_date date
);


CREATE TABLE reference.mb_ref_rptng_workdays_04282020
(
    sales_force_id varchar(5),
    month date,
    expected_workdays numeric(6,4),
    delivery_rate numeric(4,4)
);


CREATE TABLE reference.mb_ref_sales_force_headcnts_04282020
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int
);


CREATE TABLE reference.active_fileclass_names
(
    inbound_file_class varchar(100)
);


CREATE TABLE reference.bkp_rptg_calls_per_day_goal_05292020
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.mb_ims_report_cnt_qty_mapping
(
    ims_client_number varchar(5),
    ims_report_number_cnt varchar(5),
    ims_report_number_qty varchar(5),
    report_frequency varchar(20),
    active_flag char(1),
    indication_flag char(1),
    sent_from_iqvia_to_asi_flag char(1),
    include_in_prescriber_rx boolean,
    comments varchar(255),
    load_step int
);


CREATE TABLE reference.active_alternate_alignments
(
    alignment_file_id int,
    alignment_name varchar(100),
    start_date date,
    end_date date,
    alignment_description varchar(50),
    include_in_alternates varchar(1),
    period varchar(20),
    sales_force_id varchar(5)
);


CREATE TABLE reference.decile_extract_control
(
    basket_id int,
    decile_name_1 varchar(50),
    decile_name_2 varchar(50),
    decile_name_3 varchar(50)
);


CREATE TABLE reference.oncology_zip_alignment_override
(
    onc_demo_id int,
    tvcmid int,
    alignment_zip varchar(5)
);


CREATE TABLE reference.sales_force_product_metrics
(
    SALES_FORCE_ID varchar(5),
    PRODUCT_NAME varchar(50)
);


CREATE TABLE reference.zzz_asi_outbound_ims_product_group_mapping
(
    data_source varchar(50) NOT NULL,
    market_name varchar(300),
    basket_id int NOT NULL,
    ims_product_group varchar(10),
    CONSTRAINT asi_outbound_ims_product_group_mapping_pk PRIMARY KEY (data_source, basket_id) DISABLED
);


CREATE TABLE reference.zzz_business_unit
(
    id int,
    sales_force_id varchar(10),
    business_unit_id varchar(10),
    business_unit varchar(50)
);


CREATE TABLE reference.AHM_Exclude_Employee
(
    employee_id varchar(20)
);


CREATE TABLE reference.zzz_psr_enrollment_bckp
(
    veeva_account_id varchar(20),
    ims_id varchar(10),
    npi varchar(10),
    tvcmid int,
    basket_name varchar(300),
    basket_id int,
    indication varchar(5),
    prescriber_last_name varchar(80),
    prescriber_first_name varchar(50),
    prescriber_middle_name varchar(50),
    specialty_code varchar(255),
    prescriber_date date,
    in_progress_count int,
    completed_count int,
    cancelled_count int,
    prescriber_count int,
    week_ending date,
    file_id int,
    record_id int
);


CREATE TABLE reference.zzz_psr_enrollment_rej_bckp
(
    file_id int,
    record_id int,
    null_npi varchar(5),
    null_lkp_veeva_id varchar(5),
    null_lkp_ims_id varchar(5),
    count_mismatch varchar(5),
    week_ending date
);


CREATE TABLE reference.legacy_specialty_xref
(
    specialty_code varchar(5),
    specialty_desc varchar(100),
    specialty_group varchar(5),
    nuvigil_report_group varchar(3),
    amrix_report_group varchar(3),
    fentora_report_group varchar(3),
    onc_report_group varchar(3),
    nuvigil_target_group varchar(3),
    amrix_target_group varchar(3),
    fentora_target_group varchar(3),
    nuvigil_dnc_flag varchar(1),
    fentora_dnc_flag varchar(1),
    amrix_target_flag varchar(1),
    ms_report_group varchar(5),
    pd_report_group varchar(5),
    tr_report_group varchar(25)
);


CREATE TABLE reference.city_state_zip
(
    city varchar(255),
    state varchar(10),
    zip varchar(10)
);


CREATE TABLE reference.zzz_outbound_product_name
(
    source_id int,
    transform_name varchar(255),
    file_class_name varchar(255),
    basket_id int,
    outbound_prod_name varchar(255)
);


CREATE TABLE reference.zzz_ims_report_cnt_qty_mapping_20180320
(
    ims_client_number varchar(5),
    ims_report_number_cnt varchar(5),
    ims_report_number_qty varchar(5),
    report_frequency varchar(20),
    active_flag char(1),
    indication_flag char(1)
);


CREATE TABLE reference.zzz_outbound_product_name_20180320
(
    source_id int,
    transform_name varchar(255),
    file_class_name varchar(255),
    basket_id int,
    outbound_prod_name varchar(255)
);


CREATE TABLE reference.zzz_sales_geography_040418
(
    sales_force_id varchar(2),
    geography_number varchar(10),
    geography_name varchar(100),
    geography_desc varchar(100),
    geography_type varchar(15),
    employee_type varchar(10),
    sales_team varchar(50),
    parent_geography_number varchar(10)
);


CREATE TABLE reference.customer_level_flags_control
(
    flag_file_id int NOT NULL,
    load_this_file_id boolean DEFAULT true,
    effective_start_date date,
    effective_end_date date,
    comments varchar(255),
    create_date date DEFAULT now(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT customer_level_flags_control_pk PRIMARY KEY (flag_file_id) ENABLED
);


CREATE TABLE reference.copay_voucher_program
(
    redemption_type varchar(20) NOT NULL,
    program_number varchar(15) NOT NULL,
    program_description varchar(100),
    create_date date DEFAULT "sysdate"(),
    CONSTRAINT copay_voucher_program_pk PRIMARY KEY (program_number, redemption_type) DISABLED
);


CREATE TABLE reference.reporting_customer_groups
(
    sales_force_id varchar(5),
    customer_type varchar(50),
    customer_group varchar(50)
);


CREATE TABLE reference.reporting_market_sales_force
(
    market_basket_id int NOT NULL,
    market_name varchar(300),
    sales_force_id varchar(5) NOT NULL,
    specialty_group_name varchar(300),
    CONSTRAINT PK_reporting_market_sales_force PRIMARY KEY (market_basket_id, sales_force_id) DISABLED
);


CREATE TABLE reference.reporting_roster_override
(
    geography_id varchar(10),
    employee_id varchar(100),
    rep_name varchar(100),
    user_id varchar(255),
    global_employee_id varchar(35),
    email varchar(255)
);


CREATE TABLE reference.mb_ref_rptng_call_per_day_goal_01312020
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.mb_ref_rptng_workdays_01312020
(
    sales_force_id varchar(5),
    month date,
    expected_workdays numeric(6,4),
    delivery_rate numeric(4,4)
);


CREATE TABLE reference.mb_ref_sales_force_headcnts_01312020
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int
);


CREATE TABLE reference.ics_laba_saba
(
    basket_name varchar(300)
);


CREATE TABLE reference.ref_rptng_wrkdays_05132020
(
    sales_force_id varchar(5),
    month date,
    expected_workdays numeric(6,4),
    delivery_rate numeric(4,4)
);


CREATE TABLE reference.ref_rptng_callsperday_05132020
(
    sales_force_id varchar(5),
    basket_id int,
    basket_name varchar(300),
    month date,
    cpd_goal numeric(4,2),
    goal_type varchar(25),
    prod_percent numeric(4,3)
);


CREATE TABLE reference.ref_rptng_cust_grps_05132020
(
    sales_force_id varchar(5),
    customer_type varchar(50),
    customer_group varchar(50)
);


CREATE TABLE reference.ref_rptng_salesforce_headcnts_05132020
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int
);


CREATE TABLE reference.ref_rptng_mrkt_sales_force_05132020
(
    market_basket_id int,
    market_name varchar(300),
    sales_force_id varchar(5),
    specialty_group_name varchar(300)
);


CREATE TABLE reference.ref_rptng_par_brands_05132020
(
    sales_force_id varchar(5),
    brand_name varchar(300),
    brand_id int
);


CREATE TABLE reference.ref_rptng_salesforce_headcnts_05132020_2
(
    sales_force_id varchar(5),
    month date,
    headcount int,
    products int
);


CREATE TABLE reference.mb_pcd_sales_force
(
    sales_force_id varchar(5),
    report_frequency varchar(10),
    ims_client_number varchar(64),
    ims_report_number varchar(64),
    include_in_demo boolean,
    comments varchar(255)
);


CREATE TABLE reference.how_executed
(
    id int,
    how_executed varchar(40)
);


CREATE TABLE reference.reporting_non_target_brands
(
    sales_force_id varchar(5),
    brand_name varchar(300)
);


CREATE TABLE reference.zs_revo_products
(
    entity varchar(300),
    basket_id int,
    basket_name varchar(300)
);


CREATE TABLE reference.ref_rptng_cust_grps_12172020
(
    sales_force_id varchar(5),
    customer_type varchar(50),
    customer_group varchar(50)
);


CREATE PROJECTION reference.call_plan_active_dates_b0 /*+basename(call_plan_active_dates),createtype(L)*/ 
(
 call_plan_file_id,
 call_plan_name,
 start_date,
 end_date,
 call_plan_description,
 include_in_alternates,
 period,
 sales_force_id
)
AS
 SELECT call_plan_active_dates.call_plan_file_id,
        call_plan_active_dates.call_plan_name,
        call_plan_active_dates.start_date,
        call_plan_active_dates.end_date,
        call_plan_active_dates.call_plan_description,
        call_plan_active_dates.include_in_alternates,
        call_plan_active_dates.period,
        call_plan_active_dates.sales_force_id
 FROM reference.call_plan_active_dates
 ORDER BY call_plan_active_dates.call_plan_file_id,
          call_plan_active_dates.call_plan_name,
          call_plan_active_dates.start_date,
          call_plan_active_dates.end_date,
          call_plan_active_dates.call_plan_description,
          call_plan_active_dates.include_in_alternates
SEGMENTED BY hash(call_plan_active_dates.start_date, call_plan_active_dates.end_date) ALL NODES;

CREATE PROJECTION reference.bag_product_b0 /*+basename(bag_product),createtype(L)*/ 
(
 bag_id,
 basket_id,
 basket_name,
 "position",
 weight,
 create_user,
 create_date,
 update_user,
 update_date
)
AS
 SELECT bag_product.bag_id,
        bag_product.basket_id,
        bag_product.basket_name,
        bag_product."position",
        bag_product.weight,
        bag_product.create_user,
        bag_product.create_date,
        bag_product.update_user,
        bag_product.update_date
 FROM reference.bag_product
 ORDER BY bag_product.bag_id,
          bag_product.basket_id,
          bag_product.basket_name,
          bag_product."position",
          bag_product.weight,
          bag_product.create_user,
          bag_product.create_date,
          bag_product.update_user,
          bag_product.update_date
SEGMENTED BY hash(bag_product.bag_id) ALL NODES;

CREATE PROJECTION reference.bag_territory_b0 /*+basename(bag_territory),createtype(L)*/ 
(
 bag_id,
 territory_number,
 detail_first_valid_date,
 detail_last_valid_date,
 ic_first_valid_date,
 ic_last_valid_date,
 valid_for_today,
 valid_for_ic,
 create_user,
 create_date,
 update_user,
 update_date
)
AS
 SELECT bag_territory.bag_id,
        bag_territory.territory_number,
        bag_territory.detail_first_valid_date,
        bag_territory.detail_last_valid_date,
        bag_territory.ic_first_valid_date,
        bag_territory.ic_last_valid_date,
        bag_territory.valid_for_today,
        bag_territory.valid_for_ic,
        bag_territory.create_user,
        bag_territory.create_date,
        bag_territory.update_user,
        bag_territory.update_date
 FROM reference.bag_territory
 ORDER BY bag_territory.bag_id,
          bag_territory.territory_number,
          bag_territory.detail_first_valid_date,
          bag_territory.detail_last_valid_date,
          bag_territory.ic_first_valid_date,
          bag_territory.ic_last_valid_date,
          bag_territory.valid_for_today,
          bag_territory.valid_for_ic,
          bag_territory.create_user,
          bag_territory.create_date,
          bag_territory.update_user,
          bag_territory.update_date
SEGMENTED BY hash(bag_territory.bag_id) ALL NODES;

CREATE PROJECTION reference.comp_alignment_exceptions_b0 /*+basename(comp_alignment_exceptions),createtype(L)*/ 
(
 sales_force_id,
 territory_number,
 ims_id,
 tvcmid,
 first_name,
 last_name,
 address,
 city,
 state,
 zip,
 notes,
 requested_by,
 create_date,
 active_ind
)
AS
 SELECT comp_alignment_exceptions.sales_force_id,
        comp_alignment_exceptions.territory_number,
        comp_alignment_exceptions.ims_id,
        comp_alignment_exceptions.tvcmid,
        comp_alignment_exceptions.first_name,
        comp_alignment_exceptions.last_name,
        comp_alignment_exceptions.address,
        comp_alignment_exceptions.city,
        comp_alignment_exceptions.state,
        comp_alignment_exceptions.zip,
        comp_alignment_exceptions.notes,
        comp_alignment_exceptions.requested_by,
        comp_alignment_exceptions.create_date,
        comp_alignment_exceptions.active_ind
 FROM reference.comp_alignment_exceptions
 ORDER BY comp_alignment_exceptions.sales_force_id,
          comp_alignment_exceptions.territory_number,
          comp_alignment_exceptions.ims_id,
          comp_alignment_exceptions.tvcmid,
          comp_alignment_exceptions.first_name,
          comp_alignment_exceptions.last_name,
          comp_alignment_exceptions.address,
          comp_alignment_exceptions.city,
          comp_alignment_exceptions.state,
          comp_alignment_exceptions.zip,
          comp_alignment_exceptions.notes,
          comp_alignment_exceptions.requested_by,
          comp_alignment_exceptions.create_date,
          comp_alignment_exceptions.active_ind
SEGMENTED BY hash(comp_alignment_exceptions.sales_force_id) ALL NODES;

CREATE PROJECTION reference.ddd_category_b0 /*+basename(ddd_category),createtype(L)*/ 
(
 category_code,
 category_description,
 category_definition
)
AS
 SELECT ddd_category.category_code,
        ddd_category.category_description,
        ddd_category.category_definition
 FROM reference.ddd_category
 ORDER BY ddd_category.category_code,
          ddd_category.category_description,
          ddd_category.category_definition
SEGMENTED BY hash(ddd_category.category_code, ddd_category.category_description, ddd_category.category_definition) ALL NODES;

CREATE PROJECTION reference.ims_model_payment_method_b0 /*+basename(ims_model_payment_method),createtype(L)*/ 
(
 model,
 payment_method
)
AS
 SELECT ims_model_payment_method.model,
        ims_model_payment_method.payment_method
 FROM reference.ims_model_payment_method
 ORDER BY ims_model_payment_method.model,
          ims_model_payment_method.payment_method
SEGMENTED BY hash(ims_model_payment_method.model, ims_model_payment_method.payment_method) ALL NODES;

CREATE PROJECTION reference.oncology_account_id_867_xref_b0 /*+basename(oncology_account_id_867_xref),createtype(L)*/ 
(
 acct_demo_id,
 id_type,
 id_value,
 create_date,
 create_user,
 update_date,
 update_user
)
AS
 SELECT zzz_oncology_account_id_867_xref.acct_demo_id,
        zzz_oncology_account_id_867_xref.id_type,
        zzz_oncology_account_id_867_xref.id_value,
        zzz_oncology_account_id_867_xref.create_date,
        zzz_oncology_account_id_867_xref.create_user,
        zzz_oncology_account_id_867_xref.update_date,
        zzz_oncology_account_id_867_xref.update_user
 FROM reference.zzz_oncology_account_id_867_xref
 ORDER BY zzz_oncology_account_id_867_xref.acct_demo_id,
          zzz_oncology_account_id_867_xref.id_type,
          zzz_oncology_account_id_867_xref.id_value,
          zzz_oncology_account_id_867_xref.create_date,
          zzz_oncology_account_id_867_xref.create_user,
          zzz_oncology_account_id_867_xref.update_date,
          zzz_oncology_account_id_867_xref.update_user
SEGMENTED BY hash(zzz_oncology_account_id_867_xref.create_date) ALL NODES;

CREATE PROJECTION reference.oncology_account_id_ims_xref_b0 /*+basename(oncology_account_id_ims_xref),createtype(L)*/ 
(
 acct_demo_id,
 ims_outlet_number,
 ims_facility_number,
 ims_prescriber_number,
 create_date,
 create_user,
 update_date,
 update_user,
 sales_force_id,
 tvcmid,
 adjustment_outlet_number
)
AS
 SELECT oncology_account_id_ims_xref.acct_demo_id,
        oncology_account_id_ims_xref.ims_outlet_number,
        oncology_account_id_ims_xref.ims_facility_number,
        oncology_account_id_ims_xref.ims_prescriber_number,
        oncology_account_id_ims_xref.create_date,
        oncology_account_id_ims_xref.create_user,
        oncology_account_id_ims_xref.update_date,
        oncology_account_id_ims_xref.update_user,
        oncology_account_id_ims_xref.sales_force_id,
        oncology_account_id_ims_xref.tvcmid,
        oncology_account_id_ims_xref.adjustment_outlet_number
 FROM reference.oncology_account_id_ims_xref
 ORDER BY oncology_account_id_ims_xref.acct_demo_id,
          oncology_account_id_ims_xref.ims_outlet_number,
          oncology_account_id_ims_xref.ims_facility_number,
          oncology_account_id_ims_xref.ims_prescriber_number,
          oncology_account_id_ims_xref.create_date,
          oncology_account_id_ims_xref.create_user,
          oncology_account_id_ims_xref.update_date,
          oncology_account_id_ims_xref.update_user
SEGMENTED BY hash(oncology_account_id_ims_xref.create_date) ALL NODES;

CREATE PROJECTION reference.oncology_excluded_outlets_b0 /*+basename(oncology_excluded_outlets),createtype(L)*/ 
(
 acct_demo_id,
 reason,
 status,
 status_note,
 add_date,
 add_user,
 change_date,
 change_user,
 tvcmid
)
AS
 SELECT oncology_excluded_outlets.acct_demo_id,
        oncology_excluded_outlets.reason,
        oncology_excluded_outlets.status,
        oncology_excluded_outlets.status_note,
        oncology_excluded_outlets.add_date,
        oncology_excluded_outlets.add_user,
        oncology_excluded_outlets.change_date,
        oncology_excluded_outlets.change_user,
        oncology_excluded_outlets.tvcmid
 FROM reference.oncology_excluded_outlets
 ORDER BY oncology_excluded_outlets.acct_demo_id,
          oncology_excluded_outlets.reason,
          oncology_excluded_outlets.status,
          oncology_excluded_outlets.status_note,
          oncology_excluded_outlets.add_date,
          oncology_excluded_outlets.add_user,
          oncology_excluded_outlets.change_date,
          oncology_excluded_outlets.change_user
SEGMENTED BY hash(oncology_excluded_outlets.add_date) ALL NODES;

CREATE PROJECTION reference.us_states_b0 /*+basename(us_states),createtype(L)*/ 
(
 state_code,
 state_name
)
AS
 SELECT us_states.state_code,
        us_states.state_name
 FROM reference.us_states
 ORDER BY us_states.state_code,
          us_states.state_name
SEGMENTED BY hash(us_states.state_code, us_states.state_name) ALL NODES;

CREATE PROJECTION reference.unreported_sales_b0 /*+basename(unreported_sales),createtype(L)*/ 
(
 unreported_sales_id,
 acct_demo_id,
 sales_type,
 alloc_acct_demo_id,
 month,
 basket_id,
 sales_qty,
 sales_dol,
 create_date,
 create_user,
 update_date,
 update_user,
 tvcmid
)
AS
 SELECT unreported_sales.unreported_sales_id,
        unreported_sales.acct_demo_id,
        unreported_sales.sales_type,
        unreported_sales.alloc_acct_demo_id,
        unreported_sales.month,
        unreported_sales.basket_id,
        unreported_sales.sales_qty,
        unreported_sales.sales_dol,
        unreported_sales.create_date,
        unreported_sales.create_user,
        unreported_sales.update_date,
        unreported_sales.update_user,
        unreported_sales.tvcmid
 FROM reference.unreported_sales
 ORDER BY unreported_sales.unreported_sales_id,
          unreported_sales.acct_demo_id,
          unreported_sales.sales_type,
          unreported_sales.alloc_acct_demo_id,
          unreported_sales.month,
          unreported_sales.basket_id,
          unreported_sales.sales_qty,
          unreported_sales.sales_dol,
          unreported_sales.create_date,
          unreported_sales.create_user,
          unreported_sales.update_date,
          unreported_sales.update_user
SEGMENTED BY hash(unreported_sales.create_date) ALL NODES;

CREATE PROJECTION reference.date_dim_b0 /*+basename(date_dim)*/ 
(
 date_key,
 calendar_date,
 current_day,
 day_num_of_week,
 day_num_of_month,
 day_num_of_quarter,
 day_num_of_year,
 day_of_week_name,
 day_of_week_abbreviation,
 weekday,
 last_day_of_week,
 last_day_of_month,
 last_day_of_quarter,
 last_day_of_year,
 week_of_year_begin_date,
 week_of_year_begin_date_key,
 week_of_year_end_date,
 week_of_year_end_date_key,
 week_of_month_begin_date,
 week_of_month_begin_date_key,
 week_of_month_end_date,
 week_of_month_end_date_key,
 week_of_quarter_begin_date,
 week_of_quarter_begin_date_key,
 week_of_quarter_end_date,
 week_of_quarter_end_date_key,
 week_num_of_month,
 week_num_of_quarter,
 week_num_of_year,
 month_num_of_year,
 month_name,
 month_name_abbreviation,
 month_begin_date,
 month_begin_date_key,
 month_end_date,
 month_end_date_key,
 quarter_num_of_year,
 quarter_begin_date,
 quarter_begin_date_key,
 quarter_end_date,
 quarter_end_date_key,
 quarter_time_period,
 semester_begin_date,
 semester_begin_date_key,
 semester_end_date,
 semester_end_date_key,
 semester_time_period,
 year_num,
 year_begin_date,
 year_begin_date_key,
 year_end_date,
 year_end_date_key,
 friday_week_end_date,
 friday_week_end_date_key
)
AS
 SELECT date_dim.date_key,
        date_dim.calendar_date,
        date_dim.current_day,
        date_dim.day_num_of_week,
        date_dim.day_num_of_month,
        date_dim.day_num_of_quarter,
        date_dim.day_num_of_year,
        date_dim.day_of_week_name,
        date_dim.day_of_week_abbreviation,
        date_dim.weekday,
        date_dim.last_day_of_week,
        date_dim.last_day_of_month,
        date_dim.last_day_of_quarter,
        date_dim.last_day_of_year,
        date_dim.week_of_year_begin_date,
        date_dim.week_of_year_begin_date_key,
        date_dim.week_of_year_end_date,
        date_dim.week_of_year_end_date_key,
        date_dim.week_of_month_begin_date,
        date_dim.week_of_month_begin_date_key,
        date_dim.week_of_month_end_date,
        date_dim.week_of_month_end_date_key,
        date_dim.week_of_quarter_begin_date,
        date_dim.week_of_quarter_begin_date_key,
        date_dim.week_of_quarter_end_date,
        date_dim.week_of_quarter_end_date_key,
        date_dim.week_num_of_month,
        date_dim.week_num_of_quarter,
        date_dim.week_num_of_year,
        date_dim.month_num_of_year,
        date_dim.month_name,
        date_dim.month_name_abbreviation,
        date_dim.month_begin_date,
        date_dim.month_begin_date_key,
        date_dim.month_end_date,
        date_dim.month_end_date_key,
        date_dim.quarter_num_of_year,
        date_dim.quarter_begin_date,
        date_dim.quarter_begin_date_key,
        date_dim.quarter_end_date,
        date_dim.quarter_end_date_key,
        date_dim.quarter_time_period,
        date_dim.semester_begin_date,
        date_dim.semester_begin_date_key,
        date_dim.semester_end_date,
        date_dim.semester_end_date_key,
        date_dim.semester_time_period,
        date_dim.year_num,
        date_dim.year_begin_date,
        date_dim.year_begin_date_key,
        date_dim.year_end_date,
        date_dim.year_end_date_key,
        date_dim.friday_week_end_date,
        date_dim.friday_week_end_date_key
 FROM reference.date_dim
 ORDER BY date_dim.date_key,
          date_dim.calendar_date,
          date_dim.current_day,
          date_dim.day_num_of_week,
          date_dim.day_num_of_month,
          date_dim.day_num_of_quarter,
          date_dim.day_num_of_year,
          date_dim.day_of_week_name,
          date_dim.day_of_week_abbreviation,
          date_dim.weekday,
          date_dim.last_day_of_week,
          date_dim.last_day_of_month,
          date_dim.last_day_of_quarter,
          date_dim.last_day_of_year,
          date_dim.week_of_year_begin_date,
          date_dim.week_of_year_begin_date_key,
          date_dim.week_of_year_end_date,
          date_dim.week_of_year_end_date_key,
          date_dim.week_of_month_begin_date,
          date_dim.week_of_month_begin_date_key,
          date_dim.week_of_month_end_date,
          date_dim.week_of_month_end_date_key,
          date_dim.week_of_quarter_begin_date,
          date_dim.week_of_quarter_begin_date_key,
          date_dim.week_of_quarter_end_date,
          date_dim.week_of_quarter_end_date_key,
          date_dim.week_num_of_month,
          date_dim.week_num_of_quarter,
          date_dim.week_num_of_year,
          date_dim.month_num_of_year,
          date_dim.month_name,
          date_dim.month_name_abbreviation,
          date_dim.month_begin_date,
          date_dim.month_begin_date_key,
          date_dim.month_end_date,
          date_dim.month_end_date_key,
          date_dim.quarter_num_of_year,
          date_dim.quarter_begin_date,
          date_dim.quarter_begin_date_key,
          date_dim.quarter_end_date,
          date_dim.quarter_end_date_key,
          date_dim.quarter_time_period,
          date_dim.semester_begin_date,
          date_dim.semester_begin_date_key,
          date_dim.semester_end_date,
          date_dim.semester_end_date_key,
          date_dim.semester_time_period,
          date_dim.year_num,
          date_dim.year_begin_date,
          date_dim.year_begin_date_key,
          date_dim.year_end_date,
          date_dim.year_end_date_key,
          date_dim.friday_week_end_date,
          date_dim.friday_week_end_date_key
SEGMENTED BY hash(date_dim.date_key, date_dim.calendar_date, date_dim.current_day, date_dim.day_num_of_week, date_dim.day_num_of_month, date_dim.day_num_of_quarter, date_dim.day_num_of_year, date_dim.day_of_week_abbreviation, date_dim.weekday, date_dim.last_day_of_week, date_dim.last_day_of_month, date_dim.last_day_of_quarter, date_dim.last_day_of_year, date_dim.week_of_year_begin_date, date_dim.week_of_year_begin_date_key, date_dim.week_of_year_end_date, date_dim.week_of_year_end_date_key, date_dim.week_of_month_begin_date, date_dim.week_of_month_begin_date_key, date_dim.week_of_month_end_date, date_dim.week_of_month_end_date_key, date_dim.week_of_quarter_begin_date, date_dim.week_of_quarter_begin_date_key, date_dim.week_of_quarter_end_date, date_dim.week_of_quarter_end_date_key, date_dim.week_num_of_month, date_dim.week_num_of_quarter, date_dim.week_num_of_year, date_dim.month_num_of_year, date_dim.month_name_abbreviation, date_dim.month_begin_date, date_dim.month_begin_date_key) ALL NODES;

CREATE PROJECTION reference.invoice_adjustments_alloc_b0 /*+basename(invoice_adjustments_alloc),createtype(A)*/ 
(
 ONC_SALES_ADJUST_ID,
 ACCT_DEMO_ID,
 ADJ_FACTOR,
 ADJ_REASON,
 CREATE_DATE,
 CREATE_USER,
 UPDATE_DATE,
 UPDATE_USER,
 tvcmid
)
AS
 SELECT zzz_invoice_adjustments_alloc.ONC_SALES_ADJUST_ID,
        zzz_invoice_adjustments_alloc.ACCT_DEMO_ID,
        zzz_invoice_adjustments_alloc.ADJ_FACTOR,
        zzz_invoice_adjustments_alloc.ADJ_REASON,
        zzz_invoice_adjustments_alloc.CREATE_DATE,
        zzz_invoice_adjustments_alloc.CREATE_USER,
        zzz_invoice_adjustments_alloc.UPDATE_DATE,
        zzz_invoice_adjustments_alloc.UPDATE_USER,
        zzz_invoice_adjustments_alloc.tvcmid
 FROM reference.zzz_invoice_adjustments_alloc
 ORDER BY zzz_invoice_adjustments_alloc.ONC_SALES_ADJUST_ID,
          zzz_invoice_adjustments_alloc.ACCT_DEMO_ID,
          zzz_invoice_adjustments_alloc.ADJ_FACTOR,
          zzz_invoice_adjustments_alloc.ADJ_REASON,
          zzz_invoice_adjustments_alloc.CREATE_DATE,
          zzz_invoice_adjustments_alloc.CREATE_USER,
          zzz_invoice_adjustments_alloc.UPDATE_DATE,
          zzz_invoice_adjustments_alloc.UPDATE_USER
SEGMENTED BY hash(zzz_invoice_adjustments_alloc.ONC_SALES_ADJUST_ID, zzz_invoice_adjustments_alloc.ACCT_DEMO_ID, zzz_invoice_adjustments_alloc.CREATE_DATE, zzz_invoice_adjustments_alloc.UPDATE_DATE, zzz_invoice_adjustments_alloc.ADJ_FACTOR, zzz_invoice_adjustments_alloc.CREATE_USER, zzz_invoice_adjustments_alloc.UPDATE_USER, zzz_invoice_adjustments_alloc.ADJ_REASON) ALL NODES;

CREATE PROJECTION reference.invoice_adjustments_b0 /*+basename(invoice_adjustments),createtype(L)*/ 
(
 onc_sales_adjust_id,
 adj_code,
 adj_descr,
 act_time_period,
 act_start_date,
 act_end_date,
 status_code,
 acct_demo_id,
 basket_id,
 adj_factor,
 adj_reason,
 create_date,
 create_user,
 update_date,
 update_user,
 tvcmid
)
AS
 SELECT zzz_invoice_adjustments.onc_sales_adjust_id,
        zzz_invoice_adjustments.adj_code,
        zzz_invoice_adjustments.adj_descr,
        zzz_invoice_adjustments.act_time_period,
        zzz_invoice_adjustments.act_start_date,
        zzz_invoice_adjustments.act_end_date,
        zzz_invoice_adjustments.status_code,
        zzz_invoice_adjustments.acct_demo_id,
        zzz_invoice_adjustments.basket_id,
        zzz_invoice_adjustments.adj_factor,
        zzz_invoice_adjustments.adj_reason,
        zzz_invoice_adjustments.create_date,
        zzz_invoice_adjustments.create_user,
        zzz_invoice_adjustments.update_date,
        zzz_invoice_adjustments.update_user,
        zzz_invoice_adjustments.tvcmid
 FROM reference.zzz_invoice_adjustments
 ORDER BY zzz_invoice_adjustments.onc_sales_adjust_id,
          zzz_invoice_adjustments.adj_code,
          zzz_invoice_adjustments.adj_descr,
          zzz_invoice_adjustments.act_time_period,
          zzz_invoice_adjustments.act_start_date,
          zzz_invoice_adjustments.act_end_date,
          zzz_invoice_adjustments.status_code,
          zzz_invoice_adjustments.acct_demo_id
SEGMENTED BY hash(zzz_invoice_adjustments.act_start_date, zzz_invoice_adjustments.act_end_date) ALL NODES;

CREATE PROJECTION reference.ddd_445_calendar_b0 /*+basename(ddd_445_calendar),createtype(L)*/ 
(
 start_date,
 end_date,
 period
)
AS
 SELECT ddd_445_calendar.start_date,
        ddd_445_calendar.end_date,
        ddd_445_calendar.period
 FROM reference.ddd_445_calendar
 ORDER BY ddd_445_calendar.start_date,
          ddd_445_calendar.end_date,
          ddd_445_calendar.period
SEGMENTED BY hash(ddd_445_calendar.start_date, ddd_445_calendar.start_date) ALL NODES;

CREATE PROJECTION reference.sales_force_product_metrics_b0 /*+basename(sales_force_product_metrics),createtype(L)*/ 
(
 SALES_FORCE_ID,
 PRODUCT_NAME
)
AS
 SELECT sales_force_product_metrics.SALES_FORCE_ID,
        sales_force_product_metrics.PRODUCT_NAME
 FROM reference.sales_force_product_metrics
 ORDER BY sales_force_product_metrics.SALES_FORCE_ID,
          sales_force_product_metrics.PRODUCT_NAME
SEGMENTED BY hash(sales_force_product_metrics.SALES_FORCE_ID, sales_force_product_metrics.PRODUCT_NAME) ALL NODES;

CREATE PROJECTION reference.Designations_b0 /*+basename(Designations),createtype(L)*/ 
(
 profession_code,
 profession_code_fullname,
 profession_code_shortname
)
AS
 SELECT Designations.profession_code,
        Designations.profession_code_fullname,
        Designations.profession_code_shortname
 FROM reference.Designations
 ORDER BY Designations.profession_code,
          Designations.profession_code_fullname,
          Designations.profession_code_shortname
SEGMENTED BY hash(Designations.profession_code, Designations.profession_code_shortname, Designations.profession_code_fullname) ALL NODES;

CREATE PROJECTION reference.specialties_b0 /*+basename(specialties),createtype(L)*/ 
(
 Specialty_Code,
 Specialty_Description
)
AS
 SELECT specialties.Specialty_Code,
        specialties.Specialty_Description
 FROM reference.specialties
 ORDER BY specialties.Specialty_Code,
          specialties.Specialty_Description
SEGMENTED BY hash(specialties.Specialty_Code, specialties.Specialty_Description) ALL NODES;

CREATE PROJECTION reference.product_catalog_b0 /*+basename(product_catalog),createtype(L)*/ 
(
 id,
 sales_force_id,
 product_catalog,
 product,
 business_unit,
 start_date,
 end_date,
 field_release_date
)
AS
 SELECT zzz_product_catalog.id,
        zzz_product_catalog.sales_force_id,
        zzz_product_catalog.product_catalog,
        zzz_product_catalog.product,
        zzz_product_catalog.business_unit,
        zzz_product_catalog.start_date,
        zzz_product_catalog.end_date,
        zzz_product_catalog.field_release_date
 FROM reference.zzz_product_catalog
 ORDER BY zzz_product_catalog.id,
          zzz_product_catalog.sales_force_id,
          zzz_product_catalog.product_catalog,
          zzz_product_catalog.product,
          zzz_product_catalog.business_unit,
          zzz_product_catalog.start_date,
          zzz_product_catalog.end_date,
          zzz_product_catalog.field_release_date
SEGMENTED BY hash(zzz_product_catalog.id, zzz_product_catalog.sales_force_id, zzz_product_catalog.start_date, zzz_product_catalog.end_date, zzz_product_catalog.field_release_date, zzz_product_catalog.product_catalog, zzz_product_catalog.business_unit, zzz_product_catalog.product) ALL NODES;

CREATE PROJECTION reference.supplier_validation_rules_b0 /*+basename(supplier_validation_rules),createtype(L)*/ 
(
 data_field_name,
 type,
 size,
 data_field_description,
 value,
 meaning
)
AS
 SELECT supplier_validation_rules.data_field_name,
        supplier_validation_rules.type,
        supplier_validation_rules.size,
        supplier_validation_rules.data_field_description,
        supplier_validation_rules.value,
        supplier_validation_rules.meaning
 FROM reference.supplier_validation_rules
 ORDER BY supplier_validation_rules.data_field_name,
          supplier_validation_rules.type,
          supplier_validation_rules.size,
          supplier_validation_rules.data_field_description,
          supplier_validation_rules.value,
          supplier_validation_rules.meaning
SEGMENTED BY hash(supplier_validation_rules.size, supplier_validation_rules.type, supplier_validation_rules.value, supplier_validation_rules.data_field_name, supplier_validation_rules.meaning, supplier_validation_rules.data_field_description) ALL NODES;

CREATE PROJECTION reference.basket_type_b0 /*+basename(basket_type),createtype(A)*/ 
(
 basket_type
)
AS
 SELECT basket_type.basket_type
 FROM reference.basket_type
 ORDER BY basket_type.basket_type
SEGMENTED BY hash(basket_type.basket_type) ALL NODES;

CREATE PROJECTION reference.ims_report_cnt_qty_mapping__super__v1a17Q3
(
 ims_client_number,
 ims_report_number_cnt,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag,
 sent_from_iqvia_to_asi_flag,
 include_in_prescriber_rx,
 comments,
 load_step
)
AS
 SELECT ims_report_cnt_qty_mapping.ims_client_number,
        ims_report_cnt_qty_mapping.ims_report_number_cnt,
        ims_report_cnt_qty_mapping.ims_report_number_qty,
        ims_report_cnt_qty_mapping.report_frequency,
        ims_report_cnt_qty_mapping.active_flag,
        ims_report_cnt_qty_mapping.indication_flag,
        ims_report_cnt_qty_mapping.sent_from_iqvia_to_asi_flag,
        ims_report_cnt_qty_mapping.include_in_prescriber_rx,
        ims_report_cnt_qty_mapping.comments,
        ims_report_cnt_qty_mapping.load_step
 FROM reference.ims_report_cnt_qty_mapping
 ORDER BY ims_report_cnt_qty_mapping.ims_client_number,
          ims_report_cnt_qty_mapping.ims_report_number_cnt,
          ims_report_cnt_qty_mapping.ims_report_number_qty
UNSEGMENTED ALL NODES;

CREATE PROJECTION reference.ims_report_cnt_qty_mapping__ims_client_number__v1a17Q3_node0001 /*+basename(ims_report_cnt_qty_mapping__ims_client_number__v1a17Q3),createtype(D)*/ 
(
 ims_client_number,
 ims_report_number_cnt,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag,
 sent_from_iqvia_to_asi_flag,
 include_in_prescriber_rx,
 comments,
 load_step
)
AS
 SELECT ims_report_cnt_qty_mapping.ims_client_number,
        ims_report_cnt_qty_mapping.ims_report_number_cnt,
        ims_report_cnt_qty_mapping.ims_report_number_qty,
        ims_report_cnt_qty_mapping.report_frequency,
        ims_report_cnt_qty_mapping.active_flag,
        ims_report_cnt_qty_mapping.indication_flag,
        ims_report_cnt_qty_mapping.sent_from_iqvia_to_asi_flag,
        ims_report_cnt_qty_mapping.include_in_prescriber_rx,
        ims_report_cnt_qty_mapping.comments,
        ims_report_cnt_qty_mapping.load_step
 FROM reference.ims_report_cnt_qty_mapping
 ORDER BY ims_report_cnt_qty_mapping.ims_client_number,
          ims_report_cnt_qty_mapping.ims_report_number_qty,
          ims_report_cnt_qty_mapping.report_frequency,
          ims_report_cnt_qty_mapping.active_flag,
          ims_report_cnt_qty_mapping.indication_flag,
          ims_report_cnt_qty_mapping.ims_report_number_cnt
UNSEGMENTED ALL NODES;

CREATE PROJECTION reference.invoice_adjustments_033018_b0 /*+basename(invoice_adjustments_033018),createtype(A)*/ 
(
 onc_sales_adjust_id,
 adj_code,
 adj_descr,
 act_time_period,
 act_start_date,
 act_end_date,
 status_code,
 acct_demo_id,
 basket_id,
 adj_factor,
 adj_reason,
 create_date,
 create_user,
 update_date,
 update_user,
 tvcmid
)
AS
 SELECT zzz_invoice_adjustments_033018.onc_sales_adjust_id,
        zzz_invoice_adjustments_033018.adj_code,
        zzz_invoice_adjustments_033018.adj_descr,
        zzz_invoice_adjustments_033018.act_time_period,
        zzz_invoice_adjustments_033018.act_start_date,
        zzz_invoice_adjustments_033018.act_end_date,
        zzz_invoice_adjustments_033018.status_code,
        zzz_invoice_adjustments_033018.acct_demo_id,
        zzz_invoice_adjustments_033018.basket_id,
        zzz_invoice_adjustments_033018.adj_factor,
        zzz_invoice_adjustments_033018.adj_reason,
        zzz_invoice_adjustments_033018.create_date,
        zzz_invoice_adjustments_033018.create_user,
        zzz_invoice_adjustments_033018.update_date,
        zzz_invoice_adjustments_033018.update_user,
        zzz_invoice_adjustments_033018.tvcmid
 FROM reference.zzz_invoice_adjustments_033018
 ORDER BY zzz_invoice_adjustments_033018.onc_sales_adjust_id,
          zzz_invoice_adjustments_033018.adj_code,
          zzz_invoice_adjustments_033018.adj_descr,
          zzz_invoice_adjustments_033018.act_time_period,
          zzz_invoice_adjustments_033018.act_start_date,
          zzz_invoice_adjustments_033018.act_end_date,
          zzz_invoice_adjustments_033018.status_code,
          zzz_invoice_adjustments_033018.acct_demo_id
SEGMENTED BY hash(zzz_invoice_adjustments_033018.act_start_date, zzz_invoice_adjustments_033018.act_end_date) ALL NODES;

CREATE PROJECTION reference.frozen_demographics_control_b0 /*+basename(frozen_demographics_control),createtype(L)*/ 
(
 sales_force_id,
 start_date,
 end_date,
 active_flag,
 comments,
 create_date
)
AS
 SELECT frozen_demographics_control.sales_force_id,
        frozen_demographics_control.start_date,
        frozen_demographics_control.end_date,
        frozen_demographics_control.active_flag,
        frozen_demographics_control.comments,
        frozen_demographics_control.create_date
 FROM reference.frozen_demographics_control
 ORDER BY frozen_demographics_control.sales_force_id,
          frozen_demographics_control.start_date,
          frozen_demographics_control.end_date,
          frozen_demographics_control.active_flag,
          frozen_demographics_control.comments,
          frozen_demographics_control.create_date
SEGMENTED BY hash(frozen_demographics_control.start_date, frozen_demographics_control.end_date, frozen_demographics_control.active_flag, frozen_demographics_control.create_date, frozen_demographics_control.sales_force_id, frozen_demographics_control.comments) ALL NODES;

CREATE PROJECTION reference.sales_geography_063018_b0 /*+basename(sales_geography_063018),createtype(A)*/ 
(
 sales_force_id,
 geography_number,
 geography_name,
 geography_desc,
 geography_type,
 employee_type,
 sales_team,
 parent_geography_number
)
AS
 SELECT zzz_sales_geography_063018.sales_force_id,
        zzz_sales_geography_063018.geography_number,
        zzz_sales_geography_063018.geography_name,
        zzz_sales_geography_063018.geography_desc,
        zzz_sales_geography_063018.geography_type,
        zzz_sales_geography_063018.employee_type,
        zzz_sales_geography_063018.sales_team,
        zzz_sales_geography_063018.parent_geography_number
 FROM reference.zzz_sales_geography_063018
 ORDER BY zzz_sales_geography_063018.geography_number
SEGMENTED BY hash(zzz_sales_geography_063018.sales_force_id, zzz_sales_geography_063018.geography_number, zzz_sales_geography_063018.employee_type, zzz_sales_geography_063018.parent_geography_number, zzz_sales_geography_063018.geography_type, zzz_sales_geography_063018.sales_team, zzz_sales_geography_063018.geography_name, zzz_sales_geography_063018.geography_desc) ALL NODES;

CREATE PROJECTION reference.excluded_specialty_b0 /*+basename(excluded_specialty),createtype(L)*/ 
(
 basket_id,
 basket_name,
 primary_specialty,
 create_date,
 create_user
)
AS
 SELECT excluded_specialty.basket_id,
        excluded_specialty.basket_name,
        excluded_specialty.primary_specialty,
        excluded_specialty.create_date,
        excluded_specialty.create_user
 FROM reference.excluded_specialty
 ORDER BY excluded_specialty.basket_name,
          excluded_specialty.primary_specialty
SEGMENTED BY hash(excluded_specialty.basket_name, excluded_specialty.primary_specialty) ALL NODES;

CREATE PROJECTION reference.excluded_specialty_override_b0 /*+basename(excluded_specialty_override),createtype(L)*/ 
(
 basket_id,
 basket_name,
 primary_specialty,
 allowed_specialty,
 create_date,
 create_user
)
AS
 SELECT excluded_specialty_override.basket_id,
        excluded_specialty_override.basket_name,
        excluded_specialty_override.primary_specialty,
        excluded_specialty_override.allowed_specialty,
        excluded_specialty_override.create_date,
        excluded_specialty_override.create_user
 FROM reference.excluded_specialty_override
 ORDER BY excluded_specialty_override.basket_name,
          excluded_specialty_override.primary_specialty,
          excluded_specialty_override.allowed_specialty
SEGMENTED BY hash(excluded_specialty_override.basket_name, excluded_specialty_override.primary_specialty, excluded_specialty_override.allowed_specialty) ALL NODES;

CREATE PROJECTION reference.specialty_group_xref_b0 /*+basename(specialty_group_xref),createtype(L)*/ 
(
 category_name,
 specialty_code,
 specialty_group
)
AS
 SELECT specialty_group_xref.category_name,
        specialty_group_xref.specialty_code,
        specialty_group_xref.specialty_group
 FROM reference.specialty_group_xref
 ORDER BY specialty_group_xref.category_name,
          specialty_group_xref.specialty_code
SEGMENTED BY hash(specialty_group_xref.category_name, specialty_group_xref.specialty_code) ALL NODES;

CREATE PROJECTION reference.reporting_markets_b0 /*+basename(reporting_markets),createtype(L)*/ 
(
 basket_id,
 basket_name,
 basket_type,
 status,
 geo_summary_include,
 presc_summary_include,
 market_share_market_id,
 market_share_brand_id,
 rptg_decile_attribute_type,
 rptg_decile_attribute_prod_id,
 rptg_segment_attribute_type,
 rptg_segment_attribute_prod_id
)
AS
 SELECT reporting_markets.basket_id,
        reporting_markets.basket_name,
        reporting_markets.basket_type,
        reporting_markets.status,
        reporting_markets.geo_summary_include,
        reporting_markets.presc_summary_include,
        reporting_markets.market_share_market_id,
        reporting_markets.market_share_brand_id,
        reporting_markets.rptg_decile_attribute_type,
        reporting_markets.rptg_decile_attribute_prod_id,
        reporting_markets.rptg_segment_attribute_type,
        reporting_markets.rptg_segment_attribute_prod_id
 FROM reference.reporting_markets
 ORDER BY reporting_markets.basket_id,
          reporting_markets.basket_name,
          reporting_markets.basket_type,
          reporting_markets.status,
          reporting_markets.geo_summary_include,
          reporting_markets.presc_summary_include,
          reporting_markets.market_share_market_id,
          reporting_markets.market_share_brand_id
SEGMENTED BY hash(reporting_markets.basket_id, reporting_markets.status, reporting_markets.geo_summary_include, reporting_markets.presc_summary_include, reporting_markets.market_share_market_id, reporting_markets.market_share_brand_id, reporting_markets.rptg_decile_attribute_prod_id, reporting_markets.rptg_segment_attribute_prod_id) ALL NODES;

CREATE PROJECTION reference.reporting_roster_override_b0 /*+basename(reporting_roster_override),createtype(L)*/ 
(
 geography_id,
 employee_id,
 rep_name,
 user_id,
 global_employee_id,
 email
)
AS
 SELECT reporting_roster_override.geography_id,
        reporting_roster_override.employee_id,
        reporting_roster_override.rep_name,
        reporting_roster_override.user_id,
        reporting_roster_override.global_employee_id,
        reporting_roster_override.email
 FROM reference.reporting_roster_override
 ORDER BY reporting_roster_override.geography_id,
          reporting_roster_override.employee_id,
          reporting_roster_override.rep_name,
          reporting_roster_override.user_id,
          reporting_roster_override.global_employee_id,
          reporting_roster_override.email
SEGMENTED BY hash(reporting_roster_override.geography_id, reporting_roster_override.global_employee_id, reporting_roster_override.employee_id, reporting_roster_override.rep_name, reporting_roster_override.user_id, reporting_roster_override.email) ALL NODES;

CREATE PROJECTION reference.bkp_ims_rpt_cnt_qty_map_20200114_b0 /*+basename(bkp_ims_rpt_cnt_qty_map_20200114),createtype(A)*/ 
(
 ims_client_number,
 ims_report_number_cnt,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag,
 sent_from_iqvia_to_asi_flag,
 include_in_prescriber_rx,
 comments,
 load_step
)
AS
 SELECT bkp_ims_rpt_cnt_qty_map_20200114.ims_client_number,
        bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_cnt,
        bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_qty,
        bkp_ims_rpt_cnt_qty_map_20200114.report_frequency,
        bkp_ims_rpt_cnt_qty_map_20200114.active_flag,
        bkp_ims_rpt_cnt_qty_map_20200114.indication_flag,
        bkp_ims_rpt_cnt_qty_map_20200114.sent_from_iqvia_to_asi_flag,
        bkp_ims_rpt_cnt_qty_map_20200114.include_in_prescriber_rx,
        bkp_ims_rpt_cnt_qty_map_20200114.comments,
        bkp_ims_rpt_cnt_qty_map_20200114.load_step
 FROM reference.bkp_ims_rpt_cnt_qty_map_20200114
 ORDER BY bkp_ims_rpt_cnt_qty_map_20200114.ims_client_number,
          bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_cnt,
          bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_qty
SEGMENTED BY hash(bkp_ims_rpt_cnt_qty_map_20200114.ims_client_number, bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_cnt, bkp_ims_rpt_cnt_qty_map_20200114.ims_report_number_qty, bkp_ims_rpt_cnt_qty_map_20200114.active_flag, bkp_ims_rpt_cnt_qty_map_20200114.indication_flag, bkp_ims_rpt_cnt_qty_map_20200114.sent_from_iqvia_to_asi_flag, bkp_ims_rpt_cnt_qty_map_20200114.include_in_prescriber_rx, bkp_ims_rpt_cnt_qty_map_20200114.load_step) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_calls_per_day_goal_05282020_b0 /*+basename(bkp_rptg_calls_per_day_goal_05282020),createtype(A)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT bkp_rptg_calls_per_day_goal_05282020.sales_force_id,
        bkp_rptg_calls_per_day_goal_05282020.basket_id,
        bkp_rptg_calls_per_day_goal_05282020.basket_name,
        bkp_rptg_calls_per_day_goal_05282020.month,
        bkp_rptg_calls_per_day_goal_05282020.cpd_goal,
        bkp_rptg_calls_per_day_goal_05282020.goal_type,
        bkp_rptg_calls_per_day_goal_05282020.prod_percent
 FROM reference.bkp_rptg_calls_per_day_goal_05282020
 ORDER BY bkp_rptg_calls_per_day_goal_05282020.sales_force_id,
          bkp_rptg_calls_per_day_goal_05282020.basket_id,
          bkp_rptg_calls_per_day_goal_05282020.basket_name,
          bkp_rptg_calls_per_day_goal_05282020.month,
          bkp_rptg_calls_per_day_goal_05282020.cpd_goal,
          bkp_rptg_calls_per_day_goal_05282020.goal_type,
          bkp_rptg_calls_per_day_goal_05282020.prod_percent
SEGMENTED BY hash(bkp_rptg_calls_per_day_goal_05282020.sales_force_id, bkp_rptg_calls_per_day_goal_05282020.basket_id, bkp_rptg_calls_per_day_goal_05282020.month, bkp_rptg_calls_per_day_goal_05282020.cpd_goal, bkp_rptg_calls_per_day_goal_05282020.prod_percent, bkp_rptg_calls_per_day_goal_05282020.goal_type, bkp_rptg_calls_per_day_goal_05282020.basket_name) ALL NODES;

CREATE PROJECTION reference.mb_rptng_mrkts_b0 /*+basename(mb_rptng_mrkts),createtype(A)*/ 
(
 basket_id,
 basket_name,
 basket_type,
 status,
 geo_summary_include,
 presc_summary_include,
 market_share_market_id,
 market_share_brand_id,
 rptg_decile_attribute_type,
 rptg_decile_attribute_prod_id,
 rptg_segment_attribute_type,
 rptg_segment_attribute_prod_id
)
AS
 SELECT mb_rptng_mrkts.basket_id,
        mb_rptng_mrkts.basket_name,
        mb_rptng_mrkts.basket_type,
        mb_rptng_mrkts.status,
        mb_rptng_mrkts.geo_summary_include,
        mb_rptng_mrkts.presc_summary_include,
        mb_rptng_mrkts.market_share_market_id,
        mb_rptng_mrkts.market_share_brand_id,
        mb_rptng_mrkts.rptg_decile_attribute_type,
        mb_rptng_mrkts.rptg_decile_attribute_prod_id,
        mb_rptng_mrkts.rptg_segment_attribute_type,
        mb_rptng_mrkts.rptg_segment_attribute_prod_id
 FROM reference.mb_rptng_mrkts
 ORDER BY mb_rptng_mrkts.basket_id,
          mb_rptng_mrkts.basket_name,
          mb_rptng_mrkts.basket_type,
          mb_rptng_mrkts.status,
          mb_rptng_mrkts.geo_summary_include,
          mb_rptng_mrkts.presc_summary_include,
          mb_rptng_mrkts.market_share_market_id,
          mb_rptng_mrkts.market_share_brand_id
SEGMENTED BY hash(mb_rptng_mrkts.basket_id, mb_rptng_mrkts.status, mb_rptng_mrkts.geo_summary_include, mb_rptng_mrkts.presc_summary_include, mb_rptng_mrkts.market_share_market_id, mb_rptng_mrkts.market_share_brand_id, mb_rptng_mrkts.rptg_decile_attribute_prod_id, mb_rptng_mrkts.rptg_segment_attribute_prod_id) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_calls_per_day_goal_12162020_b0 /*+basename(bkp_rptg_calls_per_day_goal_12162020),createtype(A)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT bkp_rptg_calls_per_day_goal_12162020.sales_force_id,
        bkp_rptg_calls_per_day_goal_12162020.basket_id,
        bkp_rptg_calls_per_day_goal_12162020.basket_name,
        bkp_rptg_calls_per_day_goal_12162020.month,
        bkp_rptg_calls_per_day_goal_12162020.cpd_goal,
        bkp_rptg_calls_per_day_goal_12162020.goal_type,
        bkp_rptg_calls_per_day_goal_12162020.prod_percent
 FROM reference.bkp_rptg_calls_per_day_goal_12162020
 ORDER BY bkp_rptg_calls_per_day_goal_12162020.sales_force_id,
          bkp_rptg_calls_per_day_goal_12162020.basket_id,
          bkp_rptg_calls_per_day_goal_12162020.basket_name,
          bkp_rptg_calls_per_day_goal_12162020.month,
          bkp_rptg_calls_per_day_goal_12162020.cpd_goal,
          bkp_rptg_calls_per_day_goal_12162020.goal_type,
          bkp_rptg_calls_per_day_goal_12162020.prod_percent
SEGMENTED BY hash(bkp_rptg_calls_per_day_goal_12162020.sales_force_id, bkp_rptg_calls_per_day_goal_12162020.basket_id, bkp_rptg_calls_per_day_goal_12162020.month, bkp_rptg_calls_per_day_goal_12162020.cpd_goal, bkp_rptg_calls_per_day_goal_12162020.prod_percent, bkp_rptg_calls_per_day_goal_12162020.goal_type, bkp_rptg_calls_per_day_goal_12162020.basket_name) ALL NODES;

CREATE PROJECTION reference.bkp_rptng_wrkdays_12162020_b0 /*+basename(bkp_rptng_wrkdays_12162020),createtype(A)*/ 
(
 sales_force_id,
 month,
 expected_workdays,
 delivery_rate
)
AS
 SELECT bkp_rptng_wrkdays_12162020.sales_force_id,
        bkp_rptng_wrkdays_12162020.month,
        bkp_rptng_wrkdays_12162020.expected_workdays,
        bkp_rptng_wrkdays_12162020.delivery_rate
 FROM reference.bkp_rptng_wrkdays_12162020
 ORDER BY bkp_rptng_wrkdays_12162020.sales_force_id
SEGMENTED BY hash(bkp_rptng_wrkdays_12162020.sales_force_id, bkp_rptng_wrkdays_12162020.month, bkp_rptng_wrkdays_12162020.expected_workdays) ALL NODES;

CREATE PROJECTION reference.bkp_rptng_sf_hdcnts_12162020_b0 /*+basename(bkp_rptng_sf_hdcnts_12162020),createtype(A)*/ 
(
 sales_force_id,
 month,
 headcount,
 products
)
AS
 SELECT bkp_rptng_sf_hdcnts_12162020.sales_force_id,
        bkp_rptng_sf_hdcnts_12162020.month,
        bkp_rptng_sf_hdcnts_12162020.headcount,
        bkp_rptng_sf_hdcnts_12162020.products
 FROM reference.bkp_rptng_sf_hdcnts_12162020
 ORDER BY bkp_rptng_sf_hdcnts_12162020.sales_force_id,
          bkp_rptng_sf_hdcnts_12162020.month,
          bkp_rptng_sf_hdcnts_12162020.headcount,
          bkp_rptng_sf_hdcnts_12162020.products
SEGMENTED BY hash(bkp_rptng_sf_hdcnts_12162020.sales_force_id, bkp_rptng_sf_hdcnts_12162020.month, bkp_rptng_sf_hdcnts_12162020.headcount, bkp_rptng_sf_hdcnts_12162020.products) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_mrkt_sales_force_12162020_b0 /*+basename(bkp_rptg_mrkt_sales_force_12162020),createtype(A)*/ 
(
 market_basket_id,
 market_name,
 sales_force_id,
 specialty_group_name
)
AS
 SELECT bkp_rptg_mrkt_sales_force_12162020.market_basket_id,
        bkp_rptg_mrkt_sales_force_12162020.market_name,
        bkp_rptg_mrkt_sales_force_12162020.sales_force_id,
        bkp_rptg_mrkt_sales_force_12162020.specialty_group_name
 FROM reference.bkp_rptg_mrkt_sales_force_12162020
 ORDER BY bkp_rptg_mrkt_sales_force_12162020.market_basket_id,
          bkp_rptg_mrkt_sales_force_12162020.sales_force_id
SEGMENTED BY hash(bkp_rptg_mrkt_sales_force_12162020.market_basket_id, bkp_rptg_mrkt_sales_force_12162020.sales_force_id) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_par_brands_12162020_b0 /*+basename(bkp_rptg_par_brands_12162020),createtype(A)*/ 
(
 sales_force_id,
 brand_name,
 brand_id
)
AS
 SELECT bkp_rptg_par_brands_12162020.sales_force_id,
        bkp_rptg_par_brands_12162020.brand_name,
        bkp_rptg_par_brands_12162020.brand_id
 FROM reference.bkp_rptg_par_brands_12162020
 ORDER BY bkp_rptg_par_brands_12162020.sales_force_id,
          bkp_rptg_par_brands_12162020.brand_id
SEGMENTED BY hash(bkp_rptg_par_brands_12162020.sales_force_id, bkp_rptg_par_brands_12162020.brand_id) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_cust_groups_12162020_b0 /*+basename(bkp_rptg_cust_groups_12162020),createtype(A)*/ 
(
 sales_force_id,
 customer_type,
 customer_group
)
AS
 SELECT bkp_rptg_cust_groups_12162020.sales_force_id,
        bkp_rptg_cust_groups_12162020.customer_type,
        bkp_rptg_cust_groups_12162020.customer_group
 FROM reference.bkp_rptg_cust_groups_12162020
 ORDER BY bkp_rptg_cust_groups_12162020.sales_force_id,
          bkp_rptg_cust_groups_12162020.customer_type,
          bkp_rptg_cust_groups_12162020.customer_group
SEGMENTED BY hash(bkp_rptg_cust_groups_12162020.sales_force_id, bkp_rptg_cust_groups_12162020.customer_type, bkp_rptg_cust_groups_12162020.customer_group) ALL NODES;

CREATE PROJECTION reference.bag_b0 /*+basename(bag),createtype(L)*/ 
(
 bag_id,
 bag_name,
 first_valid_date,
 last_valid_date,
 valid_for_today,
 create_user,
 create_date,
 update_user,
 update_date
)
AS
 SELECT bag.bag_id,
        bag.bag_name,
        bag.first_valid_date,
        bag.last_valid_date,
        bag.valid_for_today,
        bag.create_user,
        bag.create_date,
        bag.update_user,
        bag.update_date
 FROM reference.bag
 ORDER BY bag.bag_id,
          bag.bag_name,
          bag.first_valid_date,
          bag.last_valid_date,
          bag.valid_for_today,
          bag.create_user,
          bag.create_date,
          bag.update_user,
          bag.update_date
SEGMENTED BY hash(bag.first_valid_date, bag.last_valid_date) ALL NODES;

CREATE PROJECTION reference.market_sales_force_b0 /*+basename(market_sales_force),createtype(L)*/ 
(
 market_name,
 basket_id,
 sales_force_id,
 primary_sales_force
)
AS
 SELECT zzz_market_sales_force.market_name,
        zzz_market_sales_force.basket_id,
        zzz_market_sales_force.sales_force_id,
        zzz_market_sales_force.primary_sales_force
 FROM reference.zzz_market_sales_force
 ORDER BY zzz_market_sales_force.market_name,
          zzz_market_sales_force.basket_id,
          zzz_market_sales_force.sales_force_id,
          zzz_market_sales_force.primary_sales_force
SEGMENTED BY hash(zzz_market_sales_force.basket_id) ALL NODES;

CREATE PROJECTION reference.zipcode_timezone_b0 /*+basename(zipcode_timezone),createtype(L)*/ 
(
 zip,
 timezone_name,
 timezone_offset,
 observes_dst,
 source,
 create_date
)
AS
 SELECT zipcode_timezone.zip,
        zipcode_timezone.timezone_name,
        zipcode_timezone.timezone_offset,
        zipcode_timezone.observes_dst,
        zipcode_timezone.source,
        zipcode_timezone.create_date
 FROM reference.zipcode_timezone
 ORDER BY zipcode_timezone.zip,
          zipcode_timezone.timezone_name,
          zipcode_timezone.timezone_offset,
          zipcode_timezone.observes_dst,
          zipcode_timezone.source,
          zipcode_timezone.create_date
SEGMENTED BY hash(zipcode_timezone.create_date) ALL NODES;

CREATE PROJECTION reference.payer_parent_b0 /*+basename(payer_parent),createtype(L)*/ 
(
 payer_id,
 payer_name,
 parent_payer_id,
 parent_payer_name,
 create_date,
 create_user,
 notes
)
AS
 SELECT payer_parent.payer_id,
        payer_parent.payer_name,
        payer_parent.parent_payer_id,
        payer_parent.parent_payer_name,
        payer_parent.create_date,
        payer_parent.create_user,
        payer_parent.notes
 FROM reference.payer_parent
 ORDER BY payer_parent.payer_id,
          payer_parent.payer_name,
          payer_parent.parent_payer_id,
          payer_parent.parent_payer_name,
          payer_parent.create_date,
          payer_parent.create_user,
          payer_parent.notes
SEGMENTED BY hash(payer_parent.create_date) ALL NODES;

CREATE PROJECTION reference.pbm_parent_b0 /*+basename(pbm_parent),createtype(L)*/ 
(
 pbm_id,
 processor_number,
 pbm_name,
 parent_pbm_id,
 parent_processor_number,
 parent_pbm_name,
 create_date,
 create_user,
 notes
)
AS
 SELECT pbm_parent.pbm_id,
        pbm_parent.processor_number,
        pbm_parent.pbm_name,
        pbm_parent.parent_pbm_id,
        pbm_parent.parent_processor_number,
        pbm_parent.parent_pbm_name,
        pbm_parent.create_date,
        pbm_parent.create_user,
        pbm_parent.notes
 FROM reference.pbm_parent
 ORDER BY pbm_parent.pbm_id,
          pbm_parent.processor_number,
          pbm_parent.pbm_name,
          pbm_parent.parent_pbm_id,
          pbm_parent.parent_processor_number,
          pbm_parent.parent_pbm_name,
          pbm_parent.create_date,
          pbm_parent.create_user,
          pbm_parent.notes
SEGMENTED BY hash(pbm_parent.create_date) ALL NODES;

CREATE PROJECTION reference.pcd_sales_force_b0 /*+basename(pcd_sales_force),createtype(A)*/ 
(
 sales_force_id,
 report_frequency,
 ims_client_number,
 ims_report_number,
 include_in_demo,
 comments
)
AS
 SELECT pcd_sales_force.sales_force_id,
        pcd_sales_force.report_frequency,
        pcd_sales_force.ims_client_number,
        pcd_sales_force.ims_report_number,
        pcd_sales_force.include_in_demo,
        pcd_sales_force.comments
 FROM reference.pcd_sales_force
 ORDER BY pcd_sales_force.sales_force_id,
          pcd_sales_force.report_frequency,
          pcd_sales_force.ims_client_number,
          pcd_sales_force.ims_report_number
SEGMENTED BY hash(pcd_sales_force.report_frequency, pcd_sales_force.ims_client_number, pcd_sales_force.ims_report_number) ALL NODES;

CREATE PROJECTION reference.sales_geography_b0 /*+basename(sales_geography),createtype(L)*/ 
(
 sales_force_id,
 geography_number,
 geography_name,
 geography_desc,
 geography_type,
 employee_type,
 sales_team,
 parent_geography_number
)
AS
 SELECT zzz_sales_geography.sales_force_id,
        zzz_sales_geography.geography_number,
        zzz_sales_geography.geography_name,
        zzz_sales_geography.geography_desc,
        zzz_sales_geography.geography_type,
        zzz_sales_geography.employee_type,
        zzz_sales_geography.sales_team,
        zzz_sales_geography.parent_geography_number
 FROM reference.zzz_sales_geography
 ORDER BY zzz_sales_geography.geography_number
SEGMENTED BY hash(zzz_sales_geography.sales_force_id, zzz_sales_geography.geography_number, zzz_sales_geography.employee_type, zzz_sales_geography.parent_geography_number, zzz_sales_geography.geography_type, zzz_sales_geography.sales_team, zzz_sales_geography.geography_name, zzz_sales_geography.geography_desc) ALL NODES;

CREATE PROJECTION reference.salesforce_reference_b0 /*+basename(salesforce_reference),createtype(L)*/ 
(
 id,
 sales_force_id,
 ref_code,
 ref_desc,
 ref_type
)
AS
 SELECT salesforce_reference.id,
        salesforce_reference.sales_force_id,
        salesforce_reference.ref_code,
        salesforce_reference.ref_desc,
        salesforce_reference.ref_type
 FROM reference.salesforce_reference
 ORDER BY salesforce_reference.id,
          salesforce_reference.sales_force_id,
          salesforce_reference.ref_code,
          salesforce_reference.ref_desc,
          salesforce_reference.ref_type
SEGMENTED BY hash(salesforce_reference.id, salesforce_reference.sales_force_id, salesforce_reference.ref_code, salesforce_reference.ref_desc, salesforce_reference.ref_type) ALL NODES;

CREATE PROJECTION reference.ims_report_dol_qty_mapping_b0 /*+basename(ims_report_dol_qty_mapping),createtype(A)*/ 
(
 ims_client_number,
 ims_report_number_dol,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag
)
AS
 SELECT ims_report_dol_qty_mapping.ims_client_number,
        ims_report_dol_qty_mapping.ims_report_number_dol,
        ims_report_dol_qty_mapping.ims_report_number_qty,
        ims_report_dol_qty_mapping.report_frequency,
        ims_report_dol_qty_mapping.active_flag,
        ims_report_dol_qty_mapping.indication_flag
 FROM reference.ims_report_dol_qty_mapping
 ORDER BY ims_report_dol_qty_mapping.ims_client_number,
          ims_report_dol_qty_mapping.ims_report_number_dol,
          ims_report_dol_qty_mapping.ims_report_number_qty,
          ims_report_dol_qty_mapping.report_frequency,
          ims_report_dol_qty_mapping.active_flag,
          ims_report_dol_qty_mapping.indication_flag
SEGMENTED BY hash(ims_report_dol_qty_mapping.ims_client_number, ims_report_dol_qty_mapping.ims_report_number_dol, ims_report_dol_qty_mapping.ims_report_number_qty, ims_report_dol_qty_mapping.active_flag, ims_report_dol_qty_mapping.indication_flag, ims_report_dol_qty_mapping.report_frequency) ALL NODES;

CREATE PROJECTION reference.CERTIFIED_FIELD_TRAINER_XREF_b0 /*+basename(CERTIFIED_FIELD_TRAINER_XREF),createtype(L)*/ 
(
 CFT_Name,
 Territory_Name,
 Manager_Name,
 Certified,
 Employee_ID_Raw,
 Teva_ID,
 InsertDate
)
AS
 SELECT CERTIFIED_FIELD_TRAINER_XREF.CFT_Name,
        CERTIFIED_FIELD_TRAINER_XREF.Territory_Name,
        CERTIFIED_FIELD_TRAINER_XREF.Manager_Name,
        CERTIFIED_FIELD_TRAINER_XREF.Certified,
        CERTIFIED_FIELD_TRAINER_XREF.Employee_ID_Raw,
        CERTIFIED_FIELD_TRAINER_XREF.Teva_ID,
        CERTIFIED_FIELD_TRAINER_XREF.InsertDate
 FROM reference.CERTIFIED_FIELD_TRAINER_XREF
 ORDER BY CERTIFIED_FIELD_TRAINER_XREF.CFT_Name,
          CERTIFIED_FIELD_TRAINER_XREF.Territory_Name,
          CERTIFIED_FIELD_TRAINER_XREF.Manager_Name,
          CERTIFIED_FIELD_TRAINER_XREF.Certified,
          CERTIFIED_FIELD_TRAINER_XREF.Employee_ID_Raw,
          CERTIFIED_FIELD_TRAINER_XREF.Teva_ID,
          CERTIFIED_FIELD_TRAINER_XREF.InsertDate
SEGMENTED BY hash(CERTIFIED_FIELD_TRAINER_XREF.InsertDate, CERTIFIED_FIELD_TRAINER_XREF.Certified, CERTIFIED_FIELD_TRAINER_XREF.Employee_ID_Raw, CERTIFIED_FIELD_TRAINER_XREF.Teva_ID, CERTIFIED_FIELD_TRAINER_XREF.CFT_Name, CERTIFIED_FIELD_TRAINER_XREF.Territory_Name, CERTIFIED_FIELD_TRAINER_XREF.Manager_Name) ALL NODES;

CREATE PROJECTION reference.reporting_workdays_b0 /*+basename(reporting_workdays),createtype(L)*/ 
(
 sales_force_id,
 month,
 expected_workdays,
 delivery_rate
)
AS
 SELECT reporting_workdays.sales_force_id,
        reporting_workdays.month,
        reporting_workdays.expected_workdays,
        reporting_workdays.delivery_rate
 FROM reference.reporting_workdays
 ORDER BY reporting_workdays.sales_force_id
SEGMENTED BY hash(reporting_workdays.sales_force_id, reporting_workdays.month, reporting_workdays.expected_workdays) ALL NODES;

CREATE PROJECTION reference.reporting_customer_groups_b0 /*+basename(reporting_customer_groups),createtype(L)*/ 
(
 sales_force_id,
 customer_type,
 customer_group
)
AS
 SELECT reporting_customer_groups.sales_force_id,
        reporting_customer_groups.customer_type,
        reporting_customer_groups.customer_group
 FROM reference.reporting_customer_groups
 ORDER BY reporting_customer_groups.sales_force_id,
          reporting_customer_groups.customer_type,
          reporting_customer_groups.customer_group
SEGMENTED BY hash(reporting_customer_groups.sales_force_id, reporting_customer_groups.customer_type, reporting_customer_groups.customer_group) ALL NODES;

CREATE PROJECTION reference.reporting_market_sales_force_b0 /*+basename(reporting_market_sales_force),createtype(L)*/ 
(
 market_basket_id,
 market_name,
 sales_force_id,
 specialty_group_name
)
AS
 SELECT reporting_market_sales_force.market_basket_id,
        reporting_market_sales_force.market_name,
        reporting_market_sales_force.sales_force_id,
        reporting_market_sales_force.specialty_group_name
 FROM reference.reporting_market_sales_force
 ORDER BY reporting_market_sales_force.market_basket_id,
          reporting_market_sales_force.sales_force_id
SEGMENTED BY hash(reporting_market_sales_force.market_basket_id, reporting_market_sales_force.sales_force_id) ALL NODES;

CREATE PROJECTION reference.xpo_sales_category_b0 /*+basename(xpo_sales_category),createtype(L)*/ 
(
 category_code,
 category_description
)
AS
 SELECT xpo_sales_category.category_code,
        xpo_sales_category.category_description
 FROM reference.xpo_sales_category
 ORDER BY xpo_sales_category.category_code,
          xpo_sales_category.category_description
SEGMENTED BY hash(xpo_sales_category.category_code, xpo_sales_category.category_description) ALL NODES;

CREATE PROJECTION reference.reporting_calls_per_day_goal_b0 /*+basename(reporting_calls_per_day_goal),createtype(L)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT reporting_calls_per_day_goal.sales_force_id,
        reporting_calls_per_day_goal.basket_id,
        reporting_calls_per_day_goal.basket_name,
        reporting_calls_per_day_goal.month,
        reporting_calls_per_day_goal.cpd_goal,
        reporting_calls_per_day_goal.goal_type,
        reporting_calls_per_day_goal.prod_percent
 FROM reference.reporting_calls_per_day_goal
 ORDER BY reporting_calls_per_day_goal.sales_force_id,
          reporting_calls_per_day_goal.basket_id,
          reporting_calls_per_day_goal.basket_name,
          reporting_calls_per_day_goal.month,
          reporting_calls_per_day_goal.cpd_goal,
          reporting_calls_per_day_goal.goal_type,
          reporting_calls_per_day_goal.prod_percent
SEGMENTED BY hash(reporting_calls_per_day_goal.sales_force_id, reporting_calls_per_day_goal.basket_id, reporting_calls_per_day_goal.month, reporting_calls_per_day_goal.cpd_goal, reporting_calls_per_day_goal.prod_percent, reporting_calls_per_day_goal.goal_type, reporting_calls_per_day_goal.basket_name) ALL NODES;

CREATE PROJECTION reference.ims_xpd_mapping_b0 /*+basename(ims_xpd_mapping),createtype(L)*/ 
(
 ims_client_number,
 ims_report_number,
 report_frequency,
 include_in_datamart_tables,
 create_date,
 create_user
)
AS
 SELECT ims_xpd_mapping.ims_client_number,
        ims_xpd_mapping.ims_report_number,
        ims_xpd_mapping.report_frequency,
        ims_xpd_mapping.include_in_datamart_tables,
        ims_xpd_mapping.create_date,
        ims_xpd_mapping.create_user
 FROM reference.ims_xpd_mapping
 ORDER BY ims_xpd_mapping.ims_client_number,
          ims_xpd_mapping.ims_report_number
SEGMENTED BY hash(ims_xpd_mapping.ims_client_number, ims_xpd_mapping.ims_report_number) ALL NODES;

CREATE PROJECTION reference.ims_payer_payment_method_b0 /*+basename(ims_payer_payment_method),createtype(L)*/ 
(
 payer_number,
 payment_method
)
AS
 SELECT ims_payer_payment_method.payer_number,
        ims_payer_payment_method.payment_method
 FROM reference.ims_payer_payment_method
 ORDER BY ims_payer_payment_method.payer_number,
          ims_payer_payment_method.payment_method
SEGMENTED BY hash(ims_payer_payment_method.payer_number, ims_payer_payment_method.payment_method) ALL NODES;

CREATE PROJECTION reference.acute_market_definition_b0 /*+basename(acute_market_definition),createtype(L)*/ 
(
 market_name,
 market_id,
 brand_form_strength,
 bfs_id,
 teva_prod,
 product_group,
 create_user,
 create_date
)
AS
 SELECT acute_market_definition.market_name,
        acute_market_definition.market_id,
        acute_market_definition.brand_form_strength,
        acute_market_definition.bfs_id,
        acute_market_definition.teva_prod,
        acute_market_definition.product_group,
        acute_market_definition.create_user,
        acute_market_definition.create_date
 FROM reference.acute_market_definition
 ORDER BY acute_market_definition.market_name,
          acute_market_definition.market_id,
          acute_market_definition.brand_form_strength,
          acute_market_definition.bfs_id,
          acute_market_definition.teva_prod,
          acute_market_definition.product_group,
          acute_market_definition.create_user,
          acute_market_definition.create_date
SEGMENTED BY hash(acute_market_definition.market_id, acute_market_definition.bfs_id, acute_market_definition.teva_prod, acute_market_definition.create_date, acute_market_definition.create_user, acute_market_definition.market_name, acute_market_definition.brand_form_strength, acute_market_definition.product_group) ALL NODES;

CREATE PROJECTION reference.mb_ref_rptng_workdays_04282020_b0 /*+basename(mb_ref_rptng_workdays_04282020),createtype(A)*/ 
(
 sales_force_id,
 month,
 expected_workdays,
 delivery_rate
)
AS
 SELECT mb_ref_rptng_workdays_04282020.sales_force_id,
        mb_ref_rptng_workdays_04282020.month,
        mb_ref_rptng_workdays_04282020.expected_workdays,
        mb_ref_rptng_workdays_04282020.delivery_rate
 FROM reference.mb_ref_rptng_workdays_04282020
 ORDER BY mb_ref_rptng_workdays_04282020.sales_force_id
SEGMENTED BY hash(mb_ref_rptng_workdays_04282020.sales_force_id, mb_ref_rptng_workdays_04282020.month, mb_ref_rptng_workdays_04282020.expected_workdays) ALL NODES;

CREATE PROJECTION reference.mb_ref_sales_force_headcnts_04282020_b0 /*+basename(mb_ref_sales_force_headcnts_04282020),createtype(A)*/ 
(
 sales_force_id,
 month,
 headcount,
 products
)
AS
 SELECT mb_ref_sales_force_headcnts_04282020.sales_force_id,
        mb_ref_sales_force_headcnts_04282020.month,
        mb_ref_sales_force_headcnts_04282020.headcount,
        mb_ref_sales_force_headcnts_04282020.products
 FROM reference.mb_ref_sales_force_headcnts_04282020
 ORDER BY mb_ref_sales_force_headcnts_04282020.sales_force_id,
          mb_ref_sales_force_headcnts_04282020.month,
          mb_ref_sales_force_headcnts_04282020.headcount,
          mb_ref_sales_force_headcnts_04282020.products
SEGMENTED BY hash(mb_ref_sales_force_headcnts_04282020.sales_force_id, mb_ref_sales_force_headcnts_04282020.month, mb_ref_sales_force_headcnts_04282020.headcount, mb_ref_sales_force_headcnts_04282020.products) ALL NODES;

CREATE PROJECTION reference.bkp_rptg_calls_per_day_goal_05292020_b0 /*+basename(bkp_rptg_calls_per_day_goal_05292020),createtype(A)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT bkp_rptg_calls_per_day_goal_05292020.sales_force_id,
        bkp_rptg_calls_per_day_goal_05292020.basket_id,
        bkp_rptg_calls_per_day_goal_05292020.basket_name,
        bkp_rptg_calls_per_day_goal_05292020.month,
        bkp_rptg_calls_per_day_goal_05292020.cpd_goal,
        bkp_rptg_calls_per_day_goal_05292020.goal_type,
        bkp_rptg_calls_per_day_goal_05292020.prod_percent
 FROM reference.bkp_rptg_calls_per_day_goal_05292020
 ORDER BY bkp_rptg_calls_per_day_goal_05292020.sales_force_id,
          bkp_rptg_calls_per_day_goal_05292020.basket_id,
          bkp_rptg_calls_per_day_goal_05292020.basket_name,
          bkp_rptg_calls_per_day_goal_05292020.month,
          bkp_rptg_calls_per_day_goal_05292020.cpd_goal,
          bkp_rptg_calls_per_day_goal_05292020.goal_type,
          bkp_rptg_calls_per_day_goal_05292020.prod_percent
SEGMENTED BY hash(bkp_rptg_calls_per_day_goal_05292020.sales_force_id, bkp_rptg_calls_per_day_goal_05292020.basket_id, bkp_rptg_calls_per_day_goal_05292020.month, bkp_rptg_calls_per_day_goal_05292020.cpd_goal, bkp_rptg_calls_per_day_goal_05292020.prod_percent, bkp_rptg_calls_per_day_goal_05292020.goal_type, bkp_rptg_calls_per_day_goal_05292020.basket_name) ALL NODES;

CREATE PROJECTION reference.mb_ims_report_cnt_qty_mapping_b0 /*+basename(mb_ims_report_cnt_qty_mapping),createtype(A)*/ 
(
 ims_client_number,
 ims_report_number_cnt,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag,
 sent_from_iqvia_to_asi_flag,
 include_in_prescriber_rx,
 comments,
 load_step
)
AS
 SELECT mb_ims_report_cnt_qty_mapping.ims_client_number,
        mb_ims_report_cnt_qty_mapping.ims_report_number_cnt,
        mb_ims_report_cnt_qty_mapping.ims_report_number_qty,
        mb_ims_report_cnt_qty_mapping.report_frequency,
        mb_ims_report_cnt_qty_mapping.active_flag,
        mb_ims_report_cnt_qty_mapping.indication_flag,
        mb_ims_report_cnt_qty_mapping.sent_from_iqvia_to_asi_flag,
        mb_ims_report_cnt_qty_mapping.include_in_prescriber_rx,
        mb_ims_report_cnt_qty_mapping.comments,
        mb_ims_report_cnt_qty_mapping.load_step
 FROM reference.mb_ims_report_cnt_qty_mapping
 ORDER BY mb_ims_report_cnt_qty_mapping.ims_client_number,
          mb_ims_report_cnt_qty_mapping.ims_report_number_cnt,
          mb_ims_report_cnt_qty_mapping.ims_report_number_qty
SEGMENTED BY hash(mb_ims_report_cnt_qty_mapping.ims_client_number, mb_ims_report_cnt_qty_mapping.ims_report_number_cnt, mb_ims_report_cnt_qty_mapping.ims_report_number_qty, mb_ims_report_cnt_qty_mapping.active_flag, mb_ims_report_cnt_qty_mapping.indication_flag, mb_ims_report_cnt_qty_mapping.sent_from_iqvia_to_asi_flag, mb_ims_report_cnt_qty_mapping.include_in_prescriber_rx, mb_ims_report_cnt_qty_mapping.load_step) ALL NODES;

CREATE PROJECTION reference.alignment_active_dates_b0 /*+basename(alignment_active_dates),createtype(A)*/ 
(
 alignment_file_id,
 alignment_name,
 start_date,
 end_date,
 alignment_description,
 include_in_alternates,
 period,
 sales_force_id
)
AS
 SELECT active_alternate_alignments.alignment_file_id,
        active_alternate_alignments.alignment_name,
        active_alternate_alignments.start_date,
        active_alternate_alignments.end_date,
        active_alternate_alignments.alignment_description,
        active_alternate_alignments.include_in_alternates,
        active_alternate_alignments.period,
        active_alternate_alignments.sales_force_id
 FROM reference.active_alternate_alignments
 ORDER BY active_alternate_alignments.alignment_file_id,
          active_alternate_alignments.alignment_name,
          active_alternate_alignments.start_date,
          active_alternate_alignments.end_date,
          active_alternate_alignments.alignment_description,
          active_alternate_alignments.include_in_alternates
SEGMENTED BY hash(active_alternate_alignments.alignment_file_id) ALL NODES;

CREATE PROJECTION reference.decile_extract_control_b0 /*+basename(decile_extract_control)*/ 
(
 basket_id,
 decile_name_1,
 decile_name_2,
 decile_name_3
)
AS
 SELECT decile_extract_control.basket_id,
        decile_extract_control.decile_name_1,
        decile_extract_control.decile_name_2,
        decile_extract_control.decile_name_3
 FROM reference.decile_extract_control
 ORDER BY decile_extract_control.basket_id,
          decile_extract_control.decile_name_1,
          decile_extract_control.decile_name_2,
          decile_extract_control.decile_name_3
SEGMENTED BY hash(decile_extract_control.basket_id) ALL NODES;

CREATE PROJECTION reference.oncology_alignment_b0 /*+basename(oncology_alignment),createtype(L)*/ 
(
 onc_demo_id,
 tvcmid,
 alignment_zip
)
AS
 SELECT oncology_zip_alignment_override.onc_demo_id,
        oncology_zip_alignment_override.tvcmid,
        oncology_zip_alignment_override.alignment_zip
 FROM reference.oncology_zip_alignment_override
 ORDER BY oncology_zip_alignment_override.onc_demo_id,
          oncology_zip_alignment_override.tvcmid,
          oncology_zip_alignment_override.alignment_zip
SEGMENTED BY hash(oncology_zip_alignment_override.tvcmid) ALL NODES;

CREATE PROJECTION reference.asi_outbound_ims_product_group_mapping_b0 /*+basename(asi_outbound_ims_product_group_mapping),createtype(L)*/ 
(
 data_source,
 market_name,
 basket_id,
 ims_product_group
)
AS
 SELECT zzz_asi_outbound_ims_product_group_mapping.data_source,
        zzz_asi_outbound_ims_product_group_mapping.market_name,
        zzz_asi_outbound_ims_product_group_mapping.basket_id,
        zzz_asi_outbound_ims_product_group_mapping.ims_product_group
 FROM reference.zzz_asi_outbound_ims_product_group_mapping
 ORDER BY zzz_asi_outbound_ims_product_group_mapping.basket_id
SEGMENTED BY hash(zzz_asi_outbound_ims_product_group_mapping.data_source, zzz_asi_outbound_ims_product_group_mapping.basket_id) ALL NODES;

CREATE PROJECTION reference.business_unit_b0 /*+basename(business_unit),createtype(L)*/ 
(
 id,
 sales_force_id,
 business_unit_id,
 business_unit
)
AS
 SELECT zzz_business_unit.id,
        zzz_business_unit.sales_force_id,
        zzz_business_unit.business_unit_id,
        zzz_business_unit.business_unit
 FROM reference.zzz_business_unit
 ORDER BY zzz_business_unit.id,
          zzz_business_unit.sales_force_id,
          zzz_business_unit.business_unit_id,
          zzz_business_unit.business_unit
SEGMENTED BY hash(zzz_business_unit.id, zzz_business_unit.sales_force_id, zzz_business_unit.business_unit_id, zzz_business_unit.business_unit) ALL NODES;

CREATE PROJECTION reference.AHM_Exclude_Employee_b0 /*+basename(AHM_Exclude_Employee),createtype(L)*/ 
(
 employee_id
)
AS
 SELECT AHM_Exclude_Employee.employee_id
 FROM reference.AHM_Exclude_Employee
 ORDER BY AHM_Exclude_Employee.employee_id
SEGMENTED BY hash(AHM_Exclude_Employee.employee_id) ALL NODES;

CREATE PROJECTION reference.psr_enrollment_bckp_b0 /*+basename(psr_enrollment_bckp),createtype(L)*/ 
(
 veeva_account_id,
 ims_id,
 npi,
 tvcmid,
 basket_name,
 basket_id,
 indication,
 prescriber_last_name,
 prescriber_first_name,
 prescriber_middle_name,
 specialty_code,
 prescriber_date,
 in_progress_count,
 completed_count,
 cancelled_count,
 prescriber_count,
 week_ending,
 file_id,
 record_id
)
AS
 SELECT zzz_psr_enrollment_bckp.veeva_account_id,
        zzz_psr_enrollment_bckp.ims_id,
        zzz_psr_enrollment_bckp.npi,
        zzz_psr_enrollment_bckp.tvcmid,
        zzz_psr_enrollment_bckp.basket_name,
        zzz_psr_enrollment_bckp.basket_id,
        zzz_psr_enrollment_bckp.indication,
        zzz_psr_enrollment_bckp.prescriber_last_name,
        zzz_psr_enrollment_bckp.prescriber_first_name,
        zzz_psr_enrollment_bckp.prescriber_middle_name,
        zzz_psr_enrollment_bckp.specialty_code,
        zzz_psr_enrollment_bckp.prescriber_date,
        zzz_psr_enrollment_bckp.in_progress_count,
        zzz_psr_enrollment_bckp.completed_count,
        zzz_psr_enrollment_bckp.cancelled_count,
        zzz_psr_enrollment_bckp.prescriber_count,
        zzz_psr_enrollment_bckp.week_ending,
        zzz_psr_enrollment_bckp.file_id,
        zzz_psr_enrollment_bckp.record_id
 FROM reference.zzz_psr_enrollment_bckp
 ORDER BY zzz_psr_enrollment_bckp.veeva_account_id,
          zzz_psr_enrollment_bckp.ims_id,
          zzz_psr_enrollment_bckp.npi,
          zzz_psr_enrollment_bckp.tvcmid,
          zzz_psr_enrollment_bckp.basket_name,
          zzz_psr_enrollment_bckp.basket_id,
          zzz_psr_enrollment_bckp.indication,
          zzz_psr_enrollment_bckp.prescriber_last_name,
          zzz_psr_enrollment_bckp.prescriber_first_name,
          zzz_psr_enrollment_bckp.prescriber_middle_name,
          zzz_psr_enrollment_bckp.specialty_code,
          zzz_psr_enrollment_bckp.prescriber_date,
          zzz_psr_enrollment_bckp.in_progress_count,
          zzz_psr_enrollment_bckp.completed_count,
          zzz_psr_enrollment_bckp.cancelled_count,
          zzz_psr_enrollment_bckp.prescriber_count,
          zzz_psr_enrollment_bckp.week_ending,
          zzz_psr_enrollment_bckp.file_id,
          zzz_psr_enrollment_bckp.record_id
SEGMENTED BY hash(zzz_psr_enrollment_bckp.npi) ALL NODES;

CREATE PROJECTION reference.psr_enrollment_rej_bckp_b0 /*+basename(psr_enrollment_rej_bckp),createtype(L)*/ 
(
 file_id,
 record_id,
 null_npi,
 null_lkp_veeva_id,
 null_lkp_ims_id,
 count_mismatch,
 week_ending
)
AS
 SELECT zzz_psr_enrollment_rej_bckp.file_id,
        zzz_psr_enrollment_rej_bckp.record_id,
        zzz_psr_enrollment_rej_bckp.null_npi,
        zzz_psr_enrollment_rej_bckp.null_lkp_veeva_id,
        zzz_psr_enrollment_rej_bckp.null_lkp_ims_id,
        zzz_psr_enrollment_rej_bckp.count_mismatch,
        zzz_psr_enrollment_rej_bckp.week_ending
 FROM reference.zzz_psr_enrollment_rej_bckp
 ORDER BY zzz_psr_enrollment_rej_bckp.file_id,
          zzz_psr_enrollment_rej_bckp.record_id,
          zzz_psr_enrollment_rej_bckp.null_npi,
          zzz_psr_enrollment_rej_bckp.null_lkp_veeva_id,
          zzz_psr_enrollment_rej_bckp.null_lkp_ims_id,
          zzz_psr_enrollment_rej_bckp.count_mismatch,
          zzz_psr_enrollment_rej_bckp.week_ending
SEGMENTED BY hash(zzz_psr_enrollment_rej_bckp.file_id, zzz_psr_enrollment_rej_bckp.record_id, zzz_psr_enrollment_rej_bckp.null_npi, zzz_psr_enrollment_rej_bckp.null_lkp_veeva_id, zzz_psr_enrollment_rej_bckp.null_lkp_ims_id, zzz_psr_enrollment_rej_bckp.count_mismatch, zzz_psr_enrollment_rej_bckp.week_ending) ALL NODES;

CREATE PROJECTION reference.sfa_specialty_xref1_b0 /*+basename(sfa_specialty_xref1),createtype(L)*/ 
(
 specialty_desc,
 specialty_code
)
AS
 SELECT zzz_sfa_specialty_xref.specialty_desc,
        zzz_sfa_specialty_xref.specialty_code
 FROM reference.zzz_sfa_specialty_xref
 ORDER BY zzz_sfa_specialty_xref.specialty_desc
SEGMENTED BY hash(zzz_sfa_specialty_xref.specialty_code, zzz_sfa_specialty_xref.specialty_desc) ALL NODES;

CREATE PROJECTION reference.specialty_xref1_v1_b0 /*+basename(specialty_xref1_v1),createtype(L)*/ 
(
 specialty_code,
 specialty_desc,
 specialty_group,
 nuvigil_report_group,
 amrix_report_group,
 fentora_report_group,
 onc_report_group,
 nuvigil_target_group,
 amrix_target_group,
 fentora_target_group,
 nuvigil_dnc_flag,
 fentora_dnc_flag,
 amrix_target_flag,
 ms_report_group,
 pd_report_group,
 tr_report_group
)
AS
 SELECT legacy_specialty_xref.specialty_code,
        legacy_specialty_xref.specialty_desc,
        legacy_specialty_xref.specialty_group,
        legacy_specialty_xref.nuvigil_report_group,
        legacy_specialty_xref.amrix_report_group,
        legacy_specialty_xref.fentora_report_group,
        legacy_specialty_xref.onc_report_group,
        legacy_specialty_xref.nuvigil_target_group,
        legacy_specialty_xref.amrix_target_group,
        legacy_specialty_xref.fentora_target_group,
        legacy_specialty_xref.nuvigil_dnc_flag,
        legacy_specialty_xref.fentora_dnc_flag,
        legacy_specialty_xref.amrix_target_flag,
        legacy_specialty_xref.ms_report_group,
        legacy_specialty_xref.pd_report_group,
        legacy_specialty_xref.tr_report_group
 FROM reference.legacy_specialty_xref
 ORDER BY legacy_specialty_xref.specialty_code,
          legacy_specialty_xref.specialty_desc
SEGMENTED BY hash(legacy_specialty_xref.specialty_code, legacy_specialty_xref.specialty_group, legacy_specialty_xref.nuvigil_report_group, legacy_specialty_xref.amrix_report_group, legacy_specialty_xref.fentora_report_group, legacy_specialty_xref.onc_report_group, legacy_specialty_xref.nuvigil_target_group, legacy_specialty_xref.amrix_target_group, legacy_specialty_xref.fentora_target_group, legacy_specialty_xref.nuvigil_dnc_flag, legacy_specialty_xref.fentora_dnc_flag, legacy_specialty_xref.amrix_target_flag, legacy_specialty_xref.ms_report_group, legacy_specialty_xref.pd_report_group, legacy_specialty_xref.tr_report_group, legacy_specialty_xref.specialty_desc) ALL NODES;

CREATE PROJECTION reference.city_state_zip_b0 /*+basename(city_state_zip),createtype(L)*/ 
(
 city,
 state,
 zip
)
AS
 SELECT city_state_zip.city,
        city_state_zip.state,
        city_state_zip.zip
 FROM reference.city_state_zip
 ORDER BY city_state_zip.city,
          city_state_zip.state,
          city_state_zip.zip
SEGMENTED BY hash(city_state_zip.state, city_state_zip.zip, city_state_zip.city) ALL NODES;

CREATE PROJECTION reference.outbound_product_name_b0 /*+basename(outbound_product_name),createtype(L)*/ 
(
 source_id,
 transform_name,
 file_class_name,
 basket_id,
 outbound_prod_name
)
AS
 SELECT zzz_outbound_product_name.source_id,
        zzz_outbound_product_name.transform_name,
        zzz_outbound_product_name.file_class_name,
        zzz_outbound_product_name.basket_id,
        zzz_outbound_product_name.outbound_prod_name
 FROM reference.zzz_outbound_product_name
 ORDER BY zzz_outbound_product_name.basket_id
SEGMENTED BY hash(zzz_outbound_product_name.source_id, zzz_outbound_product_name.basket_id, zzz_outbound_product_name.transform_name, zzz_outbound_product_name.file_class_name, zzz_outbound_product_name.outbound_prod_name) ALL NODES;

CREATE PROJECTION reference.valid_value_exclusion_b0 /*+basename(valid_value_exclusion),createtype(L)*/ 
(
 feed_id,
 lov_name,
 exclusion_value
)
AS
 SELECT valid_value_exclusion.feed_id,
        valid_value_exclusion.lov_name,
        valid_value_exclusion.exclusion_value
 FROM reference.valid_value_exclusion
 ORDER BY valid_value_exclusion.feed_id,
          valid_value_exclusion.lov_name,
          valid_value_exclusion.exclusion_value
SEGMENTED BY hash(valid_value_exclusion.feed_id, valid_value_exclusion.lov_name, valid_value_exclusion.exclusion_value) ALL NODES;

CREATE PROJECTION reference.ddd_subcategory1_b0 /*+basename(ddd_subcategory1),createtype(L)*/ 
(
 subcategory_code,
 category_code,
 cot_code,
 mailorder_flag,
 nonretail_flag,
 outlet_example,
 outlet_description,
 outlet_definition,
 mdm_flag,
 adm_flag,
 onc_subcat_group
)
AS
 SELECT ddd_subcategory.subcategory_code,
        ddd_subcategory.category_code,
        ddd_subcategory.cot_code,
        ddd_subcategory.mailorder_flag,
        ddd_subcategory.nonretail_flag,
        ddd_subcategory.outlet_example,
        ddd_subcategory.outlet_description,
        ddd_subcategory.outlet_definition,
        ddd_subcategory.mdm_flag,
        ddd_subcategory.adm_flag,
        ddd_subcategory.onc_subcat_group
 FROM reference.ddd_subcategory
 ORDER BY ddd_subcategory.subcategory_code,
          ddd_subcategory.category_code,
          ddd_subcategory.cot_code,
          ddd_subcategory.mailorder_flag,
          ddd_subcategory.nonretail_flag,
          ddd_subcategory.outlet_example,
          ddd_subcategory.outlet_description,
          ddd_subcategory.outlet_definition,
          ddd_subcategory.mdm_flag,
          ddd_subcategory.adm_flag,
          ddd_subcategory.onc_subcat_group
SEGMENTED BY hash(ddd_subcategory.subcategory_code, ddd_subcategory.category_code) ALL NODES;

CREATE PROJECTION reference.ims_report_cnt_qty_mapping_20180320_b0 /*+basename(ims_report_cnt_qty_mapping_20180320),createtype(A)*/ 
(
 ims_client_number,
 ims_report_number_cnt,
 ims_report_number_qty,
 report_frequency,
 active_flag,
 indication_flag
)
AS
 SELECT zzz_ims_report_cnt_qty_mapping_20180320.ims_client_number,
        zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_cnt,
        zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_qty,
        zzz_ims_report_cnt_qty_mapping_20180320.report_frequency,
        zzz_ims_report_cnt_qty_mapping_20180320.active_flag,
        zzz_ims_report_cnt_qty_mapping_20180320.indication_flag
 FROM reference.zzz_ims_report_cnt_qty_mapping_20180320
 ORDER BY zzz_ims_report_cnt_qty_mapping_20180320.ims_client_number,
          zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_cnt,
          zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_qty
SEGMENTED BY hash(zzz_ims_report_cnt_qty_mapping_20180320.ims_client_number, zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_cnt, zzz_ims_report_cnt_qty_mapping_20180320.ims_report_number_qty, zzz_ims_report_cnt_qty_mapping_20180320.active_flag, zzz_ims_report_cnt_qty_mapping_20180320.indication_flag, zzz_ims_report_cnt_qty_mapping_20180320.report_frequency) ALL NODES;

CREATE PROJECTION reference.outbound_product_name_20180320_b0 /*+basename(outbound_product_name_20180320),createtype(A)*/ 
(
 source_id,
 transform_name,
 file_class_name,
 basket_id,
 outbound_prod_name
)
AS
 SELECT zzz_outbound_product_name_20180320.source_id,
        zzz_outbound_product_name_20180320.transform_name,
        zzz_outbound_product_name_20180320.file_class_name,
        zzz_outbound_product_name_20180320.basket_id,
        zzz_outbound_product_name_20180320.outbound_prod_name
 FROM reference.zzz_outbound_product_name_20180320
 ORDER BY zzz_outbound_product_name_20180320.basket_id
SEGMENTED BY hash(zzz_outbound_product_name_20180320.source_id, zzz_outbound_product_name_20180320.basket_id, zzz_outbound_product_name_20180320.transform_name, zzz_outbound_product_name_20180320.file_class_name, zzz_outbound_product_name_20180320.outbound_prod_name) ALL NODES;

CREATE PROJECTION reference.sales_geography_040418_b0 /*+basename(sales_geography_040418),createtype(A)*/ 
(
 sales_force_id,
 geography_number,
 geography_name,
 geography_desc,
 geography_type,
 employee_type,
 sales_team,
 parent_geography_number
)
AS
 SELECT zzz_sales_geography_040418.sales_force_id,
        zzz_sales_geography_040418.geography_number,
        zzz_sales_geography_040418.geography_name,
        zzz_sales_geography_040418.geography_desc,
        zzz_sales_geography_040418.geography_type,
        zzz_sales_geography_040418.employee_type,
        zzz_sales_geography_040418.sales_team,
        zzz_sales_geography_040418.parent_geography_number
 FROM reference.zzz_sales_geography_040418
 ORDER BY zzz_sales_geography_040418.geography_number
SEGMENTED BY hash(zzz_sales_geography_040418.sales_force_id, zzz_sales_geography_040418.geography_number, zzz_sales_geography_040418.employee_type, zzz_sales_geography_040418.parent_geography_number, zzz_sales_geography_040418.geography_type, zzz_sales_geography_040418.sales_team, zzz_sales_geography_040418.geography_name, zzz_sales_geography_040418.geography_desc) ALL NODES;

CREATE PROJECTION reference.customer_level_flags_control_b0 /*+basename(customer_level_flags_control),createtype(L)*/ 
(
 flag_file_id,
 load_this_file_id,
 effective_start_date,
 effective_end_date,
 comments,
 create_date,
 create_user
)
AS
 SELECT customer_level_flags_control.flag_file_id,
        customer_level_flags_control.load_this_file_id,
        customer_level_flags_control.effective_start_date,
        customer_level_flags_control.effective_end_date,
        customer_level_flags_control.comments,
        customer_level_flags_control.create_date,
        customer_level_flags_control.create_user
 FROM reference.customer_level_flags_control
 ORDER BY customer_level_flags_control.flag_file_id
SEGMENTED BY hash(customer_level_flags_control.flag_file_id) ALL NODES;

CREATE PROJECTION reference.copay_voucher_program_v2_b0 /*+basename(copay_voucher_program_v2),createtype(L)*/ 
(
 redemption_type,
 program_number,
 program_description,
 create_date
)
AS
 SELECT copay_voucher_program.redemption_type,
        copay_voucher_program.program_number,
        copay_voucher_program.program_description,
        copay_voucher_program.create_date
 FROM reference.copay_voucher_program
 ORDER BY copay_voucher_program.program_number
SEGMENTED BY hash(copay_voucher_program.create_date, copay_voucher_program.program_number, copay_voucher_program.redemption_type, copay_voucher_program.program_description) ALL NODES;

CREATE PROJECTION reference.reporting_sales_force_headcounts_b0 /*+basename(reporting_sales_force_headcounts),createtype(L)*/ 
(
 sales_force_id,
 month,
 headcount,
 products,
 sub_team
)
AS
 SELECT reporting_sales_force_headcounts.sales_force_id,
        reporting_sales_force_headcounts.month,
        reporting_sales_force_headcounts.headcount,
        reporting_sales_force_headcounts.products,
        reporting_sales_force_headcounts.sub_team
 FROM reference.reporting_sales_force_headcounts
 ORDER BY reporting_sales_force_headcounts.sales_force_id,
          reporting_sales_force_headcounts.month,
          reporting_sales_force_headcounts.headcount,
          reporting_sales_force_headcounts.products
SEGMENTED BY hash(reporting_sales_force_headcounts.sales_force_id, reporting_sales_force_headcounts.month, reporting_sales_force_headcounts.headcount, reporting_sales_force_headcounts.products) ALL NODES;

CREATE PROJECTION reference.reporting_ho_users_b0 /*+basename(reporting_ho_users),createtype(L)*/ 
(
 email,
 user_id,
 user_name,
 user_type
)
AS
 SELECT reporting_ho_users.email,
        reporting_ho_users.user_id,
        reporting_ho_users.user_name,
        reporting_ho_users.user_type
 FROM reference.reporting_ho_users
 ORDER BY reporting_ho_users.email
SEGMENTED BY hash(reporting_ho_users.email) ALL NODES;

CREATE PROJECTION reference.reporting_par_brands_b0 /*+basename(reporting_par_brands),createtype(L)*/ 
(
 sales_force_id,
 brand_name,
 brand_id
)
AS
 SELECT reporting_par_brands.sales_force_id,
        reporting_par_brands.brand_name,
        reporting_par_brands.brand_id
 FROM reference.reporting_par_brands
 ORDER BY reporting_par_brands.sales_force_id,
          reporting_par_brands.brand_id
SEGMENTED BY hash(reporting_par_brands.sales_force_id, reporting_par_brands.brand_id) ALL NODES;

CREATE PROJECTION reference.mb_ref_rptng_call_per_day_goal_01312020_b0 /*+basename(mb_ref_rptng_call_per_day_goal_01312020),createtype(A)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT mb_ref_rptng_call_per_day_goal_01312020.sales_force_id,
        mb_ref_rptng_call_per_day_goal_01312020.basket_id,
        mb_ref_rptng_call_per_day_goal_01312020.basket_name,
        mb_ref_rptng_call_per_day_goal_01312020.month,
        mb_ref_rptng_call_per_day_goal_01312020.cpd_goal,
        mb_ref_rptng_call_per_day_goal_01312020.goal_type,
        mb_ref_rptng_call_per_day_goal_01312020.prod_percent
 FROM reference.mb_ref_rptng_call_per_day_goal_01312020
 ORDER BY mb_ref_rptng_call_per_day_goal_01312020.sales_force_id,
          mb_ref_rptng_call_per_day_goal_01312020.basket_id,
          mb_ref_rptng_call_per_day_goal_01312020.basket_name,
          mb_ref_rptng_call_per_day_goal_01312020.month,
          mb_ref_rptng_call_per_day_goal_01312020.cpd_goal,
          mb_ref_rptng_call_per_day_goal_01312020.goal_type,
          mb_ref_rptng_call_per_day_goal_01312020.prod_percent
SEGMENTED BY hash(mb_ref_rptng_call_per_day_goal_01312020.sales_force_id, mb_ref_rptng_call_per_day_goal_01312020.basket_id, mb_ref_rptng_call_per_day_goal_01312020.month, mb_ref_rptng_call_per_day_goal_01312020.cpd_goal, mb_ref_rptng_call_per_day_goal_01312020.prod_percent, mb_ref_rptng_call_per_day_goal_01312020.goal_type, mb_ref_rptng_call_per_day_goal_01312020.basket_name) ALL NODES;

CREATE PROJECTION reference.mb_ref_rptng_workdays_01312020_b0 /*+basename(mb_ref_rptng_workdays_01312020),createtype(A)*/ 
(
 sales_force_id,
 month,
 expected_workdays,
 delivery_rate
)
AS
 SELECT mb_ref_rptng_workdays_01312020.sales_force_id,
        mb_ref_rptng_workdays_01312020.month,
        mb_ref_rptng_workdays_01312020.expected_workdays,
        mb_ref_rptng_workdays_01312020.delivery_rate
 FROM reference.mb_ref_rptng_workdays_01312020
 ORDER BY mb_ref_rptng_workdays_01312020.sales_force_id
SEGMENTED BY hash(mb_ref_rptng_workdays_01312020.sales_force_id, mb_ref_rptng_workdays_01312020.month, mb_ref_rptng_workdays_01312020.expected_workdays) ALL NODES;

CREATE PROJECTION reference.mb_ref_sales_force_headcnts_01312020_b0 /*+basename(mb_ref_sales_force_headcnts_01312020),createtype(A)*/ 
(
 sales_force_id,
 month,
 headcount,
 products
)
AS
 SELECT mb_ref_sales_force_headcnts_01312020.sales_force_id,
        mb_ref_sales_force_headcnts_01312020.month,
        mb_ref_sales_force_headcnts_01312020.headcount,
        mb_ref_sales_force_headcnts_01312020.products
 FROM reference.mb_ref_sales_force_headcnts_01312020
 ORDER BY mb_ref_sales_force_headcnts_01312020.sales_force_id,
          mb_ref_sales_force_headcnts_01312020.month,
          mb_ref_sales_force_headcnts_01312020.headcount,
          mb_ref_sales_force_headcnts_01312020.products
SEGMENTED BY hash(mb_ref_sales_force_headcnts_01312020.sales_force_id, mb_ref_sales_force_headcnts_01312020.month, mb_ref_sales_force_headcnts_01312020.headcount, mb_ref_sales_force_headcnts_01312020.products) ALL NODES;

CREATE PROJECTION reference.active_fileclass_names_b0 /*+basename(active_fileclass_names),createtype(L)*/ 
(
 inbound_file_class
)
AS
 SELECT active_fileclass_names.inbound_file_class
 FROM reference.active_fileclass_names
 ORDER BY active_fileclass_names.inbound_file_class
SEGMENTED BY hash(active_fileclass_names.inbound_file_class) ALL NODES;

CREATE PROJECTION reference.ics_laba_saba_b0 /*+basename(ics_laba_saba),createtype(A)*/ 
(
 basket_name
)
AS
 SELECT ics_laba_saba.basket_name
 FROM reference.ics_laba_saba
 ORDER BY ics_laba_saba.basket_name
SEGMENTED BY hash(ics_laba_saba.basket_name) ALL NODES;

CREATE PROJECTION reference.ref_rptng_wrkdays_05132020_b0 /*+basename(ref_rptng_wrkdays_05132020),createtype(A)*/ 
(
 sales_force_id,
 month,
 expected_workdays,
 delivery_rate
)
AS
 SELECT ref_rptng_wrkdays_05132020.sales_force_id,
        ref_rptng_wrkdays_05132020.month,
        ref_rptng_wrkdays_05132020.expected_workdays,
        ref_rptng_wrkdays_05132020.delivery_rate
 FROM reference.ref_rptng_wrkdays_05132020
 ORDER BY ref_rptng_wrkdays_05132020.sales_force_id
SEGMENTED BY hash(ref_rptng_wrkdays_05132020.sales_force_id, ref_rptng_wrkdays_05132020.month, ref_rptng_wrkdays_05132020.expected_workdays) ALL NODES;

CREATE PROJECTION reference.ref_rptng_callsperday_05132020_b0 /*+basename(ref_rptng_callsperday_05132020),createtype(A)*/ 
(
 sales_force_id,
 basket_id,
 basket_name,
 month,
 cpd_goal,
 goal_type,
 prod_percent
)
AS
 SELECT ref_rptng_callsperday_05132020.sales_force_id,
        ref_rptng_callsperday_05132020.basket_id,
        ref_rptng_callsperday_05132020.basket_name,
        ref_rptng_callsperday_05132020.month,
        ref_rptng_callsperday_05132020.cpd_goal,
        ref_rptng_callsperday_05132020.goal_type,
        ref_rptng_callsperday_05132020.prod_percent
 FROM reference.ref_rptng_callsperday_05132020
 ORDER BY ref_rptng_callsperday_05132020.sales_force_id,
          ref_rptng_callsperday_05132020.basket_id,
          ref_rptng_callsperday_05132020.basket_name,
          ref_rptng_callsperday_05132020.month,
          ref_rptng_callsperday_05132020.cpd_goal,
          ref_rptng_callsperday_05132020.goal_type,
          ref_rptng_callsperday_05132020.prod_percent
SEGMENTED BY hash(ref_rptng_callsperday_05132020.sales_force_id, ref_rptng_callsperday_05132020.basket_id, ref_rptng_callsperday_05132020.month, ref_rptng_callsperday_05132020.cpd_goal, ref_rptng_callsperday_05132020.prod_percent, ref_rptng_callsperday_05132020.goal_type, ref_rptng_callsperday_05132020.basket_name) ALL NODES;

CREATE PROJECTION reference.ref_rptng_cust_grps_05132020_b0 /*+basename(ref_rptng_cust_grps_05132020),createtype(A)*/ 
(
 sales_force_id,
 customer_type,
 customer_group
)
AS
 SELECT ref_rptng_cust_grps_05132020.sales_force_id,
        ref_rptng_cust_grps_05132020.customer_type,
        ref_rptng_cust_grps_05132020.customer_group
 FROM reference.ref_rptng_cust_grps_05132020
 ORDER BY ref_rptng_cust_grps_05132020.sales_force_id,
          ref_rptng_cust_grps_05132020.customer_type,
          ref_rptng_cust_grps_05132020.customer_group
SEGMENTED BY hash(ref_rptng_cust_grps_05132020.sales_force_id, ref_rptng_cust_grps_05132020.customer_type, ref_rptng_cust_grps_05132020.customer_group) ALL NODES;

CREATE PROJECTION reference.ref_rptng_salesforce_headcnts_05132020_b0 /*+basename(ref_rptng_salesforce_headcnts_05132020),createtype(A)*/ 
(
 sales_force_id,
 month,
 headcount,
 products
)
AS
 SELECT ref_rptng_salesforce_headcnts_05132020.sales_force_id,
        ref_rptng_salesforce_headcnts_05132020.month,
        ref_rptng_salesforce_headcnts_05132020.headcount,
        ref_rptng_salesforce_headcnts_05132020.products
 FROM reference.ref_rptng_salesforce_headcnts_05132020
 ORDER BY ref_rptng_salesforce_headcnts_05132020.month,
          ref_rptng_salesforce_headcnts_05132020.sales_force_id
SEGMENTED BY hash(ref_rptng_salesforce_headcnts_05132020.sales_force_id, ref_rptng_salesforce_headcnts_05132020.month, ref_rptng_salesforce_headcnts_05132020.headcount, ref_rptng_salesforce_headcnts_05132020.products) ALL NODES;

CREATE PROJECTION reference.ref_rptng_mrkt_sales_force_05132020_b0 /*+basename(ref_rptng_mrkt_sales_force_05132020),createtype(A)*/ 
(
 market_basket_id,
 market_name,
 sales_force_id,
 specialty_group_name
)
AS
 SELECT ref_rptng_mrkt_sales_force_05132020.market_basket_id,
        ref_rptng_mrkt_sales_force_05132020.market_name,
        ref_rptng_mrkt_sales_force_05132020.sales_force_id,
        ref_rptng_mrkt_sales_force_05132020.specialty_group_name
 FROM reference.ref_rptng_mrkt_sales_force_05132020
 ORDER BY ref_rptng_mrkt_sales_force_05132020.market_basket_id,
          ref_rptng_mrkt_sales_force_05132020.sales_force_id
SEGMENTED BY hash(ref_rptng_mrkt_sales_force_05132020.market_basket_id, ref_rptng_mrkt_sales_force_05132020.sales_force_id) ALL NODES;

CREATE PROJECTION reference.ref_rptng_par_brands_05132020_b0 /*+basename(ref_rptng_par_brands_05132020),createtype(A)*/ 
(
 sales_force_id,
 brand_name,
 brand_id
)
AS
 SELECT ref_rptng_par_brands_05132020.sales_force_id,
        ref_rptng_par_brands_05132020.brand_name,
        ref_rptng_par_brands_05132020.brand_id
 FROM reference.ref_rptng_par_brands_05132020
 ORDER BY ref_rptng_par_brands_05132020.sales_force_id,
          ref_rptng_par_brands_05132020.brand_id
SEGMENTED BY hash(ref_rptng_par_brands_05132020.sales_force_id, ref_rptng_par_brands_05132020.brand_id) ALL NODES;

CREATE PROJECTION reference.ref_rptng_salesforce_headcnts_05132020_2_b0 /*+basename(ref_rptng_salesforce_headcnts_05132020_2),createtype(A)*/ 
(
 sales_force_id,
 month,
 headcount,
 products
)
AS
 SELECT ref_rptng_salesforce_headcnts_05132020_2.sales_force_id,
        ref_rptng_salesforce_headcnts_05132020_2.month,
        ref_rptng_salesforce_headcnts_05132020_2.headcount,
        ref_rptng_salesforce_headcnts_05132020_2.products
 FROM reference.ref_rptng_salesforce_headcnts_05132020_2
 ORDER BY ref_rptng_salesforce_headcnts_05132020_2.month,
          ref_rptng_salesforce_headcnts_05132020_2.sales_force_id
SEGMENTED BY hash(ref_rptng_salesforce_headcnts_05132020_2.sales_force_id, ref_rptng_salesforce_headcnts_05132020_2.month, ref_rptng_salesforce_headcnts_05132020_2.headcount, ref_rptng_salesforce_headcnts_05132020_2.products) ALL NODES;

CREATE PROJECTION reference.mb_pcd_sales_force_b0 /*+basename(mb_pcd_sales_force),createtype(A)*/ 
(
 sales_force_id,
 report_frequency,
 ims_client_number,
 ims_report_number,
 include_in_demo,
 comments
)
AS
 SELECT mb_pcd_sales_force.sales_force_id,
        mb_pcd_sales_force.report_frequency,
        mb_pcd_sales_force.ims_client_number,
        mb_pcd_sales_force.ims_report_number,
        mb_pcd_sales_force.include_in_demo,
        mb_pcd_sales_force.comments
 FROM reference.mb_pcd_sales_force
 ORDER BY mb_pcd_sales_force.sales_force_id,
          mb_pcd_sales_force.report_frequency,
          mb_pcd_sales_force.ims_client_number,
          mb_pcd_sales_force.ims_report_number
SEGMENTED BY hash(mb_pcd_sales_force.report_frequency, mb_pcd_sales_force.ims_client_number, mb_pcd_sales_force.ims_report_number) ALL NODES;

CREATE PROJECTION reference.how_executed_b0 /*+basename(how_executed),createtype(L)*/ 
(
 id,
 how_executed
)
AS
 SELECT how_executed.id,
        how_executed.how_executed
 FROM reference.how_executed
 ORDER BY how_executed.id,
          how_executed.how_executed
SEGMENTED BY hash(how_executed.id, how_executed.how_executed) ALL NODES;

CREATE PROJECTION reference.reporting_non_target_brands_b0 /*+basename(reporting_non_target_brands),createtype(A)*/ 
(
 sales_force_id,
 brand_name
)
AS
 SELECT reporting_non_target_brands.sales_force_id,
        reporting_non_target_brands.brand_name
 FROM reference.reporting_non_target_brands
 ORDER BY reporting_non_target_brands.sales_force_id,
          reporting_non_target_brands.brand_name
SEGMENTED BY hash(reporting_non_target_brands.sales_force_id, reporting_non_target_brands.brand_name) ALL NODES;

CREATE PROJECTION reference.zs_revo_products_b0 /*+basename(zs_revo_products),createtype(A)*/ 
(
 entity,
 basket_id,
 basket_name
)
AS
 SELECT zs_revo_products.entity,
        zs_revo_products.basket_id,
        zs_revo_products.basket_name
 FROM reference.zs_revo_products
 ORDER BY zs_revo_products.entity,
          zs_revo_products.basket_id,
          zs_revo_products.basket_name
SEGMENTED BY hash(zs_revo_products.basket_id, zs_revo_products.entity, zs_revo_products.basket_name) ALL NODES;

CREATE PROJECTION reference.ref_rptng_cust_grps_12172020_b0 /*+basename(ref_rptng_cust_grps_12172020),createtype(A)*/ 
(
 sales_force_id,
 customer_type,
 customer_group
)
AS
 SELECT ref_rptng_cust_grps_12172020.sales_force_id,
        ref_rptng_cust_grps_12172020.customer_type,
        ref_rptng_cust_grps_12172020.customer_group
 FROM reference.ref_rptng_cust_grps_12172020
 ORDER BY ref_rptng_cust_grps_12172020.sales_force_id,
          ref_rptng_cust_grps_12172020.customer_type,
          ref_rptng_cust_grps_12172020.customer_group
SEGMENTED BY hash(ref_rptng_cust_grps_12172020.sales_force_id, ref_rptng_cust_grps_12172020.customer_type, ref_rptng_cust_grps_12172020.customer_group) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

