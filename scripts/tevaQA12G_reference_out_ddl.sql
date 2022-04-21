CREATE SCHEMA reference;

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


CREATE TABLE reference.basket_type
(
    basket_type varchar(100)
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


CREATE TABLE reference.salesforce_reference
(
    id int,
    sales_force_id varchar(10),
    ref_code varchar(10),
    ref_desc varchar(50),
    ref_type varchar(50)
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


CREATE TABLE reference.AHM_Exclude_Employee
(
    employee_id varchar(20)
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