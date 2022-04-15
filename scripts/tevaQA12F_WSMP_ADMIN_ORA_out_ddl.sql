CREATE SCHEMA WSMP_ADMIN_ORA;

CREATE TABLE WSMP_ADMIN_ORA.EXTERNAL_TABLE_CLEANUP
(
    TABLE_NAME varchar(30),
    ERROR_FLAG varchar(1),
    NUM_ROWS numeric(37,15),
    REMOVE varchar(1),
    LOCATION varchar(300),
    DIRECTORY_NAME varchar(30),
    DIRECTORY_PATH varchar(200),
    FILE_CREATE_DATE timestamp,
    FILE_EXISTS varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.TABLE_EXTRACT_MASTER
(
    table_name varchar(255),
    row_count int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_DIPLOMAT_ENROLLMENT
(
    PATIENT_ID varchar(20),
    RX_RECEIVED_DATE timestamp,
    INSURANCE_INFORMATION varchar(50),
    MOST_RECENT_CML_TREATMENT varchar(50),
    DATE_OF_DISCONTINUATION timestamp,
    REASON_FOR_DISCONTINUATION varchar(50),
    PHYSICIAN_LAST_NAME varchar(50),
    PHYSICIAN_FIRST_NAME varchar(50),
    PHYSICIAN_ADDRESS varchar(100),
    PHYSICIAN_CITY varchar(50),
    PHYSICIAN_STATE varchar(2),
    PHYSICIAN_ZIP varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.veeva_calls_with_bad_ids
(
    call_id varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.veeva_calls_with_bad_details
(
    call_id varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_ASSESSMENT__C
(
    ACCOUNT__C varchar(18),
    ASSESSMENT_DATE_TVA__C varchar(10),
    CC_PATIENT_PROFILES__C varchar(255),
    CC_STUDY_LEVERAGE__C varchar(255),
    CML_Q1_TVA__C varchar(150),
    CML_Q2_TVA__C varchar(150),
    CML_Q3_TVA__C varchar(150),
    CML_Q4_TVA__C varchar(150),
    CML_Q5_1_TVA__C varchar(150),
    CML_Q5_TVA__C varchar(150),
    CML_Q6_TVA__C varchar(150),
    CML_Q7_1_TVA__C varchar(150),
    CML_Q7_TVA__C varchar(150),
    COMMUNITY_ACTIVITY__C varchar(255),
    CREATEDBYID varchar(18),
    CREATEDDATE varchar(24),
    HISTORICAL_ASSESSMENT_TVA__C varchar(5),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE varchar(24),
    LN_PATIENT_PROFILES__C varchar(255),
    LN_STUDY_LEVERAGE__C varchar(255),
    MAYEDIT varchar(5),
    MOBILE_ID_VOD__C varchar(255),
    NAME varchar(11),
    ONCOLOGY_BOARD__C varchar(5),
    PREFERRED_PATHOLOGIST__C varchar(255),
    RECORDTYPEID varchar(18),
    RESEARCH_FOCUS__C varchar(255),
    RL_PATIENT_PROFILES__C varchar(255),
    RL_STUDY_LEVERAGE__C varchar(255),
    SYSTEMMODSTAMP varchar(24),
    TREATMENT_PREFERENCES__C varchar(255),
    TREATMENT_VOLUME__C varchar(255),
    TUMOR_TYPES__C varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.TJR_ORA_DMD_WEEKLY_SALES
(
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    IMS_PRODUCT_CODE varchar(6)
);


CREATE TABLE WSMP_ADMIN_ORA.tjr_onc_sales_adjust
(
    ONC_SALES_ADJUST_ID int,
    ADJ_CODE varchar(10),
    ADJ_DESCR varchar(50),
    ACT_TIME_PERIOD varchar(10),
    ACT_START_DATE timestamp,
    ACT_END_DATE timestamp,
    STATUS_CODE varchar(10),
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    ADJ_FACTOR numeric(37,15),
    ADJ_REASON varchar(200),
    CREATE_DATE timestamp,
    CREATE_USER varchar(25),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25),
    LAST_CALC_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.bag_territory
(
    bag_id numeric(38,0) NOT NULL,
    territory_num varchar(8) NOT NULL,
    detail_first_valid_date timestamp NOT NULL,
    detail_last_valid_date timestamp NOT NULL,
    ic_first_valid_date timestamp NOT NULL,
    ic_last_valid_date timestamp NOT NULL,
    valid_for_today varchar(1) NOT NULL DEFAULT 'N',
    valid_for_ic varchar(1) NOT NULL DEFAULT 'N',
    create_user varchar(30),
    create_date timestamp NOT NULL DEFAULT "sysdate"(),
    update_user varchar(30),
    update_date timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_SPECIALTY_SALES
(
    DATA_SOURCE varchar(20),
    SHIP_TO_ADDRESS_ID int,
    BILL_TO_ADDRESS_ID int,
    CUSTOMER_CODE varchar(20),
    CUSTOMER_NAME varchar(100),
    TRANSACTION_ID varchar(50),
    INVOICE_DATE timestamp,
    PRODUCT_NDC varchar(20),
    PRODUCT_BRAND varchar(50),
    PRODUCT_SIZE int,
    INVOICE_UNIT_PRICE numeric(37,15),
    INVOICE_QUANTITY numeric(37,15),
    INVOICE_AMOUNT numeric(37,15),
    INVOICE_DISCOUNT numeric(37,15),
    CUSTOMER_TYPE_CODE varchar(20),
    PRICE_MATRIX_DEF varchar(20),
    ORDER_TYPE_CODE varchar(20),
    ORDER_TYPE_DESC varchar(50),
    LOB_CODE_DESC varchar(100),
    WHSE_CD varchar(20),
    PARENT_CUSTOMER_CODE varchar(20),
    PARENT_CUSTOMER_NAME varchar(100),
    SHIP_TO_ADDRESS varchar(100),
    SHIP_TO_CITY varchar(50),
    SHIP_TO_STATE varchar(2),
    SHIP_TO_ZIP_CODE varchar(10),
    SHIP_TO_PHONE varchar(50),
    SHIP_TO_FAX varchar(50),
    SHIP_TO_EMAIL varchar(100),
    BILL_TO_ADDRESS varchar(100),
    BILL_TO_CITY varchar(50),
    BILL_TO_STATE varchar(2),
    BILL_TO_ZIP_CODE varchar(10),
    BILL_TO_PHONE varchar(50),
    BILL_TO_FAX varchar(50),
    BILL_TO_EMAIL varchar(100),
    ADJ_INVOICE_UNIT_PRICE numeric(37,15),
    ADJ_INVOICE_AMOUNT numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.stg_onc_call_goals
(
    time_period varchar(20),
    territory_num varchar(8),
    granix_call_goal int,
    treanda_call_goal int,
    applies_from_dt timestamp,
    applies_to_dt timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TW_SPECIALTY_SALES
(
    DATA_SOURCE varchar(20),
    SHIP_TO_ADDRESS_ID int,
    BILL_TO_ADDRESS_ID int,
    CUSTOMER_CODE varchar(20),
    CUSTOMER_NAME varchar(100),
    TRANSACTION_ID varchar(50),
    INVOICE_DATE timestamp,
    PRODUCT_NDC varchar(20),
    PRODUCT_BRAND varchar(50),
    PRODUCT_SIZE int,
    INVOICE_UNIT_PRICE numeric(37,15),
    INVOICE_QUANTITY numeric(37,15),
    INVOICE_AMOUNT numeric(37,15),
    INVOICE_DISCOUNT numeric(37,15),
    CUSTOMER_TYPE_CODE varchar(20),
    PRICE_MATRIX_DEF varchar(20),
    ORDER_TYPE_CODE varchar(20),
    ORDER_TYPE_DESC varchar(50),
    LOB_CODE_DESC varchar(100),
    WHSE_CD varchar(20),
    PARENT_CUSTOMER_CODE varchar(20),
    PARENT_CUSTOMER_NAME varchar(100),
    ADJ_INVOICE_UNIT_PRICE numeric(37,15),
    ADJ_INVOICE_AMOUNT numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_zip_plan_rx_ims
(
    zip varchar(5),
    state varchar(2),
    payer_plan_num varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(50),
    payer_name varchar(100),
    plan_name varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_plan_rx_m_sample
(
    ims_id varchar(10),
    payer_plan_num varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_plan_rx_w_sample
(
    ims_id varchar(10),
    payer_plan_num varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    week_ending date,
    week_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_rx_m_sample
(
    ims_id varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_rx_w_sample
(
    ims_id varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    week_ending date,
    week_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.demo_combined
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10),
    tvcmid numeric(38,0),
    veeva_account_id varchar(18),
    me_num varchar(10),
    specialty varchar(255),
    last_name varchar(80),
    first_name varchar(50),
    mid_name varchar(50),
    address varchar(250),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    phone varchar(10),
    territory_num varchar(8) NOT NULL,
    territory_type varchar(10) NOT NULL,
    address_id numeric(38,0),
    address_source varchar(50),
    mailable char(1) NOT NULL,
    dea_num varchar(9),
    dea_expir_date date,
    pdrp_flag char(1) NOT NULL,
    pdrp_date date,
    np_pa_flag char(1) NOT NULL,
    no_spend char(1) NOT NULL,
    ama_no_contact_flag char(1) NOT NULL,
    email varchar(200),
    degree varchar(50),
    npi varchar(10),
    row_source varchar(30),
    last_build_date date NOT NULL,
    customer_type varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.ic_demo_201612
(
    ic_data_month date,
    sales_force_id varchar(5),
    territory_num varchar(8),
    ims_id varchar(10),
    outlet_code varchar(8),
    va_station_number varchar(10),
    tvcmid float,
    cm_id float,
    specialty varchar(10),
    specialty_source varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    address varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(5),
    address_id float,
    address_source varchar(50),
    pdrp_flag char(1) DEFAULT 'N',
    pdrp_date date,
    np_pa_flag char(1) DEFAULT 'N',
    no_spend char(1) DEFAULT 'n',
    ama_no_contact_flag char(1) DEFAULT 'N',
    row_source varchar(50),
    last_build_date date DEFAULT "sysdate"(),
    azilect_target_flag char(1) DEFAULT 'N',
    copaxone_target_flag char(1) DEFAULT 'N'
);


CREATE TABLE WSMP_ADMIN_ORA.ic_goal_setting_201612
(
    ic_data_month date,
    product_name varchar(50),
    sales_force_id varchar(5),
    area_num varchar(8),
    region_num varchar(8),
    territory_num varchar(8),
    ims_id varchar(10),
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
    row_source varchar(50),
    last_build_date date DEFAULT "sysdate"(),
    product_baseline_secondary numeric(38,0)
);


CREATE TABLE WSMP_ADMIN_ORA.ic_target_201612
(
    ic_data_month date,
    sales_force_id varchar(5),
    territory_num varchar(8),
    ims_id varchar(10),
    product_name varchar(50),
    last_build_date date DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.bag_tjr
(
    BAG_ID int,
    BAG_NAME varchar(100),
    FIRST_VALID_DATE timestamp,
    LAST_VALID_DATE timestamp,
    VALID_FOR_TODAY varchar(1),
    CREATE_USER varchar(30),
    CREATE_DATE timestamp,
    UPDATE_USER varchar(30),
    UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.tmp_12052019_python_lock
(
    lock_name varchar(100),
    lock_time timestamp,
    "uuid" varchar(32),
    ip_address varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.S_CONTACT_X
(
    ROW_ID varchar(15),
    CREATED timestamp,
    CREATED_BY varchar(15),
    LAST_UPD timestamp,
    LAST_UPD_BY varchar(15),
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0),
    CONFLICT_ID varchar(15),
    PAR_ROW_ID varchar(15),
    ATTRIB_08 char(1),
    ATTRIB_09 char(1),
    ATTRIB_10 char(1),
    ATTRIB_11 char(1),
    ATTRIB_12 timestamp,
    ATTRIB_13 timestamp,
    ATTRIB_14 numeric(22,7),
    ATTRIB_15 numeric(22,7),
    ATTRIB_16 numeric(22,7),
    ATTRIB_17 numeric(22,7),
    ATTRIB_18 numeric(22,7),
    ATTRIB_19 numeric(22,7),
    ATTRIB_20 numeric(22,7),
    ATTRIB_21 numeric(22,7),
    ATTRIB_22 numeric(22,7),
    ATTRIB_23 numeric(22,7),
    ATTRIB_24 numeric(22,7),
    ATTRIB_25 numeric(22,7),
    ATTRIB_26 timestamp,
    ATTRIB_27 timestamp,
    ATTRIB_28 timestamp,
    ATTRIB_29 timestamp,
    ATTRIB_30 timestamp,
    ATTRIB_31 timestamp,
    ATTRIB_32 timestamp,
    ATTRIB_33 timestamp,
    ATTRIB_01 varchar(100),
    ATTRIB_02 varchar(100),
    ATTRIB_03 varchar(30),
    ATTRIB_04 varchar(30),
    ATTRIB_05 varchar(30),
    ATTRIB_06 varchar(30),
    ATTRIB_07 varchar(30),
    ATTRIB_34 varchar(50),
    ATTRIB_35 varchar(50),
    ATTRIB_36 varchar(50),
    ATTRIB_37 varchar(50),
    ATTRIB_38 varchar(50),
    ATTRIB_39 varchar(50),
    ATTRIB_40 varchar(50),
    ATTRIB_41 varchar(50),
    ATTRIB_42 varchar(50),
    ATTRIB_43 varchar(50),
    ATTRIB_44 varchar(100),
    ATTRIB_45 varchar(100),
    ATTRIB_46 varchar(100),
    ATTRIB_47 varchar(255),
    ATTRIB_48 varchar(250),
    X_ATTRIB_49 varchar(15),
    X_ATTRIB_50 varchar(15),
    X_ATTRIB_51 varchar(15),
    X_ATTRIB_52 varchar(255),
    X_ATTRIB_53 varchar(255),
    X_ATTRIB_54 varchar(255),
    X_ATTRIB_55 varchar(255),
    X_ATTRIB_56 varchar(100),
    X_ATTRIB_57 varchar(100),
    X_ATTRIB_58 varchar(100),
    X_ATTRIB_59 varchar(50),
    X_ATTRIB_60 varchar(50),
    X_ATTRIB_61 varchar(50),
    X_ATTRIB_62 varchar(50),
    X_ATTRIB_64 timestamp,
    X_ATTRIB_65 timestamp,
    X_ATTRIB_66 timestamp,
    X_ATTRIB_67 timestamp,
    X_ATTRIB_68 numeric(22,7),
    X_ATTRIB_69 char(1),
    X_ATTRIB_70 char(1),
    X_ATTRIB_71 char(1),
    X_ATTRIB_72 varchar(30),
    X_ATTRIB_73 varchar(30),
    ATTRIB_49 varchar(100),
    ATTRIB_50 varchar(100),
    ATTRIB_51 varchar(100),
    ATTRIB_52 varchar(100),
    ATTRIB_53 varchar(100),
    ATTRIB_54 varchar(100),
    ATTRIB_55 varchar(100),
    ATTRIB_56 numeric(22,7),
    ATTRIB_57 numeric(22,7),
    ATTRIB_58 numeric(22,7),
    ATTRIB_59 numeric(22,7),
    ATTRIB_60 numeric(22,7),
    ATTRIB_61 numeric(22,7),
    ATTRIB_62 numeric(22,7),
    ATTRIB_63 numeric(22,7),
    ATTRIB_64 numeric(22,7),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    SUP_PRAC_ADD_ID varchar(50),
    SUP_PRAC_ID varchar(50),
    X_ATTRIB_74 char(1),
    COMPANY_MOBILE varchar(30),
    VM_BOX_NUMBER varchar(10),
    VM_MAIN varchar(30),
    X_ATTRIB_75 numeric(22,7),
    X_ATTRIB_76 numeric(22,7),
    X_ATTRIB_77 numeric(22,7),
    X_ATTRIB_78 numeric(22,7),
    X_ATTRIB_79 numeric(22,7),
    X_ATTRIB_80 varchar(255),
    X_ATTRIB_81 varchar(50),
    X_ATTRIB_82 char(1),
    X_ATTRIB_83 char(1),
    X_ATTRIB_84 timestamp,
    X_ATTRIB_85 timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_plan_rx_m
(
    ims_id varchar(10),
    payer_plan_num varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_rx_m
(
    ims_id varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.stg_asi_ms_rx_cnt
(
    ims_client_num int,
    ims_report_num int,
    sra_1 varchar(10),
    sra_2 varchar(10),
    sra_3 varchar(10),
    sra_4 varchar(10),
    sales_category int,
    rx_type varchar(2),
    ims_product_group_num int,
    filler_01 varchar(10),
    me_num varchar(10),
    data_month varchar(6),
    nrx_01 numeric(9,3),
    nrx_02 numeric(9,3),
    nrx_03 numeric(9,3),
    nrx_04 numeric(9,3),
    nrx_05 numeric(9,3),
    nrx_06 numeric(9,3),
    nrx_07 numeric(9,3),
    nrx_08 numeric(9,3),
    nrx_09 numeric(9,3),
    nrx_10 numeric(9,3),
    nrx_11 numeric(9,3),
    nrx_12 numeric(9,3),
    nrx_13 numeric(9,3),
    nrx_14 numeric(9,3),
    nrx_15 numeric(9,3),
    nrx_16 numeric(9,3),
    nrx_17 numeric(9,3),
    nrx_18 numeric(9,3),
    nrx_19 numeric(9,3),
    nrx_20 numeric(9,3),
    nrx_21 numeric(9,3),
    nrx_22 numeric(9,3),
    nrx_23 numeric(9,3),
    nrx_24 numeric(9,3),
    trx_01 numeric(9,3),
    trx_02 numeric(9,3),
    trx_03 numeric(9,3),
    trx_04 numeric(9,3),
    trx_05 numeric(9,3),
    trx_06 numeric(9,3),
    trx_07 numeric(9,3),
    trx_08 numeric(9,3),
    trx_09 numeric(9,3),
    trx_10 numeric(9,3),
    trx_11 numeric(9,3),
    trx_12 numeric(9,3),
    trx_13 numeric(9,3),
    trx_14 numeric(9,3),
    trx_15 numeric(9,3),
    trx_16 numeric(9,3),
    trx_17 numeric(9,3),
    trx_18 numeric(9,3),
    trx_19 numeric(9,3),
    trx_20 numeric(9,3),
    trx_21 numeric(9,3),
    trx_22 numeric(9,3),
    trx_23 numeric(9,3),
    trx_24 numeric(9,3),
    last_name varchar(25),
    first_name varchar(25),
    mid_name varchar(2),
    address varchar(30),
    city varchar(25),
    state varchar(2),
    zip varchar(5),
    filler_02 varchar(10),
    payer_plan_name varchar(50),
    last_build_date date DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_ACCT_SMART_TO_VEEVA
(
    SMART_DOC_ID varchar(32),
    NAME varchar(200),
    VEEVA_ACCOUNT_ID varchar(18),
    VEEVA_ADDRESS_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_CONT_SMART_TO_VEEVA
(
    SMART_DOC_ID varchar(32),
    FIRST_NAME varchar(200),
    MIDDLE_NAME varchar(200),
    LAST_NAME varchar(200),
    VEEVA_ACCOUNT_ID varchar(18),
    VEEVA_ADDRESS_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.stg_asi_pd_rx_cnt
(
    ims_client_num int,
    ims_report_num int,
    sra_1 varchar(10),
    sra_2 varchar(10),
    sra_3 varchar(10),
    sra_4 varchar(10),
    sales_category int,
    rx_type varchar(2),
    ims_product_group_num int,
    filler_01 varchar(10),
    me_num varchar(10),
    data_month varchar(6),
    nrx_01 numeric(9,3),
    nrx_02 numeric(9,3),
    nrx_03 numeric(9,3),
    nrx_04 numeric(9,3),
    nrx_05 numeric(9,3),
    nrx_06 numeric(9,3),
    nrx_07 numeric(9,3),
    nrx_08 numeric(9,3),
    nrx_09 numeric(9,3),
    nrx_10 numeric(9,3),
    nrx_11 numeric(9,3),
    nrx_12 numeric(9,3),
    nrx_13 numeric(9,3),
    nrx_14 numeric(9,3),
    nrx_15 numeric(9,3),
    nrx_16 numeric(9,3),
    nrx_17 numeric(9,3),
    nrx_18 numeric(9,3),
    nrx_19 numeric(9,3),
    nrx_20 numeric(9,3),
    nrx_21 numeric(9,3),
    nrx_22 numeric(9,3),
    nrx_23 numeric(9,3),
    nrx_24 numeric(9,3),
    trx_01 numeric(9,3),
    trx_02 numeric(9,3),
    trx_03 numeric(9,3),
    trx_04 numeric(9,3),
    trx_05 numeric(9,3),
    trx_06 numeric(9,3),
    trx_07 numeric(9,3),
    trx_08 numeric(9,3),
    trx_09 numeric(9,3),
    trx_10 numeric(9,3),
    trx_11 numeric(9,3),
    trx_12 numeric(9,3),
    trx_13 numeric(9,3),
    trx_14 numeric(9,3),
    trx_15 numeric(9,3),
    trx_16 numeric(9,3),
    trx_17 numeric(9,3),
    trx_18 numeric(9,3),
    trx_19 numeric(9,3),
    trx_20 numeric(9,3),
    trx_21 numeric(9,3),
    trx_22 numeric(9,3),
    trx_23 numeric(9,3),
    trx_24 numeric(9,3),
    last_name varchar(25),
    first_name varchar(25),
    mid_name varchar(2),
    address varchar(30),
    city varchar(25),
    state varchar(2),
    zip varchar(5),
    filler_02 varchar(10),
    payer_plan_name varchar(50),
    last_build_date date DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL2_DETAIL_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    IS_PARENT_CALL_VOD__C numeric(18,0),
    CALL2_VOD__C varchar(18) NOT NULL,
    PRODUCT_VOD__C varchar(18),
    DETAIL_PRIORITY_VOD__C numeric(2,0),
    MOBILE_ID_VOD__C varchar(100),
    OVERRIDE_LOCK_VOD__C varchar(5),
    TYPE_VOD__C varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL2_SAMPLE_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    LASTACTIVITYDATE timestamp,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    ACCOUNT_VOD__C varchar(18),
    CALL_DATE_VOD__C timestamp NOT NULL,
    IS_PARENT_CALL_VOD__C numeric(18,0),
    QUANTITY_VOD__C numeric(6,0) NOT NULL,
    LOT_VOD__C varchar(80),
    MOBILE_ID_VOD__C varchar(100),
    CALL2_VOD__C varchar(18) NOT NULL,
    PRODUCT_VOD__C varchar(18),
    OVERRIDE_LOCK_VOD__C varchar(5),
    DISTRIBUTOR_VOD__C varchar(255),
    ATTENDEE_TYPE_VOD__C varchar(255),
    ENTITY_REFERENCE_ID_VOD__C varchar(100),
    DELIVERY_STATUS_VOD__C varchar(255),
    APPLY_LIMIT_VOD__C varchar(5) NOT NULL,
    LIMIT_APPLIED_VOD__C varchar(5) NOT NULL,
    MANUFACTURER_VOD__C varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_IMS_PRESC_DEMO_M
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    specialty varchar(10),
    specialty_source varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    ims_address varchar(30),
    ims_city varchar(25),
    ims_state varchar(2),
    ims_zip varchar(5),
    ptr_address varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(10),
    ptr_mailable char(1) NOT NULL DEFAULT 'N',
    ptr_address_id numeric(38,0),
    ptr_veeva_address_id varchar(18),
    ptr_address_source varchar(30),
    comp_address varchar(100),
    comp_city varchar(50),
    comp_state varchar(2),
    comp_zip varchar(5),
    comp_mailable char(1) NOT NULL DEFAULT 'N',
    comp_address_id numeric(38,0),
    comp_veeva_address_id varchar(18),
    comp_address_source varchar(50),
    ska_specialty_1 varchar(10),
    ska_specialty_2 varchar(10),
    ska_specialty_3 varchar(10),
    pdrp_flag char(1) NOT NULL DEFAULT 'N',
    pdrp_date date,
    np_pa_flag char(1) NOT NULL DEFAULT 'N',
    no_spend char(1) NOT NULL DEFAULT 'N',
    ama_no_contact_flag char(1) NOT NULL DEFAULT 'N',
    me_num varchar(10),
    dea_num varchar(9),
    dea_expir_date date,
    npi varchar(10),
    cm_id numeric(38,0),
    tvcmid numeric(38,0),
    row_source varchar(50) NOT NULL DEFAULT 'IMS',
    last_build_date date NOT NULL DEFAULT "sysdate"(),
    CONSTRAINT C_PRIMARY PRIMARY KEY (sales_force_id, ims_id) DISABLED
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PRESC_DEMO_M
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    tvcmid numeric(38,0),
    specialty varchar(10),
    specialty_source varchar(10),
    original_ims_specialty varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    ptr_address varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(10),
    ptr_territory_num varchar(8) NOT NULL,
    ptr_mailable char(1) NOT NULL DEFAULT 'N',
    ptr_address_id numeric(38,0),
    ptr_veeva_address_id varchar(18),
    ptr_address_source varchar(30),
    comp_address varchar(100),
    comp_city varchar(50),
    comp_state varchar(2),
    comp_zip varchar(5),
    comp_territory_num varchar(8),
    comp_mailable char(1) NOT NULL DEFAULT 'N',
    comp_address_id numeric(38,0),
    comp_veeva_address_id varchar(18),
    comp_address_source varchar(50),
    npi varchar(10),
    me_num varchar(10),
    dea_num varchar(9),
    dea_expir_date date,
    pdrp_flag char(1) NOT NULL DEFAULT 'N',
    pdrp_date date,
    np_pa_flag char(1) NOT NULL DEFAULT 'N',
    no_spend char(1) NOT NULL DEFAULT 'N',
    ama_no_contact_flag char(1) NOT NULL DEFAULT 'N',
    last_build_date date NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.stg_ptr_universe
(
    sales_force_id varchar(5) NOT NULL,
    product_name varchar(30) NOT NULL,
    ims_id varchar(10) NOT NULL,
    source_table varchar(500) NOT NULL,
    last_build_date timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.ptr_universe
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    last_build_date timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.ptr_tc_rx
(
    ims_id varchar(10) NOT NULL,
    nuv_nrx_3mth numeric(24,6),
    azi_nrx_3mth numeric(24,6),
    amr_nrx_3mth numeric(24,6),
    nuv_trx_3mth numeric(24,6),
    azi_trx_3mth numeric(24,6),
    amr_trx_3mth numeric(24,6),
    nuv_trx_prior_3mth numeric(24,6),
    azi_trx_prior_3mth numeric(24,6),
    amr_trx_prior_3mth numeric(24,6),
    nuv_trx_mth1 numeric(24,6),
    nuv_trx_mth2 numeric(24,6),
    nuv_trx_mth3 numeric(24,6),
    azi_trx_mth1 numeric(24,6),
    azi_trx_mth2 numeric(24,6),
    azi_trx_mth3 numeric(24,6),
    amr_trx_mth1 numeric(24,6),
    amr_trx_mth2 numeric(24,6),
    amr_trx_mth3 numeric(24,6),
    gen_mod_trx_12mth numeric(24,6),
    sleep_trx_12mth numeric(24,6),
    stim_trx_12mth numeric(24,6),
    wake_trx_12mth numeric(24,6),
    carbi_trx_12mth numeric(24,6),
    dopa_trx_12mth numeric(24,6),
    mao_trx_12mth numeric(24,6),
    pd_trx_12mth numeric(24,6),
    brand_mr_trx_12mth numeric(24,6),
    gen_mr_trx_12mth numeric(24,6),
    cycl_hcl_trx_12mth numeric(24,6),
    adj_bsmr_trx_12mth numeric(24,6),
    last_build_date timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.vv_tsf_vod__c
(
    id varchar(18) NOT NULL,
    isdeleted varchar(5) NOT NULL,
    name varchar(80),
    recordtypeid varchar(18),
    createddate timestamp NOT NULL,
    createdbyid varchar(18) NOT NULL,
    lastmodifieddate timestamp NOT NULL,
    lastmodifiedbyid varchar(18) NOT NULL,
    systemmodstamp timestamp NOT NULL,
    mayedit varchar(5) NOT NULL,
    islocked varchar(5) NOT NULL,
    account_vod__c varchar(18) NOT NULL,
    address_vod__c varchar(18),
    last_activity_date_vod__c timestamp,
    my_target_vod__c varchar(5) NOT NULL,
    route_vod__c varchar(255),
    mobile_id_vod__c varchar(100),
    external_id_vod__c varchar(255),
    territory_vod__c varchar(80),
    ytd_activity_vod__c numeric(6,0),
    preferred_account_vod__c varchar(18),
    allowed_products_vod__c varchar(255),
    territory_status_tva__c varchar(255),
    territory_specialty_tva__c varchar(255),
    treats_es_osa_tva__c varchar(5) NOT NULL,
    osa_patients_tva__c numeric(18,0),
    account_status_tva__c varchar(255),
    dea_number_tva__c varchar(9),
    synribo_target_tva__c varchar(255),
    treanda_sbo_tva__c varchar(255),
    trisenox_sbo_tva__c varchar(255),
    appt_index_tva__c varchar(10),
    merged_mvn__c varchar(5) NOT NULL,
    call_plan_designation_tva__c varchar(255),
    campaign_tva__c varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.veeva_bad_details
(
    detail_id varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.TJR_ONC_SALES_ADJUST_ALLOC
(
    ONC_SALES_ADJUST_ID int,
    ACCT_DEMO_ID int,
    ADJ_FACTOR numeric(37,15),
    ADJ_REASON varchar(200),
    CREATE_DATE timestamp,
    CREATE_USER varchar(25),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.ims_rx_ibw_qc_market
(
    market_name varchar(50),
    week_bucket numeric(3,0),
    nrx_status varchar(20),
    nrx_qty numeric(15,6),
    ctrl_nrx_qty numeric(15,6),
    trx_status varchar(20),
    trx_qty numeric(15,6),
    ctrl_trx_qty numeric(15,6),
    last_build_date timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.vv_user
(
    id varchar(18),
    username varchar(80),
    lastname varchar(80),
    firstname varchar(40),
    name varchar(121),
    companyname varchar(80),
    division varchar(80),
    department varchar(80),
    title varchar(80),
    street varchar(255),
    city varchar(40),
    state varchar(80),
    postalcode varchar(20),
    country varchar(80),
    latitude float,
    longitude float,
    email varchar(128),
    emailpreferencesautobcc varchar(5),
    emailpreferencesautobccstayint varchar(5),
    emailpreferencesstayintouchrem varchar(5),
    senderemail varchar(80),
    sendername varchar(80),
    signature varchar(1333),
    stayintouchsubject varchar(80),
    stayintouchsignature varchar(512),
    stayintouchnote varchar(512),
    phone varchar(40),
    fax varchar(40),
    mobilephone varchar(40),
    alias varchar(8),
    communitynickname varchar(40),
    isactive varchar(5),
    timezonesidkey varchar(40),
    userroleid varchar(18),
    localesidkey varchar(40),
    receivesinfoemails varchar(5),
    receivesadmininfoemails varchar(5),
    emailencodingkey varchar(40),
    usertype varchar(40),
    languagelocalekey varchar(40),
    employeenumber varchar(20),
    delegatedapproverid varchar(18),
    managerid varchar(18),
    lastlogindate timestamp,
    createddate timestamp,
    createdbyid varchar(18),
    lastmodifieddate timestamp,
    lastmodifiedbyid varchar(18),
    systemmodstamp timestamp,
    offlinetrialexpirationdate timestamp,
    offlinepdatrialexpirationdate timestamp,
    userpermissionsmarketinguser varchar(5),
    userpermissionsofflineuser varchar(5),
    userpermissionswirelessuser varchar(5),
    userpermissionsavantgouser varchar(5),
    userpermscallcenterautologin varchar(5),
    userpermissionsmobileuser varchar(5),
    userpermissionssfcontentuser varchar(5),
    userpermissionsinteractionuser varchar(5),
    userpermschatteranswersuser varchar(5),
    forecastenabled varchar(5),
    userprefsactivityreminderspopu varchar(5),
    userprefseventreminderscheckbo varchar(5),
    userprefstaskreminderscheckbox varchar(5),
    userprefsremindersoundoff varchar(5),
    userprefshidecsngetchattermobi varchar(5),
    userprefshidecsndesktoptask varchar(5),
    userpreferencesoptoutoftouch varchar(5),
    userprefsshowtitletoexternalus varchar(5),
    userprefsshowmanagertoexternal varchar(5),
    userprefsshowemailtoexternalus varchar(5),
    userprefsshowworkphonetoextern varchar(5),
    userprefsshowmobilephonetoexte varchar(5),
    userprefsshowfaxtoexternaluser varchar(5),
    userprefsshowstreetaddresstoex varchar(5),
    userprefsshowcitytoexternaluse varchar(5),
    userprefsshowstatetoexternalus varchar(5),
    userprefsshowpostalcodetoexter varchar(5),
    userprefsshowcountrytoexternal varchar(5),
    userprefsshowprofilepictoguest varchar(5),
    userprefsshowtitletoguestusers varchar(5),
    userprefsshowcitytoguestusers varchar(5),
    userprefsshowstatetoguestusers varchar(5),
    userprefsshowpostalcodetoguest varchar(5),
    userprefsshowcountrytoguestuse varchar(5),
    contactid varchar(18),
    accountid varchar(18),
    callcenterid varchar(18),
    extension varchar(40),
    federationidentifier varchar(512),
    lastvieweddate timestamp,
    lastreferenceddate timestamp,
    last_mobile_connect_vod__c timestamp,
    last_tablet_connect_vod__c timestamp,
    last_mobile_connect_version varchar(50),
    last_tablet_connect_version varchar(50),
    last_mobile_sync_vod__c timestamp,
    last_tablet_sync_vod__c timestamp,
    raiselogginglevel_vod__c varchar(255),
    senddetailedlog_vod__c varchar(5),
    last_blackberry_connect_vod__c timestamp,
    last_blackberry_connect_versio varchar(50),
    last_blackberry_sync_vod__c timestamp,
    force_full_refresh_vod__c varchar(5),
    override_systemmodstamp_timest timestamp,
    facetime_email_vod__c varchar(100),
    facetime_phone_vod__c varchar(40),
    product_expertise_vod__c varchar(4000),
    available_vod__c varchar(255),
    available_last_update_vod__c timestamp,
    last_ipad_connect_version varchar(50),
    last_ipad_connect_vod__c timestamp,
    last_ipad_sync_vod__c timestamp,
    inventory_order_allocation_gro varchar(80),
    concur_user_id_vod__c varchar(255),
    external_id_tva__c varchar(30),
    last_ipad_ios_version_vod__c varchar(50),
    veeva_id__c varchar(1300),
    login_id_tva__c varchar(30),
    primary_territory_vod__c varchar(80),
    analytics_admin_vod__c varchar(5),
    content_admin_vod__c varchar(5),
    upload_vtrans_vod__c varchar(5),
    can_sample_tva__c varchar(5),
    do_not_modify_tva__c varchar(5),
    profile_name_vod__c varchar(1300)
);


CREATE TABLE WSMP_ADMIN_ORA.vv_key_message_vod__c
(
    id varchar(18),
    ownerid varchar(18),
    isdeleted varchar(5),
    name varchar(80),
    createddate timestamp,
    createdbyid varchar(18),
    lastmodifieddate timestamp,
    lastmodifiedbyid varchar(18),
    systemmodstamp timestamp,
    mayedit varchar(5),
    islocked varchar(5),
    lastvieweddate timestamp,
    lastreferenceddate timestamp,
    description_vod__c varchar(255),
    product_vod__c varchar(18),
    product_strategy_vod__c varchar(18),
    display_order_vod__c float,
    active_vod__c varchar(5),
    category_vod__c varchar(255),
    vehicle_vod__c varchar(255),
    clm_id_vod__c varchar(100),
    custom_reaction_vod__c varchar(255),
    slide_version_vod__c varchar(100),
    language_vod__c varchar(255),
    media_file_crc_vod__c varchar(255),
    media_file_name_vod__c varchar(255),
    media_file_size_vod__c float,
    segment_vod__c varchar(80),
    group_to_share_to__c varchar(255),
    is_shared_resource_vod__c varchar(5),
    shared_resource_vod__c varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.sp_pharm_address_lookups
(
    RUN_ID int,
    SOURCE_ID varchar(50),
    TEVA_TRANSACTION_CODE varchar(2) DEFAULT 'I',
    TEVA_TRANSMISSION_DATE varchar(10) DEFAULT to_char("sysdate"(), 'MM-DD-YYYY'),
    TEVA_PROF_ACCT_ID varchar(16),
    TEVA_TERRITORY_ID varchar(12) DEFAULT 'TERR',
    TEVA_ORG_ID varchar(16),
    TEVA_USER_ID varchar(8) DEFAULT 'TEVA',
    TEVA_PREFIX varchar(15),
    TEVA_FIRST_NAME varchar(25),
    TEVA_MID_NAME varchar(20),
    TEVA_LAST_NAME varchar(25),
    TEVA_SUFFIX varchar(5),
    TEVA_PRIMARY_SPECIALTY varchar(3),
    TEVA_SECONDARY_SPECIALTY varchar(3),
    TEVA_TERTIARY_SPECIALTY varchar(3),
    TEVA_PROFESSIONAL_ID varchar(12),
    TEVA_PROF_ID_SOURCE varchar(2),
    TEVA_CERTIFICATION_CODE varchar(15),
    TEVA_ACCT_SUB_TYPE varchar(30),
    TEVA_PROF_SUB_TYPE varchar(15),
    TEVA_BIRTH_YEAR varchar(4),
    TEVA_BIRTH_MONTH varchar(2),
    TEVA_BIRTH_DAY varchar(2),
    TEVA_GENDER varchar(1),
    TEVA_LAST_CALL_DATE varchar(10),
    TEVA_STATUS varchar(2),
    TEVA_STATE_LICENSE_NUM varchar(20),
    TEVA_STATE_LICENSE_EXPIR_DATE varchar(10),
    TEVA_CALLS_YTD varchar(4),
    TEVA_EMAIL varchar(100),
    TEVA_FAX varchar(20),
    TEVA_PROFESSIONAL_ID2 varchar(12),
    TEVA_PROF_ID_SOURCE2 varchar(2),
    TEVA_CALL_LOCATION varchar(1),
    TEVA_ADDRESS1 varchar(50),
    TEVA_ADDRESS2 varchar(50),
    TEVA_ADDRESS3 varchar(50),
    TEVA_ADDRESS4 varchar(50),
    TEVA_CITY varchar(30),
    TEVA_STATE varchar(15),
    TEVA_ZIP varchar(10),
    TEVA_PHONE varchar(20),
    TEVA_DEA_NUM varchar(9),
    TEVA_IMS_ID varchar(7),
    TEVA_IMS_LOCATION varchar(3),
    TEVA_DEA_STATE_LIC_VAL varchar(1),
    TEVA_CLIENT varchar(10) DEFAULT 'TBSP',
    TEVA_TRANSACTION_TYPE varchar(1),
    TEVA_SERVICE varchar(15) DEFAULT 'DrScrub',
    TEVA_DEA_EXPIR_DATE varchar(10),
    TEVA_PRESCRIBER_STATUS varchar(5),
    TEVA_DEA_SCHEDULE varchar(20),
    TEVA_DEA_AUTH_STATUS varchar(5),
    TEVA_DEA_AUTH_STATUS_DATE varchar(10),
    TEVA_STATE_LIC_AUTH_STATUS varchar(5),
    TEVA_STATE_LIC_AUTH_STAT_DT varchar(10),
    IMS_TRANSACTION_CODE varchar(2),
    IMS_TRANSMISSION_DATE varchar(10),
    IMS_PROF_ACCT_ID varchar(16),
    IMS_TERRITORY_ID varchar(12),
    IMS_ORG_ID varchar(16),
    IMS_USER_ID varchar(8),
    IMS_PREFIX varchar(15),
    IMS_FIRST_NAME varchar(25),
    IMS_MID_NAME varchar(20),
    IMS_LAST_NAME varchar(25),
    IMS_SUFFIX varchar(5),
    IMS_PRIMARY_SPECIALTY varchar(3),
    IMS_SECONDARY_SPECIALTY varchar(3),
    IMS_TERTIARY_SPECIALTY varchar(3),
    IMS_PROFESSIONAL_ID varchar(12),
    IMS_PROF_ID_SOURCE varchar(2),
    IMS_CERTIFICATION_CODE varchar(15),
    IMS_ACCT_SUB_TYPE varchar(30),
    IMS_PROF_SUB_TYPE varchar(15),
    IMS_BIRTH_YEAR varchar(4),
    IMS_BIRTH_MONTH varchar(2),
    IMS_BIRTH_DAY varchar(2),
    IMS_GENDER varchar(1),
    IMS_LAST_CALL_DATE varchar(10),
    IMS_STATUS varchar(2),
    IMS_STATE_LICENSE_NUM varchar(20),
    IMS_STATE_LICENSE_EXPIR_DATE varchar(10),
    IMS_CALLS_YTD varchar(4),
    IMS_EMAIL varchar(100),
    IMS_FAX varchar(20),
    IMS_NPI varchar(12),
    IMS_FILLER_03 varchar(2),
    IMS_CALL_LOCATION varchar(1),
    IMS_ADDRESS1 varchar(50),
    IMS_ADDRESS2 varchar(50),
    IMS_ADDRESS3 varchar(50),
    IMS_ADDRESS4 varchar(50),
    IMS_CITY varchar(30),
    IMS_STATE varchar(15),
    IMS_ZIP varchar(10),
    IMS_PHONE varchar(20),
    IMS_DEA_NUM varchar(9),
    IMS_IMS_ID varchar(7),
    IMS_IMS_LOCATION varchar(3),
    IMS_DEA_STATE_LIC_VAL varchar(1),
    IMS_CLIENT varchar(10),
    IMS_TRANSACTION_TYPE varchar(1),
    IMS_SERVICE varchar(15),
    IMS_DEA_EXPIR_DATE varchar(10),
    IMS_PRESCRIBER_STATUS varchar(5),
    IMS_DEA_SCHEDULE varchar(20),
    IMS_DEA_AUTH_STATUS varchar(5),
    IMS_DEA_AUTH_STATUS_DATE varchar(10),
    IMS_STATE_LIC_AUTH_STATUS varchar(5),
    IMS_STATE_LIC_AUTH_STAT_DT varchar(10),
    CREATE_DATE timestamp,
    ROW_SOURCE varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_ACCOUNT_TARGETS
(
    SALES_FORCE_ID varchar(5) NOT NULL,
    PRODUCT_NAME varchar(20) NOT NULL,
    ACCT_DEMO_ID int NOT NULL,
    IMS_OUTLET_CODE varchar(10),
    TARGET_TYPE varchar(10) NOT NULL,
    TARGET_VALUE varchar(15) NOT NULL,
    APPLIES_FROM_DATE timestamp NOT NULL,
    APPLIES_TO_DATE timestamp,
    ACTIVE_IND varchar(1) NOT NULL,
    DATA_MTH_IND varchar(1) NOT NULL,
    SYSTEM_START_DATE timestamp,
    SYSTEM_END_DATE timestamp,
    END_REASON varchar(30),
    CREATE_DATE timestamp,
    UPDATE_DATE timestamp,
    VEEVA_ACCOUNT_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.AHM_SALE_FORCE_ROSTER
(
    EMPLOYEE_ID varchar(50),
    USERNAME varchar(15),
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(50),
    SALUTATION varchar(15),
    SUFFIX varchar(40),
    TITLE varchar(100),
    TERRITORY varchar(25),
    TERRITORY_NAME varchar(60),
    MANAGER_TERRITORY varchar(25),
    TEAM varchar(100),
    BUSINESS_LINE_1_ADDR varchar(200),
    BUSINESS_LINE_2_ADDR varchar(200),
    BUSINESS_LINE_3_ADDR varchar(200),
    BUSINESS_CITY varchar(50),
    BUSINESS_STATE varchar(50),
    BUSINESS_POSTAL_CODE varchar(50),
    BUSINESS_COUNTRY_CODE varchar(2),
    HOME_LINE_1_ADDR varchar(200),
    HOME_LINE_2_ADDR varchar(200),
    HOME_LINE_3_ADDR varchar(200),
    HOME_CITY varchar(50),
    HOME_STATE varchar(50),
    HOME_POSTAL_CODE varchar(50),
    HOME_COUNTRY_CODE varchar(2),
    CORRESPONDENCE_ADDRESS varchar(25),
    BUSINESS_PHONE varchar(20),
    BUSINESS_PHONE_EXTENSION varchar(50),
    BUSINESS_FAX varchar(20),
    VOICE_MAIL varchar(20),
    MOBILE_PHONE varchar(20),
    HOME_PHONE varchar(20),
    HOME_FAX varchar(20),
    CORRESPONDENCE_PHONE varchar(25),
    BUSINESS_EMAIL varchar(200),
    HOME_EMAIL varchar(200),
    CORRESPONDENCE_EMAIL varchar(25),
    COST_CENTER varchar(50),
    HIRE_DT timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DW_ONC_DMD_SALES_MONTHLY
(
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    MTH timestamp,
    BUCKET numeric(3,0),
    SOURCE_TRX_QTY int,
    SOURCE_TRX_DOL numeric(21,2),
    ADJ_TRX_QTY int,
    ADJ_TRX_DOL int,
    REPORTED_TRX_QTY int,
    REPORTED_TRX_DOL numeric(21,2),
    DATA_DATE timestamp,
    CREATE_DATE timestamp,
    ROW_SOURCE varchar(30),
    REPORTED_TRX_STRENGTH_UNIT int,
    basket_id int
);


CREATE TABLE WSMP_ADMIN_ORA.DW_ONC_DMD_SALES_WEEKLY
(
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    WEEK timestamp,
    BUCKET int,
    SOURCE_TRX_QTY int,
    SOURCE_TRX_DOL numeric(21,2),
    ADJ_TRX_QTY varchar(10),
    ADJ_TRX_DOL varchar(10),
    REPORTED_TRX_QTY int,
    REPORTED_TRX_DOL numeric(21,2),
    DATA_DATE timestamp,
    CREATE_DATE timestamp,
    REPORTED_TRX_STRENGTH_UNIT int,
    basket_id int
);


CREATE TABLE WSMP_ADMIN_ORA.drm45_product_2014_upd
(
    MARKET_NAME varchar(50),
    PRODUCT_CODE varchar(50),
    PRODUCT_NAME varchar(50),
    LOAD_TO_DB varchar(1),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    IMS_CLIENT_NUM_W numeric(3,0),
    IMS_REPORT_NUM_W_CNT numeric(2,0),
    IMS_REPORT_NUM_W_QTY numeric(2,0),
    IMS_CLIENT_NUM_M numeric(3,0),
    IMS_REPORT_NUM_M_CNT numeric(2,0),
    IMS_REPORT_NUM_M_QTY numeric(2,0),
    REPORT_NUM_PRODUCT_GROUP_W varchar(100),
    REPORT_NUM_PRODUCT_GROUP_M varchar(100),
    IMS_CLIENT_NUM_2013 varchar(3),
    IMS_REPORT_NUM_2013 varchar(2)
);


CREATE TABLE WSMP_ADMIN_ORA.I_CONTACT_DATA_TBL
(
    IMS_ID varchar(10),
    VEEVA_ACCOUNT_ID varchar(18),
    NUVIGIL_DNC_FLAG varchar(1),
    FENTORA_DNC_FLAG varchar(1),
    DNP_FLAG varchar(1),
    TIRF_REMS_FLAG varchar(1),
    TIRF_REMS_EFFECTIVE_DATE timestamp,
    TIRF_REMS_EXPIRATION_DATE timestamp,
    PARAGARD_SEGMENT varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.ic_rx_201612
(
    ic_data_month date,
    product_name varchar(50),
    sales_force_id varchar(5),
    area_num varchar(8),
    region_num varchar(8),
    territory_num varchar(8),
    ims_id varchar(10),
    outlet_code varchar(8),
    va_station_number varchar(10),
    dnc_flag char(1),
    dnp_flag char(1),
    month_ending date,
    month_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    include_in_nation_rollup char(1),
    include_in_area_rollup char(1),
    include_in_region_rollup char(1),
    row_source varchar(50),
    last_build_date date
);


CREATE TABLE WSMP_ADMIN_ORA.tmp_rep_status
(
    employee_id varchar(100),
    rms_territory_number__c varchar(255),
    rms_territory_name__c varchar(255),
    assignment_start_Date__c varchar(255),
    assignment_End_date__c varchar(255),
    assignment_status__c varchar(255),
    first_name varchar(100),
    last_name varchar(100),
    rep_type varchar(10),
    hire_date date,
    original_hire_date date,
    separation_date__c varchar(255),
    end_reason varchar(4),
    id varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.AHM_POSTAL_CODE_TERRITORY_XREF
(
    COUNTRY_CODE varchar(2),
    POSTAL_CODE varchar(50),
    TERRITORY varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.AILERON_FACILITY
(
    POS varchar(10) NOT NULL,
    NAME varchar(100),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    ZIP4 varchar(4),
    PHONE varchar(20),
    FAX varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.CHANGED_IMS_ID_DEA_NUM
(
    IMS_ID varchar(10),
    DEA_NUM varchar(9),
    CHANGED_TO_IMS_ID varchar(10),
    ALL_DEA_CHANGED_TO_ONE_IMS_ID varchar(1),
    CHANGED_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.CHANGED_IMS_ID_NPI
(
    IMS_ID varchar(10),
    NPI varchar(10),
    CHANGED_TO_IMS_ID varchar(10),
    CHANGED_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DCA_DRUG_ROLLUP
(
    CORP_NDC_NBR char(12) NOT NULL,
    ROLLUP_NAME varchar(60) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.DCA_PLAN
(
    MCO_ID varchar(20) NOT NULL,
    MCO_STD_NAM varchar(250) NOT NULL,
    MCO_STD_ADDR_TXT varchar(4000),
    MCO_STD_CITY_NAM varchar(30),
    MCO_STD_ST_CDE varchar(2),
    MCO_STD_ZIP_CDE char(5),
    MCO_ORG_TYP_CDE varchar(10) NOT NULL,
    MCO_ORG_TYP_DESC varchar(45) NOT NULL,
    MCO_ROLE_TYP_CDE varchar(10) NOT NULL,
    MCO_ROLE_TYP_DESC varchar(45) NOT NULL,
    NTNL_ID varchar(20),
    NTNL_STD_NAM varchar(250),
    NTNL_STD_ADDR_TXT varchar(4000),
    NTNL_STD_CITY_NAM varchar(30),
    NTNL_STD_ST_CDE varchar(2),
    NTNL_STD_ZIP_CDE char(5),
    NTNL_ORG_TYP_CDE varchar(10),
    NTNL_ORG_TYP_DESC varchar(45),
    NTNL_ROLE_TYP_CDE varchar(10),
    NTNL_ROLE_TYP_DESC varchar(45),
    RGNL_ID varchar(20),
    RGNL_STD_NAM varchar(250),
    RGNL_STD_ADDR_TXT varchar(4000),
    RGNL_STD_CITY_NAM varchar(30),
    RGNL_STD_ST_CDE varchar(2),
    RGNL_STD_ZIP_CDE char(5),
    RGNL_ORG_TYP_CDE varchar(10),
    RGNL_ORG_TYP_DESC varchar(45),
    RGNL_ROLE_TYP_CDE varchar(10),
    RGNL_ROLE_TYP_DESC varchar(45),
    BADMIN_ID varchar(20),
    BADMIN_STD_NAM varchar(250),
    BADMIN_STD_CITY_NAM varchar(30),
    BADMIN_STD_ST_CDE varchar(2),
    BADMIN_STD_ZIP_CDE char(5),
    BADMIN_ORG_TYP_CDE varchar(10),
    BADMIN_ORG_TYP_DESC varchar(45),
    PLAN_ID varchar(20) NOT NULL,
    PLAN_STD_NAM varchar(250) NOT NULL,
    PLAN_ADDR_TXT varchar(4000),
    PLAN_CITY_NAM varchar(30),
    PLAN_ST_CDE varchar(2),
    PLAN_ZIP_CDE char(5),
    PLAN_TYP_CDE varchar(10),
    PLAN_TYP_DESC varchar(255),
    PLAN_SUB_TYP_CDE varchar(10),
    PLAN_SUB_TYP_DESC varchar(255),
    PLAN_PYMT_TYP_CDE varchar(10),
    PLAN_PYMT_TYP_DESC varchar(255),
    ROLLUP_MCO_ID varchar(20) NOT NULL,
    ROLLUP_MCO_STD_NAM varchar(250) NOT NULL,
    CREATE_DATE timestamp NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.DDD_DOD_COMP_OUTLETS
(
    OUTLET_CODE varchar(10) NOT NULL,
    TERRITORY_NUM varchar(8) NOT NULL,
    ACTIVE_IND varchar(1),
    CREATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_CITY_STATE_ZIP
(
    CITY varchar(30),
    STATE varchar(2),
    ZIP varchar(5) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_COMP_ADDRESS_FROZEN
(
    PERIOD varchar(9),
    SALES_FORCE_ID varchar(5),
    COMP_TERRITORY_NUM varchar(8),
    COMP_TERRITORY_TYPE varchar(10),
    IMS_ID varchar(10),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(25),
    MID_NAME varchar(2),
    COMP_ADDRESS varchar(100),
    COMP_CITY varchar(50),
    COMP_STATE varchar(2),
    COMP_ZIP varchar(5),
    COMP_ADDRESS_SOURCE varchar(30),
    FROZEN_SOURCE varchar(30),
    FROZEN_REASON varchar(100),
    FROZEN_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_COMP_ALIGNMENT_EXCEPTIONS
(
    SALES_FORCE_ID varchar(5) NOT NULL,
    TERRITORY_NUM varchar(8) NOT NULL,
    IMS_ID varchar(10) NOT NULL,
    LAST_NAME varchar(80),
    FIRST_NAME varchar(25),
    ADDRESS varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    NOTES varchar(255),
    REQUESTED_BY varchar(50) NOT NULL,
    CREATE_DATE timestamp,
    ACTIVE_IND varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_CSF_SALES_ROSTER_TEVA
(
    EMPLOYEE_ID varchar(7),
    TERRITORY_NUM varchar(225) NOT NULL,
    TERRITORY_NAME varchar(255),
    SALES_FORCE_ID varchar(5) NOT NULL,
    FULL_NAME varchar(152) NOT NULL,
    LAST_NAME varchar(50) NOT NULL,
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(50),
    ADDRESS_LINE1 varchar(50),
    ADDRESS_LINE2 varchar(50),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(20),
    BUS_ADDRESS_LINE1 varchar(50),
    BUS_ADDRESS_LINE2 varchar(50),
    BUS_CITY varchar(50),
    BUS_STATE varchar(2),
    BUS_ZIP varchar(20),
    SHIP_ADDRESS_LINE1 varchar(50),
    SHIP_ADDRESS_LINE2 varchar(50),
    SHIP_CITY varchar(50),
    SHIP_STATE varchar(2),
    SHIP_ZIP varchar(20),
    BUSINESS_PHONE varchar(45),
    HOME_PHONE varchar(45),
    CELL_PHONE varchar(45),
    FAX varchar(45),
    VOICE_MAIL_EXT varchar(45),
    EMAIL varchar(255),
    HIRE_DATE timestamp,
    BIRTHDAY timestamp,
    TITLE varchar(50),
    REP_TYPE varchar(3),
    AREA_TRAINER varchar(1),
    USERNAME varchar(15),
    OUT_OF_TERRITORY varchar(1),
    PARENT_TERRITORY_NUM varchar(15),
    LAST_BUILD_DATE timestamp,
    COMPANY_CD varchar(10),
    ORIG_HIRE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_DDD_CATEGORY
(
    CATEGORY_CODE varchar(2) NOT NULL,
    CATEGORY_DESC varchar(30),
    CATEGORY_DEFN varchar(300)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_DDD_SUBCATEGORY
(
    SUBCATEGORY_CODE varchar(2) NOT NULL,
    CATEGORY_CODE varchar(2),
    COT_CODE varchar(2),
    MAILORDER_FLAG varchar(1),
    NONRETAIL_FLAG varchar(1),
    OUTLET_EXAMPLE varchar(50),
    OUTLET_DESC varchar(100),
    OUTLET_DEFN varchar(155),
    MDM_FLAG varchar(1),
    ADM_FLAG varchar(1),
    ONC_SUBCAT_GROUP varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_INTERRUPTED_OUTLETS
(
    IMS_OUTLET_NUMBER varchar(8) NOT NULL,
    DATA_MONTH_ADDED timestamp,
    REASON varchar(50),
    STATUS char(1),
    STATUS_NOTE varchar(150),
    ADD_DATE timestamp,
    ADD_USER varchar(30),
    CHANGE_DATE timestamp,
    CHANGE_USER varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_MODEL_PAYMENT_METHOD
(
    MODEL varchar(100) NOT NULL,
    PAYMENT_METHOD varchar(250)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_NORMALIZATION_FACTOR
(
    PRODUCT_CODE varchar(6) NOT NULL,
    DIVISOR numeric(37,15) NOT NULL,
    MULTIPLIER numeric(37,15),
    CREATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_WEEK_BUCKETS
(
    IMS_BUCKET numeric(3,0) NOT NULL,
    MONTH_ENDING timestamp,
    MONTH_BUCKET numeric(3,0),
    SPLIT_WEEK_ENDING timestamp,
    WEEK_ENDING timestamp,
    WEEK_BUCKET numeric(3,0),
    FULL_MONTH varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_SALES_ADJUST_TYPE
(
    ADJ_CODE varchar(10) NOT NULL,
    DESCRIPTION varchar(50) NOT NULL,
    ACT_PERIOD_TYPE varchar(10) NOT NULL,
    ADJ_TYPE varchar(10) NOT NULL,
    ACCT_ALLOC_IND varchar(1) NOT NULL,
    SALES_BASE_SOURCE varchar(10) NOT NULL,
    UNREPT_SALES_TYPE varchar(10),
    SALES_PROC_TYPE varchar(10) NOT NULL,
    ADJ_BASE_TYPE varchar(10) NOT NULL,
    ADJ_FREQ_TYPE varchar(10) NOT NULL,
    NOTE varchar(200),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"(),
    CREATE_USER varchar(30) NOT NULL DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_REPORT_DECILE
(
    CATEGORY varchar(100) NOT NULL,
    ROLLUP_NAME varchar(50) NOT NULL,
    ACTIVE_IND varchar(1) NOT NULL,
    LAST_UPD_DATE timestamp NOT NULL,
    RX_TABLE varchar(30),
    CALCULATE_INDIVIDUAL_MONTHS varchar(1),
    PDRP_DISPLAY_IND varchar(1),
    APPLY_MULTIPLIER varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_REPORT_ROLLUP
(
    CATEGORY varchar(100) NOT NULL,
    PRODUCT_CODE varchar(20) NOT NULL,
    ROLLUP_NAME varchar(50) NOT NULL,
    ACTIVE_IND varchar(1) NOT NULL,
    LAST_UPD_DATE timestamp NOT NULL,
    MARKET_CODE varchar(10),
    MULTIPLIER numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_US_STATES
(
    STATE_CODE varchar(2) NOT NULL,
    STATE_NAME varchar(50) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_VA_STATION
(
    VISN varchar(2),
    STATION_NUMBER varchar(10) NOT NULL,
    STATION varchar(50),
    STATION_TYPE varchar(10),
    ADDRESS varchar(50),
    CITY varchar(30),
    STATE varchar(2),
    ZIP varchar(5),
    CMOP varchar(20),
    CMOP_DATE varchar(10),
    CREATE_DATE timestamp,
    LAST_UPD_DATE timestamp,
    STANDARD_ZIP varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.DRM45_PRODUCT_2014
(
    MARKET_NAME varchar(50),
    PRODUCT_CODE varchar(50),
    PRODUCT_NAME varchar(50),
    LOAD_TO_DB varchar(1),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    IMS_CLIENT_NUM_W numeric(3,0),
    IMS_REPORT_NUM_W_CNT numeric(2,0),
    IMS_REPORT_NUM_W_QTY numeric(2,0),
    IMS_CLIENT_NUM_M numeric(3,0),
    IMS_REPORT_NUM_M_CNT numeric(2,0),
    IMS_REPORT_NUM_M_QTY numeric(2,0),
    REPORT_NUM_PRODUCT_GROUP_W varchar(100),
    REPORT_NUM_PRODUCT_GROUP_M varchar(100),
    IMS_CLIENT_NUM_2013 varchar(3),
    IMS_REPORT_NUM_2013 varchar(2)
);


CREATE TABLE WSMP_ADMIN_ORA.DRM45_ROLLUP
(
    WK_PRODUCT_CODE varchar(50) NOT NULL,
    ROLLUP_WK_PRODUCT_CODE varchar(50) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.DW_PRESC_RX_PHARMACY
(
    IMS_ID varchar(10),
    PHARMACY varchar(20),
    PRODUCT_CODE varchar(6),
    MONTH_ENDING timestamp,
    MONTH_BUCKET numeric(3,0),
    COMP_MONTH_ENDING timestamp,
    COMP_MONTH_BUCKET numeric(3,0),
    TRX_CNT numeric(12,6),
    TRX_QTY numeric(12,3),
    SALES_CATEGORY varchar(2) DEFAULT '02',
    RX_ID numeric(10,0) NOT NULL,
    GEORGE_IMS_CLIENT_NUM varchar(3),
    IMS_REPORT_NUM varchar(2),
    IMS_PRODUCT_GROUP_NUM varchar(9)
);


CREATE TABLE WSMP_ADMIN_ORA.FOURTH_SALE_FORCE_ROSTER
(
    EMPLOYEE_ID varchar(50),
    USERNAME varchar(15),
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(50),
    SALUTATION varchar(15),
    SUFFIX varchar(40),
    TITLE varchar(100),
    TERRITORY varchar(25),
    TERRITORY_NAME varchar(100),
    MANAGER_TERRITORY varchar(25),
    TEAM varchar(100),
    BUSINESS_LINE_1_ADDR varchar(200),
    BUSINESS_LINE_2_ADDR varchar(200),
    BUSINESS_LINE_3_ADDR varchar(200),
    BUSINESS_CITY varchar(50),
    BUSINESS_STATE varchar(50),
    BUSINESS_POSTAL_CODE varchar(50),
    BUSINESS_COUNTRY_CODE varchar(2),
    HOME_LINE_1_ADDR varchar(200),
    HOME_LINE_2_ADDR varchar(200),
    HOME_LINE_3_ADDR varchar(200),
    HOME_CITY varchar(50),
    HOME_STATE varchar(50),
    HOME_POSTAL_CODE varchar(50),
    HOME_COUNTRY_CODE varchar(2),
    CORRESPONDENCE_ADDRESS varchar(25),
    BUSINESS_PHONE varchar(20),
    BUSINESS_PHONE_EXTENSION varchar(50),
    BUSINESS_FAX varchar(20),
    VOICE_MAIL varchar(20),
    MOBILE_PHONE varchar(20),
    HOME_PHONE varchar(20),
    HOME_FAX varchar(20),
    CORRESPONDENCE_PHONE varchar(25),
    BUSINESS_EMAIL varchar(200),
    HOME_EMAIL varchar(200),
    CORRESPONDENCE_EMAIL varchar(25),
    COST_CENTER varchar(50),
    HIRE_DT timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL_TITLE
(
    TITLE_GROUP_CODE varchar(10) NOT NULL,
    TITLE_GROUP_DESC varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.I_REMS_PHARMACY
(
    ENROLLMENT_ID varchar(20) NOT NULL,
    PHARMACY_TYPE varchar(20) NOT NULL,
    PHARMACY_NAME varchar(200) NOT NULL,
    STD_ADDRESS varchar(125),
    STD_CITY varchar(100),
    STD_STATE varchar(2),
    STD_ZIP5 varchar(5),
    STD_ZIP4 varchar(4),
    ADDRESS_CERTIFIED varchar(1),
    PHONE varchar(10),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    STOCKED_LAST_6_MONTHS varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.I_REMS_PRESCRIBER
(
    ENROLLMENT_ID varchar(20) NOT NULL,
    LAST_NAME varchar(40) NOT NULL,
    DEA_NUM varchar(20) NOT NULL,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.KC_ZIP_TO_TERRITORY
(
    ZIP varchar(5) NOT NULL,
    CITY varchar(50),
    STATE varchar(2),
    TERRITORY_NUM varchar(8) NOT NULL,
    IS_A_MIRROR char(1) DEFAULT 'N',
    MIRROR_TERRITORY_NUM varchar(8),
    TERRITORY_NAME varchar(50),
    AREA_NAME varchar(50),
    REGION_NAME varchar(50),
    SALES_FORCE_ID varchar(5),
    ORGANIZATION_CODE varchar(200),
    COMMENTS varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.MARKET_PRESC_ZIP_DIVISOR
(
    MARKET_NAME varchar(75) NOT NULL,
    IMS_ID varchar(10) NOT NULL,
    STATE varchar(2),
    ZIP varchar(5) NOT NULL,
    DIVISOR numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.MARKET_SALES_FORCE
(
    MARKET_NAME varchar(75) NOT NULL,
    SALES_FORCE_ID varchar(5) NOT NULL,
    PRIMARY_SALES_FORCE varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.MV_26WEEKS
(
    WK01 timestamp,
    WK02 timestamp,
    WK03 timestamp,
    WK04 timestamp,
    WK05 timestamp,
    WK06 timestamp,
    WK07 timestamp,
    WK08 timestamp,
    WK09 timestamp,
    WK10 timestamp,
    WK11 timestamp,
    WK12 timestamp,
    WK13 timestamp,
    WK14 timestamp,
    WK15 timestamp,
    WK16 timestamp,
    WK17 timestamp,
    WK18 timestamp,
    WK19 timestamp,
    WK20 timestamp,
    WK21 timestamp,
    WK22 timestamp,
    WK23 timestamp,
    WK24 timestamp,
    WK25 timestamp,
    WK26 timestamp,
    WK27 timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.MV_36MONTHS
(
    M01 timestamp,
    M02 timestamp,
    M03 timestamp,
    M04 timestamp,
    M05 timestamp,
    M06 timestamp,
    M07 timestamp,
    M08 timestamp,
    M09 timestamp,
    M10 timestamp,
    M11 timestamp,
    M12 timestamp,
    M13 timestamp,
    M14 timestamp,
    M15 timestamp,
    M16 timestamp,
    M17 timestamp,
    M18 timestamp,
    M19 timestamp,
    M20 timestamp,
    M21 timestamp,
    M22 timestamp,
    M23 timestamp,
    M24 timestamp,
    M25 timestamp,
    M26 timestamp,
    M27 timestamp,
    M28 timestamp,
    M29 timestamp,
    M30 timestamp,
    M31 timestamp,
    M32 timestamp,
    M33 timestamp,
    M34 timestamp,
    M35 timestamp,
    M36 timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.MV_MONTHLY_DETLS_BY_PRESC
(
    SALES_FORCE_ID varchar(5),
    CALL_DATE timestamp,
    CALL_DATE_WK timestamp,
    CALL_DATE_MTH timestamp,
    CSF_DEMO_ID varchar(32),
    IMS_ID varchar(12),
    ME_NUM varchar(10),
    PRIM_SPECIALTY varchar(3),
    CEPH_ME_GROUP_BY varchar(32),
    PROV1 numeric(37,15),
    PROV2 numeric(37,15),
    PROV3 numeric(37,15),
    GAB1 numeric(37,15),
    GAB2 numeric(37,15),
    GAB3 numeric(37,15),
    ACT1 numeric(37,15),
    ACT2 numeric(37,15),
    ACT3 numeric(37,15),
    TRI1 numeric(37,15),
    TRI2 numeric(37,15),
    TRI3 numeric(37,15),
    VIV1 numeric(37,15),
    VIV2 numeric(37,15),
    VIV3 numeric(37,15),
    ADM1 numeric(37,15),
    ADM2 numeric(37,15),
    ADM3 numeric(37,15),
    FEN1 numeric(37,15),
    FEN2 numeric(37,15),
    FEN3 numeric(37,15),
    AMR1 numeric(37,15),
    AMR2 numeric(37,15),
    AMR3 numeric(37,15),
    TRE1 numeric(37,15),
    TRE2 numeric(37,15),
    TRE3 numeric(37,15),
    TOTAL_CALLS numeric(37,15),
    CSF_DEMO_RANK numeric(37,15),
    SPECIALTY_RANK numeric(37,15),
    CREATE_DATE timestamp,
    NUV1 numeric(37,15),
    NUV2 numeric(37,15),
    NUV3 numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.MV_TBO_LOCATION_XREF
(
    SALES_FORCE_ID varchar(30),
    PROFESSIONAL_ID numeric(37,15) NOT NULL,
    JOB_ID numeric(37,15),
    TERRITORY_NUM varchar(20),
    PRIMARY_LOC_ID numeric(37,15),
    DEA_LOC_ID numeric(37,15),
    DEA_NUM varchar(12),
    DEA_EXPIR_DATE timestamp,
    DEA_DRUG_SCHEDULE varchar(15),
    REP_VISIBLE varchar(1),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.NTIS_DEA_MASTER
(
    DEA_NUM varchar(9) NOT NULL,
    DEA_DRUG_SCHEDULE varchar(16),
    DEA_EXPIR_DATE timestamp NOT NULL,
    DEA_LAST_NAME varchar(40),
    DEA_FIRST_NAME varchar(40),
    DEA_MIDDLE_NAME varchar(40),
    DEA_SUFFIX_NAME varchar(10),
    DEA_PROF_DESIGNATION varchar(10),
    DEA_ADDRESS_LINE1 varchar(80) NOT NULL,
    DEA_ADDRESS_LINE2 varchar(80),
    DEA_ADDRESS_LINE3 varchar(80),
    DEA_CITY varchar(40),
    DEA_STATE varchar(2) NOT NULL,
    DEA_ZIP varchar(5) NOT NULL,
    DEA_BUS_ACTIVITY_CODE varchar(1),
    DEA_BUS_ACTIVITY_SUB_CODE varchar(1) NOT NULL,
    DEA_SANCTION_FLAG varchar(1),
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0),
    COMPANY_NAME varchar(100) NOT NULL,
    CREATE_DATE timestamp,
    CONTROLLED_SUBSTANCE_AUTH varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.SAP_TEVA_EMPLOYEE_XREF
(
    SAP_PERNR varchar(8) NOT NULL,
    OTHER_ID varchar(6),
    EMPLOYEE_ID varchar(10),
    LEGACY_ID varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.STATUS_LOG
(
    JOB_NAME varchar(50) NOT NULL,
    STEP varchar(100),
    PID numeric(37,15),
    STATUS varchar(20) NOT NULL,
    MESSAGE varchar(500),
    LOGGED_AT timestamp,
    LOG_ID numeric(37,15) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT
(
    SOURCE_SYSTEM_NAME varchar(10),
    EVENT_NUMBER varchar(25) NOT NULL,
    PARENT_EVENT_NUMBER varchar(25),
    EVENT_NAME varchar(100),
    EVENT_STATUS_CODE varchar(100),
    EVENT_STATUS_DESCRIPTION varchar(100),
    EVENT_STATUS_CHANGE_DATE timestamp,
    EVENT_START_DATE timestamp,
    EVENT_END_DATE timestamp,
    EVENT_TIME_ZONE varchar(100),
    FUNDING_SOURCE varchar(100),
    EVENT_TYPE varchar(100),
    EVENT_TYPE_DESCRIPTION varchar(100),
    EVENT_FORMAT varchar(100),
    EVENT_LOCATION varchar(100),
    PENDING_MGMNT_APPROVAL_DATE timestamp,
    EVENT_APPROVAL_DATE timestamp,
    EVENT_APPROVER_ID varchar(100),
    EVENT_SCHEDULE_DATE timestamp,
    ATTENDEE_CLOSEOUT_DATE timestamp,
    FINANCIAL_CLOSEOUT_DATE timestamp,
    CANCELLATION_DATE timestamp,
    CANCELLATION_REASON varchar(100),
    CANCELLATION_SOURCE varchar(100),
    EVENT_VENUE_MIN_CNT_REQ_IND varchar(100),
    EVENT_VENUE_MIN_COUNT varchar(100),
    ESTIMATED_ATTENDANCE varchar(100),
    VENUE_ID varchar(100),
    VENUE_FULL_NAME varchar(100),
    VENUE_ADDRESS_LINE_1 varchar(100),
    VENUE_ADDRESS_LINE_2 varchar(100),
    VENUE_ADDRESS_LINE_3 varchar(100),
    VENUE_ADDRESS_LINE_4 varchar(100),
    VENUE_CITY varchar(100),
    VENUE_STATE_PROVINCE varchar(100),
    VENUE_POSTAL_CODE varchar(100),
    VENUE_POSTAL_EXTENDED_CODE varchar(100),
    VENUE_COUNTRY_CODE varchar(100),
    VENUE_CONTACT varchar(100),
    VENUE_PHONE varchar(100),
    VENUE_FAX varchar(100),
    VENUE_EMAIL varchar(100),
    TRADE_SECRET_INDICATOR varchar(100),
    TRADE_SECRET_REASON varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_ATTENDEE
(
    SOURCE_SYSTEM_NAME varchar(100),
    EVENT_NUMBER varchar(100),
    EMPLOYEE_ID varchar(100),
    CUSTOMER_ID varchar(100),
    ATTENDEE_ID varchar(100),
    ATTENDEE_LAST_NAME varchar(100),
    ATTENDEE_FIRST_NAME varchar(100),
    ATTENDEE_MIDDLE_NAME varchar(100),
    ATTENDEE_TITLE varchar(100),
    ATTENDEE_SPECIALTY varchar(100),
    ATTENDEE_DEGREE varchar(100),
    ATTENDEE_ADDRESS_LINE_1 varchar(100),
    ATTENDEE_ADDRESS_LINE_2 varchar(100),
    ATTENDEE_ADDRESS_LINE_3 varchar(100),
    ATTENDEE_ADDRESS_LINE_4 varchar(100),
    ATTENDEE_CITY varchar(100),
    ATTENDEE_STATE_PROVINCE varchar(100),
    ATTENDEE_POSTAL_CODE varchar(100),
    ATTENDEE_POSTAL_EXTENDED_CODE varchar(100),
    ATTENDEE_COUNTRY_CODE varchar(100),
    ATTENDEE_PHONE varchar(100),
    ATTENDEE_FAX varchar(100),
    ATTENDEE_EMAIL varchar(100),
    DEA_NUMBER varchar(100),
    IMS_NUMBER varchar(100),
    ME_NUMBER varchar(100),
    NPI_NUMBER varchar(100),
    ATTENDEE_CATEGORY_CODE varchar(100),
    ATTENDED varchar(100),
    MEAL varchar(100),
    NON_HCP_COUNT varchar(100),
    OTHER_HCP_COUNT varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_EXPENSE
(
    SOURCE_SYSTEM_NAME varchar(100),
    EVENT_NUMBER varchar(100),
    PAYMENT_ID varchar(100),
    EXPENSE_CATEGORY varchar(100),
    AMOUNT numeric(10,2),
    REMIT_TO_ID varchar(100),
    RECIPIENT_ID varchar(100),
    CHECK_NUMBER varchar(100),
    CHECK_DATE timestamp,
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_HOST
(
    SOURCE_SYSTEM_NAME varchar(100),
    EVENT_NUMBER varchar(100),
    EMPLOYEE_ID varchar(100),
    TERRITORY varchar(100),
    ORDINAL varchar(100),
    BUDGET_PERCENT varchar(100),
    BUDGET_POOL varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_PRODUCT
(
    SOURCE_SYSTEM_NAME varchar(100),
    EVENT_NUMBER varchar(100),
    PRODUCT_ID varchar(100),
    PRODUCT_NAME varchar(100),
    TOPIC_ID varchar(100),
    TOPIC_NAME varchar(250),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_SPEAKER
(
    SOURCE_SYSTEM_NAME varchar(100),
    EVENT_NUMBER varchar(100),
    EVENT_SPEAKER_STATUS varchar(100),
    SPEAKER_ID varchar(100),
    PRODUCT_ID varchar(100),
    TOPIC_ID varchar(100),
    CANCELLATION_REASON varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_ORGANIZATION
(
    SOURCE_SYSTEM_NAME varchar(100),
    AHM_ORG_ID varchar(100),
    NAME varchar(100),
    ADDRESS_LINE_1 varchar(100),
    ADDRESS_LINE_2 varchar(100),
    ADDRESS_LINE_3 varchar(100),
    ADDRESS_LINE_4 varchar(100),
    CITY varchar(100),
    STATE_PROVINCE varchar(100),
    POSTAL_CODE varchar(100),
    POSTAL_EXTENDED_CODE varchar(100),
    COUNTRY_CODE varchar(100),
    PHONE varchar(100),
    FAX varchar(100),
    EMAIL varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_SPEAKER_CONTRACT
(
    SOURCE_SYSTEM_NAME varchar(100),
    SPEAKER_ID varchar(100),
    CONTRACT_TYPE_CODE varchar(100),
    CONTRACT_TYPE_NAME varchar(100),
    CONTRACT_EFFECTIVE_DATE varchar(100),
    CONTRACT_EXPIRATION_DATE varchar(100),
    CONTRACT_SIGNED_DATE varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_SPEAKER_LICENSE
(
    SOURCE_SYSTEM_NAME varchar(100),
    SPEAKER_ID varchar(100),
    STATE_CODE varchar(100),
    STATE_LICENSE_NUMBER varchar(100),
    STATE_LICENSE_EFFECTIVE_DATE timestamp,
    STATE_LICENSE_EXPIRATION_DATE timestamp,
    DEBARMENT_INDICATOR varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_SPEAKER_PROFILE
(
    SOURCE_SYSTEM_NAME varchar(100),
    SPEAKER_ID varchar(100),
    FIRST_NAME varchar(100),
    LAST_NAME varchar(100),
    MIDDLE_NAME varchar(100),
    TITLE varchar(100),
    ADDRESS_LINE_1 varchar(100),
    ADDRESS_LINE_2 varchar(100),
    ADDRESS_LINE_3 varchar(100),
    ADDRESS_LINE_4 varchar(100),
    CITY varchar(100),
    STATE_PROVINCE varchar(100),
    POSTAL_CODE varchar(100),
    POSTAL_EXTENDED_CODE varchar(100),
    COUNTRY_CODE varchar(100),
    BUSINESS_PHONE varchar(100),
    BUSINESS_PHONE_EXTENSION varchar(100),
    HOME_PHONE varchar(100),
    MOBILE_PHONE varchar(100),
    BUSINESS_FAX varchar(100),
    HOME_FAX varchar(100),
    EMAIL varchar(100),
    SPECIALTY varchar(100),
    PERSONAL_SUFFIX varchar(100),
    DEGREE varchar(100),
    ME_NUMBER varchar(100),
    IMS_NUMBER varchar(100),
    DEA_NUMBER varchar(100),
    NPI_NUMBER varchar(100),
    CLINICAL_AFFILIATION varchar(100),
    CLINICAL_TITLE varchar(100),
    ACADEMIC_AFFILIATION varchar(100),
    OTHER_AFFILIATION varchar(100),
    FEDERAL_EMPLOYEE_INDICATOR varchar(100),
    STATE_EMPLOYEE_INDICATOR varchar(100),
    LOCAL_EMPLOYEE_INDICATOR varchar(100),
    FDA_DEBARMENT_INDICATOR varchar(100),
    OFAC_DEBARMENT_INDICATOR varchar(100),
    OIG_EXCLUSION_INDICATOR varchar(100),
    SPEAKER_BIOGRAPHY varchar(100),
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_SPEAKER_TRAINING
(
    SOURCE_SYSTEM_NAME varchar(100),
    SPEAKER_ID varchar(100),
    TOPIC_ID varchar(100),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_TOPIC_PRODUCT
(
    SOURCE_SYSTEM_NAME varchar(100),
    TOPIC_ID varchar(100),
    TOPIC_NAME varchar(250),
    PRODUCT_ID varchar(100),
    PRODUCT_NAME varchar(100),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ANDA_SALES
(
    TRANSACTION_ID varchar(100),
    INVOICE_DATE timestamp,
    PRODUCT_BRAND varchar(50),
    PRODUCT_NDC varchar(20),
    PRODUCT_DESC varchar(100),
    INVOICE_QTY numeric(37,15),
    INVOICE_UNITS numeric(37,15),
    INVOICE_COST numeric(37,15),
    INVOICE_PACK_COST numeric(37,15),
    INVOICE_UNIT_COST numeric(37,15),
    CONTRACT_PACK_COST numeric(37,15),
    CONTRACT_PURCHASES numeric(37,15),
    CONTRACT_NUMBER varchar(100),
    DISPENSING_LOCATION varchar(100),
    DL_ADDRESS_1 varchar(100),
    DL_ADDRESS_2 varchar(100),
    DL_CITY varchar(50),
    DL_STATE varchar(2),
    DL_ZIP varchar(5),
    DL_DEA_NUM varchar(20),
    DEPOT_LOCATION varchar(100),
    DEP_ADDRESS_1 varchar(100),
    DEP_ADDRESS_2 varchar(100),
    DEP_CITY varchar(50),
    DEP_STATE varchar(2),
    DEP_ZIP varchar(5),
    DEP_DEA_NUM varchar(20),
    UNIT_AP numeric(37,15),
    AP numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CAREMARK_IMS_XREF
(
    CAREMARK_MD_ID varchar(50) NOT NULL,
    IMS_ID varchar(50) NOT NULL,
    NPI varchar(10),
    CAREMARK_FIRST_NAME varchar(50),
    CAREMARK_LAST_NAME varchar(50),
    IMS_FIRST_NAME varchar(50),
    IMS_LAST_NAME varchar(50),
    SOURCE varchar(50) NOT NULL,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CAREMARK_PRODUCT_XREF
(
    NDC_NUMBER varchar(20),
    PRODUCT_NAME varchar(50),
    PRODUCT_CODE varchar(10),
    DIVISOR numeric(37,15),
    MULTIPLIER numeric(37,15),
    LESS_THAN_THIS_MAKE_IT_ONE numeric(37,15) DEFAULT (-999),
    IMS_PRODUCT_GROUP_NUM varchar(9)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_DIPLOMAT_ENROLLMENT_OLD
(
    PATIENT_ID varchar(20),
    RX_RECEIVED_DATE timestamp,
    INSURANCE_INFORMATION varchar(50),
    MOST_RECENT_CML_TREATMENT varchar(50),
    DATE_OF_DISCONTINUATION timestamp,
    REASON_FOR_DISCONTINUATION varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_FACTORY_SALES_852
(
    TRADING_PARTNER varchar(50),
    DISTRIB_CENTER varchar(50),
    DISTRIB_CENTER_DEA_NUM varchar(20),
    REPORTING_DATE timestamp,
    NDC varchar(20),
    PRODUCT_CODE varchar(6),
    PRODUCT_NAME varchar(50),
    DESCRIPTION varchar(50),
    QTY_RECEIVED numeric(37,15),
    QTY_RECEIVED_DOLLARS numeric(37,15),
    QTY_SOLD numeric(37,15),
    QTY_SOLD_DOLLARS numeric(37,15),
    QTY_OMIT numeric(37,15),
    QTY_OMIT_DOLLARS numeric(37,15),
    MTH_END_QTY_ON_HAND numeric(37,15),
    MTH_END_QTY_ON_HAND_DOLLARS numeric(37,15),
    MTH_END_COMMITTED numeric(37,15),
    MTH_END_COMMITTED_DOLLARS numeric(37,15),
    MTH_END_RESERVED numeric(37,15),
    MTH_END_RESERVED_DOLLARS numeric(37,15),
    QTY_RETURN numeric(37,15),
    QTY_RETURN_DOLLARS numeric(37,15),
    QTY_CUSTOMER_RETURN numeric(37,15),
    QTY_CUSTOMER_RETURN_DOLLARS numeric(37,15),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_I3_NPI_IMS_XREF
(
    NPI varchar(10) NOT NULL,
    IMS_ID varchar(50) NOT NULL,
    I3_FIRST_NAME varchar(50),
    I3_LAST_NAME varchar(50),
    IMS_FIRST_NAME varchar(50),
    IMS_LAST_NAME varchar(50),
    SOURCE varchar(50) NOT NULL,
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_IMS_SLN_XREF_KC
(
    IMS_ID varchar(10),
    STATE_LICENSE_NUMBER varchar(20),
    STATE_LICENSE_STATE varchar(2),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_OMNICARE_SALES
(
    TRANSACTION_ID varchar(100),
    INVOICE_DATE timestamp,
    PRODUCT_BRAND varchar(50),
    PRODUCT_NDC varchar(20),
    PRODUCT_DESC varchar(100),
    INVOICE_QTY numeric(37,15),
    INVOICE_UNITS numeric(37,15),
    INVOICE_COST numeric(37,15),
    INVOICE_PACK_COST numeric(37,15),
    INVOICE_UNIT_COST numeric(37,15),
    CONTRACT_PACK_COST numeric(37,15),
    CONTRACT_PURCHASES numeric(37,15),
    CONTRACT_NUMBER varchar(100),
    DISPENSING_LOCATION varchar(100),
    DL_ADDRESS_1 varchar(100),
    DL_ADDRESS_2 varchar(100),
    DL_CITY varchar(50),
    DL_STATE varchar(2),
    DL_ZIP varchar(5),
    DL_DEA_NUM varchar(20),
    DEPOT_LOCATION varchar(100),
    DEP_ADDRESS_1 varchar(100),
    DEP_ADDRESS_2 varchar(100),
    DEP_CITY varchar(50),
    DEP_STATE varchar(2),
    DEP_ZIP varchar(5),
    DEP_DEA_NUM varchar(20),
    UNIT_AP numeric(37,15),
    AP numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DDD_MONTHLY_RETAIL
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10) NOT NULL,
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9) NOT NULL,
    DATA_DATE timestamp,
    QTY_MTH01 numeric(19,0),
    QTY_MTH02 numeric(19,0),
    QTY_MTH03 numeric(19,0),
    QTY_MTH04 numeric(19,0),
    QTY_MTH05 numeric(19,0),
    QTY_MTH06 numeric(19,0),
    QTY_MTH07 numeric(19,0),
    QTY_MTH08 numeric(19,0),
    QTY_MTH09 numeric(19,0),
    QTY_MTH10 numeric(19,0),
    QTY_MTH11 numeric(19,0),
    QTY_MTH12 numeric(19,0),
    QTY_MTH13 numeric(19,0),
    QTY_MTH14 numeric(19,0),
    QTY_MTH15 numeric(19,0),
    QTY_MTH16 numeric(19,0),
    QTY_MTH17 numeric(19,0),
    QTY_MTH18 numeric(19,0),
    QTY_MTH19 numeric(19,0),
    QTY_MTH20 numeric(19,0),
    QTY_MTH21 numeric(19,0),
    QTY_MTH22 numeric(19,0),
    QTY_MTH23 numeric(19,0),
    QTY_MTH24 numeric(19,0),
    CITY varchar(25),
    STATE varchar(2),
    ZIP varchar(5),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DDD_WEEKLY_RETAIL
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10) NOT NULL,
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9) NOT NULL,
    DATA_DATE timestamp,
    QTY_WK01 numeric(19,0),
    QTY_WK02 numeric(19,0),
    QTY_WK03 numeric(19,0),
    QTY_WK04 numeric(19,0),
    QTY_WK05 numeric(19,0),
    QTY_WK06 numeric(19,0),
    QTY_WK07 numeric(19,0),
    QTY_WK08 numeric(19,0),
    QTY_WK09 numeric(19,0),
    QTY_WK10 numeric(19,0),
    QTY_WK11 numeric(19,0),
    QTY_WK12 numeric(19,0),
    QTY_WK13 numeric(19,0),
    QTY_WK14 numeric(19,0),
    QTY_WK15 numeric(19,0),
    QTY_WK16 numeric(19,0),
    QTY_WK17 numeric(19,0),
    QTY_WK18 numeric(19,0),
    QTY_WK19 numeric(19,0),
    QTY_WK20 numeric(19,0),
    QTY_WK21 numeric(19,0),
    QTY_WK22 numeric(19,0),
    QTY_WK23 numeric(19,0),
    QTY_WK24 numeric(19,0),
    QTY_WK25 numeric(19,0),
    QTY_WK26 numeric(19,0),
    QTY_WK27 numeric(19,0),
    QTY_WK28 numeric(19,0),
    QTY_WK29 numeric(19,0),
    QTY_WK30 numeric(19,0),
    QTY_WK31 numeric(19,0),
    QTY_WK32 numeric(19,0),
    QTY_WK33 numeric(19,0),
    QTY_WK34 numeric(19,0),
    QTY_WK35 numeric(19,0),
    QTY_WK36 numeric(19,0),
    QTY_WK37 numeric(19,0),
    QTY_WK38 numeric(19,0),
    QTY_WK39 numeric(19,0),
    QTY_WK40 numeric(19,0),
    QTY_WK41 numeric(19,0),
    QTY_WK42 numeric(19,0),
    QTY_WK43 numeric(19,0),
    QTY_WK44 numeric(19,0),
    QTY_WK45 numeric(19,0),
    QTY_WK46 numeric(19,0),
    QTY_WK47 numeric(19,0),
    QTY_WK48 numeric(19,0),
    QTY_WK49 numeric(19,0),
    QTY_WK50 numeric(19,0),
    QTY_WK51 numeric(19,0),
    QTY_WK52 numeric(19,0),
    QTY_WK53 numeric(19,0),
    QTY_WK54 numeric(19,0),
    QTY_WK55 numeric(19,0),
    QTY_WK56 numeric(19,0),
    QTY_WK57 numeric(19,0),
    QTY_WK58 numeric(19,0),
    QTY_WK59 numeric(19,0),
    QTY_WK60 numeric(19,0),
    QTY_WK61 numeric(19,0),
    QTY_WK62 numeric(19,0),
    QTY_WK63 numeric(19,0),
    QTY_WK64 numeric(19,0),
    QTY_WK65 numeric(19,0),
    QTY_WK66 numeric(19,0),
    QTY_WK67 numeric(19,0),
    QTY_WK68 numeric(19,0),
    QTY_WK69 numeric(19,0),
    QTY_WK70 numeric(19,0),
    QTY_WK71 numeric(19,0),
    QTY_WK72 numeric(19,0),
    QTY_WK73 numeric(19,0),
    QTY_WK74 numeric(19,0),
    QTY_WK75 numeric(19,0),
    QTY_WK76 numeric(19,0),
    QTY_WK77 numeric(19,0),
    QTY_WK78 numeric(19,0),
    QTY_WK79 numeric(19,0),
    QTY_WK80 numeric(19,0),
    QTY_WK81 numeric(19,0),
    QTY_WK82 numeric(19,0),
    QTY_WK83 numeric(19,0),
    QTY_WK84 numeric(19,0),
    QTY_WK85 numeric(19,0),
    QTY_WK86 numeric(19,0),
    QTY_WK87 numeric(19,0),
    QTY_WK88 numeric(19,0),
    QTY_WK89 numeric(19,0),
    QTY_WK90 numeric(19,0),
    QTY_WK91 numeric(19,0),
    QTY_WK92 numeric(19,0),
    QTY_WK93 numeric(19,0),
    QTY_WK94 numeric(19,0),
    QTY_WK95 numeric(19,0),
    QTY_WK96 numeric(19,0),
    QTY_WK97 numeric(19,0),
    QTY_WK98 numeric(19,0),
    QTY_WK99 numeric(19,0),
    QTY_WK100 numeric(19,0),
    QTY_WK101 numeric(19,0),
    QTY_WK102 numeric(19,0),
    QTY_WK103 numeric(19,0),
    QTY_WK104 numeric(19,0),
    QTY_WK105 numeric(19,0),
    QTY_WK106 numeric(19,0),
    CITY varchar(25),
    STATE varchar(2),
    ZIP varchar(5),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_MONTHLY_DEMO_DOL
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(120),
    OUTLET_CITY varchar(40),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    FACILITY_PRESCRIBER_NAME varchar(100),
    FACILITY_PRESCRIBER_ADDRESS1 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS2 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS3 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS4 varchar(60),
    FACILITY_PRESCRIBER_CITY varchar(40),
    FACILITY_PRESCRIBER_STATE varchar(2),
    FACILITY_PRESCRIBER_ZIP varchar(5),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_MONTHLY_DEMO_QTY
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(120),
    OUTLET_CITY varchar(40),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    FACILITY_PRESCRIBER_NAME varchar(100),
    FACILITY_PRESCRIBER_ADDRESS1 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS2 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS3 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS4 varchar(60),
    FACILITY_PRESCRIBER_CITY varchar(40),
    FACILITY_PRESCRIBER_STATE varchar(2),
    FACILITY_PRESCRIBER_ZIP varchar(5),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_MONTHLY_DOLLARS
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10) NOT NULL,
    SUBCATEGORY_CODE varchar(10),
    ALT_SEQ_NUM varchar(10) NOT NULL,
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9) NOT NULL,
    DATA_DATE timestamp,
    DOL_MTH01 numeric(19,0),
    DOL_MTH02 numeric(19,0),
    DOL_MTH03 numeric(19,0),
    DOL_MTH04 numeric(19,0),
    DOL_MTH05 numeric(19,0),
    DOL_MTH06 numeric(19,0),
    DOL_MTH07 numeric(19,0),
    DOL_MTH08 numeric(19,0),
    DOL_MTH09 numeric(19,0),
    DOL_MTH10 numeric(19,0),
    DOL_MTH11 numeric(19,0),
    DOL_MTH12 numeric(19,0),
    DOL_MTH13 numeric(19,0),
    DOL_MTH14 numeric(19,0),
    DOL_MTH15 numeric(19,0),
    DOL_MTH16 numeric(19,0),
    DOL_MTH17 numeric(19,0),
    DOL_MTH18 numeric(19,0),
    DOL_MTH19 numeric(19,0),
    DOL_MTH20 numeric(19,0),
    DOL_MTH21 numeric(19,0),
    DOL_MTH22 numeric(19,0),
    DOL_MTH23 numeric(19,0),
    DOL_MTH24 numeric(19,0),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_MONTHLY_QUANTITY
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10) NOT NULL,
    SUBCATEGORY_CODE varchar(10),
    ALT_SEQ_NUM varchar(10) NOT NULL,
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9) NOT NULL,
    DATA_DATE timestamp,
    QTY_MTH01 numeric(19,0),
    QTY_MTH02 numeric(19,0),
    QTY_MTH03 numeric(19,0),
    QTY_MTH04 numeric(19,0),
    QTY_MTH05 numeric(19,0),
    QTY_MTH06 numeric(19,0),
    QTY_MTH07 numeric(19,0),
    QTY_MTH08 numeric(19,0),
    QTY_MTH09 numeric(19,0),
    QTY_MTH10 numeric(19,0),
    QTY_MTH11 numeric(19,0),
    QTY_MTH12 numeric(19,0),
    QTY_MTH13 numeric(19,0),
    QTY_MTH14 numeric(19,0),
    QTY_MTH15 numeric(19,0),
    QTY_MTH16 numeric(19,0),
    QTY_MTH17 numeric(19,0),
    QTY_MTH18 numeric(19,0),
    QTY_MTH19 numeric(19,0),
    QTY_MTH20 numeric(19,0),
    QTY_MTH21 numeric(19,0),
    QTY_MTH22 numeric(19,0),
    QTY_MTH23 numeric(19,0),
    QTY_MTH24 numeric(19,0),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_WEEKLY_DEMO
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(120),
    OUTLET_CITY varchar(40),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    FACILITY_PRESCRIBER_NAME varchar(100),
    FACILITY_PRESCRIBER_ADDRESS1 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS2 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS3 varchar(60),
    FACILITY_PRESCRIBER_ADDRESS4 varchar(60),
    FACILITY_PRESCRIBER_CITY varchar(40),
    FACILITY_PRESCRIBER_STATE varchar(2),
    FACILITY_PRESCRIBER_ZIP varchar(5),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_DMD_WEEKLY_SALES
(
    CLIENT_NUM varchar(3),
    REPORT_NUM varchar(2),
    IMS_OUTLET_CODE varchar(10) NOT NULL,
    SUBCATEGORY_CODE varchar(10),
    ALT_SEQ_NUM varchar(10) NOT NULL,
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9) NOT NULL,
    DATA_DATE timestamp,
    QTY_WK01 numeric(19,0),
    QTY_WK02 numeric(19,0),
    QTY_WK03 numeric(19,0),
    QTY_WK04 numeric(19,0),
    QTY_WK05 numeric(19,0),
    QTY_WK06 numeric(19,0),
    QTY_WK07 numeric(19,0),
    QTY_WK08 numeric(19,0),
    QTY_WK09 numeric(19,0),
    QTY_WK10 numeric(19,0),
    QTY_WK11 numeric(19,0),
    QTY_WK12 numeric(19,0),
    QTY_WK13 numeric(19,0),
    QTY_WK14 numeric(19,0),
    QTY_WK15 numeric(19,0),
    QTY_WK16 numeric(19,0),
    QTY_WK17 numeric(19,0),
    QTY_WK18 numeric(19,0),
    QTY_WK19 numeric(19,0),
    QTY_WK20 numeric(19,0),
    QTY_WK21 numeric(19,0),
    QTY_WK22 numeric(19,0),
    QTY_WK23 numeric(19,0),
    QTY_WK24 numeric(19,0),
    QTY_WK25 numeric(19,0),
    QTY_WK26 numeric(19,0),
    QTY_WK27 numeric(19,0),
    QTY_WK28 numeric(19,0),
    QTY_WK29 numeric(19,0),
    QTY_WK30 numeric(19,0),
    QTY_WK31 numeric(19,0),
    QTY_WK32 numeric(19,0),
    QTY_WK33 numeric(19,0),
    QTY_WK34 numeric(19,0),
    QTY_WK35 numeric(19,0),
    QTY_WK36 numeric(19,0),
    QTY_WK37 numeric(19,0),
    QTY_WK38 numeric(19,0),
    QTY_WK39 numeric(19,0),
    QTY_WK40 numeric(19,0),
    QTY_WK41 numeric(19,0),
    QTY_WK42 numeric(19,0),
    QTY_WK43 numeric(19,0),
    QTY_WK44 numeric(19,0),
    QTY_WK45 numeric(19,0),
    QTY_WK46 numeric(19,0),
    QTY_WK47 numeric(19,0),
    QTY_WK48 numeric(19,0),
    QTY_WK49 numeric(19,0),
    QTY_WK50 numeric(19,0),
    QTY_WK51 numeric(19,0),
    QTY_WK52 numeric(19,0),
    QTY_WK53 numeric(19,0),
    QTY_WK54 numeric(19,0),
    QTY_WK55 numeric(19,0),
    QTY_WK56 numeric(19,0),
    QTY_WK57 numeric(19,0),
    QTY_WK58 numeric(19,0),
    QTY_WK59 numeric(19,0),
    QTY_WK60 numeric(19,0),
    QTY_WK61 numeric(19,0),
    QTY_WK62 numeric(19,0),
    QTY_WK63 numeric(19,0),
    QTY_WK64 numeric(19,0),
    QTY_WK65 numeric(19,0),
    QTY_WK66 numeric(19,0),
    QTY_WK67 numeric(19,0),
    QTY_WK68 numeric(19,0),
    QTY_WK69 numeric(19,0),
    QTY_WK70 numeric(19,0),
    QTY_WK71 numeric(19,0),
    QTY_WK72 numeric(19,0),
    QTY_WK73 numeric(19,0),
    QTY_WK74 numeric(19,0),
    QTY_WK75 numeric(19,0),
    QTY_WK76 numeric(19,0),
    QTY_WK77 numeric(19,0),
    QTY_WK78 numeric(19,0),
    QTY_WK79 numeric(19,0),
    QTY_WK80 numeric(19,0),
    QTY_WK81 numeric(19,0),
    QTY_WK82 numeric(19,0),
    QTY_WK83 numeric(19,0),
    QTY_WK84 numeric(19,0),
    QTY_WK85 numeric(19,0),
    QTY_WK86 numeric(19,0),
    QTY_WK87 numeric(19,0),
    QTY_WK88 numeric(19,0),
    QTY_WK89 numeric(19,0),
    QTY_WK90 numeric(19,0),
    QTY_WK91 numeric(19,0),
    QTY_WK92 numeric(19,0),
    QTY_WK93 numeric(19,0),
    QTY_WK94 numeric(19,0),
    QTY_WK95 numeric(19,0),
    QTY_WK96 numeric(19,0),
    QTY_WK97 numeric(19,0),
    QTY_WK98 numeric(19,0),
    QTY_WK99 numeric(19,0),
    QTY_WK100 numeric(19,0),
    QTY_WK101 numeric(19,0),
    QTY_WK102 numeric(19,0),
    QTY_WK103 numeric(19,0),
    QTY_WK104 numeric(19,0),
    QTY_WK105 numeric(19,0),
    QTY_WK106 numeric(19,0),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    CREATE_DATE timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_MANUAL_FCRS
(
    TERRITORY_NUM varchar(8),
    REP_ID varchar(7),
    CONTACT_DATE timestamp,
    DURATION_DAYS numeric(37,15),
    SS_OPENING numeric(37,15),
    SS_PROBING numeric(37,15),
    SS_RESOURCES numeric(37,15),
    SS_COMMITMENT numeric(37,15),
    SS_TRANSITIONING numeric(37,15),
    SS_ACUMEN numeric(37,15),
    CREATE_DATE timestamp,
    ARCHIVE_FLAG varchar(1),
    TIME_PERIOD varchar(15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ONC_TERR_XREF
(
    CEPH_TERRITORY_NUM varchar(8) NOT NULL,
    TERRITORY_NAME varchar(50),
    TEVA_TERRITORY_NUM varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_PCS_DDD_RETAIL
(
    TERRITORY_NUM varchar(10),
    OUTLET_ZIP varchar(10),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    CATEGORY_CODE varchar(2),
    PRODUCT_GROUP varchar(9),
    MTH_YYYYMM varchar(8),
    QTY_MTH01 numeric(19,0),
    QTY_MTH02 numeric(19,0),
    QTY_MTH03 numeric(19,0),
    QTY_MTH04 numeric(19,0),
    QTY_MTH05 numeric(19,0),
    QTY_MTH06 numeric(19,0),
    QTY_MTH07 numeric(19,0),
    QTY_MTH08 numeric(19,0),
    QTY_MTH09 numeric(19,0),
    QTY_MTH10 numeric(19,0),
    QTY_MTH11 numeric(19,0),
    QTY_MTH12 numeric(19,0),
    QTY_MTH13 numeric(19,0),
    QTY_MTH14 numeric(19,0),
    QTY_MTH15 numeric(19,0),
    QTY_MTH16 numeric(19,0),
    QTY_MTH17 numeric(19,0),
    QTY_MTH18 numeric(19,0),
    QTY_MTH19 numeric(19,0),
    QTY_MTH20 numeric(19,0),
    QTY_MTH21 numeric(19,0),
    QTY_MTH22 numeric(19,0),
    QTY_MTH23 numeric(19,0),
    QTY_MTH24 numeric(19,0)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_PRIME_PRODUCT_XREF
(
    NDC_NUMBER varchar(20) NOT NULL,
    PRODUCT_NAME varchar(50),
    PRODUCT_CODE varchar(10),
    DIVISOR numeric(37,15),
    MULTIPLIER numeric(37,15),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    APPLIES_FROM_DATE timestamp NOT NULL,
    APPLIES_TO_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_PTR_AMRIX_TARGET
(
    IMS_ID varchar(10) NOT NULL,
    SALES_FORCE_ID varchar(5) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.STG_REMS_FACILITY_XREF
(
    ENROLLMENT_ID varchar(20),
    ASI_ACCOUNT_ID varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SFA_ONC_CONT_CALL_DETAIL
(
    SMART_CALL_DOC_ID varchar(32) NOT NULL,
    SMART_CONT_DOC_ID varchar(32),
    AFFILIATED_SMART_ACCT_DOC_ID varchar(32),
    REP_ID varchar(8),
    TERRITORY_NUM varchar(8),
    CALL_DATE timestamp,
    TRISENOX_DETAIL_POSITION varchar(5),
    FENTORA_DETAIL_POSITION varchar(5),
    FENTORA_REASON_CODE varchar(4),
    FENTORA_REASON_EXPLN varchar(100),
    ACTIQ_DETAIL_POSITION varchar(5),
    ACTIQ_REASON_CODE varchar(4),
    ACTIQ_REASON_EXPLN varchar(100),
    HIGH_OPIOID_FLAG varchar(1),
    CREATE_DATE timestamp,
    LAST_UPD_DATE timestamp,
    FENTORA_SAFETY_MSG_IND varchar(1),
    TREANDA_DETAIL_POSITION varchar(5),
    SYNRIBO_DETAIL_POSITION varchar(5),
    ACCOUNT_MGMT_DETAIL_POSITION varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SFA_ONC_PROF_CALL_DETAIL
(
    SMART_CALL_DOC_ID varchar(32) NOT NULL,
    SMART_PROF_DOC_ID varchar(32),
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    REP_ID varchar(8),
    TERRITORY_NUM varchar(8),
    CALL_DATE timestamp,
    TRISENOX_DETAIL_POSITION varchar(5),
    FENTORA_DETAIL_POSITION varchar(5),
    FENTORA_REASON_CODE varchar(4),
    FENTORA_REASON_EXPLN varchar(100),
    ACTIQ_DETAIL_POSITION varchar(5),
    ACTIQ_REASON_CODE varchar(4),
    ACTIQ_REASON_EXPLN varchar(100),
    HIGH_OPIOID_FLAG varchar(1),
    CREATE_DATE timestamp,
    LAST_UPD_DATE timestamp,
    FENTORA_SAFETY_MSG_IND varchar(1),
    TREANDA_DETAIL_POSITION varchar(5),
    SYNRIBO_DETAIL_POSITION varchar(5),
    ACCOUNT_MGMT_DETAIL_POSITION varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SHA_PLAN
(
    PLAN_ID numeric(37,15) NOT NULL,
    PLAN_NAME varchar(60),
    PLAN_TYPE varchar(20),
    PLAN_TYPE_DESCRIPTION varchar(30),
    PLAN_SUBTYPE varchar(100),
    PAYMENT_TYPE varchar(100),
    NATIONAL_INSURER_NAME varchar(250),
    NATIONAL_TYPE varchar(30),
    REGIONAL_NAME varchar(60),
    REGIONAL_TYPE varchar(30),
    ORGANIZATION_NAME varchar(60),
    ORGANIZATION_TYPE varchar(20),
    ADMIN_NAME varchar(60),
    ADMIN_TYPE varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SHA_PRODUCT
(
    DRUG_ID varchar(13),
    NDC11 varchar(11),
    DRUG_NAME varchar(60),
    BGI varchar(1),
    BB_USC_CODE varchar(5),
    BB_USC_NAME varchar(60),
    DRUG_GENERIC_NAME varchar(60),
    DRUG_STRENGTH varchar(10),
    DRUG_FORM varchar(40),
    PACKAGE_SIZE numeric(11,3),
    PACKAGE_DESCRIPTION varchar(20),
    MANUFACTURER varchar(100),
    NDC_START_DATE timestamp,
    NDC_END_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SURVEY
(
    SALES_FORCE_ID varchar(2) NOT NULL,
    TERRITORY_NUM varchar(8) NOT NULL,
    VEEVA_SURVEY_TARGET_ID varchar(18) NOT NULL,
    SURVEY_NAME varchar(80) NOT NULL,
    VEEVA_ACCOUNT_ID varchar(18) NOT NULL,
    STATUS varchar(255) NOT NULL,
    REP_ID varchar(20) NOT NULL,
    LAST_UPDATE_DATE timestamp,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    ROW_STATUS varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SURVEY_RESPONSE
(
    SALES_FORCE_ID varchar(2) NOT NULL,
    TERRITORY_NUM varchar(8) NOT NULL,
    VEEVA_SURVEY_TARGET_ID varchar(18) NOT NULL,
    SURVEY_NAME varchar(80) NOT NULL,
    VEEVA_ACCOUNT_ID varchar(18) NOT NULL,
    STATUS varchar(255) NOT NULL,
    REP_ID varchar(20) NOT NULL,
    QUESTION_POSITION numeric(2,0) NOT NULL,
    QUESTION varchar(1000) NOT NULL,
    RESPONSE varchar(550) NOT NULL,
    LAST_UPDATE_DATE timestamp,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SURVEY_RESPONSE_HIST
(
    QUESTION_RESPONSE_VOD varchar(18),
    LASTMODIFIEDDATE timestamp,
    ANSWER varchar(2500)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TB_CB_ACCOUNTS
(
    ACCOUNT_ID varchar(100) NOT NULL,
    LOCATION_ID varchar(100) NOT NULL,
    DEA_NUMBER varchar(20),
    END_CUSTOMER varchar(100),
    ADDRESS_1 varchar(100),
    ADDRESS_2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    CONTRACT_TITLE varchar(100),
    CONTRACT_ID varchar(100) NOT NULL,
    WHOLESALER_NAME varchar(100),
    HIN varchar(20),
    CONTRACT_ALIAS varchar(100),
    WHOLESALER_DEA varchar(20),
    COT_SOURCE varchar(30),
    CLASS_OF_TRADE varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TB_CB_TRANSACTIONS
(
    ACCOUNT_ID varchar(100),
    LOCATION_ID varchar(100),
    SHIPMENT_DATE timestamp,
    NDC_CODE varchar(20),
    PRODUCT_NAME varchar(100),
    CONTRACT_ID varchar(100),
    CHARGEBACK_UNITS numeric(37,15),
    CHARGEBACK_DOLLARS numeric(37,15),
    RECEIPT_DATE timestamp,
    UNIT_AP numeric(37,15),
    AP numeric(37,15),
    DEBIT_MEMO_NUM varchar(30),
    CREDIT_MEMO_DATE timestamp,
    CREDIT_MEMO_NUM varchar(30),
    SETTLEMENT_DATE timestamp,
    CONTRACT_PRICE numeric(37,15),
    CONTRACT_ALIAS varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TB_DS_ACCOUNTS
(
    ACCOUNT_ID varchar(100),
    LOCATION_ID varchar(100),
    ACCOUNT_NAME varchar(100),
    ACCOUNT_CLASS varchar(100),
    ADDRESS_1 varchar(100),
    ADDRESS_2 varchar(100),
    CITY varchar(50),
    STATE varchar(50),
    ZIP varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TB_DS_TRANSACTIONS
(
    ACCOUNT_ID varchar(100),
    LOCATION_ID varchar(100),
    SHIPMENT_DATE timestamp,
    NDC_CODE varchar(20),
    PRODUCT_NAME varchar(100),
    TRANSACTION_TYPE varchar(100),
    DIRECT_SALES_UNITS numeric(37,15),
    DIRECT_SALES_DOLLARS numeric(37,15),
    UNIT_AP numeric(37,15),
    AP numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_BIOLOGICS_SALES
(
    MRN varchar(20),
    ORDER_NO varchar(20),
    REFERRAL_DATE varchar(20),
    REFERRAL_SOURCE varchar(30),
    REFERRAL_METHOD varchar(30),
    REFERRAL_TYPE varchar(30),
    PATIENT_AUTH varchar(10),
    STATUS varchar(30),
    PLACEMENT_DATE varchar(20),
    BILLING_METHOD varchar(30),
    ICD_9 varchar(10),
    PHY_FIRST_NAME varchar(50),
    PHY_LAST_NAME varchar(50),
    PRACTICE_NAME varchar(100),
    NPI varchar(20),
    TAX_ID varchar(20),
    PHY_NETWORK_STATUS varchar(30),
    PHY_STREET varchar(100),
    PHY_CITY varchar(50),
    PHY_STATE varchar(2),
    PHY_ZIP varchar(10),
    PHY_PHONE varchar(20),
    PHY_FAX varchar(20),
    PAYOR varchar(50),
    PAYOR_TYPE varchar(30),
    PAYOR_PHONE varchar(20),
    PAYOR_CONTACT varchar(100),
    PAYOR_REFERENCE varchar(30),
    BENEFIT_TYPE varchar(30),
    PAYOR_RANK varchar(20),
    EFFECTIVE_DATE varchar(20),
    DEDUCTIBLE varchar(20),
    DEDUCTIBLE_MET varchar(10),
    AMOUNT_MET varchar(20),
    OOP_MAX varchar(20),
    OOP_MET varchar(10),
    LIFETIME_MAX varchar(10),
    ANNUAL_BENEFIT_CAP varchar(10),
    LIMITATIONS_RESTRICTIONS varchar(10),
    ASSIGNMENT_ALLOWED varchar(10),
    CO_INSURANCE varchar(20),
    COPAY varchar(20),
    OFFICE_VISIT_COPAY varchar(20),
    FOLLOW_UP_COVERAGE varchar(30),
    FOLLOW_UP_COPAY varchar(20),
    J7300_COVERAGE_STATUS varchar(30),
    J7300_COVERAGE_TYPE varchar(30),
    "58300_COVERAGE_STATUS" varchar(30),
    "58300_COVERAGE_TYPE" varchar(30),
    PA_REQUIRED varchar(10),
    PA_TYPE varchar(30),
    PA_CONTACT varchar(50),
    PA_PHONE varchar(20),
    PA_FAX varchar(20),
    PA_TAT varchar(20),
    J7300_REIMBURSEMENT varchar(50),
    "58300_INSERTION" varchar(50),
    PBM varchar(30),
    PBM_PHONE varchar(20),
    PREFERRED_PHARMACY varchar(50),
    PHARMACY_PHONE varchar(20),
    PHARMACY_FAX varchar(20),
    SP_COPAY varchar(20),
    SP_NAME varchar(50),
    TRIAGE_DATE varchar(20),
    INVOICE_NUMBER varchar(20),
    SP_SHIP_DATE varchar(30),
    SHIP_TO_NAME varchar(100),
    SHIP_TO_ADDRESS_1 varchar(50),
    SHIP_TO_ADDRESS_2 varchar(50),
    SHIP_TO_CITY varchar(30),
    SHIP_TO_STATE varchar(2),
    SHIP_TO_ZIP varchar(10),
    CALL_DATE_1 varchar(20),
    PT_REACHED_1 varchar(10),
    WHO_WAS_REACHED_1 varchar(50),
    CALL_DATE_2 varchar(20),
    PT_REACHED_2 varchar(10),
    WHO_WAS_REACHED_2 varchar(50),
    CALL_DATE_3 varchar(20),
    PT_REACHED_3 varchar(10),
    WHO_WAS_REACHED_3 varchar(50),
    KEEPING_APPT varchar(10),
    ALTERNATE_METHOD varchar(30),
    ADDITIONAL_QUESTIONS varchar(10),
    TRANSFERRED varchar(10),
    TRANSFER_DESTINATION varchar(30),
    DISCHARGE_REASON varchar(50),
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(50),
    LAST_UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_HD_SMITH_SALES
(
    MONTH varchar(20),
    ORDER_DATE varchar(20),
    SHIP_DATE varchar(20),
    ORDER_NUM varchar(20),
    INVOICE_NUM varchar(20),
    ORDER_TYPE varchar(20),
    ORDER_CATEGORY varchar(20),
    RETURN_FLAG varchar(10),
    SHIP_TO_CUSTOMER_NUM varchar(10),
    SHIP_TO_CUSTOMER_NAME varchar(100),
    SHIP_TO_ADDRESS_1 varchar(100),
    SHIP_TO_ADDRESS_2 varchar(100),
    SHIP_TO_CITY varchar(50),
    SHIP_TO_STATE varchar(20),
    SHIP_TO_ZIP varchar(10),
    BILL_TO_CUSTOMER_NUM varchar(10),
    BILL_TO_CUSTOMER_NAME varchar(100),
    BILL_TO_ADDRESS_1 varchar(100),
    BILL_TO_ADDRESS_2 varchar(100),
    BILL_TO_CITY varchar(50),
    BILL_TO_STATE varchar(20),
    BILL_TO_ZIP varchar(10),
    CLASS_OF_TRADE varchar(20),
    CUSTOMER_DEA_NUM varchar(20),
    CUSTOMER_340B_NUM varchar(20),
    HEALTH_INDUSTRY_NUM varchar(20),
    STATE_LICENSE_NUM varchar(20),
    PLANT varchar(100),
    VENDOR varchar(100),
    MATERIAL_NUM varchar(20),
    MATERIAL_DESC varchar(100),
    PACK_SIZE numeric(37,15),
    NDC varchar(20),
    CONTRACT_NUM varchar(20),
    QUANTITY numeric(37,15),
    VALUE numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_PARAGARD_IC
(
    BP_CODE varchar(20),
    ACCOUNT_NAME varchar(100),
    STREET varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    TERRITORY varchar(10),
    DATA_SOURCE varchar(20),
    JAN_2012_DOLLAR numeric(37,15),
    FEB_2012_DOLLAR numeric(37,15),
    MAR_2012_DOLLAR numeric(37,15),
    APR_2012_DOLLAR numeric(37,15),
    MAY_2012_DOLLAR numeric(37,15),
    JUN_2012_DOLLAR numeric(37,15),
    JUL_2012_DOLLAR numeric(37,15),
    AUG_2012_DOLLAR numeric(37,15),
    SEP_2012_DOLLAR numeric(37,15),
    OCT_2012_DOLLAR numeric(37,15),
    NOV_2012_DOLLAR numeric(37,15),
    DEC_2012_DOLLAR numeric(37,15),
    JAN_2013_DOLLAR numeric(37,15),
    FEB_2013_DOLLAR numeric(37,15),
    MAR_2013_DOLLAR numeric(37,15),
    APR_2013_DOLLAR numeric(37,15),
    MAY_2013_DOLLAR numeric(37,15),
    JUN_2013_DOLLAR numeric(37,15),
    JUL_2013_DOLLAR numeric(37,15),
    AUG_2013_DOLLAR numeric(37,15),
    SEP_2013_DOLLAR numeric(37,15),
    OCT_2013_DOLLAR numeric(37,15),
    NOV_2013_DOLLAR numeric(37,15),
    DEC_2013_DOLLAR numeric(37,15),
    JAN_2014_DOLLAR numeric(37,15),
    FEB_2014_DOLLAR numeric(37,15),
    MAR_2014_DOLLAR numeric(37,15),
    APR_2014_DOLLAR numeric(37,15),
    MAY_2014_DOLLAR numeric(37,15),
    JUN_2014_DOLLAR numeric(37,15),
    JUL_2014_DOLLAR numeric(37,15),
    AUG_2014_DOLLAR numeric(37,15),
    SEP_2014_DOLLAR numeric(37,15),
    OCT_2014_DOLLAR numeric(37,15),
    NOV_2014_DOLLAR numeric(37,15),
    DEC_2014_DOLLAR numeric(37,15),
    JAN_2012_UNIT numeric(37,15),
    FEB_2012_UNIT numeric(37,15),
    MAR_2012_UNIT numeric(37,15),
    APR_2012_UNIT numeric(37,15),
    MAY_2012_UNIT numeric(37,15),
    JUN_2012_UNIT numeric(37,15),
    JUL_2012_UNIT numeric(37,15),
    AUG_2012_UNIT numeric(37,15),
    SEP_2012_UNIT numeric(37,15),
    OCT_2012_UNIT numeric(37,15),
    NOV_2012_UNIT numeric(37,15),
    DEC_2012_UNIT numeric(37,15),
    JAN_2013_UNIT numeric(37,15),
    FEB_2013_UNIT numeric(37,15),
    MAR_2013_UNIT numeric(37,15),
    APR_2013_UNIT numeric(37,15),
    MAY_2013_UNIT numeric(37,15),
    JUN_2013_UNIT numeric(37,15),
    JUL_2013_UNIT numeric(37,15),
    AUG_2013_UNIT numeric(37,15),
    SEP_2013_UNIT numeric(37,15),
    OCT_2013_UNIT numeric(37,15),
    NOV_2013_UNIT numeric(37,15),
    DEC_2013_UNIT numeric(37,15),
    JAN_2014_UNIT numeric(37,15),
    FEB_2014_UNIT numeric(37,15),
    MAR_2014_UNIT numeric(37,15),
    APR_2014_UNIT numeric(37,15),
    MAY_2014_UNIT numeric(37,15),
    JUN_2014_UNIT numeric(37,15),
    JUL_2014_UNIT numeric(37,15),
    AUG_2014_UNIT numeric(37,15),
    SEP_2014_UNIT numeric(37,15),
    OCT_2014_UNIT numeric(37,15),
    NOV_2014_UNIT numeric(37,15),
    DEC_2014_UNIT numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_PARAGARD_IC_PRIOR_MTH
(
    BP_CODE varchar(20),
    ACCOUNT_NAME varchar(100),
    STREET varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    TERRITORY varchar(10),
    DATA_SOURCE varchar(20),
    JAN_2012_DOLLAR numeric(37,15),
    FEB_2012_DOLLAR numeric(37,15),
    MAR_2012_DOLLAR numeric(37,15),
    APR_2012_DOLLAR numeric(37,15),
    MAY_2012_DOLLAR numeric(37,15),
    JUN_2012_DOLLAR numeric(37,15),
    JUL_2012_DOLLAR numeric(37,15),
    AUG_2012_DOLLAR numeric(37,15),
    SEP_2012_DOLLAR numeric(37,15),
    OCT_2012_DOLLAR numeric(37,15),
    NOV_2012_DOLLAR numeric(37,15),
    DEC_2012_DOLLAR numeric(37,15),
    JAN_2013_DOLLAR numeric(37,15),
    FEB_2013_DOLLAR numeric(37,15),
    MAR_2013_DOLLAR numeric(37,15),
    APR_2013_DOLLAR numeric(37,15),
    MAY_2013_DOLLAR numeric(37,15),
    JUN_2013_DOLLAR numeric(37,15),
    JUL_2013_DOLLAR numeric(37,15),
    AUG_2013_DOLLAR numeric(37,15),
    SEP_2013_DOLLAR numeric(37,15),
    OCT_2013_DOLLAR numeric(37,15),
    NOV_2013_DOLLAR numeric(37,15),
    DEC_2013_DOLLAR numeric(37,15),
    JAN_2014_DOLLAR numeric(37,15),
    FEB_2014_DOLLAR numeric(37,15),
    MAR_2014_DOLLAR numeric(37,15),
    APR_2014_DOLLAR numeric(37,15),
    MAY_2014_DOLLAR numeric(37,15),
    JUN_2014_DOLLAR numeric(37,15),
    JUL_2014_DOLLAR numeric(37,15),
    AUG_2014_DOLLAR numeric(37,15),
    SEP_2014_DOLLAR numeric(37,15),
    OCT_2014_DOLLAR numeric(37,15),
    NOV_2014_DOLLAR numeric(37,15),
    DEC_2014_DOLLAR numeric(37,15),
    JAN_2012_UNIT numeric(37,15),
    FEB_2012_UNIT numeric(37,15),
    MAR_2012_UNIT numeric(37,15),
    APR_2012_UNIT numeric(37,15),
    MAY_2012_UNIT numeric(37,15),
    JUN_2012_UNIT numeric(37,15),
    JUL_2012_UNIT numeric(37,15),
    AUG_2012_UNIT numeric(37,15),
    SEP_2012_UNIT numeric(37,15),
    OCT_2012_UNIT numeric(37,15),
    NOV_2012_UNIT numeric(37,15),
    DEC_2012_UNIT numeric(37,15),
    JAN_2013_UNIT numeric(37,15),
    FEB_2013_UNIT numeric(37,15),
    MAR_2013_UNIT numeric(37,15),
    APR_2013_UNIT numeric(37,15),
    MAY_2013_UNIT numeric(37,15),
    JUN_2013_UNIT numeric(37,15),
    JUL_2013_UNIT numeric(37,15),
    AUG_2013_UNIT numeric(37,15),
    SEP_2013_UNIT numeric(37,15),
    OCT_2013_UNIT numeric(37,15),
    NOV_2013_UNIT numeric(37,15),
    DEC_2013_UNIT numeric(37,15),
    JAN_2014_UNIT numeric(37,15),
    FEB_2014_UNIT numeric(37,15),
    MAR_2014_UNIT numeric(37,15),
    APR_2014_UNIT numeric(37,15),
    MAY_2014_UNIT numeric(37,15),
    JUN_2014_UNIT numeric(37,15),
    JUL_2014_UNIT numeric(37,15),
    AUG_2014_UNIT numeric(37,15),
    SEP_2014_UNIT numeric(37,15),
    OCT_2014_UNIT numeric(37,15),
    NOV_2014_UNIT numeric(37,15),
    DEC_2014_UNIT numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_PARAGARD_SEGMENT
(
    IMS_ID varchar(10),
    PARAGARD_SEGMENT varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_SPECIALTY_ACCOUNT
(
    DATA_SOURCE varchar(20),
    CUSTOMER_CODE varchar(20),
    CUSTOMER_NAME varchar(100),
    PARENT_CUSTOMER_CODE varchar(20),
    PARENT_CUSTOMER_NAME varchar(100),
    CUSTOMER_TYPE_CODE varchar(20),
    PVP_340B_ID varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_VEEVA_AFFILIATIONS
(
    PARENT_VEEVA_ACCOUNT_ID varchar(18) NOT NULL,
    CHILD_VEEVA_ACCOUNT_ID varchar(18) NOT NULL,
    ROLE varchar(50),
    INFLUENCE varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR
(
    SURVEY_VOD__C varchar(18),
    SURVEY_NAME varchar(80)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR
(
    SURVEY_QUESTION_VOD__C varchar(18),
    QUESTION_TEXT_VOD__C varchar(80)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_01
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_02
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_03
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_04
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_05
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.SYS_EXPORT_TABLE_06
(
    PROCESS_ORDER numeric(37,15),
    DUPLICATE numeric(37,15),
    DUMP_FILEID numeric(37,15),
    DUMP_POSITION numeric(37,15),
    DUMP_LENGTH numeric(37,15),
    DUMP_ORIG_LENGTH numeric(37,15),
    DUMP_ALLOCATION numeric(37,15),
    COMPLETED_ROWS numeric(37,15),
    ERROR_COUNT numeric(37,15),
    ELAPSED_TIME numeric(37,15),
    OBJECT_TYPE_PATH varchar(200),
    OBJECT_PATH_SEQNO numeric(37,15),
    OBJECT_TYPE varchar(30),
    IN_PROGRESS char(1),
    OBJECT_NAME varchar(500),
    OBJECT_LONG_NAME varchar(4000),
    OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_SCHEMA varchar(30),
    ORIGINAL_OBJECT_NAME varchar(4000),
    PARTITION_NAME varchar(30),
    SUBPARTITION_NAME varchar(30),
    FLAGS numeric(37,15),
    PROPERTY numeric(37,15),
    TRIGFLAG numeric(37,15),
    CREATION_LEVEL numeric(37,15),
    COMPLETION_TIME timestamp,
    OBJECT_TABLESPACE varchar(30),
    SIZE_ESTIMATE numeric(37,15),
    OBJECT_ROW numeric(37,15),
    PROCESSING_STATE char(1),
    PROCESSING_STATUS char(1),
    BASE_PROCESS_ORDER numeric(37,15),
    BASE_OBJECT_TYPE varchar(30),
    BASE_OBJECT_NAME varchar(30),
    BASE_OBJECT_SCHEMA varchar(30),
    ANCESTOR_PROCESS_ORDER numeric(37,15),
    DOMAIN_PROCESS_ORDER numeric(37,15),
    PARALLELIZATION numeric(37,15),
    UNLOAD_METHOD numeric(37,15),
    LOAD_METHOD numeric(37,15),
    GRANULES numeric(37,15),
    SCN numeric(37,15),
    GRANTOR varchar(30),
    XML_CLOB varchar(4000),
    PARENT_PROCESS_ORDER numeric(37,15),
    NAME varchar(30),
    VALUE_T varchar(4000),
    VALUE_N numeric(37,15),
    IS_DEFAULT numeric(37,15),
    FILE_TYPE numeric(37,15),
    USER_DIRECTORY varchar(4000),
    USER_FILE_NAME varchar(4000),
    FILE_NAME varchar(4000),
    EXTEND_SIZE numeric(37,15),
    FILE_MAX_SIZE numeric(37,15),
    PROCESS_NAME varchar(30),
    LAST_UPDATE timestamp,
    WORK_ITEM varchar(30),
    OBJECT_NUMBER numeric(37,15),
    COMPLETED_BYTES numeric(37,15),
    TOTAL_BYTES numeric(37,15),
    METADATA_IO numeric(37,15),
    DATA_IO numeric(37,15),
    CUMULATIVE_TIME numeric(37,15),
    PACKET_NUMBER numeric(37,15),
    OLD_VALUE varchar(4000),
    SEED numeric(37,15),
    LAST_FILE numeric(37,15),
    USER_NAME varchar(30),
    OPERATION varchar(30),
    JOB_MODE varchar(30),
    CONTROL_QUEUE varchar(30),
    STATUS_QUEUE varchar(30),
    REMOTE_LINK varchar(4000),
    VERSION numeric(37,15),
    JOB_VERSION varchar(30),
    DB_VERSION varchar(30),
    "TIMEZONE" varchar(64),
    STATE varchar(30),
    PHASE numeric(37,15),
    GUID varbinary(16),
    START_TIME timestamp,
    BLOCK_SIZE numeric(37,15),
    METADATA_BUFFER_SIZE numeric(37,15),
    DATA_BUFFER_SIZE numeric(37,15),
    DEGREE numeric(37,15),
    PLATFORM varchar(101),
    ABORT_STEP numeric(37,15),
    INSTANCE varchar(60),
    CLUSTER_OK numeric(37,15),
    SERVICE_NAME varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.S_ACCNT_POSTN
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACCNT_NAME varchar(100) NOT NULL,
    OU_EXT_ID varchar(15) NOT NULL,
    POSITION_ID varchar(15) NOT NULL,
    ROW_STATUS varchar(10) NOT NULL,
    ASGN_DNRM_FLG char(1),
    ASGN_MANL_FLG char(1),
    ASGN_SYS_FLG char(1),
    CLIENT_FLG char(1),
    FACILITY_FLG char(1),
    INVSTR_FLG char(1),
    PRIORITY_FLG char(1),
    PRTNR_FLG char(1),
    SRV_PROVDR_FLG char(1),
    END_DT timestamp,
    INCLUDE_BRIEF_FLG char(1),
    LAST_CALL_DT timestamp,
    ORG_REF_CUST_FLG char(1),
    START_DT timestamp,
    ACCNT_LOC varchar(50),
    ACCNT_TYPE_CD varchar(30),
    COMMENTS varchar(255),
    CVRG_ROLE_CD varchar(30),
    PROD_ID varchar(15),
    ROLE_CD varchar(30),
    STATUS varchar(30),
    ASGN_RULE_GRP_ID varchar(15),
    ASGN_TERR_ID varchar(15),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    DNRM_ACCNT_EMP_FLG char(1),
    DOCK_FLG char(1),
    NEXT_CALL_DT timestamp,
    NEXT_CALL_OBJECTIV varchar(1500),
    RANK_CD varchar(30),
    X_SRC_LAST_UPD timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.S_ACT_PRDINT
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACTIVITY_ID varchar(15) NOT NULL,
    OPTIMIZATION_FLG char(1) NOT NULL,
    PRDINT_ID varchar(15) NOT NULL,
    RELATION_TYPE_CD varchar(30) NOT NULL,
    ADJUST_QTY numeric(22,7),
    CURR_AVAIL_QTY numeric(10,0),
    ESTIMATE_DT timestamp,
    EST_SEC_HELD numeric(22,7),
    HLDNG_REPORT_DT timestamp,
    INTRST_PRICE numeric(22,7),
    INTRST_REPORT_DT timestamp,
    PRIORITY numeric(10,0),
    QTY numeric(22,7),
    QTY_CHANGE numeric(22,7),
    QTY_HELD numeric(22,7),
    QTY_INTRST numeric(22,7),
    INTRST_LVL_CD varchar(30),
    INTRST_TYPE_CD varchar(30),
    LOT_ID varchar(15),
    LOT_NUM varchar(30),
    PR_ISS_ID varchar(15),
    PR_ORDER_ITEM_ID varchar(15),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    INTEGRATION_ID varchar(30),
    MAX_ALLOC_QTY numeric(22,7),
    MAX_CALL_QTY numeric(22,7),
    MAX_PRODUCT_QTY numeric(22,7),
    PROD_ALLOC_ID varchar(15),
    SUM_SAMPLE_ALLOC numeric(22,7),
    SUM_SAMPLE_PROD numeric(22,7),
    X_SRC_LAST_UPD timestamp,
    X_REPORTABLE_FLG char(1),
    X_RETAIL_PRICE numeric(22,7)
);


CREATE TABLE WSMP_ADMIN_ORA.S_ACT_PROD_APPL
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACTIVITY_ID varchar(15) NOT NULL,
    APPLCTN_CD varchar(30) NOT NULL,
    PRDINT_ID varchar(15) NOT NULL,
    PRIORITY_NUM numeric(10,0),
    PR_ISS_ID varchar(15),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    PROD_ALLOC_ID varchar(15),
    X_INTEGRATION_ID varchar(30),
    X_SRC_LAST_UPD timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.S_ADDR_PER
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ADDR_NAME varchar(500) NOT NULL,
    DISA_CLEANSE_FLG char(1) NOT NULL,
    NAME_LOCK_FLG char(1) NOT NULL,
    PREMISE_FLG char(1) NOT NULL,
    ACTIVE_FLG char(1),
    END_DT timestamp,
    INFO_RECORD_DT timestamp,
    LATITUDE numeric(22,7),
    LONGITUDE numeric(22,7),
    START_DT timestamp,
    ADDR varchar(200),
    ADDR_LINE_2 varchar(100),
    ADDR_LINE_3 varchar(100),
    ADDR_MAIL_CD varchar(30),
    ADDR_NUM varchar(30),
    ADDR_SUB_CD varchar(30),
    ADDR_TYPE_CD varchar(30),
    BILLACCT_ID varchar(15),
    CITY varchar(50),
    COMMENTS varchar(255),
    COUNTRY varchar(30),
    COUNTY varchar(50),
    DESCRIPTOR varchar(100),
    DISTRICT varchar(50),
    EMAIL_ADDR varchar(100),
    FAX_PH_NUM varchar(40),
    INTEGRATION2_ID varchar(30),
    INTEGRATION3_ID varchar(30),
    INTEGRATION_ID varchar(30),
    LANDLORD_NAME varchar(100),
    LANDLORD_PH_NUM varchar(40),
    OWNERSHIP_CD varchar(30),
    PER_ID varchar(15),
    PH_NUM varchar(40),
    PROVINCE varchar(50),
    RURAL_ROUTE_NUM varchar(10),
    STATE varchar(10),
    TIME_ZONE_CD varchar(30),
    ZIPCODE varchar(30),
    ADDR_LINE_4 varchar(100),
    ADDR_LINE_5 varchar(100),
    ADDRESSEE varchar(100),
    AIA_INTEG_ID varchar(150),
    ALIGNMENT_FLG char(1) NOT NULL,
    ALTITUDE numeric(22,7),
    COUNTRY_REGION varchar(100),
    CROSS_ST varchar(100),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    LOCATION_FLG char(1) NOT NULL,
    METRO_AREA varchar(100),
    MISC_ADDR_LINE varchar(100),
    MSA numeric(10,0),
    PAR_ADDR_ID varchar(15),
    UTM_EASTING varchar(30),
    UTM_NORTHING varchar(30),
    WORLD_AREA varchar(100),
    ZIPCODE_EXT varchar(4)
);


CREATE TABLE WSMP_ADMIN_ORA.S_CONTACT
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    ACTIVE_FLG char(1) NOT NULL,
    BU_ID varchar(15) NOT NULL,
    COURT_PAY_FLG char(1) NOT NULL,
    DISA_CLEANSE_FLG char(1) NOT NULL,
    DISP_IMG_AUTH_FLG char(1) NOT NULL,
    EMAIL_SR_UPD_FLG char(1) NOT NULL,
    EMP_FLG char(1) NOT NULL,
    FST_NAME varchar(50) NOT NULL,
    INVSTGTR_FLG char(1) NOT NULL,
    LAST_NAME varchar(50) NOT NULL,
    PERSON_UID varchar(100) NOT NULL,
    PO_PAY_FLG char(1) NOT NULL,
    PRIV_FLG char(1) NOT NULL,
    PROSPECT_FLG char(1) NOT NULL,
    PTSHP_CONTACT_FLG char(1) NOT NULL,
    PTSHP_KEY_CON_FLG char(1) NOT NULL,
    SEND_SURVEY_FLG char(1) NOT NULL,
    SPEAKER_FLG char(1) NOT NULL,
    SUPPRESS_EMAIL_FLG char(1) NOT NULL,
    SUPPRESS_FAX_FLG char(1) NOT NULL,
    SUSPECT_FLG char(1) NOT NULL,
    AGENT_FLG char(1),
    ENTERPRISE_FLAG char(1),
    MEMBER_FLG char(1),
    OK_TO_SAMPLE_FLG char(1),
    PROVIDER_FLG char(1),
    PR_REP_DNRM_FLG char(1),
    PR_REP_MANL_FLG char(1),
    PR_REP_SYS_FLG char(1),
    SEND_FIN_FLG char(1),
    SEND_NEWS_FLG char(1),
    SEND_PROMOTES_FLG char(1),
    SUPPRESS_CALL_FLG char(1),
    SUPPRESS_MAIL_FLG char(1),
    AGE numeric(22,7),
    ANNL_INCM_AMT numeric(22,7),
    ANNL_INCM_EXCH_DT timestamp,
    ASGN_DT timestamp,
    ASGN_EXCLD_FLG2 char(1),
    ASGN_REQUIRED_FLG2 char(1),
    ASGN_USR_EXCLD_FLG char(1),
    BIRTH_DT timestamp,
    CALL_FLG char(1),
    CONSUMER_FLG char(1),
    CON_CREATED_DT timestamp,
    CREDIT_SCORE numeric(22,7),
    CUST_END_DT timestamp,
    CUST_SINCE_DT timestamp,
    DEDUP_DATACLNSD_DT timestamp,
    DEDUP_KEY_UPD_DT timestamp,
    DEDUP_LAST_MTCH_DT timestamp,
    HARD_TO_REACH char(1),
    INVES_START_DT timestamp,
    INV_ORG_ST_DT timestamp,
    LAST_CREDIT_DT timestamp,
    LATITUDE numeric(22,7),
    LONGITUDE numeric(22,7),
    MGMNT_FLG char(1),
    SEMINAR_INVIT_FLG char(1),
    ACTIVE_CTI_CFG_ID varchar(15),
    ACTIVE_TELESET_ID varchar(15),
    ALIAS_NAME varchar(50),
    ALT_EMAIL_ADDR varchar(50),
    ALT_EMAIL_LOC_CD varchar(30),
    ALT_PH_NUM varchar(40),
    ANNL_INCM_CURCY_CD varchar(20),
    AREA_ID varchar(15),
    ASST_PH_NUM varchar(40),
    CALL_FREQUENCY varchar(30),
    CELL_PH_NUM varchar(40),
    COMMENTS varchar(255),
    COMPLEXION_CD varchar(30),
    CON_ASST_NAME varchar(50),
    CON_ASST_PER_ID varchar(15),
    CON_CD varchar(30),
    CON_EXPER_CD varchar(30),
    CON_IMAGE_ID varchar(15),
    CON_INFLUNC_ID varchar(15),
    CON_MANAGER_NAME varchar(50),
    CON_MANAGER_PER_ID varchar(15),
    CREATOR_LOGIN varchar(50),
    CREDIT_AGENCY varchar(30),
    CSN varchar(50),
    CUST_STAT_CD varchar(30),
    CUST_VALUE_CD varchar(30),
    DECISION_TYPE_CD varchar(30),
    DEDUP_TOKEN varchar(100),
    DEGREE varchar(30),
    DFLT_ORDER_PROC_CD varchar(30),
    EMAIL_ADDR varchar(100),
    EMAIL_LOC_CD varchar(30),
    EMPLMNT_STAT_CD varchar(30),
    EMP_ID varchar(15),
    EMP_NUM varchar(30),
    EMP_WORK_LOC_NAME varchar(50),
    EYE_COLOR varchar(30),
    FAX_PH_NUM varchar(40),
    HAIR_COLOR varchar(30),
    HEIGHT varchar(20),
    HOME_PH_NUM varchar(40),
    INDUST_ID varchar(15),
    INTEGRATION_ID varchar(30),
    JOB_TITLE varchar(75),
    LOGIN varchar(50),
    MAIDEN_NAME varchar(50),
    MARITAL_STAT_CD varchar(30),
    MED_SPEC_ID varchar(15),
    MID_NAME varchar(50),
    MOTHER_MAIDEN_NAME varchar(50),
    NATIONALITY varchar(30),
    NEW_USER_RESP_NAME varchar(50),
    NICK_NAME varchar(50),
    OCCUPATION varchar(50),
    OU_ID varchar(15),
    OU_MAIL_STOP varchar(30),
    OWNER_LOGIN varchar(50),
    OWNER_PER_ID varchar(15),
    PAGER_COMPANY_ID varchar(15),
    PAGER_NUM varchar(40),
    PAGER_PH_NUM varchar(40),
    PAGER_PIN varchar(40),
    PAGER_TYPE_CD varchar(30),
    PASSWORD varchar(20),
    PER_TITLE varchar(15),
    PER_TITLE_SUFFIX varchar(15),
    PLACE_OF_BIRTH varchar(100),
    POSTN_CD varchar(30),
    PRACTICE_TYPE varchar(30),
    PREF_COMM_MEDIA_CD varchar(30),
    PREF_COMM_METH_CD varchar(30),
    PREF_LANG_ID varchar(15),
    PREF_SALE_DLR_ID varchar(15),
    PRIVACY_CD varchar(30),
    PR_ACT_ID varchar(15),
    PR_AFFL_ID varchar(15),
    PR_ALT_PH_NUM_ID varchar(15),
    PR_ASSET_ID varchar(15),
    PR_BL_PER_ADDR_ID varchar(15),
    PR_CLIENT_OU_ID varchar(15),
    PR_CON_ADDR_ID varchar(15),
    PR_CST_ACCNT_ID varchar(15),
    PR_CTI_CFG_ID varchar(15),
    PR_DEPT_OU_ID varchar(15),
    PR_DRVR_LICENSE_ID varchar(15),
    PR_EMAIL_ADDR_ID varchar(15),
    PR_FACILITY_ID varchar(15),
    PR_GRP_OU_ID varchar(15),
    PR_HELD_POSTN_ID varchar(15),
    PR_IMAGE_ID varchar(15),
    PR_INDUST_ID varchar(15),
    PR_MKT_SEG_ID varchar(15),
    PR_NOTE_ID varchar(15),
    PR_OPTY_ID varchar(15),
    PR_OU_ADDR_ID varchar(15),
    PR_PER_ADDR_ID varchar(15),
    PR_PER_PAY_PRFL_ID varchar(15),
    PR_PHONE_ID varchar(15),
    PR_POSTN_ID varchar(15),
    PR_PROD_ID varchar(15),
    PR_PROD_LN_ID varchar(15),
    PR_REGION_ID varchar(15),
    PR_RESP_ID varchar(15),
    PR_SECURITY_ID varchar(15),
    PR_SH_PER_ADDR_ID varchar(15),
    PR_SPECIALTY_ID varchar(15),
    PR_STATE_LIC_ID varchar(15),
    PR_SYNC_USER_ID varchar(15),
    PR_TERR_ID varchar(15),
    PR_USERROLE_ID varchar(15),
    RACE varchar(30),
    RATING varchar(30),
    REGION_ID varchar(15),
    REGL_STAT_CD varchar(30),
    ROUTE varchar(30),
    SEX_MF varchar(30),
    SOC_SECURITY_NUM varchar(20),
    SRC_ID varchar(15),
    STATUS_CD varchar(30),
    STAT_REASON_CD varchar(30),
    STOCK_PORTFOLIO varchar(500),
    SUB_SPEC_ID varchar(15),
    SVC_BRANCH_ID varchar(15),
    TIMEZONE_ID varchar(15),
    TMZONE_CD varchar(30),
    WEATHR_LOC_PREF varchar(75),
    WEB_REGION_ID varchar(15),
    WEIGHT varchar(20),
    WORK_PH_NUM varchar(40),
    AIA_INTEG_ID varchar(150),
    APPROVAL_STATUS_CD varchar(30),
    CITIZENSHIP_CD varchar(30),
    CORP_PTRNL_LSTNAME varchar(50),
    COUNTRY_TEMPLATE varchar(15),
    CURR_PRI_LST_ID varchar(15),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    DEATH_DT timestamp,
    EMAIL_STATUS_CD varchar(30),
    ETHNICITY_CD varchar(30),
    FURI_PTRNL_LSTNAME varchar(50),
    HEIGHT_UOM_CD varchar(30),
    LEFT_EYE_CLR_CD varchar(30),
    LST_EMLADR_UPD_TS timestamp,
    MSTR_CASE_ID varchar(15),
    NUM_HARD_BNCE numeric(10,0),
    NUM_SOFT_BNCE numeric(10,0),
    PATERNAL_LAST_NAME varchar(50),
    PR_COMM_LANG_ID varchar(15),
    PREF_LOCALE_ID varchar(15),
    PRESENCE_URI varchar(100),
    RELIABILITY_CD varchar(30),
    RESIDENT_STAT_CD varchar(30),
    RIGHT_EYE_CLR_CD varchar(30),
    SEC_ANSWR varchar(50),
    SEC_QUEST_CD varchar(30),
    SPOUSE_LAST_NAME varchar(50),
    SUSP_WTCH_FLG char(1) NOT NULL,
    WEIGHT_UOM_CD varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.S_CONTACT_FNX
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    ADDR_VERIFY_FLG char(1) NOT NULL,
    ATTRNY_FLG char(1) NOT NULL,
    CHK_TRUNC_RCV_FLG char(1) NOT NULL,
    GRAND_CHILD_FLG char(1) NOT NULL,
    HLTHCR_ATTRNY_FLG char(1) NOT NULL,
    LIAB_PROVD_FLG char(1) NOT NULL,
    OBLG_PAST_DUE_FLG char(1) NOT NULL,
    POST_NUPTL_AGR_FLG char(1) NOT NULL,
    PRE_NUPTL_AGR_FLG char(1) NOT NULL,
    PROSRV_INTRACT_FLG char(1) NOT NULL,
    STMT_PREP_PROF_FLG char(1) NOT NULL,
    TRUST_EXECUTE_FLG char(1) NOT NULL,
    WILL_EXECUTE_FLG char(1) NOT NULL,
    WILL_FLG char(1) NOT NULL,
    WIRE_ACTIVE_FLG char(1) NOT NULL,
    ACCSS_FRD_FILE_FLG char(1),
    AGENT_NUM numeric(10,0),
    AGNT_CONTRACT_DT timestamp,
    AMS_CAPABILITY_LVL numeric(10,0),
    ANNL_INCOME numeric(22,7),
    ANNL_INCOME_DT timestamp,
    ANNL_REVENUE numeric(22,7),
    ARCH_REQST_FLG char(1),
    BK_BNK_FEE_AMT numeric(22,7),
    BK_CLAIM_AMT numeric(22,7),
    BK_CLAIM_DT timestamp,
    BK_DSCLOSR_DT timestamp,
    BK_FILED_DT timestamp,
    BK_GRANT_AMT numeric(22,7),
    BK_HEARING_DT timestamp,
    BK_LGL_FEE_AMT numeric(22,7),
    BK_PETITION_DT timestamp,
    BK_RCVD_AMT numeric(22,7),
    BK_REAFFRM_AMT numeric(22,7),
    BK_REAFFRM_DT timestamp,
    BK_REMAING_AMT numeric(22,7),
    BK_SEC_DEP_AMT numeric(22,7),
    BK_STIPLATN_DT timestamp,
    BL_OUTPYMNT_AMT numeric(22,7),
    BRLOC_ATTRIB03 numeric(22,7),
    BRLOC_ATTRIB08 char(1),
    BRLOC_ATTRIB09 char(1),
    BRLOC_ATTRIB10 char(1),
    BRLOC_ATTRIB11 char(1),
    BRLOC_ATTRIB12 char(1),
    BRLOC_ATTRIB13 char(1),
    CASH_AMT numeric(22,7),
    CBR_SERVICE_LVL numeric(10,0),
    CLEAR_DUP_AUTH_FLG char(1),
    CLEAR_FRD_AUTH_FLG char(1),
    CMNUTY_PRPTY_DT timestamp,
    COB_FLG char(1),
    COMP_OWNER_FLG char(1),
    CRDT_SCRE_OVRD_FLG char(1),
    CREDIT_BUR_HIT_NUM numeric(10,0),
    CREDIT_SCORE numeric(22,7),
    CRRPT_REQ_FLG char(1),
    DECEASED_FLG char(1),
    DLR_TLR_OVRD_FLG char(1),
    DR_LICENSE_EXP_DT timestamp,
    EBPP_ENRL_FLG char(1),
    EBP_ENRL_FLG char(1),
    EBP_PAYMT_LIMIT numeric(22,7),
    EMPL_START_DT timestamp,
    ENTRD_REGN_FLG char(1),
    FINPLAN_COMPL_DT timestamp,
    FST_AUTO_INS_DT timestamp,
    HLTCR_POA_UPD_DT timestamp,
    IDEN2_EXP_DT timestamp,
    INS_NEED_REV_DT timestamp,
    IRR_INSTRST_UPD_DT timestamp,
    IRR_TRST_UPD_DT timestamp,
    JOBS_FIVE_YRS numeric(10,0),
    LAST_CONTACTED_DT timestamp,
    LAST_MARRIAGE_DT timestamp,
    LIVE_TRUST_DT timestamp,
    LIVE_WILL_UPD_DT timestamp,
    LOAN_FORECLSURE_DT timestamp,
    LST_WILL_UPD_DT timestamp,
    MAX_RQST_PRTY_LVL numeric(10,0),
    MTH_OBLG_AMT numeric(22,7),
    NO_YRS_SCHOOL numeric(22,7),
    NUM_DEPENDS numeric(22,7),
    NUM_EST_DEPOSIT numeric(22,7),
    NUM_VAC_DAYS numeric(10,0),
    NUM_VISIT_RESD numeric(10,0),
    NUM_VISIT_WORK numeric(10,0),
    OVRD_AUTO_VAL_FLG char(1),
    PASSPORT_EXP_DT timestamp,
    PASSPORT_ISSUE_DT timestamp,
    PERM_RESIDENT_FLG char(1),
    PERSIST_RATIO numeric(22,7),
    POA_UPD_DT timestamp,
    POST_NUPTL_AGR_DT timestamp,
    PRE_NUPTL_AGR_DT timestamp,
    RECV_TRUST_UPD_DT timestamp,
    RESDNCE_VAL numeric(22,7),
    RESDNCE_YRS numeric(10,0),
    RETIRED_FLG char(1),
    REVOC_TRST_UPD_DT timestamp,
    SCR_RPT_OVRD_FLG char(1),
    SELF_EMPL_FLG char(1),
    SPOUSE_BIRTH_DT timestamp,
    STATE_IDEN_DT timestamp,
    STG_RTE_OVRD_FLG char(1),
    TAX_BRACKET numeric(22,7),
    TOTAL_ASSET numeric(22,7),
    TOTAL_LIABILITY numeric(22,7),
    TRUST_AGREE_DT timestamp,
    TURNDOWN_AUTH_FLG char(1),
    US_CITIZEN_FLG char(1),
    WED_ANVRSRY_DT timestamp,
    YEARS_EMPLYMT numeric(10,0),
    YL_LAST_LOGIN_TS timestamp,
    YL_LAST_UPD_TS timestamp,
    YL_START_UPD_TS timestamp,
    ACCESS_LVL_CD varchar(30),
    ANNL_REV_CURCY_CD varchar(20),
    ATTRITION_RISK_CD varchar(30),
    AUTH_TEXT varchar(250),
    BEHAVIOUR_CD varchar(30),
    BEST_CALLTM_CD varchar(30),
    BILL_PAY_MTHD_CD varchar(30),
    BIRTH_PLACE varchar(50),
    BK_CASE_NUM varchar(10),
    BK_CHPTR_CD varchar(30),
    BK_COURT_NAME varchar(50),
    BK_REF_ASSET_ID varchar(15),
    BK_REF_ASSET_NAME varchar(50),
    BRLOC_ATTRIB01 varchar(50),
    BRLOC_ATTRIB02 varchar(30),
    BRLOC_ATTRIB04 varchar(30),
    BRLOC_ATTRIB05 varchar(10),
    BRLOC_ATTRIB06 varchar(30),
    BRLOC_ATTRIB07 varchar(30),
    COM_PREFERENCE varchar(30),
    CRRPT_FMT_CD varchar(30),
    CURR_FUNDS_MGD varchar(250),
    DEAR_NAME varchar(50),
    DEBT_FEEL_CD varchar(30),
    DEPENDS_DESC varchar(50),
    DEPT_TYPE_CD varchar(30),
    DR_LICENSE_NUM varchar(40),
    DR_LICENSE_STATE varchar(30),
    EBP_IDEN_NUM varchar(30),
    EDUCATION varchar(250),
    EDU_CD varchar(30),
    EMPLOYER_NAME varchar(250),
    EVAL_STAT_CD varchar(30),
    EVIDENCE_REASON varchar(250),
    GOALS varchar(250),
    HEIGHT varchar(20),
    HIST_FUNDS_MGD varchar(250),
    HOBBY_CD varchar(30),
    IDEN2_NUM varchar(40),
    IDEN2_TYPE_CD varchar(30),
    IDEN_NUM varchar(40),
    IDEN_TYPE_CD varchar(30),
    INCOME_RANGE_CD varchar(30),
    INFO_SOURCE_CD varchar(30),
    INS_CVRG_CD varchar(30),
    INTERESTS_TEXT varchar(250),
    INTR_CHG_IMP_CD varchar(30),
    INTR_RATE_SRVEY_CD varchar(30),
    INVST_EXPR_CD varchar(30),
    INVST_HORIZ_CD varchar(30),
    INVST_KNWLDG_CD varchar(30),
    INVST_OBJ_CD varchar(30),
    INVST_PROFILE_CD varchar(30),
    INVST_RISK_CD varchar(30),
    ISSUE_DESC varchar(250),
    LAST_CONTACTED_BY varchar(15),
    LIFE_EVENT_CD varchar(30),
    LIQUDTY_SRVEY_CD varchar(30),
    LOB_REFER_SRC_CD varchar(30),
    MEMBER_NUM varchar(50),
    MGR_TENURE varchar(20),
    MRKT_CAP_PREF_CD varchar(30),
    NET_WORTH_CD varchar(30),
    NET_WRTHVALMTHD_CD varchar(30),
    NET_WRTHVALTYPE_CD varchar(30),
    NET_WRTH_SRC_CD varchar(30),
    NOT_VERIFIED_REASN varchar(250),
    NPI_NUM varchar(30),
    PANEL_CD varchar(30),
    PEEVES_TEXT varchar(250),
    PERF_EXPECT_CD varchar(30),
    PHLNTRPHY_OBJTV_CD varchar(30),
    POST_RETIREMENT_CD varchar(30),
    PRACTICE_CD varchar(30),
    PREV_BANK_BRANCH varchar(50),
    PREV_BANK_PH_NUM varchar(40),
    PRONUNCIATION varchar(100),
    PR_METRP_STAT_AREA varchar(10),
    PURCH_TYPE_CD varchar(30),
    REFER_SRC_CD varchar(30),
    REGION_CD varchar(30),
    RESDNCE_CATG_CD varchar(30),
    RESDNCE_TYPE_CD varchar(30),
    RESIDENCY_INSTN varchar(50),
    RISK_RATING_INFO varchar(50),
    RSRCH_CHNL_PREF_CD varchar(30),
    SALUTATION_CD varchar(30),
    SERVICE_GUIDELINE varchar(250),
    SHOW_APPL_CHOICE varchar(100),
    STATUS_CD varchar(30),
    STMT_FORMAT_CD varchar(30),
    STMT_FREQ_CD varchar(30),
    TECH_IMP_CD varchar(30),
    TLR_INTG_MSG varchar(250),
    TLR_INTG_RET_CD varchar(30),
    UPIN_NUM varchar(30),
    WEIGHT varchar(20),
    WILL_PREP_LOC varchar(50),
    YL_ENCRPKEY_REF varchar(30),
    YL_LASTUPD_TYPE_CD varchar(30),
    YL_LAST_ERR_MSG varchar(250),
    YL_LAST_UPD_STATUS varchar(50),
    YL_LOGIN varchar(50),
    YL_PASSWD varchar(90),
    YL_STATUS varchar(40),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    HOLD_PYMT_FLG char(1),
    IDEN2_STATE_CD varchar(30),
    IDEN_EXP_DT timestamp,
    IDEN_STATE_CD varchar(30),
    OFAC_FST_ACCESS_DT timestamp,
    OFAC_LST_ACCESS_DT timestamp,
    OFAC_STAT_CD varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.S_CON_ADDR
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACTIVE_FLG char(1) NOT NULL,
    ADDR_PER_ID varchar(15) NOT NULL,
    BL_ADDR_FLG char(1) NOT NULL,
    FRAUD_FLG char(1) NOT NULL,
    MAIN_ADDR_FLG char(1) NOT NULL,
    RELATION_TYPE_CD varchar(30) NOT NULL,
    SHIP_ADDR_FLG char(1) NOT NULL,
    DEA_EXPR_DT timestamp,
    END_DT timestamp,
    FRI_1ST_CLOSE_TM timestamp,
    FRI_1ST_OPEN_TM timestamp,
    FRI_2ND_CLOSE_TM timestamp,
    FRI_2ND_OPEN_TM timestamp,
    MON_1ST_CLOSE_TM timestamp,
    MON_1ST_OPEN_TM timestamp,
    MON_2ND_CLOSE_TM timestamp,
    MON_2ND_OPEN_TM timestamp,
    NUM_MONTHS_AT_ADDR numeric(10,0),
    SAT_1ST_CLOSE_TM timestamp,
    SAT_1ST_OPEN_TM timestamp,
    SAT_2ND_CLOSE_TM timestamp,
    SAT_2ND_OPEN_TM timestamp,
    START_DT timestamp,
    SUN_1ST_CLOSE_TM timestamp,
    SUN_1ST_OPEN_TM timestamp,
    SUN_2ND_CLOSE_TM timestamp,
    SUN_2ND_OPEN_TM timestamp,
    THU_1ST_CLOSE_TM timestamp,
    THU_1ST_OPEN_TM timestamp,
    THU_2ND_CLOSE_TM timestamp,
    THU_2ND_OPEN_TM timestamp,
    TUE_1ST_CLOSE_TM timestamp,
    TUE_1ST_OPEN_TM timestamp,
    TUE_2ND_CLOSE_TM timestamp,
    TUE_2ND_OPEN_TM timestamp,
    WED_1ST_CLOSE_TM timestamp,
    WED_1ST_OPEN_TM timestamp,
    WED_2ND_CLOSE_TM timestamp,
    WED_2ND_OPEN_TM timestamp,
    ACCNT_ID varchar(15),
    ADDR_MAIL_CD varchar(30),
    ADDR_TYPE_CD varchar(30),
    BRICK_ID varchar(15),
    BU_ID varchar(15),
    CONTACT_ID varchar(15),
    DEA_NUM varchar(30),
    DFLT_SHIP_PRIO_CD varchar(30),
    EMAIL_ADDR varchar(50),
    FAX_PH_NUM varchar(40),
    MAIL_TYPE_CD varchar(30),
    OCCUPANCY_CD varchar(30),
    ORG_GROUP_ID varchar(15),
    PH_NUM varchar(40),
    TRNSPRT_ZONE_CD varchar(30),
    X_ATTRIB_01 varchar(15),
    X_ATTRIB_02 varchar(15),
    X_ATTRIB_03 varchar(30),
    X_ATTRIB_04 varchar(50),
    X_ATTRIB_05 varchar(50),
    X_ATTRIB_06 varchar(100),
    X_ATTRIB_07 varchar(255),
    X_OK_TO_SAMPLE char(1),
    ADDRESSEE varchar(100),
    ALIGNMENT_FLG char(1),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    YEARLY_END_DT timestamp,
    YEARLY_START_DT timestamp,
    X_SRC_LAST_UPD timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.S_EVT_ACT
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACTIVITY_UID varchar(30) NOT NULL,
    PAR_EVT_ID varchar(15),
    APPT_START_DT timestamp,
    APPT_START_TM timestamp,
    TARGET_OU_ID varchar(15),
    TARGET_OU_ADDR_ID varchar(15),
    TARGET_PER_ID varchar(15),
    TARGET_PER_ADDR_ID varchar(15),
    NAME varchar(150),
    ZIPCODE varchar(30),
    EVT_STAT_CD varchar(30),
    SUBTYPE_CD varchar(30),
    TODO_CD varchar(30),
    OWNER_PER_ID varchar(15),
    OWNER_POSTN_ID varchar(15),
    INTEGRATION_ID varchar(30),
    REF_NUM varchar(30),
    COMMENTS varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.S_EVT_ACT_X
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    ATTRIB_08 char(1),
    ATTRIB_09 char(1),
    ATTRIB_10 char(1),
    ATTRIB_11 char(1),
    ATTRIB_12 timestamp,
    ATTRIB_13 timestamp,
    ATTRIB_14 numeric(22,7),
    ATTRIB_15 numeric(22,7),
    ATTRIB_16 numeric(22,7),
    ATTRIB_17 numeric(22,7),
    ATTRIB_18 numeric(22,7),
    ATTRIB_19 numeric(22,7),
    ATTRIB_20 numeric(22,7),
    ATTRIB_21 numeric(22,7),
    ATTRIB_22 numeric(22,7),
    ATTRIB_23 numeric(22,7),
    ATTRIB_24 numeric(22,7),
    ATTRIB_25 numeric(22,7),
    ATTRIB_26 timestamp,
    ATTRIB_27 timestamp,
    ATTRIB_28 timestamp,
    ATTRIB_29 timestamp,
    ATTRIB_30 timestamp,
    ATTRIB_31 timestamp,
    ATTRIB_32 timestamp,
    ATTRIB_33 timestamp,
    ATTRIB_01 varchar(100),
    ATTRIB_02 varchar(100),
    ATTRIB_03 varchar(30),
    ATTRIB_04 varchar(30),
    ATTRIB_05 varchar(30),
    ATTRIB_06 varchar(30),
    ATTRIB_07 varchar(30),
    ATTRIB_34 varchar(50),
    ATTRIB_35 varchar(50),
    ATTRIB_36 varchar(50),
    ATTRIB_37 varchar(50),
    ATTRIB_38 varchar(50),
    ATTRIB_39 varchar(50),
    ATTRIB_40 varchar(50),
    ATTRIB_41 varchar(50),
    ATTRIB_42 varchar(50),
    ATTRIB_43 varchar(50),
    ATTRIB_44 varchar(100),
    ATTRIB_45 varchar(100),
    ATTRIB_46 varchar(100),
    ATTRIB_47 varchar(255),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.S_MED_SPEC
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    NAME varchar(50) NOT NULL,
    SPEC_CD varchar(15) NOT NULL,
    ASGN_TYPE_CD varchar(30),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    PAR_SPEC_CD varchar(30),
    SPEC_SEQ varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.S_ORG_EXT
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    ACCNT_FLG char(1) NOT NULL,
    ACTIVE_FLG char(1) NOT NULL,
    BUYING_GROUP_FLG char(1) NOT NULL,
    BU_ID varchar(15) NOT NULL,
    CG_DEDN_AUTH_FLG char(1) NOT NULL,
    CG_SVP_A_LOCK_FLG char(1) NOT NULL,
    CG_SVP_LOCK_FLG char(1) NOT NULL,
    CG_SVP_SKIP_FLG char(1) NOT NULL,
    CL_SITE_FLG char(1) NOT NULL,
    COURT_PAY_FLG char(1) NOT NULL,
    DISA_CLEANSE_FLG char(1) NOT NULL,
    EVT_LOC_FLG char(1) NOT NULL,
    FCST_ORG_FLG char(1) NOT NULL,
    FUND_ELIG_FLG char(1) NOT NULL,
    GOOD_STANDING_FLG char(1) NOT NULL,
    INCL_FLG char(1) NOT NULL,
    INT_ORG_FLG char(1) NOT NULL,
    NAME varchar(100) NOT NULL,
    PLAN_GROUP_FLG char(1) NOT NULL,
    PROSPECT_FLG char(1) NOT NULL,
    PRTNR_FLG char(1) NOT NULL,
    PRTNR_PUBLISH_FLG char(1) NOT NULL,
    RPLCD_WTH_CMPT_FLG char(1) NOT NULL,
    SKIP_PO_CRDCHK_FLG char(1) NOT NULL,
    AGENCY_FLG char(1),
    BRANCH_FLG char(1),
    BRIEFING_LAYOUT varchar(30),
    CLIENT_FLG char(1),
    ENTERPRISE_FLAG char(1),
    FACILITY_FLG char(1),
    INVSTR_FLG char(1),
    LANG_ID varchar(15),
    PR_REP_DNRM_FLG char(1),
    PR_REP_MANL_FLG char(1),
    PR_REP_SYS_FLG char(1),
    ASGN_DT timestamp,
    ASGN_USR_EXCLD_FLG char(1),
    ASSET_AMT numeric(22,7),
    ATM_COUNT numeric(10,0),
    AVAIL_CREDIT_AMT numeric(22,7),
    BILL_PBLSHR_FLG char(1),
    BO_ORDQRY_END_DT timestamp,
    BO_ORDQRY_START_DT timestamp,
    CG_CONS_END_OFFSET numeric(22,7),
    CG_CONS_STRTOFFSET numeric(22,7),
    CG_PRMO_END_OFFSET numeric(22,7),
    CG_SHIP_END_OFFSET numeric(22,7),
    CG_SHIP_STRTOFFSET numeric(22,7),
    CG_SVP_UPPER_LOCK numeric(10,0),
    CHNL_ANNL_SALES numeric(22,7),
    CHNL_QTR_SALES numeric(22,7),
    CHNL_SALES_GROWTH numeric(22,7),
    CLOSE_DT timestamp,
    CMPT_FLG char(1),
    CREDIT_SCORE numeric(22,7),
    CUR_YR_BK numeric(22,7),
    CUR_YR_BL numeric(22,7),
    CUST_END_DT timestamp,
    CUST_SINCE_DT timestamp,
    DEDUP_DATACLNSD_DT timestamp,
    DEDUP_KEY_UPD_DT timestamp,
    DEDUP_LAST_MTCH_DT timestamp,
    DISA_ALL_MAILS_FLG char(1),
    DIVISION_COUNT numeric(22,7),
    EAI_SYNC_DT timestamp,
    EMP_COUNT numeric(22,7),
    EVT_HOTEL_STD_RT numeric(22,7),
    EXCH_DT timestamp,
    FUL_CENTER_FLG char(1),
    GSA_FLG char(1),
    HARD_TO_REACH char(1),
    HIST_SLS_EXCH_DT timestamp,
    HIST_SLS_VOL numeric(22,7),
    HSHLDHD_AGE numeric(22,7),
    HSHLD_INC numeric(22,7),
    HSHLD_KIDAGE numeric(22,7),
    HSHLD_KIDS numeric(22,7),
    HSHLD_SIZE numeric(22,7),
    LAST_CALL_DT timestamp,
    LAST_MGR_REVW_DT timestamp,
    LATITUDE numeric(22,7),
    LONGITUDE numeric(22,7),
    MISC_FLG char(1),
    NUM_HSHLDS numeric(22,7),
    NUM_OF_BEDS numeric(22,7),
    NUM_REGS numeric(22,7),
    PARTNER_FLG char(1),
    PO_CRDCHK_THRSH numeric(22,7),
    PO_CRDCHK_THRSH_DT timestamp,
    PO_PAY_EXCH_DT timestamp,
    PO_PAY_FLG char(1),
    PO_PAY_MAX_AMT numeric(22,7),
    PRI_YR_BK numeric(22,7),
    PRI_YR_BL numeric(22,7),
    PROCED_FLG char(1),
    PRTNRSHP_START_DT timestamp,
    PRTNR_SALES_RANK numeric(22,7),
    PTNTL_SLS_EXCH_DT timestamp,
    PTNTL_SLS_VOL numeric(22,7),
    REFERENCE_CUST_FLG char(1),
    REFERENCE_START_DT timestamp,
    SALES_EMP_CNT numeric(10,0),
    SERVICE_EMP_CNT numeric(10,0),
    SRV_PROVDR_FLG char(1),
    STAT_CHG_DT timestamp,
    STORE_SIZE numeric(22,7),
    SUPPRESS_SHARE_FLG char(1),
    SUPRESS_CALL_FLG char(1),
    TAX_EXEMPT_FLG char(1),
    TRGT_IMPL_DT timestamp,
    VISIT_FREQUENCY numeric(10,0),
    WEEKLY_ACV numeric(22,7),
    ABA_NUMBER varchar(50),
    ACCNT_PR_CMPT_ID varchar(15),
    ACCNT_TYPE_CD varchar(30),
    ADL_STATUS varchar(30),
    ALIAS_NAME varchar(100),
    ALT_EMAIL_ADDR varchar(50),
    ALT_EMAIL_LOC_CD varchar(30),
    ANS_SRVC_PH_NUM varchar(40),
    ASGN_PH_AC varchar(5),
    ASGN_PH_CC varchar(5),
    BASE_CURCY_CD varchar(20),
    BO_CUST_GRP_CD varchar(30),
    BRANCH_TYPE_CD varchar(30),
    CALL_FREQUENCY varchar(30),
    CC_TXNPROC_AC_NUM varchar(30),
    CC_TXNPROC_VNDR_ID varchar(15),
    CG_PRMO_STRT_DAY varchar(15),
    CG_SVP_STATUS varchar(30),
    CHANNEL_TYPE varchar(50),
    CORP_STOCK_SYMBOL varchar(20),
    CREATOR_LOGIN varchar(50),
    CROSS_STREET varchar(40),
    CURR_PRI_LST_ID varchar(15),
    CURR_RATE_LST_ID varchar(15),
    CUR_SRV_ADDR_ID varchar(15),
    CUR_YR_BK_CURCY_CD varchar(20),
    CUR_YR_BL_CURCY_CD varchar(20),
    CUST_STAT_CD varchar(30),
    DEDUP_TOKEN varchar(100),
    DEPT_NUM varchar(30),
    DESC_TEXT varchar(255),
    DFLT_SHIP_PRIO_CD varchar(30),
    DIST_CHANNEL_CD varchar(30),
    DIVISION varchar(25),
    DIVN_CD varchar(30),
    DIVN_TYPE_CD varchar(30),
    DOM_ULT_DUNS_NUM varchar(15),
    DUNS_NUM varchar(15),
    EAI_ERROR_TEXT varchar(2000),
    EAI_EXPRT_STAT_CD varchar(30),
    EMAIL_ADDR varchar(50),
    EMAIL_LOC_CD varchar(30),
    EVT_LOC_CD varchar(30),
    EXEC_SPNSR_PSTN_ID varchar(15),
    EXPERTISE_CD varchar(30),
    FIN_RESP_CON_ID varchar(15),
    FRD_OWNER_EMP_ID varchar(15),
    FRGHT_TERMS_CD varchar(30),
    FRGHT_TERMS_INFO varchar(100),
    GENERAL_LEDGER varchar(50),
    GLBLULT_DUNS_NUM varchar(15),
    GRWTH_STRTGY_DESC varchar(1001),
    HIST_SLS_CURCY_CD varchar(20),
    HSHLDHD_GEN_CD varchar(30),
    HSHLDHD_OCC_CD varchar(30),
    HSHLD_ETHN_CD varchar(30),
    HSHLD_LOC_CD varchar(30),
    IMPL_DESC varchar(1000),
    IMPL_STAGE_CD varchar(30),
    INTEGRATION_ID varchar(30),
    LAST_REVW_MGR_ID varchar(15),
    LEGAL_FORM_CD varchar(30),
    LOC varchar(50),
    LOCATION_LEVEL varchar(30),
    MAIN_EMAIL_ADDR varchar(50),
    MAIN_FAX_PH_NUM varchar(40),
    MAIN_PH_NUM varchar(40),
    MANAGER_NAME varchar(40),
    MARKET_CLASS_CD varchar(30),
    MARKET_TYPE_CD varchar(30),
    MASTER_OU_ID varchar(15),
    NAME_1 varchar(100),
    OU_NUM varchar(30),
    OU_NUM_1 varchar(30),
    OU_TYPE_CD varchar(30),
    PAR_BU_ID varchar(15),
    PAR_DIVN_ID varchar(15),
    PAR_DUNS_NUM varchar(15),
    PAR_OU_ID varchar(15),
    PASSWORD varchar(20),
    PAYMENT_TERM_ID varchar(15),
    PO_PAY_CURCY_CD varchar(20),
    PREF_COMM_METH_CD varchar(30),
    PRIVACY_CD varchar(30),
    PRI_GRP_CD varchar(30),
    PRI_YR_BK_CURCY_CD varchar(20),
    PRI_YR_BL_CURCY_CD varchar(20),
    PROD_DIST_CD varchar(30),
    PRTNR_CERT_CD varchar(30),
    PRTNR_ORG_INT_ID varchar(15),
    PRTNR_TYPE_CD varchar(30),
    PR_ADDR_ID varchar(15),
    PR_ADDR_PER_ID varchar(15),
    PR_AGREE_ID varchar(15),
    PR_BL_ADDR_ID varchar(15),
    PR_BL_OU_ID varchar(15),
    PR_BL_PER_ID varchar(15),
    PR_COMPETITOR_ID varchar(15),
    PR_CON_ID varchar(15),
    PR_CO_MSTR_ID varchar(15),
    PR_CRDT_AREA_ID varchar(15),
    PR_DISCNT_ID varchar(15),
    PR_EAI_SLS_AREA_ID varchar(15),
    PR_EMP_REL_ID varchar(15),
    PR_EMP_TERR_ID varchar(15),
    PR_FULFL_INVLOC_ID varchar(15),
    PR_GEO_ID varchar(15),
    PR_IMPLSVC_VNDR_ID varchar(15),
    PR_INDUST_ID varchar(15),
    PR_LOGO_ID varchar(15),
    PR_MED_PROC_ID varchar(15),
    PR_MGR_POSTN_ID varchar(15),
    PR_MKT_SEG_ID varchar(15),
    PR_ORG_TRGT_MKT_ID varchar(15),
    PR_OU_TYPE_ID varchar(15),
    PR_PAY_OU_ID varchar(15),
    PR_PHONE_ID varchar(15),
    PR_POSTN_ID varchar(15),
    PR_PRFL_ID varchar(15),
    PR_PRI_LST_ID varchar(15),
    PR_PROD_ID varchar(15),
    PR_PROD_LN_ID varchar(15),
    PR_PRTNR_OU_ID varchar(15),
    PR_PRTNR_TIER_ID varchar(15),
    PR_PRTNR_TYPE_ID varchar(15),
    PR_PTSHP_MKTSEG_ID varchar(15),
    PR_REP_ASGN_TYPE varchar(30),
    PR_SECURITY_ID varchar(15),
    PR_SHIP_ADDR_ID varchar(15),
    PR_SHIP_OU_ID varchar(15),
    PR_SHIP_PER_ID varchar(15),
    PR_SITU_ID varchar(15),
    PR_SPECIALTY_ID varchar(15),
    PR_SPEC_ID varchar(15),
    PR_SRV_AGREE_ID varchar(15),
    PR_SVC_POSTN_ID varchar(15),
    PR_SYN_ID varchar(15),
    PR_TERR_ID varchar(15),
    PR_VEHICLE_ID varchar(15),
    PTNTL_SLS_CURCY_CD varchar(20),
    RATING varchar(30),
    REGION varchar(25),
    REGION_ID varchar(15),
    REL_ID varchar(15),
    REL_NAME varchar(100),
    REVENUE_CLASS_CD varchar(30),
    RLZD_ROI_DESC varchar(250),
    ROUTE varchar(30),
    RTE_TO_MKT_DESC varchar(500),
    RULE_ATTRIB1 varchar(50),
    RULE_ATTRIB2 varchar(50),
    SALES_ORG_CD varchar(30),
    SLS_DIST_CD varchar(30),
    STAFF varchar(250),
    STATUS_CD varchar(30),
    STAT_REASON_CD varchar(30),
    SURVEY_TYPE_CD varchar(30),
    SVC_CVRG_STAT_CD varchar(30),
    TAX_EXEMPT_NUM varchar(30),
    TAX_IDEN_NUM varchar(50),
    TAX_LIST_ID varchar(15),
    TICKER_SYM varchar(10),
    TLR_INTG_MSG varchar(250),
    TLR_INTG_RET_CD varchar(30),
    URL varchar(100),
    VAT_REGN_NUM varchar(30),
    VISIT_PERIOD varchar(30),
    AGENCY_INACTIVE_DT timestamp,
    AGENCY_INDICATOR varchar(30),
    AGENCY_NIBRS_IND varchar(30),
    AIA_INTEG_ID varchar(150),
    APPROVAL_STATUS_CD varchar(30),
    CMPNY_NAME varchar(50),
    CONTRACT_VIS_FLG char(1) NOT NULL,
    CORE_CITY_CD varchar(30),
    CORP_CMPNY_NAME varchar(50),
    COUNTRY_DIVISION varchar(30),
    COUNTRY_REGION varchar(30),
    COUNTRY_TEMPLATE varchar(15),
    COVERED_BY varchar(15),
    CREDIT_DAYS numeric(10,0),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    DIVN_TERR_HIER_ID varchar(15),
    FBI_FIELD_OFF_ID varchar(15),
    FURI_CMPNY_NAME varchar(50),
    JUDICIAL_DISTRICT varchar(30),
    LOY_PARTNER_CD varchar(30),
    ORI_CD varchar(30),
    ORI_TS timestamp,
    OWNERSHIP_TYPE_CD varchar(30),
    PAY_TYPE_CD varchar(30),
    POPULATION_GRP_CD varchar(30),
    PR_BILL_PRFL_ID varchar(15),
    PR_ORG_PAY_PRFL_ID varchar(15),
    PR_PRTNR_PROG_ID varchar(15),
    PR_TERRITORY_ID varchar(15),
    PREF_CARR_PRIO_CD varchar(30),
    PREF_SHIP_CARR_CD varchar(30),
    STATE_ABBRE_CD varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.S_ORG_EXT_X
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    ATTRIB_08 char(1),
    ATTRIB_09 char(1),
    ATTRIB_10 char(1),
    ATTRIB_11 char(1),
    ATTRIB_12 timestamp,
    ATTRIB_13 timestamp,
    ATTRIB_14 numeric(22,7),
    ATTRIB_15 numeric(22,7),
    ATTRIB_16 numeric(22,7),
    ATTRIB_17 numeric(22,7),
    ATTRIB_18 numeric(22,7),
    ATTRIB_19 numeric(22,7),
    ATTRIB_20 numeric(22,7),
    ATTRIB_21 numeric(22,7),
    ATTRIB_22 numeric(22,7),
    ATTRIB_23 numeric(22,7),
    ATTRIB_24 numeric(22,7),
    ATTRIB_25 numeric(22,7),
    ATTRIB_26 timestamp,
    ATTRIB_27 timestamp,
    ATTRIB_28 timestamp,
    ATTRIB_29 timestamp,
    ATTRIB_30 timestamp,
    ATTRIB_31 timestamp,
    ATTRIB_32 timestamp,
    ATTRIB_33 timestamp,
    ATTRIB_54 timestamp,
    ATTRIB_55 timestamp,
    ATTRIB_56 char(1),
    ATTRIB_57 numeric(22,7),
    ATTRIB_58 numeric(22,7),
    ATTRIB_59 numeric(22,7),
    ATTRIB_60 numeric(22,7),
    ATTRIB_61 numeric(22,7),
    ATTRIB_62 numeric(22,7),
    ATTRIB_63 numeric(22,7),
    ATTRIB_64 numeric(22,7),
    ATTRIB_65 numeric(22,7),
    FRI_1ST_CLOSE_TM timestamp,
    FRI_1ST_OPEN_TM timestamp,
    FRI_2ND_CLOSE_TM timestamp,
    FRI_2ND_OPEN_TM timestamp,
    MON_1ST_CLOSE_TM timestamp,
    MON_1ST_OPEN_TM timestamp,
    MON_2ND_CLOSE_TM timestamp,
    MON_2ND_OPEN_TM timestamp,
    SAT_1ST_CLOSE_TM timestamp,
    SAT_1ST_OPEN_TM timestamp,
    SAT_2ND_CLOSE_TM timestamp,
    SAT_2ND_OPEN_TM timestamp,
    SUN_1ST_CLOSE_TM timestamp,
    SUN_1ST_OPEN_TM timestamp,
    SUN_2ND_CLOSE_TM timestamp,
    SUN_2ND_OPEN_TM timestamp,
    THU_1ST_CLOSE_TM timestamp,
    THU_1ST_OPEN_TM timestamp,
    THU_2ND_CLOSE_TM timestamp,
    THU_2ND_OPEN_TM timestamp,
    TUE_1ST_CLOSE_TM timestamp,
    TUE_1ST_OPEN_TM timestamp,
    TUE_2ND_CLOSE_TM timestamp,
    TUE_2ND_OPEN_TM timestamp,
    WED_1ST_CLOSE_TM timestamp,
    WED_1ST_OPEN_TM timestamp,
    WED_2ND_CLOSE_TM timestamp,
    WED_2ND_OPEN_TM timestamp,
    ATTRIB_01 varchar(100),
    ATTRIB_02 varchar(100),
    ATTRIB_03 varchar(30),
    ATTRIB_04 varchar(30),
    ATTRIB_05 varchar(30),
    ATTRIB_06 varchar(30),
    ATTRIB_07 varchar(30),
    ATTRIB_34 varchar(50),
    ATTRIB_35 varchar(50),
    ATTRIB_36 varchar(50),
    ATTRIB_37 varchar(50),
    ATTRIB_38 varchar(50),
    ATTRIB_39 varchar(50),
    ATTRIB_40 varchar(50),
    ATTRIB_41 varchar(50),
    ATTRIB_42 varchar(50),
    ATTRIB_43 varchar(50),
    ATTRIB_44 varchar(100),
    ATTRIB_45 varchar(100),
    ATTRIB_46 varchar(100),
    ATTRIB_47 varchar(255),
    ATTRIB_48 varchar(50),
    ATTRIB_49 varchar(50),
    ATTRIB_50 varchar(50),
    ATTRIB_51 varchar(50),
    ATTRIB_52 varchar(250),
    ATTRIB_53 varchar(250),
    ATTRIB_66 varchar(100),
    ATTRIB_67 varchar(100),
    ATTRIB_68 varchar(100),
    ATTRIB_69 varchar(100),
    ATTRIB_70 varchar(100),
    ATTRIB_71 varchar(100),
    ATTRIB_72 varchar(100),
    ATTRIB_73 numeric(22,7),
    ATTRIB_74 numeric(22,7),
    ATTRIB_75 numeric(22,7),
    ATTRIB_76 numeric(22,7),
    ATTRIB_77 numeric(22,7),
    ATTRIB_78 numeric(22,7),
    ATTRIB_79 numeric(22,7),
    ATTRIB_80 numeric(22,7),
    ATTRIB_81 numeric(22,7),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    X_ATTRIB_100 char(1),
    X_ATTRIB_101 char(1),
    X_ATTRIB_102 char(1),
    X_ATTRIB_103 char(1),
    X_ATTRIB_104 char(1),
    X_ATTRIB_105 timestamp,
    X_ATTRIB_106 timestamp,
    X_ATTRIB_107 varchar(50),
    X_ATTRIB_108 varchar(50),
    X_ATTRIB_109 varchar(255),
    X_ATTRIB_110 varchar(255),
    X_ATTRIB_111 varchar(2000),
    X_ATTRIB_112 varchar(1000)
);


CREATE TABLE WSMP_ADMIN_ORA.S_PARTY_PER
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    DIRECT_REL_FLG char(1) NOT NULL,
    PARTY_ID varchar(15) NOT NULL,
    PERSON_ID varchar(15) NOT NULL,
    REFERENCE_FLG char(1) NOT NULL,
    START_DT timestamp NOT NULL,
    ADMIT_FLG char(1),
    BOARD_SEAT_FLG char(1),
    END_DT timestamp,
    COMMENTS varchar(255),
    PR_RELATION_ID varchar(15),
    REFERENCE_TYPE_CD varchar(30),
    RESPONSIBILITY varchar(250),
    TITLE varchar(100),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    REL_SUB_TYPE_CD varchar(30),
    REL_TYPE_CD varchar(30),
    X_SRC_LAST_UPD timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.S_POSTN
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    PAR_ROW_ID varchar(15) NOT NULL,
    BU_ID varchar(15) NOT NULL,
    COMPENSATABLE_FLG char(1) NOT NULL,
    IN_IC_RETRORUN_FLG char(1) NOT NULL,
    NAME varchar(50) NOT NULL,
    OU_ID varchar(15) NOT NULL,
    BL_RT_AMT numeric(22,7),
    CG_SVP_ALLOC_LVL numeric(10,0),
    CP_PLAN_LVL_NUM numeric(10,0),
    END_DT timestamp,
    OWNER_ALLOC_PCT numeric(22,7),
    START_DT timestamp,
    BL_PROD_ID varchar(15),
    CMPNS_CURCY_CD varchar(20),
    DESC_TEXT varchar(255),
    INTEGRATION_ID varchar(30),
    PAR_POSTN_ID varchar(15),
    POSTN_TYPE_CD varchar(30),
    PR_EMP_ID varchar(15),
    PR_OU_EXT_ID varchar(15),
    PR_POSTN_ADDR_ID varchar(15),
    PR_POSTN_ID varchar(15),
    PR_PROD_ID varchar(15),
    PR_PROD_LN_ID varchar(15),
    PR_TERR_ID varchar(15),
    CRDT_AUTH_AMT numeric(22,7),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    PGROUP_ID varchar(15),
    X_SALES_FORCE varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.S_POSTN_CON
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    CON_FST_NAME varchar(50) NOT NULL,
    CON_ID varchar(15) NOT NULL,
    CON_LAST_NAME varchar(50) NOT NULL,
    POSTN_ID varchar(15) NOT NULL,
    ROW_STATUS varchar(10) NOT NULL,
    AGENT_FLG char(1),
    ASGN_DNRM_FLG char(1),
    ASGN_MANL_FLG char(1),
    ASGN_SYS_FLG char(1),
    MEMBER_FLG char(1),
    PRIORITY_FLG char(1),
    PROVIDER_FLG char(1),
    ACTIVE_FLG char(1),
    ASGN_BY_CA_FLG char(1),
    ASGN_BY_PA_FLG char(1),
    LAST_CALL_DT timestamp,
    CON_MID_NAME varchar(50),
    PRACTICE_TYPE varchar(30),
    PROD_ID varchar(15),
    PR_ADDR_ID varchar(15),
    RELATION_CD varchar(30),
    ROUTE varchar(30),
    SPECIALTY varchar(30),
    STATUS varchar(30),
    X_ATTRIB_01 char(1),
    X_ATTRIB_02 char(1),
    X_ATTRIB_03 varchar(50),
    X_ATTRIB_04 varchar(50),
    X_ATTRIB_05 varchar(15),
    X_ATTRIB_06 varchar(15),
    X_ATTRIB_07 timestamp,
    X_ATTRIB_08 timestamp,
    X_ATTRIB_09 varchar(255),
    X_TARGET_FLG char(1),
    ASGN_RULE_GRP_ID varchar(15),
    ASGN_TERR_ID varchar(15),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    DOCK_FLG char(1),
    NEXT_CALL_DT timestamp,
    NEXT_CALL_OBJECTIV varchar(1500),
    X_YEARLY_CALL_GOAL numeric(10,0),
    X_ATTRIB_10 varchar(50),
    X_CALL_PLAN_CD varchar(50),
    X_P3 varchar(50),
    X_PSTN_CON_TYPE varchar(50),
    X_ATTRIB_11 char(1),
    X_ATTRIB_12 char(1),
    X_ATTRIB_13 char(1),
    X_ATTRIB_14 char(1),
    X_ATTRIB_15 char(1),
    X_ATTRIB_16 char(1),
    X_ATTRIB_17 char(1),
    X_ATTRIB_18 char(1),
    X_ATTRIB_19 char(1),
    X_ATTRIB_20 numeric(22,7),
    X_ATTRIB_21 numeric(22,7),
    X_ATTRIB_22 numeric(22,7),
    X_ATTRIB_23 numeric(22,7),
    X_ATTRIB_24 numeric(22,7),
    X_ATTRIB_25 varchar(100),
    X_ATTRIB_26 varchar(100),
    X_ATTRIB_27 varchar(100),
    X_ATTRIB_28 varchar(100),
    X_ATTRIB_29 varchar(100),
    X_ATTRIB_30 varchar(100),
    X_ATTRIB_31 varchar(100),
    X_ATTRIB_32 varchar(100),
    X_ATTRIB_33 varchar(100),
    X_ATTRIB_34 timestamp,
    X_ATTRIB_35 timestamp,
    X_ATTRIB_36 timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.S_PROD_INT
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    DCKING_NUM numeric(22,7),
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    ACTIVE_FLG char(1) NOT NULL,
    ADD_TO_QUOTE_FLG char(1) NOT NULL,
    BU_ID varchar(15) NOT NULL,
    CG_COMPETITOR_FLG char(1) NOT NULL,
    COMMISIONED_FLG char(1) NOT NULL,
    COMPENSATABLE_FLG char(1) NOT NULL,
    CRT_AST_REC_FLG char(1) NOT NULL,
    ENTERPRISE_FLG char(1) NOT NULL,
    FEATURED_FLG char(1) NOT NULL,
    MODEL_PROD_FLG char(1) NOT NULL,
    NAME varchar(100) NOT NULL,
    ORDERABLE_FLG char(1) NOT NULL,
    POSTN_BL_PROD_FLG char(1) NOT NULL,
    SALES_PROD_FLG char(1) NOT NULL,
    SALES_SRVC_FLG char(1) NOT NULL,
    SERVICE_FLG char(1) NOT NULL,
    SERV_INST_FLG char(1) NOT NULL,
    SHIP_FLG char(1) NOT NULL,
    TARGET_VRSN_FLG char(1) NOT NULL,
    TAX_SUBCOMP_FLG char(1) NOT NULL,
    TRANSFERABLE_FLG char(1) NOT NULL,
    CTRL_SUBS_FLG char(1),
    ACCRUAL_RATE numeric(22,7),
    ALC_BELOW_SFTY_FLG char(1),
    ALOC_ASSETS_FLG char(1),
    APRX_COST_AMT numeric(22,7),
    APX_CST_EXCH_DT timestamp,
    AUTO_ALLOCATE_FLG char(1),
    AUTO_SUBST_FLG char(1),
    AVG_CALL_CST numeric(22,7),
    AVG_CALL_CST_DT timestamp,
    AVG_OP_LIFE numeric(22,7),
    AVG_PROFIT numeric(22,7),
    CAPACITY numeric(22,7),
    CARY_COST numeric(22,7),
    CARY_COST_DT timestamp,
    CASE_CONV_FACTOR numeric(22,7),
    CASE_PACK numeric(22,7),
    CONFIGURATION_FLG char(1),
    CUTOFF_FLG char(1),
    DELIV_INTERVAL numeric(22,7),
    DEST_COST numeric(22,7),
    DISP_CMPNT_FLG char(1),
    DISP_CMPNT_PRI_FLG char(1),
    EFFICIENCY_RATING numeric(22,7),
    EFF_END_DT timestamp,
    EFF_START_DT timestamp,
    EXCH_DT timestamp,
    FRU_FLG char(1),
    GROSS_MGN numeric(22,7),
    INVENTORY_FLG char(1),
    ITEM_SIZE numeric(22,7),
    LOAD_ADDED numeric(22,7),
    LOCK_FLG char(1),
    LOT_ACTIVE_FLG char(1),
    MAX_ORDER_UNITS numeric(22,7),
    MIN_ORDER_UNITS numeric(22,7),
    MODEL_YR numeric(22,7),
    MSRP numeric(22,7),
    MTBF numeric(22,7),
    MTTR numeric(22,7),
    NUM_OCCURRENCE numeric(10,0),
    ORDER_CST numeric(22,7),
    ORDER_CST_DT timestamp,
    PRODUCT_LEVEL numeric(22,7),
    PROD_UPD_DT timestamp,
    REQ_APPL_FLG char(1),
    REQ_REFERRAL_FLG char(1),
    RESERVABLE_FLG char(1),
    RTRN_DEFECTIVE_FLG char(1),
    RXAVPR_EXCH_DT timestamp,
    RX_AVG_PRICE numeric(22,7),
    SERIALIZED_FLG char(1),
    SKIP_FLG char(1),
    TAXABLE_FLG char(1),
    TOOL_FLG char(1),
    UNITS_BCKORD numeric(22,7),
    UNITS_BCKORD_AS_OF timestamp,
    UNITS_INVENT numeric(22,7),
    UNITS_INVENT_AS_OF timestamp,
    UNIT_CONV_FACTOR numeric(22,7),
    ADDL_LEAD_TIME varchar(30),
    ALIAS_NAME varchar(100),
    APX_CST_CURCY_CD varchar(20),
    ASSOC_LEVEL varchar(30),
    ATM_TYPE_CD varchar(30),
    AVGCALLCST_CURCYCD varchar(20),
    BODY_STYLE_CD varchar(30),
    BOOK_APPR_ID varchar(15),
    BUILD varchar(30),
    CARY_COST_CURCY_CD varchar(20),
    CATEGORY_CD varchar(30),
    CFG_MODEL_ID varchar(15),
    CG_PR_CTLG_CAT_ID varchar(15),
    CLASS_PARTNUM_ID varchar(15),
    CONFIG_RULE_FILE varchar(220),
    CRITICAL_CD varchar(30),
    CS_PATH_ID varchar(15),
    CURCY_CD varchar(30),
    DATA_SRC varchar(30),
    DEF_MOD_PROD_ID varchar(15),
    DESC_TEXT varchar(255),
    DETAIL_TYPE_CD varchar(30),
    DFLT_PROCSYS_ID varchar(15),
    DIVN_CD varchar(30),
    DOORS_TYPE_CD varchar(30),
    DOWN_TIME varchar(30),
    DRIVE_TRAIN_CD varchar(30),
    ENGINE_TYPE_CD varchar(30),
    FABRIC_CD varchar(30),
    FUEL_TYPE_CD varchar(30),
    GENDER_CD varchar(30),
    INTEGRATION_ID varchar(30),
    INTL_BLD_LANG_CD varchar(30),
    INVST_CATG_CD varchar(50),
    INVST_OBJ_CD varchar(30),
    LEAD_TM varchar(30),
    LIFE_CYCLE_CD varchar(30),
    MAKE_CD varchar(30),
    MODEL varchar(30),
    MODEL_CD varchar(30),
    MOVEMENT_CLASS varchar(30),
    MTBF_UOM_CD varchar(30),
    MTTR_UOM_CD varchar(30),
    OBJECTIVE_DESC varchar(100),
    ONL_PAGESET_ID varchar(15),
    ORDER_CST_CURCY_CD varchar(20),
    PART_NUM varchar(50),
    PAR_PROD_INT_ID varchar(15),
    PLAN_STATUS varchar(30),
    PM_DEPT_POSTN_ID varchar(15),
    PREAPPR_STATE_ID varchar(15),
    PREF_CARRIER_CD varchar(30),
    PREF_SHIP_METH_CD varchar(30),
    PRICE_TYPE_CD varchar(30),
    PROD_ASSEMBLY_LVL varchar(50),
    PROD_ATTRIB01_CD varchar(30),
    PROD_ATTRIB02_CD varchar(30),
    PROD_ATTRIB03_CD varchar(30),
    PROD_ATTRIB04_CD varchar(30),
    PROD_CATG_CD varchar(30),
    PROD_CD varchar(30),
    PROD_CLS_NUM varchar(50),
    PROD_DIST_CD varchar(30),
    PROD_GLOBAL_UID varchar(50),
    PROD_IMAGE_ID varchar(15),
    PROD_LCYCLE_STATUS varchar(50),
    PROD_OPT1_MIX_ID varchar(15),
    PROD_OPT2_MIX_ID varchar(15),
    PROD_OPTION1_ID varchar(15),
    PROD_OPTION2_ID varchar(15),
    PROD_SUPPLY_CHAIN varchar(50),
    PROD_TYPE_CD varchar(30),
    PROFIT_RANK_CD varchar(30),
    PR_CON_ID varchar(15),
    PR_EQUIV_PROD_ID varchar(15),
    PR_ERNG_ID varchar(15),
    PR_FULFL_INVLOC_ID varchar(15),
    PR_INDUST_ID varchar(15),
    PR_POSTN_ID varchar(15),
    PR_PROD_LN_ID varchar(15),
    PR_SEASON_ID varchar(15),
    PR_TRGT_MKT_SEG_ID varchar(15),
    QUALITY_CD varchar(30),
    REF_NUMBER_1 varchar(30),
    REF_NUMBER_2 varchar(30),
    REF_NUMBER_3 varchar(30),
    REF_NUMBER_4 varchar(30),
    REF_NUMBER_5 varchar(30),
    REGION_ID varchar(15),
    REQ_DATA_ID varchar(15),
    RISK varchar(250),
    RULE_ATTRIB1 varchar(50),
    RULE_ATTRIB2 varchar(50),
    RXAVPR_CURCY_CD varchar(20),
    SCHEDULE_NUM_CD varchar(30),
    SEQ_CD varchar(30),
    SERVICE_TERMS varchar(255),
    SILHOUETTE_CD varchar(30),
    STATUS_CD varchar(30),
    STRATEGY varchar(250),
    STRENGTH varchar(30),
    SUB_TYPE varchar(30),
    SUB_TYPE_CD varchar(30),
    TGT_CUST_TYPE_CD varchar(30),
    TGT_REGION_CD varchar(30),
    THMBNL_IMAGE_ID varchar(15),
    TRANSMISSION_CD varchar(30),
    TRIM_CD varchar(30),
    TYPE varchar(30),
    UOM_CD varchar(30),
    VALTN_SYS_ID varchar(15),
    VALUE_CLASS varchar(30),
    VENDR_OU_ID varchar(15),
    VENDR_PART_NUM varchar(50),
    VERSION varchar(30),
    XA_CLASS_ID varchar(15),
    APPLY_EC_RULE_FLG char(1) NOT NULL,
    APPROVAL_FLG char(1) NOT NULL,
    ASSET_REF_EXPR varchar(100),
    AUTO_UNGROUP_FLG char(1) NOT NULL,
    BAR_CODE_NUM varchar(50),
    BILLABLE_FLG char(1) NOT NULL,
    BILLING_TYPE_CD varchar(30),
    CMPND_FLG char(1) NOT NULL,
    COMMENTS varchar(250),
    CRT_AGREEMENT_FLG char(1) NOT NULL,
    CRT_INST_FLG char(1) NOT NULL,
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    DESIGN_REG_FLG char(1) NOT NULL,
    DPNDNCY_VLDTN_FLG char(1),
    EXP_LEAD_DAYS numeric(10,0),
    GTIN varchar(20),
    INCL_ALL_CRSE_FLG char(1) NOT NULL,
    INCL_CRSE_NUM numeric(10,0),
    INCLSV_ELIG_RL_FLG char(1) NOT NULL,
    INVNTRY_INTEG_ID varchar(40),
    LEAF_LEVEL_FLG char(1) NOT NULL,
    LOY_ACTUAL_DIST numeric(22,7),
    LOY_DIST_UOM varchar(30),
    LOY_EXP_LEAD_TIME numeric(22,7),
    LOY_EXP_UOM varchar(30),
    LOY_EXPR_BASIS_CD varchar(30),
    LOY_FROMAPRT_CD varchar(30),
    LOY_NUM_YEAR numeric(22,7),
    LOY_PERIOD_DUR numeric(22,7),
    LOY_PERIOD_TYPE_CD varchar(30),
    LOY_SEQ_TYPE_CD varchar(30),
    LOY_SERIES_PREFIX varchar(15),
    LOY_SUG_POINTS numeric(22,7),
    LOY_SUG_PRICE numeric(22,7),
    LOY_SUG_PTTYPE_ID varchar(15),
    LOY_SUG_R_POINTS numeric(22,7),
    LOY_SUG_R_PRICE numeric(22,7),
    LOY_SUG_RPTTYPE_ID varchar(15),
    LOY_TOAPRT_CD varchar(30),
    LOY_VCH_EXP_DAY_CD varchar(30),
    LOY_VCH_EXP_MTH_CD varchar(30),
    LOY_VCHREXP_PRDDUR numeric(22,7),
    LOY_VEXP_PERTYP_CD varchar(30),
    NEED_PH_NUM_FLG char(1) NOT NULL,
    NET_ELMT_TYPE_CD varchar(30),
    PAYMNT_TYPE_CD varchar(30),
    PERMITTED_TYPE varchar(250),
    PR_SHIP_CARPRIO_ID varchar(15),
    PR_SRC_ID varchar(15),
    PROMO_INSTANCE_CD varchar(30),
    PROMO_TYPE_CD varchar(30),
    REASON_TXT varchar(250),
    REFERENCE_TYPE_CD varchar(30),
    REQD_SERVICE_FLG char(1),
    ROLLUP_LEVEL numeric(10,0),
    ROLLUP_TRGMKT_FLG char(1),
    ROOT_PROD_ID varchar(15),
    SCORE_NUM numeric(22,7),
    SERV_LENGTH_UOM_CD varchar(30),
    SERVICE_LENGTH numeric(10,0),
    SUBSCN_DUR_DAY_NUM numeric(10,0),
    TRGT_MKT_ID varchar(15),
    TWOBARCODES_FLG char(1) NOT NULL,
    UNIQUE_ASSET_FLG char(1) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.S_STATE_LIC_LS
(
    ROW_ID varchar(15) NOT NULL,
    CREATED timestamp NOT NULL,
    CREATED_BY varchar(15) NOT NULL,
    LAST_UPD timestamp NOT NULL,
    LAST_UPD_BY varchar(15) NOT NULL,
    MODIFICATION_NUM numeric(10,0) NOT NULL,
    CONFLICT_ID varchar(15) NOT NULL,
    CONTACT_ID varchar(15) NOT NULL,
    STATE_CD varchar(30) NOT NULL,
    LICENSE_EXP_DT timestamp,
    LICENSE_NUM varchar(30),
    STATUS_CD varchar(30),
    X_OK_TO_SAMPLE_FLG char(1),
    X_VALIDATION_DT timestamp,
    X_VENDOR_VALIDATION_ID varchar(100),
    CATEGORY_CD varchar(30),
    DB_LAST_UPD timestamp,
    DB_LAST_UPD_SRC varchar(50),
    ISSUING_AUTHORITY varchar(50),
    ONE_SAMPLE_FLG char(1) NOT NULL,
    SUB_TYPE_CD varchar(30),
    TYPE_CD varchar(30),
    X_SRC_LAST_UPD timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TABLE_COUNT
(
    LOGGED_AT timestamp,
    TABLES numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.TERRITORY_MIRROR_XREF
(
    TERRITORY_NUM varchar(8) NOT NULL,
    MIRROR_TERRITORY_NUM varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.TEST_CONNECT
(
    OLD_ID varchar(10),
    NEW_ID varchar(10),
    EFF_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TEST_SAMPLE_ELIGIBILITY
(
    TVCMID char(14),
    PROFESSION varchar(10),
    TEVA_SPECIALTY_CODE varchar(5),
    CERTIFICATION_CODE varchar(5),
    SLN varchar(18),
    SLN_STATE varchar(2),
    SLN_EXPIRATION_DATE timestamp,
    SLN_STATUS varchar(5),
    TV_SAMPLE_ELIGIBLE_FLAG char(1),
    TV_SCHED_IV_ELIGIBLE_FLAG char(1),
    TV_SCHED_V_ELIGIBLE_FLAG char(1),
    LAST_UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_CURRENT_ZIP_ALIGNMENT
(
    ZIP varchar(5) NOT NULL,
    CITY varchar(100) NOT NULL,
    STATE varchar(2) NOT NULL,
    ONC_MSL_TERRITORY_NUM varchar(8) NOT NULL,
    TO_FRM_TERRITORY_NUM varchar(8) NOT NULL,
    TC_TERRITORY_NUM varchar(8) NOT NULL,
    TP_TERRITORY_NUM varchar(8) NOT NULL,
    TIME_PERIOD varchar(7) NOT NULL,
    TO_SCG_TERRITORY_NUM varchar(8),
    TN_TERRITORY_NUM_1 varchar(8),
    TN_TERRITORY_NUM_2 varchar(8),
    TO_TERRITORY_NUM_1 varchar(8),
    TO_TERRITORY_NUM_2 varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_DATA_ZIP_ALIGNMENT
(
    ZIP varchar(5) NOT NULL,
    CITY varchar(100) NOT NULL,
    STATE varchar(2) NOT NULL,
    ONC_MSL_TERRITORY_NUM varchar(8) NOT NULL,
    TO_FRM_TERRITORY_NUM varchar(8) NOT NULL,
    TC_TERRITORY_NUM varchar(8) NOT NULL,
    TP_TERRITORY_NUM varchar(8) NOT NULL,
    TIME_PERIOD varchar(7) NOT NULL,
    TO_SCG_TERRITORY_NUM varchar(8),
    TN_TERRITORY_NUM_1 varchar(8),
    TN_TERRITORY_NUM_2 varchar(8),
    TO_TERRITORY_NUM_1 varchar(8),
    TO_TERRITORY_NUM_2 varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_DDD_DOD_SALES
(
    OUTLET_CODE varchar(8),
    SUBCATEGORY_CODE varchar(2),
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(3),
    PRODUCT_CODE varchar(6),
    MTH_YYYYMM varchar(6),
    DOL_MTH01 numeric(19,1),
    DOL_MTH02 numeric(19,1),
    DOL_MTH03 numeric(19,1),
    DOL_MTH04 numeric(19,1),
    DOL_MTH05 numeric(19,1),
    DOL_MTH06 numeric(19,1),
    DOL_MTH07 numeric(19,1),
    DOL_MTH08 numeric(19,1),
    DOL_MTH09 numeric(19,1),
    DOL_MTH10 numeric(19,1),
    DOL_MTH11 numeric(19,1),
    DOL_MTH12 numeric(19,1),
    DOL_MTH13 numeric(19,1),
    DOL_MTH14 numeric(19,1),
    DOL_MTH15 numeric(19,1),
    DOL_MTH16 numeric(19,1),
    DOL_MTH17 numeric(19,1),
    DOL_MTH18 numeric(19,1),
    DOL_MTH19 numeric(19,1),
    DOL_MTH20 numeric(19,1),
    DOL_MTH21 numeric(19,1),
    DOL_MTH22 numeric(19,1),
    DOL_MTH23 numeric(19,1),
    DOL_MTH24 numeric(19,1),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    IMS_CLIENT_NUM varchar(3),
    IMS_REPORT_NUM varchar(2)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_SALES_ADJUSTMENTS
(
    IMS_OUTLET_NUMBER varchar(20) NOT NULL,
    OUTLET_NAME varchar(200),
    OUTLET_ADDRESS varchar(200),
    OUTLET_CITY varchar(100),
    OUTLET_STATE varchar(10),
    OUTLET_ZIP varchar(10),
    PRODUCT_CODE varchar(6) NOT NULL,
    PRODUCT_NAME varchar(100) NOT NULL,
    QTY_MTH01 numeric(37,15),
    QTY_MTH02 numeric(37,15),
    QTY_MTH03 numeric(37,15),
    QTY_MTH04 numeric(37,15),
    QTY_MTH05 numeric(37,15),
    QTY_MTH06 numeric(37,15),
    QTY_MTH07 numeric(37,15),
    QTY_MTH08 numeric(37,15),
    QTY_MTH09 numeric(37,15),
    QTY_MTH10 numeric(37,15),
    QTY_MTH11 numeric(37,15),
    QTY_MTH12 numeric(37,15),
    QTY_MTH13 numeric(37,15),
    QTY_MTH14 numeric(37,15),
    QTY_MTH15 numeric(37,15),
    QTY_MTH16 numeric(37,15),
    QTY_MTH17 numeric(37,15),
    QTY_MTH18 numeric(37,15),
    QTY_MTH19 numeric(37,15),
    QTY_MTH20 numeric(37,15),
    QTY_MTH21 numeric(37,15),
    QTY_MTH22 numeric(37,15),
    QTY_MTH23 numeric(37,15),
    QTY_MTH24 numeric(37,15),
    QTY_MTH25 numeric(37,15),
    QTY_MTH26 numeric(37,15),
    QTY_MTH27 numeric(37,15),
    QTY_MTH28 numeric(37,15),
    QTY_MTH29 numeric(37,15),
    QTY_MTH30 numeric(37,15),
    QTY_MTH31 numeric(37,15),
    QTY_MTH32 numeric(37,15),
    QTY_MTH33 numeric(37,15),
    QTY_MTH34 numeric(37,15),
    QTY_MTH35 numeric(37,15),
    QTY_MTH36 numeric(37,15),
    DATA_YEAR numeric(37,15),
    DATA_MTH numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_PCS_DDD_NONRETAIL
(
    TERRITORY_NUM varchar(8),
    OUTLET_CODE varchar(8),
    SUBCATEGORY_CODE varchar(2),
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(3),
    PRODUCT_CODE varchar(6),
    MTH_YYYYMM varchar(6),
    QTY_MTH01 numeric(19,0),
    QTY_MTH02 numeric(19,0),
    QTY_MTH03 numeric(19,0),
    QTY_MTH04 numeric(19,0),
    QTY_MTH05 numeric(19,0),
    QTY_MTH06 numeric(19,0),
    QTY_MTH07 numeric(19,0),
    QTY_MTH08 numeric(19,0),
    QTY_MTH09 numeric(19,0),
    QTY_MTH10 numeric(19,0),
    QTY_MTH11 numeric(19,0),
    QTY_MTH12 numeric(19,0),
    QTY_MTH13 numeric(19,0),
    QTY_MTH14 numeric(19,0),
    QTY_MTH15 numeric(19,0),
    QTY_MTH16 numeric(19,0),
    QTY_MTH17 numeric(19,0),
    QTY_MTH18 numeric(19,0),
    QTY_MTH19 numeric(19,0),
    QTY_MTH20 numeric(19,0),
    QTY_MTH21 numeric(19,0),
    QTY_MTH22 numeric(19,0),
    QTY_MTH23 numeric(19,0),
    QTY_MTH24 numeric(19,0),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_PCS_DDD_RETAIL
(
    TERRITORY_NUM varchar(10),
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(9),
    PRODUCT_CODE varchar(6) NOT NULL,
    MTH_YYYYMM varchar(8),
    QTY_MTH01 numeric(19,0),
    QTY_MTH02 numeric(19,0),
    QTY_MTH03 numeric(19,0),
    QTY_MTH04 numeric(19,0),
    QTY_MTH05 numeric(19,0),
    QTY_MTH06 numeric(19,0),
    QTY_MTH07 numeric(19,0),
    QTY_MTH08 numeric(19,0),
    QTY_MTH09 numeric(19,0),
    QTY_MTH10 numeric(19,0),
    QTY_MTH11 numeric(19,0),
    QTY_MTH12 numeric(19,0),
    QTY_MTH13 numeric(19,0),
    QTY_MTH14 numeric(19,0),
    QTY_MTH15 numeric(19,0),
    QTY_MTH16 numeric(19,0),
    QTY_MTH17 numeric(19,0),
    QTY_MTH18 numeric(19,0),
    QTY_MTH19 numeric(19,0),
    QTY_MTH20 numeric(19,0),
    QTY_MTH21 numeric(19,0),
    QTY_MTH22 numeric(19,0),
    QTY_MTH23 numeric(19,0),
    QTY_MTH24 numeric(19,0),
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5) NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_RETIRED_DEA_NUM
(
    DEA_NUM varchar(9) NOT NULL,
    DEA_DRUG_SCHEDULE varchar(16),
    DEA_EXPIR_DATE timestamp NOT NULL,
    DEA_LAST_NAME varchar(40),
    DEA_FIRST_NAME varchar(40),
    DEA_MIDDLE_NAME varchar(40),
    DEA_SUFFIX_NAME varchar(10),
    DEA_PROF_DESIGNATION varchar(10),
    DEA_ADDRESS_LINE1 varchar(80) NOT NULL,
    DEA_ADDRESS_LINE2 varchar(80),
    DEA_ADDRESS_LINE3 varchar(80),
    DEA_CITY varchar(40),
    DEA_STATE varchar(2) NOT NULL,
    DEA_ZIP varchar(5) NOT NULL,
    DEA_BUS_ACTIVITY_CODE varchar(1),
    DEA_BUS_ACTIVITY_SUB_CODE varchar(1),
    DEA_SANCTION_FLAG varchar(1),
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0),
    COMPANY_NAME varchar(100) NOT NULL,
    DEA_CREATE_DATE timestamp,
    DEA_RETIRED_DATE timestamp NOT NULL
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_SPECIALTY_XREF
(
    SPECIALTY_CODE varchar(3) NOT NULL,
    SPECIALTY_DESC varchar(100),
    SPECIALTY_GROUP varchar(3),
    NUVIGIL_REPORT_GROUP varchar(3),
    AMRIX_REPORT_GROUP varchar(3),
    FENTORA_REPORT_GROUP varchar(3),
    ONC_REPORT_GROUP varchar(3),
    NUVIGIL_TARGET_GROUP varchar(3),
    AMRIX_TARGET_GROUP varchar(3),
    FENTORA_TARGET_GROUP varchar(3),
    NUVIGIL_DNC_FLAG varchar(1),
    FENTORA_DNC_FLAG varchar(1),
    AMRIX_TARGET_FLAG varchar(1),
    CREATE_DATE timestamp,
    MS_REPORT_GROUP varchar(5),
    PD_REPORT_GROUP varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_CM_ID_FIX
(
    HMS_CM_ID numeric(37,15),
    IMS_CM_ID numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_CUSTOMER_MASTER
(
    CEPH_ID varchar(12),
    CUSTOMER_MASTER_ID numeric(37,15),
    DISTINCT_CEPH_ID numeric(37,15),
    DISTINCT_CUSTOMER_MASTER_ID numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_IMS_ADDRESS_COMP
(
    EXTERNAL_ADDRESS_ID varchar(255) NOT NULL,
    ADDRESS_ID numeric(37,15) NOT NULL,
    FULL_ADDRESS varchar(330),
    CITY varchar(50),
    STATE varchar(2),
    ZIP_5 varchar(5),
    ZIP_4 varchar(4),
    ZP4_CERT_CODE varchar(1),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_IMS_ADDRESS_COMP_MATCH
(
    EXTERNAL_ADDRESS_ID varchar(255) NOT NULL,
    ADDRESS_ID numeric(37,15) NOT NULL,
    ADDRESS1 varchar(255),
    CITY varchar(75),
    STATE char(2),
    ZIP varchar(10),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_IMS_ADDRESS_PTR
(
    EXTERNAL_ADDRESS_ID varchar(255) NOT NULL,
    ADDRESS_ID numeric(37,15) NOT NULL,
    FULL_ADDRESS varchar(330),
    CITY varchar(50),
    STATE varchar(2),
    ZIP_5 varchar(5),
    ZIP_4 varchar(4),
    ZP4_CERT_CODE varchar(1),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_IMS_ADDRESS_PTR_MATCH
(
    EXTERNAL_ADDRESS_ID varchar(255) NOT NULL,
    ADDRESS_ID numeric(37,15) NOT NULL,
    ADDRESS1 varchar(255),
    CITY varchar(75),
    STATE char(2),
    ZIP varchar(10),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_MISSING_PAYER_PLAN_NUM
(
    PAYER_PLAN_NUM varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_MISSING_PAYER_PLAN_NUM_M
(
    PAYER_PLAN_NUM varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_MISSING_PAYER_PLAN_NUM_W
(
    PAYER_PLAN_NUM varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_OLD_TERRITORY_NUM
(
    PTR_TERRITORY_NUM varchar(8)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_QNASL_BRANDED_INS_V1
(
    PTR_TERRITORY_NUM varchar(8) NOT NULL,
    IMS_ID varchar(10) NOT NULL,
    LAST_NAME varchar(80),
    FIRST_NAME varchar(25),
    MID_NAME varchar(2),
    PTR_ADDRESS varchar(100),
    PTR_CITY varchar(50),
    PTR_STATE varchar(2),
    PTR_ZIP varchar(5),
    PBM_NAME varchar(100),
    SPECIALTY_GROUP varchar(30),
    QNASL numeric(37,15),
    BRANDED_INS numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_QNASL_BRANDED_INS_V2
(
    TERRITORY_NUM varchar(8) NOT NULL,
    IMS_ID varchar(10),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(50),
    MID_NAME varchar(50),
    ADDRESS varchar(250),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    PLAN_NAME varchar(100),
    SPECIALTY_GROUP varchar(30),
    QNASL numeric(37,15),
    BRANDED_INS numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_QNASL_DOCTOR_DIRECTORY
(
    IMS_ID varchar(7),
    DEA_NUM varchar(9),
    NPI varchar(10),
    ME_NUM varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_TVCMID_HCP_DEMO_ADDR_MATCH
(
    EXTERNAL_ADDRESS_ID numeric(37,15),
    ADDRESS_ID numeric(37,15) NOT NULL,
    ADDRESS1 varchar(255),
    ADDRESS2 varchar(75),
    CITY varchar(75),
    STATE char(2),
    ZIP varchar(10),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TMP_ZS_IMS_ID
(
    IMS_ID varchar(10),
    ZIP varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.TW_SPECIALTY_ACCOUNT
(
    DATA_SOURCE varchar(20) NOT NULL,
    CUSTOMER_CODE varchar(20) NOT NULL,
    CUSTOMER_NAME varchar(100),
    PARENT_CUSTOMER_CODE varchar(20),
    PARENT_CUSTOMER_NAME varchar(100),
    CUSTOMER_TYPE_CODE varchar(20),
    PVP_340B_ID varchar(100),
    START_DATE timestamp,
    END_DATE timestamp,
    ACTIVE_IND varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.VEEVA_SYNC_DATA
(
    EMPLOYEE_ID varchar(7) NOT NULL,
    SYNC_DATE timestamp NOT NULL,
    SYNC_TYPE varchar(100) NOT NULL,
    NUMBER_OF_SYNCS numeric(3,0)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_ACCOUNT
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    MASTERRECORDID varchar(18),
    NAME varchar(255),
    LASTNAME varchar(80),
    FIRSTNAME varchar(40),
    SALUTATION varchar(40),
    TYPE varchar(40),
    RECORDTYPEID varchar(18),
    PHONE varchar(40),
    FAX varchar(40),
    WEBSITE varchar(255),
    NUMBEROFEMPLOYEES numeric(8,0),
    OWNERSHIP varchar(40),
    OWNERID varchar(18) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    LASTACTIVITYDATE timestamp,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    ISEXCLUDEDFROMREALIGN varchar(5) NOT NULL,
    PERSONCONTACTID varchar(18),
    ISPERSONACCOUNT varchar(5) NOT NULL,
    PERSONMAILINGSTREET varchar(255),
    PERSONMAILINGCITY varchar(40),
    PERSONMAILINGSTATE varchar(80),
    PERSONMAILINGPOSTALCODE varchar(20),
    PERSONMAILINGCOUNTRY varchar(80),
    PERSONMAILINGLATITUDE numeric(18,15),
    PERSONMAILINGLONGITUDE numeric(18,15),
    PERSONOTHERSTREET varchar(255),
    PERSONOTHERCITY varchar(40),
    PERSONOTHERSTATE varchar(80),
    PERSONOTHERPOSTALCODE varchar(20),
    PERSONOTHERCOUNTRY varchar(80),
    PERSONOTHERLATITUDE numeric(18,15),
    PERSONOTHERLONGITUDE numeric(18,15),
    PERSONMOBILEPHONE varchar(40),
    PERSONHOMEPHONE varchar(40),
    PERSONOTHERPHONE varchar(40),
    PERSONASSISTANTPHONE varchar(40),
    PERSONEMAIL varchar(80),
    PERSONTITLE varchar(80),
    PERSONDEPARTMENT varchar(80),
    PERSONASSISTANTNAME varchar(40),
    PERSONBIRTHDATE timestamp,
    PERSONHASOPTEDOUTOFEMAIL varchar(5) NOT NULL,
    PERSONHASOPTEDOUTOFFAX varchar(5) NOT NULL,
    PERSONDONOTCALL varchar(5) NOT NULL,
    PERSONLASTCUREQUESTDATE timestamp,
    PERSONLASTCUUPDATEDATE timestamp,
    PERSONEMAILBOUNCEDREASON varchar(255),
    PERSONEMAILBOUNCEDDATE timestamp,
    JIGSAW varchar(20),
    JIGSAWCOMPANYID varchar(20),
    ACCOUNTSOURCE varchar(40),
    SICDESC varchar(80),
    EXTERNAL_ID_VOD__C varchar(120),
    CREDENTIALS_VOD__C varchar(255),
    EXCLUDE_FROM_ZIP_TO_TERR_PROCE varchar(5) NOT NULL,
    GROUP_SPECIALTY_1_VOD__C varchar(255),
    GROUP_SPECIALTY_2_VOD__C varchar(255),
    SPECIALTY_1_VOD__C varchar(255),
    SPECIALTY_2_VOD__C varchar(255),
    FORMATTED_NAME_VOD__C varchar(1300),
    TERRITORY_TEST_VOD__C varchar(255),
    MOBILE_ID_VOD__C varchar(100),
    GENDER_VOD__C varchar(255),
    ID_VOD__C varchar(20),
    DO_NOT_SYNC_SALES_DATA_VOD__C varchar(5) NOT NULL,
    ID2_VOD__C varchar(20),
    PREFERRED_NAME_VOD__C varchar(12),
    SAMPLE_DEFAULT_VOD__C varchar(1000),
    SEGMENTATIONS_VOD__C varchar(1000),
    RESTRICTED_PRODUCTS_VOD__C varchar(1000),
    PAYER_ID_VOD__C varchar(100),
    ACCOUNT_STATUS_TVA__C varchar(255),
    DO_NOT_CALL_VOD__C varchar(255),
    BEDS__C numeric(4,0),
    SPEND_AMOUNT__C varchar(128),
    PDRP_OPT_OUT_VOD__C varchar(5) NOT NULL,
    SPEND_STATUS_VALUE_VOD__C varchar(1300),
    PDRP_OPT_OUT_DATE_VOD__C timestamp,
    SPEND_STATUS_VOD__C varchar(1300),
    ENABLE_RESTRICTED_PRODUCTS varchar(5) NOT NULL,
    CALL_REMINDER_VOD__C varchar(255),
    ACCOUNT_GROUP_VOD__C varchar(80),
    PRIMARY_PARENT_VOD__C varchar(18),
    COLOR_VOD__C varchar(1300),
    MIDDLE_VOD__C varchar(40),
    SUFFIX_VOD__C varchar(10),
    ACCOUNT_LOCATION_TVA__C varchar(50),
    NO_ORDERS_VOD__C varchar(255),
    ACCOUNT_MASTER_ID_TVA__C varchar(30),
    ACCOUNT_EMAIL_TVA__C varchar(80),
    ACCOUNT_SEARCH_FIRSTLAST varchar(1300),
    ACCOUNT_SEARCH_LASTFIRST varchar(1300),
    PERSON_PREFERRED_NAME_TVA__C varchar(50),
    PRACTICE_AT_HOSPITAL_VOD__C varchar(5) NOT NULL,
    PRACTICE_NEAR_HOSPITAL_VOD__C varchar(5) NOT NULL,
    DO_NOT_CREATE_CHILD_ACCOUNT varchar(5) NOT NULL,
    TOTAL_MDS_DOS__C numeric(18,0),
    AHA__C varchar(20),
    ORDER_TYPE_VOD__C varchar(4000),
    NPI_VOD__C varchar(25),
    ME__C varchar(25),
    SPEAKER__C varchar(5) NOT NULL,
    INVESTIGATOR_VOD__C varchar(5) NOT NULL,
    DEFAULT_ORDER_TYPE_VOD__C varchar(255),
    PERSON_DEGREE_TVA__C varchar(30),
    TAX_STATUS__C varchar(20),
    MODEL__C varchar(20),
    OFFERINGS__C varchar(4000),
    DEPARTMENTS__C numeric(18,0),
    ACCOUNT_TYPE__C varchar(255),
    ACCOUNT_SEARCH_BUSINESS_VOD__C varchar(1300),
    BUSINESS_PROFESSIONAL_PERSON varchar(18),
    NO_SPEND_TVA__C varchar(5) NOT NULL,
    HOSPITAL_TYPE_VOD__C varchar(255),
    ACCOUNT_CLASS_VOD__C varchar(20),
    FURIGANA_VOD__C varchar(100),
    TIRF_REMS_TVA__C varchar(50),
    FENTORA_APP_TVA__C varchar(5) NOT NULL,
    TOTAL_REVENUE_000__C numeric(18,0),
    NET_INCOME_LOSS_000__C numeric(18,0),
    PMPM_INCOME_LOSS_000__C numeric(12,2),
    COMMERCIAL_PREMIUMS_PMPM__C numeric(18,0),
    MEDICAL_LOSS_RATIO__C numeric(12,2),
    MEDICAL_EXPENSES_PMPM__C numeric(18,0),
    COMMERCIAL_PATIENT_DAYS_1000 numeric(18,0),
    HMO_MARKET_SHR__C numeric(6,1),
    HMO__C numeric(18,0),
    HMO_POS__C numeric(18,0),
    PPO__C numeric(18,0),
    PPO_POS__C numeric(18,0),
    MEDICARE__C numeric(18,0),
    MEDICAID__C numeric(18,0),
    NUVIGIL_APP_TVA__C varchar(5) NOT NULL,
    MDS_STATUS_TVA__C varchar(5) NOT NULL,
    LIS_STATUS_TVA__C varchar(5) NOT NULL,
    DNC_PCS_TVA__C varchar(30),
    DNC_CNS_TVA__C varchar(30),
    SUFFIX_TVA__C varchar(255),
    TYSABRI_STATUS_TVA__C varchar(4000),
    BUSINESS_DESCRIPTION__C varchar(4000),
    REGIONAL_STRATEGY__C varchar(4000),
    CONTRACTS_PROCESS__C varchar(4000),
    CML_PROFILED_TVA__C varchar(5) NOT NULL,
    CELL_PHONE_TVA__C varchar(40),
    NO_CONTACT_TVA__C varchar(5) NOT NULL,
    OUTLET_ID_TVA__C varchar(100),
    PMO_GPO_ACCOUNT_AFFILIATIONS varchar(4000),
    TERRITORY_STATUS_TVA__C varchar(255),
    ZDEA_NUMBER_TVA__C varchar(9),
    VEEVA_ID_TVA__C varchar(1300),
    TREANDA_LQ_TGT_TVA__C varchar(5),
    TBO_FILGRASTIM_TARGET_TVA__C varchar(10),
    SLN_RESCRUB_TVA__C varchar(5) NOT NULL,
    ACCOUNT_IDENTIFIER_VOD__C varchar(80),
    TARGET__C varchar(5) NOT NULL,
    KOL_VOD__C varchar(5) NOT NULL,
    REMS_EXPIRATION_DATE_TEVA__C timestamp,
    ACCOUNT_DEMO_ID_TVA__C varchar(30),
    TOTAL_LIVES__C numeric(18,0),
    TOTAL_PHYSICIANS_ENROLLED__C numeric(18,0),
    TIRF_REMS_EFF_DATE_TVA__C timestamp,
    BUSINESS_ASSOCIATE_AGREEMENT varchar(255),
    DO_NOT_PROMOTE_TVA__C varchar(5) NOT NULL,
    ADASUVE_REMS_TVA__C varchar(255),
    ADASUVE_REMS_EFFECTIVE_DATE timestamp,
    ADASUVE_REMS_EXPIRATION_DATE timestamp,
    ACCOUNT_DEA_TVA__C varchar(15),
    BP_NUMBER__C varchar(1300),
    PARAGARD_SEGMENTATION_TVA__C varchar(30),
    TELESALES_ACTIVITY_TVA__C varchar(50),
    DESIGNATION_TVA__C varchar(255),
    TOTAL_PHARMACISTS__C numeric(3,0),
    COMP_PRICING_TVA__C varchar(5) NOT NULL,
    FORMULARY_TVA__C varchar(255),
    GLN_TVA__C varchar(15),
    GPO_CONTRACTS_TVA__C varchar(4000),
    HIN_TVA__C varchar(9),
    MAX_ID_TVA__C varchar(15),
    ONCOLOGY_SERVICES_TVA__C varchar(5) NOT NULL,
    PCP_PROGRAM_TVA__C varchar(5) NOT NULL,
    PHARMACY_LOCATION_TVA__C varchar(100),
    PRIMARY_CREDENTIAL_TVA__C varchar(255),
    PRIMARY_WHOLESALER_TVA__C varchar(255),
    REP_CREDENTIALING_TVA__C varchar(255),
    SECONDARY_CREDENTIAL_TVA__C varchar(255),
    SIGN_IN_LOCATION_TVA__C varchar(100),
    SPECIAL_TVA__C varchar(5) NOT NULL,
    SUB_TYPE_ID_TVA__C varchar(30),
    SUB_TYPE_TVA__C varchar(50),
    TEVA_CONTRACTS_TVA__C varchar(4000),
    ADASUVE_ACCOUNT_INDICATOR varchar(15),
    ADASUVE_PROSPECT_TVA__C varchar(5) NOT NULL,
    IMS_ORG_ID_TVA__C varchar(15),
    CM_ID_TVA__C varchar(10),
    YEAR_OF_BIRTH_TVA__C varchar(4),
    TEACHING_HOSPITAL_TVA__C varchar(255),
    ACCOUNT_ARCHIVED_TVA__C varchar(5) NOT NULL,
    MOBILE_ID_VOD__PC varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_ACCOUNTSHARE
(
    ACCOUNTACCESSLEVEL varchar(10),
    ACCOUNTID varchar(18),
    CASEACCESSLEVEL varchar(10),
    CONTACTACCESSLEVEL varchar(10),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    OPPORTUNITYACCESSLEVEL varchar(10),
    ROWCAUSE varchar(15),
    USERORGROUPID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_ACCT_MERGE_HISTORY_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    ACCOUNT_VOD__C varchar(18) NOT NULL,
    PERSONCONTACTID_VOD__C varchar(20),
    ACCOUNT_PERSONCONTACTID_VOD__C varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_ADDRESS_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80),
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    ACCOUNT_VOD__C varchar(18) NOT NULL,
    ADDRESS_LINE_2_VOD__C varchar(100),
    CITY_VOD__C varchar(40),
    EXTERNAL_ID_VOD__C varchar(120),
    DEA_VOD__C varchar(9),
    DEA_EXPIRATION_DATE_VOD__C timestamp,
    DEA_LICENSE_ADDRESS_VOD__C varchar(1000),
    PHONE_VOD__C varchar(40),
    FAX_VOD__C varchar(40),
    MAP_VOD__C varchar(1300),
    SHIPPING_VOD__C varchar(5) NOT NULL,
    PRIMARY_VOD__C varchar(5) NOT NULL,
    LICENSE_VOD__C varchar(25),
    LICENSE_EXPIRATION_DATE_VOD__C timestamp,
    STAFF_NOTES_VOD__C varchar(4000),
    APPT_REQUIRED_VOD__C varchar(5) NOT NULL,
    OFFICE_NOTES_VOD__C varchar(4000),
    LICENSE_STATUS_VOD__C varchar(255),
    ZIP_4_VOD__C varchar(4),
    PHONE_2_VOD__C varchar(40),
    FAX_2_VOD__C varchar(40),
    LICENSE_VALID_TO_SAMPLE_VOD__C varchar(1300),
    SAMPLE_STATUS_VOD__C varchar(1300),
    INCLUDE_TERRITORY_ASSIGNMENT varchar(5) NOT NULL,
    MOBILE_ID_VOD__C varchar(100),
    INACTIVE_VOD__C varchar(5) NOT NULL,
    LOCK_VOD__C varchar(5) NOT NULL,
    COUNTRY_VOD__C varchar(255),
    LATITUDE_VOD__C numeric(15,6),
    ZIP_VOD__C varchar(20),
    BEST_TIMES_VOD__C varchar(400),
    SOURCE_VOD__C varchar(255),
    BRICK_VOD__C varchar(80),
    ASSMCA_VOD__C varchar(100),
    DEA_ADDRESS_VOD__C varchar(5) NOT NULL,
    DEA_SCHEDULE_VOD__C varchar(100),
    BUSINESS_VOD__C varchar(5) NOT NULL,
    BILLING_VOD__C varchar(5) NOT NULL,
    HOME_VOD__C varchar(5) NOT NULL,
    MAILING_VOD__C varchar(5) NOT NULL,
    STATE_VOD__C varchar(255),
    LONGITUDE_VOD__C numeric(15,6),
    DEA_STATUS_VOD__C varchar(255),
    ENTITY_REFERENCE_ID_VOD__C varchar(20),
    CONTROLLING_ADDRESS_VOD__C varchar(18),
    CONTROLLED_ADDRESS_VOD__C varchar(5) NOT NULL,
    NO_ADDRESS_COPY_VOD__C varchar(5) NOT NULL,
    ADDRESS_LINE_3_TVA__C varchar(100),
    COUNTY_TVA__C varchar(50),
    EXTERNAL_SLN_TVA__C varchar(30),
    LICENSE_EXPIRATION_DATE_TVA__C timestamp,
    REP_ENTERED_SLN_TVA__C varchar(30),
    DEA_CONTACT_TVA__C varchar(255),
    MARK_FOR_DELETION_TVA__C varchar(5) NOT NULL,
    LICENSE_VALID_DATE_TVA__C timestamp,
    LICENSE_VALID_NUM_TVA__C varchar(25),
    CM_ID_TVA__C varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_AFFILIATION_VOD__C
(
    CHILD_AFFILIATION_VOD__C varchar(18),
    CREATEDBYID varchar(18),
    CREATEDDATE varchar(24),
    DESTROY_VOD__C varchar(5),
    DISABLE_TRIGGER_VOD__C varchar(5),
    EXTERNAL_ID_VOD__C varchar(255),
    FROM_ACCOUNT_VOD__C varchar(18),
    FROM_CONTACT_VOD__C varchar(18),
    ID varchar(18) NOT NULL,
    INFLUENCE_VOD__C varchar(50),
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE varchar(24),
    MAYEDIT varchar(5),
    MOBILE_ID_VOD__C varchar(100),
    NAME varchar(100),
    OWNERID varchar(18),
    PARENT_VOD__C varchar(18),
    ROLE_VOD__C varchar(50),
    SYSTEMMODSTAMP varchar(24),
    TO_ACCOUNT_VOD__C varchar(18),
    TO_CONTACT_VOD__C varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL2_VOD__HISTORY
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    PARENTID varchar(18) NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    FIELD varchar(255) NOT NULL,
    OLDVALUE varchar(255),
    NEWVALUE varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL_GOAL_TVA__C
(
    ACCOUNT_TVA__C varchar(18),
    ACTIVE_TVA__C varchar(5),
    ACTUAL_REMAINING_TVA__C varchar(50),
    ACTUAL_TVA__C numeric(37,15),
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    END_DATE_TVA__C timestamp,
    EXTERNAL_ID_TVA__C varchar(100),
    GOAL_TVA__C numeric(37,15),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTACTIVITYDATE timestamp,
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYEDIT varchar(5),
    NAME varchar(80),
    OWNERID varchar(18),
    PRIORITY_TVA__C numeric(37,15),
    PRODUCT_CATALOG_TVA__C varchar(18),
    REMAINING_TVA__C numeric(37,15),
    SORT_ORDER_TVA__C numeric(37,15),
    START_DATE_TVA__C timestamp,
    SYSTEMMODSTAMP timestamp,
    TERRITORY_TVA__C varchar(80)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CLM_PRESENTATION_SLIDE_VODC
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    CLM_PRESENTATION_VOD__C varchar(18) NOT NULL,
    KEY_MESSAGE_VOD__C varchar(18),
    DISPLAY_ORDER_VOD__C numeric(4,0),
    SUB_PRESENTATION_VOD__C varchar(18),
    MOBILE_ID_VOD__C varchar(100),
    EXTERNAL_ID_VOD__C varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CLM_PRESENTATION_VOD__C
(
    APPROVED_VOD__C varchar(5),
    COPIED_FROM_VOD__C varchar(20),
    COPY_DATE_VOD__C timestamp,
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    DEFAULT_PRESENTATION_VOD__C varchar(5),
    GROUP_TO_SHARE_TO__C varchar(50),
    HIDDEN_VOD__C varchar(5),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYEDIT varchar(5),
    MOBILE_ID_VOD__C varchar(100),
    NAME varchar(80),
    ORIGINAL_RECORD_ID_VOD__C varchar(20),
    OWNERID varchar(18),
    PARENTID_VOD__C varchar(100),
    PRESENTATION_ID_VOD__C varchar(100),
    PRODUCT_VOD__C varchar(18),
    SYSTEMMODSTAMP timestamp,
    TRAINING_VOD__C varchar(100),
    TYPE_VOD__C varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_DECILES_TVA__C
(
    ID varchar(18) NOT NULL,
    ACCOUNT_VOD__C varchar(18),
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MARKET_TVA__C varchar(10),
    MAYEDIT varchar(5),
    NAME varchar(80),
    SYSTEMMODSTAMP timestamp,
    VALUE_TVA__C varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_GROUP
(
    ID varchar(18) NOT NULL,
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    DEVELOPERNAME varchar(50),
    DOESINCLUDEBOSSES varchar(5),
    DOESSENDEMAILTOMEMBERS varchar(5),
    EMAIL varchar(11),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    NAME varchar(50),
    OWNERID varchar(18),
    RELATEDID varchar(18),
    SYSTEMMODSTAMP timestamp,
    TYPE varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_MEDICAL_INQUIRY_VOD__C
(
    ACCOUNT_VOD__C varchar(255),
    ADDRESS_LINE_1_VOD__C varchar(255),
    ADDRESS_LINE_2_VOD__C varchar(255),
    CALL2_VOD__C varchar(255),
    CITY_VOD__C varchar(255),
    COUNTRY_VOD__C varchar(255),
    CREATEDBYID varchar(255),
    CREATEDDATE varchar(255),
    DELIVERY_METHOD_VOD__C varchar(255),
    DISCLAIMER_VOD__C varchar(255),
    EMAIL_VOD__C varchar(255),
    ENTITY_REFERENCE_ID_VOD__C varchar(255),
    FAX_NUMBER_VOD__C varchar(255),
    ID varchar(255) NOT NULL,
    INQUIRY_TEXT__C varchar(2000),
    ISDELETED varchar(255),
    ISLOCKED varchar(255),
    LASTMODIFIEDBYID varchar(255),
    LASTMODIFIEDDATE varchar(255),
    LOCK_VOD__C varchar(255),
    MAYEDIT varchar(255),
    MOBILE_ID_VOD__C varchar(255),
    MSL_CONSULT__C varchar(255),
    NAME varchar(255),
    NEW_EMAIL_TVA__C varchar(255),
    NEW_FAX_TVA__C varchar(255),
    PHONE_NUMBER_VOD__C varchar(255),
    PRODUCT__C varchar(255),
    RECORDTYPEID varchar(255),
    RUSH_DELIVERY__C varchar(255),
    SIGNATURE_DATE_VOD__C varchar(255),
    SIGNATURE_VOD__C varchar(255),
    SOURCE__C varchar(255),
    STATE_VOD__C varchar(255),
    STATUS_VOD__C varchar(255),
    SUBMITTED_BY_MOBILE_VOD__C varchar(255),
    SYSTEMMODSTAMP varchar(255),
    ZIP_VOD__C varchar(255),
    ZVOD_DELIVERY_METHOD_VOD__C varchar(255),
    ZVOD_DISCLAIMER_VOD__C varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_PRODUCT_METRICS_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    ACCOUNT_VOD__C varchar(18) NOT NULL,
    AWARENESS__C varchar(255),
    SELLING_STAGE__C varchar(255),
    FORMULARY_STATUS__C varchar(255),
    MOVEMENT__C numeric(5,2),
    PRODUCTS_VOD__C varchar(18),
    SEGMENT__C varchar(255),
    X12_MO_TRX_CHG__C numeric(5,2),
    SPEAKER_SKILLS__C varchar(255),
    INVESTIGATOR_READINESS__C varchar(255),
    ENGAGEMENTS__C numeric(4,0),
    MOBILE_ID_VOD__C varchar(100),
    EXTERNAL_ID_VOD__C varchar(255),
    DECILE_VALUE_TVA__C numeric(2,0),
    CURRENT_TVA__C numeric(4,0),
    EXTERNAL_ID_TVA__C varchar(50),
    MARKETING_TARGET_TVA__C varchar(255),
    PRIOR_TVA__C numeric(4,0),
    REP_TARGET_TVA__C varchar(255),
    SBO_TARGET_TVA__C varchar(255),
    TRX_3_MONTH_TVA__C numeric(4,0),
    TRX_6_MONTH_TVA__C numeric(4,0),
    TRX_YTD_TVA__C numeric(4,0),
    CP_DECILE_TVA__C numeric(2,0),
    BUSINESS_SEGMENT_TVA__C varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_PRODUCT_VOD__C
(
    ID varchar(18) NOT NULL,
    OWNERID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    CONSUMER_SITE__C varchar(255),
    PRODUCT_INFO__C varchar(255),
    THERAPEUTIC_CLASS_VOD__C varchar(255),
    PARENT_PRODUCT_VOD__C varchar(18),
    THERAPEUTIC_AREA_VOD__C varchar(255),
    PRODUCT_TYPE_VOD__C varchar(255),
    REQUIRE_KEY_MESSAGE_VOD__C varchar(5) NOT NULL,
    COST_VOD__C numeric(14,2),
    EXTERNAL_ID_VOD__C varchar(25),
    MANUFACTURER_VOD__C varchar(255),
    COMPANY_PRODUCT_VOD__C varchar(5) NOT NULL,
    CONTROLLED_SUBSTANCE_VOD__C varchar(5) NOT NULL,
    DESCRIPTION_VOD__C varchar(255),
    SAMPLE_QUANTITY_PICKLIST_VOD__ varchar(1000),
    DISPLAY_ORDER_VOD__C numeric(5,0),
    NO_METRICS_VOD__C varchar(5) NOT NULL,
    DISTRIBUTOR_VOD__C varchar(255),
    SAMPLE_QUANTITY_BOUND_VOD__C varchar(5) NOT NULL,
    SAMPLE_U_M_VOD__C varchar(255),
    NO_DETAILS_VOD__C varchar(5) NOT NULL,
    QUANTITY_PER_CASE_VOD__C numeric(10,0),
    SCHEDULE_VOD__C varchar(10),
    RESTRICTED_VOD__C varchar(5) NOT NULL,
    PRICING_RULE_QUANTITY_BOUND_VO varchar(5) NOT NULL,
    NO_PROMO_ITEMS_VOD__C varchar(1300),
    USER_ALIGNED_VOD__C varchar(5) NOT NULL,
    RESTRICTED_STATES_VOD__C varchar(100),
    SORT_CODE_VOD__C varchar(20),
    NO_CYCLE_PLANS_VOD__C varchar(5) NOT NULL,
    INVENTORY_ORDER_UOM_VOD__C varchar(255),
    INVENTORY_QUANTITY_PER_CASE_VO numeric(10,0),
    SUB_TYPE__C varchar(255),
    ORGANIZATION__C varchar(255),
    PRODUCT_ID_TEVA__C varchar(200),
    PRODUCT_LINE_TVA__C varchar(4000)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    SURVEY_TARGET_VOD__C varchar(18) NOT NULL,
    ANSWER_CHOICE_VOD__C varchar(700),
    DATE_VOD__C timestamp,
    DATETIME_VOD__C timestamp,
    EXTERNAL_ID_VOD__C varchar(120),
    MOBILE_ID_VOD__C varchar(100),
    NUMBER_VOD__C numeric(7,0),
    ORDER_VOD__C numeric(2,0),
    QUESTION_TEXT_VOD__C varchar(1000),
    REQUIRED_VOD__C varchar(5) NOT NULL,
    RESPONSE_HASH_VOD__C varchar(255),
    RESPONSE_VOD__C varchar(550),
    SCORE_VOD__C numeric(11,0),
    SURVEY_QUESTION_VOD__C varchar(18),
    TEXT_VOD__C varchar(2500),
    TYPE_VOD__C varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_RECORDTYPE
(
    ID varchar(18) NOT NULL,
    BUSINESSPROCESSID varchar(18),
    CREATEDBYID varchar(18),
    CREATEDDATE varchar(24),
    DESCRIPTION varchar(255),
    DEVELOPERNAME varchar(80),
    ISACTIVE varchar(5),
    ISPERSONTYPE varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE varchar(24),
    NAME varchar(80),
    NAMESPACEPREFIX varchar(15),
    SOBJECTTYPE varchar(40),
    SYSTEMMODSTAMP varchar(24)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    SURVEY_VOD__C varchar(18) NOT NULL,
    ANSWER_CHOICE_VOD__C varchar(700),
    EXTERNAL_ID_VOD__C varchar(120),
    MAX_SCORE_VOD__C numeric(11,0),
    MIN_SCORE_VOD__C numeric(11,0),
    ORDER_VOD__C numeric(2,0),
    QUESTION_VOD__C varchar(18),
    REQUIRED_VOD__C varchar(5) NOT NULL,
    TEXT_VOD__C varchar(1000)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C
(
    ID varchar(18) NOT NULL,
    OWNERID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80),
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    ACCOUNT_DISPLAY_NAME_VOD__C varchar(100),
    ACCOUNT_VOD__C varchar(18),
    CHANNELS_VOD__C varchar(255),
    END_DATE_VOD__C timestamp NOT NULL,
    ENTITY_REFERENCE_ID_VOD__C varchar(100),
    EXTERNAL_ID_VOD__C varchar(120),
    LANGUAGE_VOD__C varchar(255),
    LOCK_VOD__C varchar(5) NOT NULL,
    MOBILE_ID_VOD__C varchar(100),
    NO_AUTOASSIGN_VOD__C varchar(5) NOT NULL,
    NOT_COMPLETED_VOD__C varchar(1300),
    REGION_VOD__C varchar(255),
    SEGMENT_VOD__C varchar(255),
    START_DATE_VOD__C timestamp NOT NULL,
    STATUS_VOD__C varchar(255),
    SURVEY_VOD__C varchar(18),
    TERRITORY_VOD__C varchar(255),
    ZVOD_ADDRESS_VOD__C varchar(5) NOT NULL,
    ZVOD_SPECIALTY_VOD__C varchar(5) NOT NULL,
    SCORE_VOD__C numeric(11,0)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_SURVEY_VOD__C
(
    ID varchar(18) NOT NULL,
    OWNERID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80),
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    ASSIGNMENT_TYPE_VOD__C varchar(255),
    CHANNELS_VOD__C varchar(255),
    END_DATE_VOD__C timestamp NOT NULL,
    EXPIRED_VOD__C varchar(1300),
    EXTERNAL_ID_VOD__C varchar(120),
    LANGUAGE_VOD__C varchar(255),
    LOCK_VOD__C varchar(5) NOT NULL,
    OPEN_VOD__C varchar(5) NOT NULL,
    PRODUCT_VOD__C varchar(18),
    REGION_VOD__C varchar(255),
    SEGMENT_VOD__C varchar(800),
    START_DATE_VOD__C timestamp NOT NULL,
    STATUS_VOD__C varchar(255),
    TERRITORY_VOD__C varchar(255),
    ZVOD_QUESTIONS_VOD__C varchar(5) NOT NULL,
    ZVOD_SEGMENTS_VOD__C varchar(5) NOT NULL,
    ZVOD_TARGETS_VOD__C varchar(5) NOT NULL,
    MAX_SCORE_VOD__C numeric(11,0),
    MIN_SCORE_VOD__C numeric(11,0)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_SYNC_TRACKING_VOD__C
(
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    DOWNLOAD_PROCESSED_VOD__C varchar(5),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYEDIT varchar(5),
    MEDIA_PROCESSED_VOD__C varchar(5),
    MOBILE_ID_VOD__C varchar(100),
    NAME varchar(100),
    OWNERID varchar(18),
    SUCCESSFUL_SYNC_VOD__C varchar(5),
    SYNC_COMPLETED_DATETIME_VOD__C timestamp,
    SYNC_DURATION_VOD__C varchar(18),
    SYNC_START_DATETIME_VOD__C timestamp,
    SYNC_TYPE_VOD__C varchar(100),
    SYSTEMMODSTAMP varchar(24),
    UPLOAD_PROCESSED_VOD__C varchar(5),
    VERSION_VOD__C varchar(100),
    VINSIGHTS_PROCESSED_VOD__C varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_TERRITORY
(
    ID varchar(18) NOT NULL,
    ACCOUNTACCESSLEVEL varchar(5),
    CASEACCESSLEVEL varchar(5),
    CONTACTACCESSLEVEL varchar(5),
    DESCRIPTION varchar(50),
    DEVELOPERNAME varchar(50),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYFORECASTMANAGERSHARE varchar(5),
    NAME varchar(50),
    OPPORTUNITYACCESSLEVEL varchar(5),
    PARENTTERRITORYID varchar(18),
    RESTRICTOPPORTUNITYTRANSFER varchar(5),
    SYSTEMMODSTAMP timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.VV_TIME_OFF_TERRITORY_VOD__C
(
    CREATEDBYID varchar(18),
    CREATEDDATE timestamp,
    DATE_VOD__C timestamp,
    HOURS_OFF_VOD__C numeric(3,0),
    HOURS_VOD__C numeric(3,0),
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5),
    ISLOCKED varchar(5),
    LASTACTIVITYDATE varchar(10),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYEDIT varchar(5),
    MOBILE_ID_VOD__C varchar(100),
    NAME varchar(80),
    OWNERID varchar(18),
    REASON_VOD__C varchar(100),
    START_TIME_VOD__C varchar(8),
    STATUS_VOD__C varchar(20),
    SYSTEMMODSTAMP varchar(24),
    TERRITORY_VOD__C varchar(100),
    TIME_VOD__C varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_TSF_VOD__HISTORY
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    PARENTID varchar(18) NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    FIELD varchar(255) NOT NULL,
    OLDVALUE varchar(255),
    NEWVALUE varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_USERROLE
(
    ID varchar(18) NOT NULL,
    CASEACCESSFORACCOUNTOWNER varchar(5),
    CONTACTACCESSFORACCOUNTOWNER varchar(5),
    DEVELOPERNAME varchar(50),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    MAYFORECASTMANAGERSHARE varchar(5),
    NAME varchar(50),
    OPPORTUNITYACCESSACCOUNTOWNER varchar(5),
    PARENTROLEID varchar(18),
    PORTALTYPE varchar(5),
    ROLLUPDESCRIPTION varchar(100),
    SYSTEMMODSTAMP timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.VV_USERTERRITORY
(
    ID varchar(18) NOT NULL,
    ISACTIVE varchar(4),
    LASTMODIFIEDBYID varchar(18),
    LASTMODIFIEDDATE timestamp,
    SYSTEMMODSTAMP timestamp,
    TERRITORYID varchar(18),
    USERID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.ZIPCODE_TIMEZONE
(
    ZIP varchar(5) NOT NULL,
    TIMEZONE_NAME varchar(30),
    TIMEZONE_OFFSET numeric(3,0),
    OBSERVES_DST varchar(1),
    SOURCE varchar(30),
    CREATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_plan_rx_w
(
    ims_id varchar(10),
    payer_plan_num varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    week_ending date,
    week_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75),
    payer_name varchar(100),
    plan_name varchar(100),
    pbm_name varchar(100),
    model varchar(100),
    payment_method varchar(250)
);


CREATE TABLE WSMP_ADMIN_ORA.dw_presc_rx_w
(
    ims_id varchar(10),
    product_code varchar(10),
    product_name varchar(75),
    month_ending date,
    month_bucket numeric(3,0),
    week_ending date,
    week_bucket numeric(3,0),
    nrx_cnt numeric(12,6),
    trx_cnt numeric(12,6),
    nrx_qty numeric(12,3),
    trx_qty numeric(12,3),
    unnormalized_nrx_cnt numeric(10,3),
    unnormalized_trx_cnt numeric(10,3),
    sales_category varchar(2),
    market_name varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_DECILE
(
    ims_id varchar(10),
    category varchar(100),
    decile_name varchar(50),
    trx_cnt_01_06 int,
    trx_cnt_01_12 int
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL2_KEY_MESSAGE_VOD__C
(
    ID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    ACCOUNT_VOD__C varchar(18),
    CALL2_VOD__C varchar(18) NOT NULL,
    REACTION_VOD__C varchar(255),
    PRODUCT_VOD__C varchar(18),
    KEY_MESSAGE_VOD__C varchar(18),
    MOBILE_ID_VOD__C varchar(100),
    CONTACT_VOD__C varchar(18),
    CALL_DATE_VOD__C timestamp,
    USER_VOD__C varchar(18),
    CATEGORY_VOD__C varchar(255),
    VEHICLE_VOD__C varchar(255),
    IS_PARENT_CALL_VOD__C numeric(18,0),
    OVERRIDE_LOCK_VOD__C varchar(5),
    CLM_ID_VOD__C varchar(100),
    SLIDE_VERSION_VOD__C varchar(100),
    DURATION_VOD__C numeric(14,0),
    PRESENTATION_ID_VOD__C varchar(100),
    START_TIME_VOD__C timestamp,
    ATTENDEE_TYPE_VOD__C varchar(255),
    ENTITY_REFERENCE_ID_VOD__C varchar(100),
    SEGMENT_VOD__C varchar(80),
    DISPLAY_ORDER_VOD__C numeric(3,0)
);


CREATE TABLE WSMP_ADMIN_ORA.VV_CALL2_VOD__C
(
    ID varchar(18) NOT NULL,
    OWNERID varchar(18) NOT NULL,
    ISDELETED varchar(5) NOT NULL,
    NAME varchar(80) NOT NULL,
    RECORDTYPEID varchar(18),
    CREATEDDATE timestamp NOT NULL,
    CREATEDBYID varchar(18) NOT NULL,
    LASTMODIFIEDDATE timestamp NOT NULL,
    LASTMODIFIEDBYID varchar(18) NOT NULL,
    SYSTEMMODSTAMP timestamp NOT NULL,
    LASTACTIVITYDATE timestamp,
    MAYEDIT varchar(5) NOT NULL,
    ISLOCKED varchar(5) NOT NULL,
    LASTVIEWEDDATE timestamp,
    LASTREFERENCEDDATE timestamp,
    SAMPLE_CARD_VOD__C varchar(15),
    ADD_DETAIL_VOD__C varchar(1000),
    PROPERTY_VOD__C numeric(8,0),
    ACCOUNT_VOD__C varchar(18),
    ZVOD_PRODUCT_DISCUSSION_VOD__C varchar(5) NOT NULL,
    STATUS_VOD__C varchar(255),
    PARENT_ADDRESS_VOD__C varchar(18),
    ACCOUNT_PLAN_VOD__C varchar(18),
    ZVOD_SAVENEW_VOD__C varchar(5) NOT NULL,
    NEXT_CALL_NOTES_VOD__C varchar(255),
    MOBILE_ID_VOD__C varchar(100),
    ZVOD_ACCOUNT_CREDENTIALS_VOD_C varchar(5) NOT NULL,
    ZVOD_ACCOUNT_PREFERRED_NAME_VO varchar(5) NOT NULL,
    ZVOD_ACCOUNT_SAMPLE_STATUS_VOD varchar(5) NOT NULL,
    ZVOD_ATTENDEES_VOD__C varchar(5) NOT NULL,
    ZVOD_KEY_MESSAGES_VOD__C varchar(5) NOT NULL,
    ZVOD_DETAILING_VOD__C varchar(5) NOT NULL,
    ZVOD_EXPENSES_VOD__C varchar(5) NOT NULL,
    ZVOD_FOLLOWUP_VOD__C varchar(5) NOT NULL,
    ZVOD_SAMPLES_VOD__C varchar(5) NOT NULL,
    ZVOD_SAVE_VOD__C varchar(5) NOT NULL,
    ZVOD_SUBMIT_VOD__C varchar(5) NOT NULL,
    ZVOD_DELETE_VOD__C varchar(5) NOT NULL,
    ACTIVITY_TYPE__C varchar(255),
    SIGNIFICANT_EVENT__C varchar(5) NOT NULL,
    LOCATION_VOD__C varchar(128),
    SUBJECT_VOD__C varchar(128),
    UNLOCK_VOD__C varchar(5),
    CALL_DATETIME_VOD__C timestamptz,
    DISBURSED_TO_VOD__C varchar(255),
    REQUEST_RECEIPT_VOD__C varchar(5) NOT NULL,
    SIGNATURE_DATE_VOD__C timestamp,
    TERRITORY_VOD__C varchar(100),
    SUBMITTED_BY_MOBILE_VOD__C varchar(5) NOT NULL,
    CALL_TYPE_VOD__C varchar(255),
    ADD_KEY_MESSAGE_VOD__C varchar(4000),
    ADDRESS_VOD__C varchar(500),
    ATTENDEES_VOD__C numeric(3,0),
    ATTENDEE_TYPE_VOD__C varchar(255),
    CALL_DATE_VOD__C timestamp,
    DETAILED_PRODUCTS_VOD__C varchar(255),
    NO_DISBURSEMENT_VOD__C varchar(5) NOT NULL,
    PARENT_CALL_VOD__C varchar(18),
    USER_VOD__C varchar(18),
    CONTACT_VOD__C varchar(18),
    ZVOD_ENTITY_VOD__C varchar(5) NOT NULL,
    MEDICAL_EVENT_VOD__C varchar(18),
    MOBILE_CREATED_DATETIME_VOD__C timestamp,
    MOBILE_LAST_MODIFIED_DATETIME timestamp,
    LICENSE_VOD__C varchar(25),
    IS_PARENT_CALL_VOD__C numeric(18,0),
    ENTITY_DISPLAY_NAME_VOD__C varchar(1300),
    OVERRIDE_LOCK_VOD__C varchar(5),
    LAST_DEVICE_VOD__C varchar(255),
    SHIP_ADDRESS_LINE_1_VOD__C varchar(80),
    SHIP_ADDRESS_LINE_2_VOD__C varchar(100),
    SHIP_CITY_VOD__C varchar(40),
    SHIP_COUNTRY_VOD__C varchar(20),
    SHIP_LICENSE_EXPIRATION_DATE timestamp,
    SHIP_LICENSE_STATUS_VOD__C varchar(25),
    SHIP_LICENSE_VOD__C varchar(25),
    SHIP_STATE_VOD__C varchar(30),
    SHIP_TO_ADDRESS_VOD__C varchar(18),
    SHIP_ZIP_VOD__C varchar(20),
    SHIP_TO_ADDRESS_TEXT_VOD__C varchar(1300),
    CLM_VOD__C varchar(5) NOT NULL,
    ZVOD_CLMDETAILS_VOD__C varchar(5) NOT NULL,
    IS_SAMPLED_CALL_VOD__C varchar(5) NOT NULL,
    ZVOD_SURVEYS_VOD__C varchar(5) NOT NULL,
    PRESENTATIONS_VOD__C varchar(500),
    ENTITY_REFERENCE_ID_VOD__C varchar(100),
    ERROR_REFERENCE_CALL_VOD__C varchar(18),
    DURATION_VOD__C numeric(18,0),
    COLOR_VOD__C varchar(255),
    ALLOWED_PRODUCTS_VOD__C varchar(1000),
    ZVOD_ATTACHMENTS_VOD__C varchar(5) NOT NULL,
    SAMPLE_CARD_REASON_VOD__C varchar(255),
    ASSMCA_VOD__C varchar(100),
    ADDRESS_LINE_1_VOD__C varchar(80),
    ADDRESS_LINE_2_VOD__C varchar(100),
    CITY_VOD__C varchar(40),
    DEA_ADDRESS_LINE_1_VOD__C varchar(80),
    DEA_ADDRESS_LINE_2_VOD__C varchar(100),
    DEA_ADDRESS_VOD__C varchar(18),
    DEA_CITY_VOD__C varchar(40),
    DEA_EXPIRATION_DATE_VOD__C timestamp,
    DEA_STATE_VOD__C varchar(10),
    DEA_ZIP_4_VOD__C varchar(4),
    DEA_ZIP_VOD__C varchar(20),
    DEA_VOD__C varchar(9),
    SHIP_ZIP_4_VOD__C varchar(4),
    STATE_VOD__C varchar(10),
    ZIP_4_VOD__C varchar(4),
    ZIP_VOD__C varchar(20),
    SAMPLE_SEND_CARD_VOD__C varchar(15),
    ZVOD_ADDRESS_VOD_C_DEA_STATUS_ varchar(5) NOT NULL,
    SIGNATURE_PAGE_IMAGE_VOD__C varchar(255),
    CREDENTIALS_VOD__C varchar(255),
    SALUTATION_VOD__C varchar(255),
    ZVOD_ACCOUNT_CALL_REMINDER_VOD varchar(5) NOT NULL,
    SALES_ORG_TVA__C varchar(1300),
    ZVOD_BUSINESS_ACCOUNT_VOD__C varchar(5),
    PRODUCT_PRIORITY_1_VOD__C varchar(18),
    PRODUCT_PRIORITY_2_VOD__C varchar(18),
    PRODUCT_PRIORITY_3_VOD__C varchar(18),
    PRODUCT_PRIORITY_4_VOD__C varchar(18),
    PRODUCT_PRIORITY_5_VOD__C varchar(18),
    ZVOD_MORE_ACTIONS_VOD__C varchar(5) NOT NULL,
    ZVOD_CALL_CONFLICT_STATUS varchar(5) NOT NULL,
    SIGNATURE_TIMESTAMP_VOD__C numeric(15,0),
    EXPENSE_AMOUNT_VOD__C numeric(18,0),
    TOTAL_EXPENSE_ATTENDEES_COUNT numeric(5,0),
    ATTENDEE_LIST_VOD__C varchar(4000),
    EXPENSE_POST_STATUS_VOD__C varchar(10),
    ATTENDEE_POST_STATUS_VOD__C varchar(10),
    EXPENSE_SYSTEM_EXTERNAL_ID varchar(255),
    INCURRED_EXPENSE_VOD__C varchar(5) NOT NULL,
    ASSIGNER_VOD__C varchar(18),
    ASSIGNMENT_DATETIME_VOD__C timestamp,
    ZVOD_CALL_OBJECTIVE_VOD__C varchar(5) NOT NULL,
    SIGNATURE_LOCATION_LONGITUDE numeric(15,6),
    SIGNATURE_LOCATION_LATITUDE numeric(15,6),
    LOCATION_SERVICES_STATUS varchar(255),
    CREATED_BY_TIMEZONE_TVA__C varchar(120),
    LICENSE_EXPIRATION_DATE_VOD__C timestamp,
    LICENSE_STATUS_VOD__C varchar(255),
    SHIP_ASSMCA_VOD__C varchar(100),
    SHIP_DEA_EXPIRATION_DATE timestamp,
    SHIP_DEA_VOD__C varchar(9),
    CALL_METHOD_TVA__C varchar(255),
    LOCAL_CALL_DATETIME_VOD__C timestamptz,
    LOCAL_TIMEZONE_NAME varchar(100) DEFAULT 'Unknown/Unknown',
    LOCAL_CALL_INFO_HAS_BEEN_SET char(1) DEFAULT 'N'
);


CREATE TABLE WSMP_ADMIN_ORA.ASI_IMS_PRESC_DEMO
(
    SALES_FORCE_ID varchar(5),
    IMS_ID varchar(10),
    CM_ID int,
    ME_NUM varchar(10),
    SPECIALTY varchar(10),
    SPECIALTY_SOURCE varchar(10),
    ORIGINAL_IMS_SPECIALTY varchar(10),
    LAST_NAME varchar(25),
    FIRST_NAME varchar(25),
    MID_NAME varchar(2),
    PTR_ADDRESS varchar(100),
    PTR_CITY varchar(50),
    PTR_STATE varchar(2),
    PTR_ZIP varchar(5),
    PTR_PHONE varchar(10),
    PTR_TERRITORY_NUM varchar(8),
    PTR_ADDRESS_ID int,
    PTR_ADDRESS_SOURCE varchar(30),
    COMP_ADDRESS varchar(100),
    COMP_CITY varchar(50),
    COMP_STATE varchar(2),
    COMP_ZIP varchar(5),
    COMP_TERRITORY_NUM varchar(8),
    COMP_ADDRESS_ID int,
    COMP_ADDRESS_SOURCE varchar(50),
    SKA_SPECIALTY_1 varchar(10),
    SKA_SPECIALTY_2 varchar(10),
    SKA_SPECIALTY_3 varchar(10),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE timestamp,
    PDRP_FLAG char(1) DEFAULT 'N',
    PDRP_DATE timestamp,
    NP_PA_FLAG char(1) DEFAULT 'N',
    NO_SPEND char(1) DEFAULT 'N',
    AMA_NO_CONTACT_FLAG char(1) DEFAULT 'N',
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    NPI varchar(10),
    BAD_TERRITORY_FLAG varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.BAG
(
    BAG_ID int,
    BAG_NAME varchar(100),
    FIRST_VALID_DATE timestamp,
    LAST_VALID_DATE timestamp,
    VALID_FOR_TODAY varchar(1) DEFAULT 'N',
    CREATE_USER varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.BAG_PRODUCT
(
    BAG_ID int,
    PRODUCT_NAME varchar(50),
    "POSITION" numeric(3,0),
    WEIGHT numeric(37,15),
    CREATE_USER varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DEBARRED
(
    IMS_ID varchar(10),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(25),
    LAST_NAME varchar(60),
    SUFFIX varchar(4),
    SPECIALTY_PRIMARY_CODE varchar(4),
    IN_DEA_FILE varchar(1),
    IN_FDA_FILE varchar(1),
    IN_OIG_FILE varchar(1),
    CURRENT_IND varchar(1),
    CREATE_DATE timestamp,
    RECORD_TYPE varchar(1),
    TVCMID int,
    IN_PERPRM_FILE varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ASI_PROGRAM
(
    PROGRAM_KEY int,
    REDEMPTION_TYPE varchar(20),
    ASI_PROGRAM_NUM varchar(10),
    PROGRAM_DESC varchar(100),
    SALES_FORCE_ID varchar(10),
    PROGRAM_TYPE varchar(20),
    PRODUCT_NAME varchar(30),
    PROGRAM_START_DATE timestamp,
    PROGRAM_END_DATE timestamp,
    ACTIVE_IND varchar(1),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPD_DATE timestamp,
    NUMBER_OF_TABLETS int
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ASI_PROGRAM_COMP
(
    PROGRAM_COMP_ID int,
    REDEMPTION_TYPE varchar(10),
    ASI_PROGRAM_NUM varchar(10),
    COMP_WEIGHT numeric(37,15) DEFAULT 1,
    COMP_START_DATE timestamp,
    COMP_END_DATE timestamp,
    CREATE_DATE timestamp,
    LAST_UPDATE_DATE timestamp,
    CURRENT_IND varchar(1) DEFAULT 'N'
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ASI_PROGRAM_MBO
(
    PROGRAM_MBO_ID int,
    REDEMPTION_TYPE varchar(10),
    ASI_PROGRAM_NUM varchar(10),
    MBO_START_DATE timestamp,
    MBO_END_DATE timestamp,
    CURRENT_IND varchar(1) DEFAULT 'N',
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_DNC
(
    SALES_FORCE_ID varchar(5),
    IMS_ID varchar(10),
    PRODUCT_CODE varchar(6),
    PRODUCT_NAME varchar(30),
    CM_ID int,
    DNC_ID int,
    TERRITORY_NUM varchar(8),
    LAST_NAME varchar(60),
    FIRST_NAME varchar(50),
    ADDRESS varchar(125),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    DNC_START_DATE timestamp,
    DEBARRED varchar(1) DEFAULT 'N',
    PRIM_SPECIALTY varchar(3),
    SECONDARY_SPECIALTY varchar(3),
    SPECIALTY_GROUP varchar(3),
    NP_PA_FLAG varchar(1) DEFAULT 'N',
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp,
    MIDDLE_NAME varchar(25),
    ADDRESS_UPDATE_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_DNC_HIST
(
    DNC_ID int,
    SALES_FORCE_ID varchar(5),
    CEPH_ID varchar(12),
    BRAND_NAME varchar(30),
    BRAND_CODE varchar(6),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    TERRITORY_NUM varchar(8),
    LAST_NAME varchar(60),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(25),
    SUFFIX varchar(4),
    TITLE varchar(20),
    ADDRESS varchar(125),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    DNC_START_DATE timestamp,
    DEBARRED varchar(1) DEFAULT 'N',
    PRIM_SPECIALTY varchar(3),
    SECONDARY_SPECIALTY varchar(3),
    SPECIALTY_GROUP varchar(3),
    NP_PA_FLAG varchar(1) DEFAULT 'N',
    SFA_DEMO_FLAG varchar(1),
    SFA_ADDRESS_UPD_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CURRENT_IND varchar(1) DEFAULT 'Y',
    DATA_IND varchar(1),
    TIME_PERIOD varchar(20),
    SYSTEM_START_DATE timestamp,
    SYSTEM_END_DATE timestamp,
    UNIV_ID int,
    IMS_ID varchar(10),
    CM_ID int,
    OVERRIDE varchar(1) DEFAULT 'N'
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_DNC_INCLUDE
(
    DNC_ID int,
    SALES_FORCE_ID varchar(5),
    CEPH_ID varchar(12),
    BRAND_NAME varchar(30),
    BRAND_CODE varchar(6),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    TERRITORY_NUM varchar(8),
    LAST_NAME varchar(60),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(25),
    SUFFIX varchar(4),
    TITLE varchar(20),
    ADDRESS varchar(125),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    DNC_START_DATE timestamp,
    DEBARRED varchar(1) DEFAULT 'N',
    PRIM_SPECIALTY varchar(3),
    SECONDARY_SPECIALTY varchar(3),
    SPECIALTY_GROUP varchar(3),
    NP_PA_FLAG varchar(1) DEFAULT 'N',
    SFA_DEMO_FLAG varchar(1),
    SFA_ADDRESS_UPD_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CURRENT_IND varchar(1) DEFAULT 'Y',
    DATA_IND varchar(1),
    TIME_PERIOD varchar(20),
    SYSTEM_START_DATE timestamp,
    SYSTEM_END_DATE timestamp,
    UNIV_ID int,
    IMS_ID varchar(10),
    CM_ID int,
    OVERRIDE varchar(1) DEFAULT 'N',
    REASON varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_OUTLET
(
    TERRITORY_NUM varchar(8),
    IMS_OUTLET_NUMBER varchar(8),
    CROSS_REFERENCE varchar(8),
    NAME varchar(50),
    ADDRESS varchar(80),
    FORMATTED_ADDRESS varchar(80),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    RPT_TYPE varchar(2),
    STATUS varchar(1),
    SUBCATEGORY_CODE varchar(5),
    STATE_CODE varchar(2),
    COUNTY_CODE int,
    REC_TYPE varchar(2),
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_IMS_OUTLET_HIST
(
    TERRITORY_NUM varchar(8),
    IMS_OUTLET_NUMBER varchar(8),
    CROSS_REFERENCE varchar(8),
    NAME varchar(50),
    ADDRESS varchar(80),
    FORMATTED_ADDRESS varchar(80),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    RPT_TYPE varchar(2),
    STATUS varchar(1),
    SUBCATEGORY_CODE varchar(5),
    STATE_CODE varchar(2),
    COUNTY_CODE int,
    REC_TYPE varchar(2),
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0),
    DATA_YEAR_MTH int,
    ORA_KEY int
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_NATL_DRUG_CODE
(
    NDC_CODE varchar(11),
    PRODUCT varchar(10),
    STRENGTH varchar(20),
    DISPLAY_NAME varchar(50),
    DISPLAY_ORDER int,
    PARENT_PRODUCT_CODE varchar(6),
    PRODUCT_CODE varchar(6)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_ACCOUNT_DEMO
(
    ACCT_DEMO_ID int NOT NULL,
    IMS_OUTLET_CODE varchar(10),
    IMS_FACILITY_NUMBER varchar(11),
    IMS_PRESCRIBER_NUMBER varchar(7),
    CATEGORY_CODE varchar(10),
    SUBCATEGORY_CODE varchar(2),
    OUTLET_NAME varchar(100),
    OUTLET_ADDRESS varchar(120),
    OUTLET_CITY varchar(40),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    ALIGNMENT_ZIP varchar(5),
    ZIP_OVERRIDE varchar(1) DEFAULT 'N',
    ZIP_OVERRIDE_DATE timestamp,
    FACILITY_NAME varchar(100),
    FACILITY_ADDRESS1 varchar(60),
    FACILITY_ADDRESS2 varchar(60),
    FACILITY_ADDRESS3 varchar(60),
    FACILITY_ADDRESS4 varchar(60),
    FACILITY_CITY varchar(40),
    FACILITY_STATE varchar(2),
    FACILITY_ZIP varchar(5),
    PRESCRIBER_NAME varchar(100),
    PRESCRIBER_ADDRESS1 varchar(60),
    PRESCRIBER_ADDRESS2 varchar(60),
    PRESCRIBER_ADDRESS3 varchar(60),
    PRESCRIBER_ADDRESS4 varchar(60),
    PRESCRIBER_CITY varchar(40),
    PRESCRIBER_STATE varchar(2),
    PRESCRIBER_ZIP varchar(5),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_SOURCE varchar(50),
    UPDATE_DATE timestamp,
    UPDATE_SOURCE varchar(50),
    CREATE_DRIVER varchar(50),
    UPDATE_DRIVER varchar(50),
    ACCT_STATUS char(1) DEFAULT 'A',
    TVCMID int,
    IN_MONTHLY_SALES varchar(1),
    IN_WEEKLY_SALES varchar(1),
    CONSTRAINT C_PRIMARY PRIMARY KEY (ACCT_DEMO_ID) DISABLED
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_ACCOUNT_ID_XREF
(
    ACCT_DEMO_ID int,
    ID_TYPE varchar(10),
    ID_VALUE varchar(50),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(30) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_EXCLUDED_OUTLETS
(
    ACCT_DEMO_ID int,
    REASON varchar(50),
    STATUS char(1) DEFAULT 'X',
    STATUS_NOTE varchar(50),
    ADD_DATE timestamp DEFAULT "sysdate"(),
    ADD_USER varchar(30),
    CHANGE_DATE timestamp DEFAULT "sysdate"(),
    CHANGE_USER varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_ONC_RELATED_ACCOUNTS
(
    ACCT_DEMO_ID int,
    REL_TYPE varchar(10),
    REL_ACCT_DEMO_ID int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(30) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_SFA_CSF_DEMO
(
    CSF_DEMO_ID varchar(32),
    SALES_FORCE_ID varchar(5),
    DEMO_TYPE varchar(50),
    SMART_DEMO_DOC_ID varchar(32),
    TARGET_PROF_ID int,
    IMS_ID varchar(10),
    HMS_ID varchar(15),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE timestamp,
    DEA_DRUG_SCHEDULE varchar(12),
    CEPH_ACCT_ID varchar(12),
    IMS_OUTLET_CODE varchar(8),
    TERRITORY_NUM varchar(8),
    HOUSE_ACCT_FLAG varchar(1) DEFAULT 'N',
    SRC_VERIFICATION_STATUS varchar(5),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(50),
    SUFFIX_NAME varchar(10),
    CREDENTIALS varchar(50),
    ORGANIZATION_NAME varchar(60),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    ADDRESS3 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    PHONE varchar(50),
    PHONE_EXT varchar(12),
    FAX varchar(50),
    MOBILE varchar(50),
    EMAIL varchar(200),
    PRIM_SPECIALTY varchar(255),
    HIGH_OPIOID_FLAG varchar(1),
    ONC_TRISENOX_TARGET varchar(1),
    ONC_TRISENOX_TARGET_TYPE varchar(20),
    ONC_TRISENOX_REP_TARGET varchar(1),
    ORA_VIEWABLE_FLAG varchar(1) DEFAULT 'Y',
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    STATE_LICENSE_NUMBER varchar(20),
    STATE_LICENSE_STATE varchar(2),
    STATE_LICENSE_EXPIR_DATE timestamp,
    STATE_LICENSE_ELIG_CODE varchar(1),
    ADDRESS_STATUS varchar(20),
    FENTORA_SAFETY_MSG_DATE timestamp,
    NUVIGIL_DNC varchar(1),
    FENTORA_DNC varchar(1),
    TREATS_ES varchar(1),
    SFA_CREATE_DATE timestamp,
    DEMO_RANK int DEFAULT 1,
    ARCHIVE_FLAG varchar(1),
    DEA_LR_FLAG varchar(1) DEFAULT 'N',
    STATE_NUM varchar(30),
    SLN_VALIDATION_DATE timestamp,
    SLN_VALIDATION_SOURCE varchar(30),
    CM_ID int,
    NUVIGIL_APP varchar(1),
    FENTORA_APP varchar(1),
    LAST_CALL_DATE timestamp,
    PROFESSIONAL_TYPE varchar(25),
    NO_SPEND varchar(1),
    TARGET_PRIMARY_LOC_ID int,
    ADDRESS_ID int,
    NUVIGIL_REMS_PB varchar(1),
    FENTORA_REMS_STATUS varchar(80),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    SIEBEL_ADDR_PER_ROW_ID varchar(15),
    TERRITORY_TYPE varchar(10) DEFAULT 'Normal',
    VEEVA_ACCOUNT_ID varchar(18),
    VEEVA_ADDRESS_ID varchar(18),
    CELL_PHONE varchar(50),
    CML_PROFILED varchar(1),
    NO_CONTACT varchar(1),
    PMO_GPO_ACCOUNT_AFFILIATION varchar(50),
    ONC_SYNRIBO_TARGET varchar(5),
    ONC_TREANDA_SBO varchar(5),
    ONC_TREANDA_TARGET varchar(5),
    ONC_TRISENOX_SBO varchar(5),
    ROW_SOURCE varchar(30),
    MAILABLE char(1) DEFAULT 'N',
    CALLS_LAST_90_DAYS numeric(3,0) DEFAULT 0,
    ZIP_VALID_FOR_TERRITORY_NUM char(1) DEFAULT 'N',
    TERRITORY_STATUS varchar(30),
    SPECIALTY_CODE varchar(3),
    BP_CODE varchar(20),
    TWH_TARGET varchar(1),
    BUSINESS_ASSOCIATE_AGREEMENT varchar(255),
    SFA_ALIGN_DATE timestamp,
    ACCT_DEMO_ID int,
    PDRP_FLAG varchar(1) DEFAULT 'N',
    NPI varchar(10),
    DESIGNATION varchar(255),
    LEGACY_DEMO_TYPE varchar(50),
    BUSINESS_TYPE varchar(40),
    GRANIX_INDICATOR varchar(10),
    TVCMID int,
    ZECUITY_TARGET varchar(1),
    ZECUITY_AWARENESS_FLAG varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_SFA_TARGETS
(
    SALES_FORCE_ID varchar(5),
    PERIOD varchar(20),
    NAME varchar(50),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    TARGET_VALUE varchar(5),
    APPLIES_FROM_DT timestamp,
    APPLIES_TO_DT timestamp,
    CREATE_DT timestamp DEFAULT "sysdate"(),
    LAST_UPD_DT timestamp,
    TARGET_TYPE varchar(10),
    EMP_ID varchar(11),
    ZIP varchar(5),
    TERRITORY_NUM varchar(8),
    ACTIVE_IND varchar(1),
    SYSTEM_START_DT timestamp,
    SYSTEM_END_DT timestamp,
    DATA_MTH_IND varchar(1) DEFAULT 'N',
    END_REASON varchar(50),
    TERRITORY_TYPE varchar(20),
    CALL_PLAN_ID int,
    IMS_ID varchar(10),
    CM_ID int,
    VEEVA_ACCOUNT_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_TERR_HIST
(
    TERRITORY_NUM varchar(50),
    EMPLOYEE_ID varchar(50),
    START_DATE timestamp,
    END_DATE timestamp,
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    REP_TYPE varchar(10),
    TERM_DATE timestamp DEFAULT NULL::timestamp,
    HIRE_DATE timestamp,
    END_REASON varchar(10),
    ORIG_HIRE_DATE timestamp,
    LEAVE_DATE timestamp,
    RETURN_DATE timestamp,
    LEAVE_DAYS int,
    LEAVE_DATE2 timestamp,
    RETURN_DATE2 timestamp,
    LEAVE_DAYS2 int,
    LEAVE_DATE3 timestamp,
    RETURN_DATE3 timestamp,
    LEAVE_DAYS3 int
);


CREATE TABLE WSMP_ADMIN_ORA.DW_CALL
(
    DW_CALL_KEY int NOT NULL,
    SALES_FORCE_ID varchar(5),
    CALL_ID varchar(32),
    DEMO_ID varchar(32),
    CALL_TYPE varchar(50),
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    REP_ID varchar(10),
    TERRITORY_NUM varchar(8),
    CALL_DATE timestamp,
    RPT_CLASS_ID int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPD_DATE timestamp,
    IMS_OUTLET_NUMBER varchar(8),
    IMS_ID varchar(10),
    CM_ID int,
    SIEBEL_TARGET_PER_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    DEMO_TYPE varchar(50),
    LEGACY_CALL_TYPE varchar(50),
    SUBMIT_DATE timestamp,
    ATTENDEES int,
    ATTENDEE_TYPE varchar(255),
    CONSTRAINT C_PRIMARY PRIMARY KEY (DW_CALL_KEY) DISABLED
);


CREATE TABLE WSMP_ADMIN_ORA.DW_CALL_DETAIL
(
    DW_CALL_KEY int,
    SALES_FORCE_ID varchar(5),
    CALL_ID varchar(32),
    PRODUCT varchar(30),
    DETAIL_POSITION int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE timestamp,
    CALL_PLAN_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.DW_CALL_PLAN
(
    CALL_PLAN_ID int,
    SALES_FORCE_ID varchar(5),
    TIME_PERIOD varchar(20),
    TERRITORY_NUM varchar(8),
    ZIP varchar(5),
    LAST_NAME varchar(50),
    FIRST_NAME varchar(40),
    MIDDLE_NAME varchar(50),
    RECOM_PROD_POSITION varchar(20),
    RECOM_CALLS int,
    PLAN_PROD_POSITION varchar(20),
    PLAN_CALLS int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_DATE timestamp,
    P1_PLAN_CALLS int DEFAULT 0,
    P2_PLAN_CALLS int DEFAULT 0,
    P3_PLAN_CALLS int
);


CREATE TABLE WSMP_ADMIN_ORA.DW_CMOP_RX_TEVA
(
    STATION_NUMBER varchar(10),
    VA_PRODUCT varchar(70),
    PRODUCT_ID int,
    PRODUCT_CODE varchar(255),
    MONTH timestamp,
    TRX_CNT int,
    CMOP_CNT numeric(37,15),
    TRX_QTY int,
    CMOP_QTY int,
    CNT_30_DAY_RX int,
    ID varchar(10),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(30),
    COMPENSATION_MONTH timestamp,
    UNNORMALIZED_CMOP_CNT int,
    IMS_PRODUCT_GROUP_NUM varchar(9),
    COMP_MONTH_BUCKET numeric(3,0)
);


CREATE TABLE WSMP_ADMIN_ORA.DW_DDD_DOD_SALES
(
    OUTLET_CODE varchar(8),
    OUTLET_ZIP varchar(5),
    MONTH_ENDING timestamp,
    MONTH_BUCKET numeric(3,0),
    COMP_MONTH_ENDING timestamp,
    COMP_MONTH_BUCKET numeric(3,0),
    MARKET varchar(50),
    PRODUCT_CODE varchar(10),
    TRX_DOL numeric(12,2),
    TRX_QTY int,
    TRX_CNT numeric(12,6)
);


CREATE TABLE WSMP_ADMIN_ORA.DW_DDD_NONRETAIL_RX
(
    OUTLET_CODE varchar(8),
    OUTLET_ZIP varchar(5),
    SALES_FORCE_ID varchar(5),
    TERRITORY_NUM varchar(8),
    MONTH_ENDING timestamp,
    MONTH_BUCKET numeric(3,0),
    COMP_MONTH_ENDING timestamp,
    COMP_MONTH_BUCKET numeric(3,0),
    MARKET varchar(10),
    PRODUCT_CODE varchar(10),
    TRX_CNT numeric(12,6),
    TRX_QTY int
);


CREATE TABLE WSMP_ADMIN_ORA.DW_ONC_SALES_ADJUST_DTL
(
    ACCT_DEMO_ID int,
    DATA_MONTH timestamp,
    PRODUCT_ID int,
    MTH timestamp,
    BUCKET numeric(3,0),
    ONC_SALES_ADJUST_ID int,
    ADJ_QTY int,
    ADJ_DOL int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25),
    basket_id int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_ACO_DETAIL
(
    ACO_DETAIL_ID int,
    ACO_DETAIL_CODE varchar(15),
    ACO_DETAIL_DESC varchar(100),
    ACO_DETAIL_GROUP_CODE varchar(15),
    ACO_DETAIL_GROUP_DESC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_ACO_DETAIL_FACT
(
    IMS_ORG_ID varchar(11),
    ACO_TYPE_ID int,
    ACO_DETAIL_ID int,
    ACO_VAL varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_ACO_ORG_FACT
(
    IMS_ORG_ID varchar(11),
    ACO_TYPE_DESC int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_ACO_PROFESSIONAL_RSTR
(
    IMS_ORG_ID varchar(11),
    ACO_TYPE_ID int,
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_ACO_TYPE
(
    ACO_TYPE_ID int,
    ACO_TYPE_DESC varchar(50),
    ACO_TYPE_CATG varchar(50),
    ACO_MODEL varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_AFFILIATION_TYPE
(
    AFFIL_TYPE_ID int,
    AFFIL_TYPE_CODE varchar(10),
    AFFIL_TYPE_DESC varchar(100),
    AFFIL_GROUP_CODE varchar(10),
    AFFIL_GROUP_DESC varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BED_CLUSTER_TYPE
(
    BED_CLUSTER_ID int,
    BED_CLUSTER_DESC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BED_FACT
(
    IMS_ORG_ID varchar(11),
    BED_ID int,
    LICENSE_BEDS numeric(37,15),
    CENSUS_BEDS numeric(37,15),
    STAFFED_BEDS numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BED_TYPE
(
    BED_ID int,
    BED_CODE varchar(2),
    BED_DESC varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BUSINESS
(
    IMS_ORG_ID varchar(11),
    BUSINESS_NAME varchar(80),
    DBA_NAME varchar(80),
    CARE_OF_LOCATION varchar(80),
    ADDRESS_ID varchar(10),
    STF_ID varchar(10),
    PHYSICAL_ADDR_1 varchar(80),
    PHYSICAL_ADDR_2 varchar(80),
    PHYSICAL_CITY varchar(30),
    PHYSICAL_STATE varchar(2),
    PHYSICAL_ZIP varchar(15),
    POSTAL_ADDR_1 varchar(80),
    POSTAL_ADDR_2 varchar(80),
    POSTAL_CITY varchar(30),
    POSTAL_STATE varchar(2),
    POSTAL_ZIP varchar(15),
    PHONE varchar(14),
    FAX varchar(14),
    WEBSITE varchar(100),
    LATITUDE numeric(37,15),
    LONGITUDE numeric(37,15),
    OWNER_STATUS varchar(25),
    PROFIT_STATUS varchar(25),
    CMI numeric(6,4),
    PRIMARY_COT_ID int,
    COT_CLASSIFICATION_ID int,
    COT_CLASSIFICATION varchar(50),
    COT_FACILITY_TYPE_ID int,
    COT_FACILITY_TYPE varchar(50),
    COT_SPECIALTY_ID int,
    COT_SPECIALTY varchar(50),
    RECORD_TYPE varchar(2),
    BED_CLUSTER_ID int,
    TTL_LICENSE_BEDS int,
    TTL_CENSUS_BEDS int,
    TTL_STAFFED_BEDS int,
    TEACHING_HOSP char(1),
    COMMHOSP varchar(3),
    ALL_DDD varchar(150),
    ALL_NPI varchar(150),
    HIN varchar(13),
    DEA varchar(9),
    MPN varchar(6),
    MPN_ORDER varchar(1),
    MSA varchar(5),
    FIPS_STATE varchar(2),
    FIPS_COUNTY varchar(3),
    NUM_OF_PROVIDERS int,
    CORP_PARENT_IMS_ORG_ID varchar(11),
    CORP_PARENT_NAME varchar(80),
    OWNER_SUB_IMS_ORG_ID varchar(11),
    OWNER_SUB_NAME varchar(80),
    GPO_PHARMA_IMS_ORG_ID varchar(11),
    GPO_PHARMA_NAME varchar(80),
    GPO_MEDSURG_IMS_ORG_ID varchar(11),
    GPO_MEDSURG_NAME varchar(80),
    PHARMA_PROV_IMS_ORG_ID varchar(11),
    PHARMA_PROV_NAME varchar(80),
    FORMULARY varchar(20),
    ELECTRONIC_MED_REC varchar(20),
    EPRESCRIBE varchar(20),
    PAYPERFORM varchar(20),
    GENFIRST varchar(20),
    SREP_ACCESS varchar(20),
    DEACTIVATION_REASON varchar(25),
    REFERBACK_IMS_ORG_ID varchar(11),
    STATUS_INDICATOR varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BUSINESS_DETAIL
(
    DETAIL_ID int,
    DETAIL_CODE varchar(10),
    DETAIL_DESC varchar(100),
    DETAIL_GROUP_CODE varchar(10),
    DETAIL_GROUP_CODE_DESC varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_BUSINESS_DETAIL_FACT
(
    IMS_ORG_ID varchar(11),
    DETAIL_ID int,
    DETAIL_VALUE varchar(100),
    DETAIL_COUNT numeric(12,4)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CLASS_OF_TRADE
(
    COT_ID int,
    CLASSIFICATION_ID int,
    CLASSIFICATION varchar(50),
    FACILITY_TYPE_ID int,
    FACILITY_TYPE varchar(50),
    SPECIALTY_ID int,
    SPECIALTY varchar(50),
    RECORD_TYPE varchar(2)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CLINICAL_CODE
(
    CODE_ID int,
    CLIN_CODE varchar(5),
    CLIN_CODE_DESC varchar(100),
    CCS_CODE int,
    CCS_DESC varchar(100),
    MDC_CODE int,
    MDC_DESC varchar(100),
    CODE_CATEGORY varchar(15),
    SURGICAL_CODE char(1),
    OR_CODE char(1)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CLINICAL_FACT
(
    CLINICAL_FACT_ID int,
    IMS_ORG_ID varchar(11),
    CODE_ID int,
    DATA_YEAR numeric(4,0),
    INPAT_VOL int,
    OUTPAT_VOL int,
    TTL_VOL int,
    DECILE numeric(37,15),
    AVG_LOS numeric(9,2),
    AVG_COS numeric(9,2),
    CODE_ORDER varchar(1),
    GPO_VIEW varchar(1),
    USE_FOR_AGG varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CLINICAL_FACT_NATIONAL
(
    CLINICAL_FACT_NATIONAL_ID int,
    CODE_ID int,
    DATA_YEAR numeric(4,0),
    INPAT_VOL int,
    OUTPAT_VOL int,
    TTL_VOL int,
    AVG_LOS numeric(9,2),
    AVG_COS numeric(9,2),
    TREND numeric(5,2),
    CODE_ORDER varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CLINICAL_FACT_STATE
(
    CLINICAL_FACT_STATE_ID int,
    CODE_ID int,
    DATA_YEAR numeric(4,0),
    STATE varchar(2),
    INPAT_VOL int,
    OUTPAT_VOL int,
    TTL_VOL int,
    AVG_LOS numeric(9,2),
    AVG_COS numeric(9,2),
    CODE_ORDER varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_CONTACT_AFFILTN_FACT
(
    CONTACT_AFFILTN_FACT_ID int,
    IMS_ORG_ID varchar(11),
    PROFESSIONAL_ID int,
    TITLE_GROUP_CODE varchar(10),
    HCE_ID_PRFSNL int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_COT_FACT
(
    IMS_ORG_ID varchar(11),
    COT_ID int,
    COT_ORDER int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_FINANCIAL_FACT
(
    FINANCIAL_FACT_ID int,
    IMS_ORG_ID varchar(11),
    DATA_YEAR numeric(4,0),
    INPAT_REV int,
    OUTPAT_REV int,
    TTL_PAT_REV int,
    NET_PAT_REV int,
    OP_EXP int,
    OTH_EXP int,
    TTL_EXP int,
    SUPPLY_COST int,
    DRUG_COST int,
    TTL_SALARIES int,
    NET_INC_PAT int,
    NET_INC int,
    COST_PER_BED int,
    TTL_ASSETS int,
    FTE_EMP int,
    CURR_ASSETS int,
    CURR_LIAB int,
    FIX_ASSETS int,
    FRINGE_BENEFITS int,
    FUND_BAL int,
    GOV_APPR int,
    H_IN_REV int,
    L_T_LIAB int,
    NON_PAT_REV int,
    OTH_ASSETS int,
    OTH_INCOME int,
    H_OUT_REV int,
    TOT_LIAB int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_IDENTIFIER_FACT
(
    IDENTIFIER_FACT_ID int,
    IMS_ORG_ID varchar(11),
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int,
    IDENTIFIER_ID int,
    IDENTIFIER varchar(25),
    IDENTIFIER_ORDER varchar(1),
    IDENTIFIER_CATEGORY varchar(25),
    IDENTIFIER_STATE varchar(2),
    SRC_STRT_DT varchar(20),
    SRC_TRMTN_DT varchar(20),
    SRC_TRMTN_CD varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_IDENTIFIER_TYPE
(
    IDENTIFIER_ID int,
    IDENTIFIER_CODE varchar(10),
    IDENTIFIER_DESC varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_INDENTIFIER_CAT_TYPE
(
    IDENTIFIER_ID int,
    IDENTIFIER_CATEGORY varchar(25),
    IDENTIFIER_CATEGORY_DESC varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_INDENTIFIER_TERM_TYPE
(
    IDENTIFIER_ID int,
    SRC_TRMTN_CD varchar(15),
    SRC_TRMTN_DESC varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL
(
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int,
    FIRST_NAME varchar(40),
    MIDDLE_NAME varchar(40),
    LAST_NAME varchar(80),
    GEN_SUFFIX varchar(15),
    DESIGNATION varchar(20),
    GENDER varchar(1),
    ROLE char(1),
    PRIMARY_SPEC varchar(50),
    SECONDARY_SPEC varchar(50),
    TERTIARY_SPEC varchar(50),
    PRIMARY_PROF_CODE varchar(5),
    PRIMARY_PROF_DESC varchar(50),
    IMS_ID varchar(7),
    UPIN varchar(6),
    ME varchar(10),
    ALL_DEA varchar(100),
    NPI varchar(10),
    STATUS_DESC varchar(40)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL_DETAIL
(
    DETAIL_ID int,
    DETAIL_CODE varchar(10),
    DETAIL_DESC varchar(100),
    DETAIL_GROUP_CODE varchar(10),
    DETAIL_GROUP_DESC varchar(75)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL_DETAIL_FACT
(
    PROFESSIONAL_DETAIL_FACT_ID int,
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int,
    DETAIL_ID int,
    DETAIL_VALUE varchar(100),
    DETAIL_COUNT numeric(12,4)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL_SPECIALTY
(
    SPEC_CODE varchar(5),
    SPEC_DESC varchar(50),
    SPEC_SUB_GROUP_CODE int,
    SPEC_SUB_GROUP_DESC varchar(50),
    SPEC_GROUP_CODE varchar(5),
    SPEC_GROUP_DESC varchar(50),
    ALTERNATE_SUB_GROUP_CODE int,
    ALTERNATE_SUB_GROUP_DESC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROFESSIONAL_SPEC_FACT
(
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int,
    SPEC_CODE varchar(5),
    SPEC_RANKING numeric(37,15),
    SPEC_RANK_DESC varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_PROVIDER_AFFILIATION_FACT
(
    IMS_ORG_ID varchar(11),
    HCE_ID_PRFSNL int,
    PROFESSIONAL_ID int,
    AFFIL_TYPE_ID int,
    DEA varchar(9),
    AFFIL_IND varchar(1),
    AFFIL_RANK int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_RELATIONSHIP_FACT
(
    RELATIONSHIP_FACT_ID int,
    IMS_ORG_ID_PARENT varchar(11),
    IMS_ORG_ID_CHILD varchar(11),
    REL_ID int,
    REL_ORDER int
);


CREATE TABLE WSMP_ADMIN_ORA.HCOS_RELATIONSHIP_TYPE
(
    REL_ID int,
    REL_CODE varchar(10),
    REL_DESC varchar(50),
    REL_GROUP_CODE varchar(10),
    REL_GROUP_DESC varchar(50),
    REL_CATEGORY_CODE varchar(10),
    REL_CATEGORY_DESC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.IMS_PVS_DATA
(
    PVS_RUN_ID int,
    PVS_SOURCE_ID varchar(50),
    TEVA_TRANSACTION_CODE varchar(2) DEFAULT 'I',
    TEVA_TRANSMISSION_DATE varchar(10) DEFAULT to_char("sysdate"(), 'MM-DD-YYYY'),
    TEVA_PROF_ACCT_ID varchar(16),
    TEVA_TERRITORY_ID varchar(12) DEFAULT 'TERR',
    TEVA_ORG_ID varchar(16),
    TEVA_USER_ID varchar(8) DEFAULT 'TEVA',
    TEVA_PREFIX varchar(15),
    TEVA_FIRST_NAME varchar(25),
    TEVA_MID_NAME varchar(20),
    TEVA_LAST_NAME varchar(25),
    TEVA_SUFFIX varchar(5),
    TEVA_PRIMARY_SPECIALTY varchar(3),
    TEVA_SECONDARY_SPECIALTY varchar(3),
    TEVA_TERTIARY_SPECIALTY varchar(3),
    TEVA_PROFESSIONAL_ID varchar(12),
    TEVA_PROF_ID_SOURCE varchar(2),
    TEVA_CERTIFICATION_CODE varchar(15),
    TEVA_ACCT_SUB_TYPE varchar(30),
    TEVA_PROF_SUB_TYPE varchar(15),
    TEVA_BIRTH_YEAR varchar(4),
    TEVA_BIRTH_MONTH varchar(2),
    TEVA_BIRTH_DAY varchar(2),
    TEVA_GENDER varchar(1),
    TEVA_LAST_CALL_DATE varchar(10),
    TEVA_STATUS varchar(2),
    TEVA_STATE_LICENSE_NUM varchar(20),
    TEVA_STATE_LICENSE_EXPIR_DATE varchar(10),
    TEVA_CALLS_YTD varchar(4),
    TEVA_EMAIL varchar(100),
    TEVA_FAX varchar(20),
    TEVA_PROFESSIONAL_ID2 varchar(12),
    TEVA_PROF_ID_SOURCE2 varchar(2),
    TEVA_CALL_LOCATION varchar(1),
    TEVA_ADDRESS1 varchar(50),
    TEVA_ADDRESS2 varchar(50),
    TEVA_ADDRESS3 varchar(50),
    TEVA_ADDRESS4 varchar(50),
    TEVA_CITY varchar(30),
    TEVA_STATE varchar(15),
    TEVA_ZIP varchar(10),
    TEVA_PHONE varchar(20),
    TEVA_DEA_NUM varchar(9),
    TEVA_IMS_ID varchar(7),
    TEVA_IMS_LOCATION varchar(3),
    TEVA_DEA_STATE_LIC_VAL varchar(1),
    TEVA_CLIENT varchar(10) DEFAULT 'TBSP',
    TEVA_TRANSACTION_TYPE varchar(1) DEFAULT '1',
    TEVA_SERVICE varchar(15) DEFAULT 'DrScrub',
    TEVA_DEA_EXPIR_DATE varchar(10),
    TEVA_PRESCRIBER_STATUS varchar(5),
    TEVA_DEA_SCHEDULE varchar(20),
    TEVA_DEA_AUTH_STATUS varchar(5),
    TEVA_DEA_AUTH_STATUS_DATE varchar(10),
    TEVA_STATE_LIC_AUTH_STATUS varchar(5),
    TEVA_STATE_LIC_AUTH_STAT_DT varchar(10),
    IMS_TRANSACTION_CODE varchar(2),
    IMS_TRANSMISSION_DATE varchar(10),
    IMS_PROF_ACCT_ID varchar(16),
    IMS_TERRITORY_ID varchar(12),
    IMS_ORG_ID varchar(16),
    IMS_USER_ID varchar(8),
    IMS_PREFIX varchar(15),
    IMS_FIRST_NAME varchar(25),
    IMS_MID_NAME varchar(20),
    IMS_LAST_NAME varchar(25),
    IMS_SUFFIX varchar(5),
    IMS_PRIMARY_SPECIALTY varchar(3),
    IMS_SECONDARY_SPECIALTY varchar(3),
    IMS_TERTIARY_SPECIALTY varchar(3),
    IMS_PROFESSIONAL_ID varchar(12),
    IMS_PROF_ID_SOURCE varchar(2),
    IMS_CERTIFICATION_CODE varchar(15),
    IMS_ACCT_SUB_TYPE varchar(30),
    IMS_PROF_SUB_TYPE varchar(15),
    IMS_BIRTH_YEAR varchar(4),
    IMS_BIRTH_MONTH varchar(2),
    IMS_BIRTH_DAY varchar(2),
    IMS_GENDER varchar(1),
    IMS_LAST_CALL_DATE varchar(10),
    IMS_STATUS varchar(2),
    IMS_STATE_LICENSE_NUM varchar(20),
    IMS_STATE_LICENSE_EXPIR_DATE varchar(10),
    IMS_CALLS_YTD varchar(4),
    IMS_EMAIL varchar(100),
    IMS_FAX varchar(20),
    IMS_NPI varchar(12),
    IMS_FILLER_03 varchar(2),
    IMS_CALL_LOCATION varchar(1),
    IMS_ADDRESS1 varchar(50),
    IMS_ADDRESS2 varchar(50),
    IMS_ADDRESS3 varchar(50),
    IMS_ADDRESS4 varchar(50),
    IMS_CITY varchar(30),
    IMS_STATE varchar(15),
    IMS_ZIP varchar(10),
    IMS_PHONE varchar(20),
    IMS_DEA_NUM varchar(9),
    IMS_IMS_ID varchar(7),
    IMS_IMS_LOCATION varchar(3),
    IMS_DEA_STATE_LIC_VAL varchar(1),
    IMS_CLIENT varchar(10),
    IMS_TRANSACTION_TYPE varchar(1),
    IMS_SERVICE varchar(15),
    IMS_DEA_EXPIR_DATE varchar(10),
    IMS_PRESCRIBER_STATUS varchar(5),
    IMS_DEA_SCHEDULE varchar(20),
    IMS_DEA_AUTH_STATUS varchar(5),
    IMS_DEA_AUTH_STATUS_DATE varchar(10),
    IMS_STATE_LIC_AUTH_STATUS varchar(5),
    IMS_STATE_LIC_AUTH_STAT_DT varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.I_SFA_DECILE
(
    IMS_ID varchar(10),
    DEA_NUM varchar(9),
    ME_NUM varchar(10),
    CATEGORY varchar(100),
    DECILE_NAME varchar(50),
    TRX_CNT_01_06 int,
    TRX_CNT_01_12 int
);


CREATE TABLE WSMP_ADMIN_ORA.I_SFA_ONC_DMD_SALES
(
    TIME_PERIOD varchar(7),
    OUTLET_CODE varchar(8),
    PRODUCT varchar(25),
    DOL_CURR_MTH numeric(37,15),
    DOL_PRIOR_MTH numeric(37,15),
    DOL_3MTH numeric(37,15),
    DOL_6MTH numeric(37,15),
    DOL_SEM numeric(37,15),
    SORT_ORDER int,
    DATA_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.I_SFA_ONC_TRX
(
    TIME_PERIOD varchar(7),
    IMS_ID varchar(10),
    PRODUCT varchar(25),
    TRX_CURR_MTH numeric(37,15),
    TRX_PRIOR_MTH numeric(37,15),
    TRX_3MTH numeric(37,15),
    TRX_6MTH numeric(37,15),
    TRX_SEM numeric(37,15),
    SORT_ORDER int,
    DATA_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.PTR_DEMO
(
    SALES_FORCE_ID varchar(5),
    IMS_ID varchar(10),
    TVCMID int,
    VEEVA_ACCOUNT_ID varchar(18),
    ME_NUM varchar(10),
    SPECIALTY varchar(255),
    SPECIALTY_SOURCE varchar(10),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(50),
    MID_NAME varchar(50),
    ADDRESS varchar(250),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    PHONE varchar(10),
    TERRITORY_NUM varchar(8),
    TERRITORY_TYPE varchar(10) DEFAULT 'Base',
    ADDRESS_ID int,
    ADDRESS_SOURCE varchar(50),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE date,
    PDRP_FLAG char(1) DEFAULT 'N',
    PDRP_DATE date,
    NP_PA_FLAG char(1) DEFAULT 'N',
    NO_SPEND char(1) DEFAULT 'N',
    AMA_NO_CONTACT_FLAG char(1) DEFAULT 'N',
    EMAIL varchar(200),
    DEGREE varchar(50),
    ROW_SOURCE varchar(30),
    LAST_BUILD_DATE date DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.SCD_SFA_CSF_DEMO
(
    VEEVA_ACCOUNT_ID varchar(18),
    TERRITORY_NUM varchar(8),
    SCD_EFFECTIVE_DATE timestamp DEFAULT trunc("sysdate"()),
    SCD_EXPIRATION_DATE timestamp DEFAULT '2099-12-31'::date,
    SCD_MOST_RECENT_VERSION varchar(10) DEFAULT 'Current',
    SALES_FORCE_ID varchar(5),
    DEMO_TYPE varchar(50),
    IMS_ID varchar(10),
    HMS_ID varchar(15),
    ME_NUM varchar(10),
    IMS_OUTLET_CODE varchar(8),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(50),
    MIDDLE_NAME varchar(50),
    SUFFIX_NAME varchar(10),
    CREDENTIALS varchar(50),
    ORGANIZATION_NAME varchar(60),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    ADDRESS3 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    VEEVA_ADDRESS_ID varchar(18),
    PHONE varchar(50),
    PHONE_EXT varchar(12),
    FAX varchar(50),
    MOBILE varchar(50),
    EMAIL varchar(200),
    PRIM_SPECIALTY varchar(255),
    ONC_TRISENOX_REP_TARGET varchar(1),
    ADDRESS_STATUS varchar(20),
    NUVIGIL_DNC varchar(1),
    FENTORA_DNC varchar(1),
    SFA_CREATE_DATE timestamp,
    DEMO_RANK int,
    NUVIGIL_APP varchar(1),
    FENTORA_APP varchar(1),
    PROFESSIONAL_TYPE varchar(25),
    NO_SPEND varchar(1),
    NUVIGIL_REMS_PB varchar(1),
    FENTORA_REMS_STATUS varchar(80),
    CELL_PHONE varchar(50),
    CML_PROFILED varchar(1),
    NO_CONTACT varchar(1),
    PMO_GPO_ACCOUNT_AFFILIATION varchar(50),
    ONC_SYNRIBO_TARGET varchar(5),
    ONC_TREANDA_SBO varchar(5),
    ONC_TREANDA_TARGET varchar(5),
    ONC_TRISENOX_SBO varchar(5),
    TERRITORY_STATUS varchar(30),
    SPECIALTY_CODE varchar(3),
    BP_CODE varchar(20),
    TWH_TARGET varchar(1),
    BUSINESS_ASSOCIATE_AGREEMENT varchar(255),
    SFA_ALIGN_DATE timestamp,
    ACCT_DEMO_ID int,
    PDRP_FLAG varchar(1),
    NPI varchar(10),
    DESIGNATION varchar(255),
    BUSINESS_TYPE varchar(40)
);


CREATE TABLE WSMP_ADMIN_ORA.SIEBEL_SPECIALTY_XREF
(
    SPECIALTY_CODE varchar(3),
    SPECIALTY_DESCRIPTION varchar(100),
    HOW_MANY int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_AHM_EVENT_COUNT
(
    SOURCE_SYSTEM_NAME varchar(10),
    EVENT_NUMBER varchar(25),
    ATTENDEE_CATEGORY_CODE varchar(25),
    ATTENDEE_CATEGORY varchar(250),
    CNT int,
    CUSTOM_FIELD_1 varchar(100),
    CUSTOM_FIELD_2 varchar(100),
    CUSTOM_FIELD_3 varchar(100),
    CUSTOM_FIELD_4 varchar(100),
    CUSTOM_FIELD_5 varchar(100),
    REC_STAT_CD varchar(100)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ASI_COPAY_DETAIL_WKLY
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    TRANS_TYPE varchar(1),
    ASI_TXN_ID varchar(20),
    ORIG_ASI_TXN_ID varchar(20),
    RX_NUM varchar(12),
    FILL_DATE timestamp,
    HCP_DATE_WRITTEN timestamp,
    DAYS_SUPPLY int,
    NDC_CODE varchar(20),
    DAW int,
    BRAND_NAME varchar(45),
    DRUG_DESC varchar(35),
    NEW_REFILL int,
    QTY numeric(37,15),
    REFILLS int,
    OTHER_COVERAGE_CODE int,
    PROGRAM_NUM varchar(15),
    COPAY_CARD_NUM varchar(15),
    SEX varchar(1),
    DOB timestamp,
    AGE_AT_REDEMPTION_OLD numeric(37,15),
    PHARMACY_PROCESS_DATE timestamp,
    PHARMACY_CHAIN_NUM varchar(5),
    NABP varchar(7),
    PHARMACY_CHAIN varchar(40),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_ADDRESS2 varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    PHARMACY_PHONE varchar(10),
    PHARMACY_NPI_NUM int,
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    PRINCIPLE_PHYS_DEA_NUM varchar(9),
    PRINCIPLE_PHYS_NPI_NUM int,
    PHYSICIAN_NAME varchar(50),
    ASI_PHYS_ADDRESS1 varchar(100),
    ASI_PHYS_ADDRESS2 varchar(100),
    ASI_PHYS_CITY varchar(50),
    ASI_PHYS_STATE varchar(2),
    ASI_PHYS_ZIP varchar(5),
    REBATE_AMOUNT numeric(37,15),
    MEMBER_CASH_EXPENSE numeric(37,15),
    SUBMITTED_COST numeric(37,15),
    PHARMACY_FEE numeric(37,15),
    TOTAL_AMOUNT_DUE numeric(37,15),
    CALC_AWP numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_DATE timestamp,
    COMMENTS varchar(255),
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    OCC_PAYMENT_TYPE varchar(10),
    IMS_ID varchar(10),
    CM_ID int,
    SIEBEL_CONTACT_ROW_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    AGE_AT_REDEMPTION varchar(4)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ASI_VOUCHER_DETAIL_WKLY
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    TRANS_TYPE varchar(1),
    ASI_TXN_ID varchar(20),
    ORIG_ASI_TXN_ID varchar(20),
    RX_NUM varchar(12),
    FILL_DATE timestamp,
    HCP_DATE_WRITTEN timestamp,
    DAYS_SUPPLY int,
    NDC_CODE varchar(20),
    DAW int,
    BRAND_NAME varchar(45),
    DRUG_DESC varchar(35),
    NEW_REFILL int,
    QTY numeric(37,15),
    REFILLS int,
    OTHER_COVERAGE_CODE int,
    PROGRAM_NUM varchar(4),
    VOUCHER_NUM varchar(15),
    SEX varchar(1),
    DOB timestamp,
    AGE_AT_REDEMPTION_OLD numeric(37,15),
    PHARMACY_PROCESS_DATE timestamp,
    PHARMACY_CHAIN_NUM varchar(5),
    NABP varchar(7),
    PHARMACY_CHAIN varchar(40),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_ADDRESS2 varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    PHARMACY_PHONE varchar(10),
    PHARMACY_NPI_NUM int,
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    PRINCIPLE_PHYS_DEA_NUM varchar(9),
    PRINCIPLE_PHYS_NPI_NUM int,
    PHYSICIAN_NAME varchar(50),
    ASI_PHYS_ADDRESS1 varchar(100),
    ASI_PHYS_ADDRESS2 varchar(100),
    ASI_PHYS_CITY varchar(50),
    ASI_PHYS_STATE varchar(2),
    ASI_PHYS_ZIP varchar(5),
    REBATE_AMOUNT numeric(37,15),
    MEMBER_CASH_EXPENSE numeric(37,15),
    SUBMITTED_COST numeric(37,15),
    PHARMACY_FEE numeric(37,15),
    TOTAL_AMOUNT_DUE numeric(37,15),
    CALC_AWP numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_DATE timestamp,
    COMMENTS varchar(255),
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    OCC_PAYMENT_TYPE varchar(10),
    COMP_INCLUDE varchar(1) DEFAULT 'N',
    COMP_WEIGHT numeric(37,15),
    CM_ID int,
    IMS_ID varchar(10),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    AGE_AT_REDEMPTION varchar(4)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CAREMARK_RX
(
    CAREMARK_MD_ID varchar(50),
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    NPI varchar(20),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    PRODUCT_NDC varchar(20),
    SHIP_DATE timestamp,
    QTY int,
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(50),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    PRODUCT_CODE varchar(10),
    TRX_CNT numeric(37,15),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    BATCH_ID int,
    ROW_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CGD_COPAY_DETAIL_WKLY
(
    TRANSACTION_TYPE varchar(1),
    DATE_FILLED timestamp,
    DATE_WRITTEN timestamp,
    DAYS_SUPPLY int,
    PRODUCT_SERVICE_CODE varchar(11),
    DRUG_DESCRIPTION varchar(30),
    NEW_REFILL_INDICATOR int,
    QUANTITY_DISPENSED varchar(10),
    REFILLS_AUTHORIZED varchar(2),
    PATIENT_PAID_AMOUNT numeric(37,15),
    PATIENT_PAID_AMOUNT_QUALIFIER varchar(2),
    STATUS varchar(2),
    OTHER_COVERAGE varchar(2),
    GROUP_NUMBER varchar(9),
    MEMBER_NUMBER varchar(12),
    TIME_STAMP timestamp,
    PHARMACY_NABP varchar(12),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS_LINE_1 varchar(100),
    PHARMACY_ADDRESS_LINE_2 varchar(100),
    PHARMACY_ADDRESS_LINE_3 varchar(100),
    PHARMACY_CITY varchar(40),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(10),
    DOCTOR_DEA varchar(15),
    TOTAL_AMOUNT_AUTHORIZED varchar(10),
    FEE numeric(37,15),
    PROVIDER_REIMB varchar(10),
    COPAY varchar(10),
    COUPON_AMOUNT numeric(37,15),
    DOCTOR_CITY varchar(40),
    DOCTOR_STATE varchar(2),
    DOCTOR_ZIP varchar(10),
    CUSTOMER_PHYSICIAN_ID varchar(15),
    DOCTOR_LAST_NAME varchar(30),
    DOCTOR_FIRST_NAME varchar(30),
    DOCTOR_MIDDLE_NAME varchar(30),
    DOCTOR_TITLE_CODE varchar(50),
    DOCTOR_ADDRESS_LINE_1 varchar(100),
    DOCTOR_ADDRESS_LINE_2 varchar(100),
    DOCTOR_ADDRESS_LINE_3 varchar(100),
    DOCTOR_STATE_LICENSE_NUMBER varchar(20),
    SLN_STATE varchar(50),
    SPECIALTY varchar(50),
    PROGRAM_NAME varchar(255),
    BRAND varchar(50),
    PHARMACY_COMPANY varchar(50),
    DOCTOR_NPI varchar(255),
    LINKED_CARDS varchar(1000),
    DOCTOR_NAME varchar(50),
    ASI_TXN_ID varchar(20),
    ORIG_ASI_TXN_ID varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CM_ID_XREF
(
    CM_ID int,
    ID_NUM varchar(255),
    ID_TYPE varchar(10),
    VIA varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_COGENIX_CSP_ATTENDEE
(
    COGENIX_PROGRAM_ID int,
    PROGRAM_NAME varchar(255),
    PROGRAM_DATE timestamp,
    SFA_PROF_ID varchar(50),
    ME_NUM varchar(50),
    DEA_NUM varchar(50),
    STATE_LICENSE_STATE varchar(2),
    STATE_LICENSE_NUMBER varchar(20),
    FIRST_NAME varchar(50),
    LAST_NAME varchar(50),
    ADDRESS1 varchar(85),
    ADDRESS2 varchar(60),
    ADDRESS3 varchar(60),
    CITY varchar(30),
    STATE varchar(2),
    ZIP varchar(12),
    PRIMARY_SPECIALTY varchar(100),
    CEPH_ID varchar(12),
    COGENIX_ID int,
    HCP_TYPE varchar(50),
    CM_ID varchar(14),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    ORA_KEY int,
    PRESCRIBER_FLAG varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_COGENIX_CSP_PROGRAM
(
    COGENIX_PROGRAM_ID int,
    PROGRAM_NAME varchar(255),
    PROGRAM_REQUEST_DATE timestamp,
    PROGRAM_DATE timestamp,
    PRODUCT varchar(20),
    TOPIC varchar(1000),
    PROGRAM_TYPE varchar(50),
    PROGRAM_STATUS varchar(20),
    VENUE_NAME varchar(200),
    VENUE_CITY varchar(50),
    VENUE_STATE varchar(20),
    ESTIMATED_ATTENDANCE numeric(37,15),
    NONPRESCRIBER_CEPHALON_COUNTS numeric(37,15),
    PRESCRIBERS_W_O_DEA numeric(37,15),
    NONHCP_OFFICE_STAFF_COUNTS numeric(37,15),
    PRESCRIBERS numeric(37,15),
    HCPS int,
    TOTAL_PRESCRIBERS numeric(37,15),
    PRESCRIBERS_ACCEPTED_NO_SHOW numeric(37,15),
    ATTENDEE_FORM_RECEIVED varchar(5),
    ATTENDEE_SIGN_IN_SHEET_RECVD varchar(1),
    ACTUAL_ATTENDANCE int,
    ESTIMATED_COSTS numeric(37,15),
    OFFICES_REPRESENTED varchar(250),
    AV_EXPENSES numeric(37,15),
    FOOD_AND_BEVERAGE numeric(37,15),
    MEETING_EXPENSES numeric(37,15),
    MISCELLANEOUS numeric(37,15),
    SPEAKER_EXPENSES numeric(37,15),
    SPEAKER_HONORARIA numeric(37,15),
    SPEAKER_TRAVEL numeric(37,15),
    VENUE_ROOM_RENTAL numeric(37,15),
    ACTUAL_COSTS numeric(37,15),
    UNMET_MINIMUM numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    TAKEDA_ATTENDEES numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_CUSTOMER_MASTER
(
    RECORD_TYPE varchar(2),
    SOURCE_SYSTEM varchar(5),
    RECORD_COMPANY varchar(5),
    RECORD_SYSTEM varchar(5),
    TXN_FLAG varchar(2),
    CREATE_DATE timestamp,
    UPDATE_DATE timestamp,
    ERROR_TYPE varchar(10),
    ERROR_TEXT varchar(500),
    EXTRACT_TIME timestamp,
    SOURCE_PRIMARY_KEY varchar(255),
    RECORD_SOURCE_SYSTEM varchar(20),
    XREF_TYPE varchar(20),
    SOURCE_ID varchar(255),
    CUSTOMER_MASTER_ID int,
    CUSTOMER_ID int,
    CEPH_ID varchar(12)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_DIPLOMAT_RX
(
    SPECIALTY_PHARMACY_NAME varchar(50),
    SUB_SPECIALTY_PHARMACY_NAME varchar(50),
    SPECIALTY_PHARMACY_HUB_ID varchar(20),
    PHARMACY_NPI int,
    NCPDP varchar(7),
    PHARMACY_STORE_NUMBER varchar(20),
    PHARMACY_ADDRESS_1 varchar(100),
    PHARMACY_ADDRESS_2 varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(10),
    PHARMACY_PHONE varchar(20),
    PHARMACY_FAX varchar(20),
    DSP_PATIENT_ID varchar(20),
    GENDER varchar(1),
    AGE int,
    PATIENT_STATE varchar(2),
    PRIMARY_ICD9 varchar(20),
    SECONDARY_ICD9 varchar(20),
    PRESCRIBER_NPI int,
    PRESCRIBER_DEA varchar(20),
    PRESCRIBER_HUB_ID varchar(20),
    PRESCRIBER_NAME_FIRST varchar(50),
    PRESCIBER_NAME_LAST varchar(50),
    PRESCRIBER_ADDRESS_1 varchar(100),
    PRESCRIBER_ADDRESS_2 varchar(100),
    PRESCRIBER_CITY varchar(50),
    PRESCRIBER_STATE varchar(2),
    PRESCRIBER_ZIP varchar(10),
    PRESCRIBER_PHONE varchar(20),
    PRESCRIBER_FAX varchar(20),
    DRUG_NAME varchar(50),
    DRUG_NDC_11 varchar(20),
    DRUG_STRENGTH varchar(20),
    DRUG_FORM varchar(20),
    PACKAGE_SIZE varchar(20),
    DOSE_FORM varchar(50),
    RX_NBR varchar(20),
    REFILL_NUMBER int,
    RX_REFILLS_WRITTEN int,
    DISPENSE_QTY int,
    DAYS_SUPPLY int,
    RX_WRITTEN_DATE timestamp,
    RX_RECEIPT_DATE timestamp,
    FILL_DATE timestamp,
    RX_TYPE varchar(1),
    COPAY numeric(37,15),
    INGREDIENT_WAC_COST numeric(37,15),
    TOTAL_PRICE_PAID numeric(37,15),
    PRIMARY_PLAN_NAME varchar(100),
    PRIMARY_BIN varchar(20),
    PRIMARY_PCN varchar(20),
    SECONDARY_PLAN_NAME varchar(100),
    SECONDARY_BIN varchar(20),
    SECONDARY_PCN varchar(20),
    TERTIARY_PLAN_NAME varchar(100),
    TERTIARY_BIN varchar(20),
    TERTIARY_PCN varchar(20),
    SHIP_DATE timestamp,
    SHIPPING_CARRIER varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_DNC_EMAIL_TEMPLATES
(
    ID_NUM int,
    TEMPLATE_TYPE varchar(30),
    TEMPLATE_CODE varchar(30),
    EMAIL_TEXT varchar(4000),
    DESCRIPTION varchar(2000)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_DNC_PROF_CALL_AUDIT
(
    CALL_AUD_ID int,
    SALES_FORCE_ID varchar(5),
    CEPH_ID varchar(12),
    DEMO_ID varchar(32),
    PROF_NAME varchar(100),
    SFA_TERRITORY_NUM varchar(8),
    DNC_TERRITORY_NUM varchar(8),
    PROF_ADDRESS1 varchar(75),
    PROF_ADDRESS2 varchar(75),
    PROF_CITY varchar(50),
    PROF_STATE varchar(2),
    PROF_ZIP varchar(10),
    CALL_ID varchar(32),
    CALL_DATE timestamp,
    FIRST_DETAIL varchar(20),
    SECOND_DETAIL varchar(20),
    THIRD_DETAIL varchar(20),
    REP_EMP_ID varchar(10),
    REP_NAME varchar(100),
    REP_EMAIL_ADDRESS varchar(100),
    AM_EMP_ID varchar(10),
    AM_NAME varchar(100),
    AM_EMAIL_ADDRESS varchar(100),
    RD_EMP_ID varchar(10),
    RD_NAME varchar(100),
    RD_EMAIL_ADDRESS varchar(100),
    TEMPLATE_CODE varchar(30),
    EMAIL_TEXT varchar(4000),
    EMAIL_SENT_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    NP_PA_FLAG varchar(1),
    ME_NUM varchar(10),
    DNC_EXCLUDE_FLAG varchar(1) DEFAULT 'N',
    DNC_EXCLUDE_REASON varchar(30),
    DNC_EXCLUDE_DATE timestamp,
    DNC_EXCLUDE_USER varchar(30),
    IMS_ID varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_I3_BY_STRENGTH_RX
(
    FULL_NAME varchar(100),
    LAST_NAME varchar(100),
    FIRST_NAME varchar(100),
    NPI varchar(20),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    SHIP_MONTH timestamp,
    TECFIDERA_120 int,
    TECFIDERA_240 int,
    TECFIDERA_STARTER_PACK int,
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(20),
    COPAXONE_20 int,
    COPAXONE_40 int,
    LAST_UPDATE_DATE timestamp,
    plegridy_pfs int,
    plegridy_pen int,
    BATCH_ID int,
    ROW_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_I3_RX
(
    FULL_NAME varchar(100),
    LAST_NAME varchar(100),
    FIRST_NAME varchar(100),
    NPI varchar(20),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    SHIP_MONTH timestamp,
    AUBAGIO int,
    AVONEX int,
    BETASERON int,
    COPAXONE int,
    EXTAVIA int,
    GILENYA int,
    REBIF int,
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(20),
    TECFIDERA int,
    LAST_UPDATE_DATE timestamp,
    BATCH_ID int,
    ROW_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_I3_TYSABRI_RX
(
    FULL_NAME varchar(100),
    LAST_NAME varchar(100),
    FIRST_NAME varchar(100),
    NPI varchar(20),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    SHIP_MONTH timestamp,
    TYSABRI int,
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(20),
    LAST_UPDATE_DATE timestamp,
    BATCH_ID int,
    ROW_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_IMS_OUTLET_CHANGE_LOG
(
    LOG_ID int,
    IMS_OUTLET_NUMBER varchar(8),
    OUTLET_NAME varchar(50),
    ADDRESS varchar(50),
    CITY varchar(40),
    STATE varchar(2),
    SUBCATEGORY_CODE varchar(2),
    ACTION_CODE varchar(2),
    RETAIL_FLAG varchar(1) DEFAULT 'N',
    DATA_YEAR int,
    DATA_MTH int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_IMS_PRESC_DEMO_ANTIMGRN
(
    SALES_FORCE_ID varchar(5),
    IMS_ID varchar(10),
    SPECIALTY varchar(10),
    SPECIALTY_SOURCE varchar(10),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(25),
    MID_NAME varchar(2),
    IMS_ADDRESS varchar(30),
    IMS_CITY varchar(25),
    IMS_STATE varchar(2),
    IMS_ZIP varchar(5),
    PTR_ADDRESS varchar(100),
    PTR_CITY varchar(50),
    PTR_STATE varchar(2),
    PTR_ZIP varchar(5),
    PTR_PHONE varchar(10),
    PTR_MAILABLE char(1) DEFAULT 'N',
    PTR_ADDRESS_ID int,
    PTR_ADDRESS_SOURCE varchar(30),
    COMP_ADDRESS varchar(100),
    COMP_CITY varchar(50),
    COMP_STATE varchar(2),
    COMP_ZIP varchar(5),
    COMP_MAILABLE char(1) DEFAULT 'N',
    COMP_ADDRESS_ID int,
    COMP_ADDRESS_SOURCE varchar(50),
    SKA_SPECIALTY_1 varchar(10),
    SKA_SPECIALTY_2 varchar(10),
    SKA_SPECIALTY_3 varchar(10),
    PDRP_FLAG char(1) DEFAULT 'N',
    PDRP_DATE timestamp,
    NP_PA_FLAG char(1) DEFAULT 'N',
    NO_SPEND char(1) DEFAULT 'N',
    AMA_NO_CONTACT_FLAG char(1) DEFAULT 'N',
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE timestamp,
    NPI varchar(10),
    TVCMID int,
    CM_ID int,
    ROW_SOURCE varchar(50) DEFAULT 'IMS',
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_KNIPPER_SAMPLES_SHIPPED
(
    SALES_FORCE_ID varchar(2),
    TERRITORY_NUM varchar(8),
    CM_ID int,
    DEMO_ID varchar(32),
    IMS_ID varchar(10),
    NDC_CODE varchar(15),
    PRODUCT_CODE varchar(6),
    PRODUCT varchar(75),
    SHIP_DATE timestamp,
    SHIP_QTY int,
    REQUEST_DATE timestamp,
    REQUEST_QTY int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_PRIME_RX
(
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    NPI varchar(20),
    ADDRESS1 varchar(100),
    ADDRESS2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(5),
    PHONE varchar(50),
    SHIP_DATE timestamp,
    PRODUCT_NDC varchar(13),
    PRODUCT_NAME varchar(100),
    FILL_NUMBER int DEFAULT 0,
    QTY int DEFAULT 0,
    TRX_CNT numeric(37,15) DEFAULT 0,
    IMS_ID varchar(10),
    IMS_ID_VIA varchar(50),
    PRODUCT_CODE varchar(10),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp,
    BATCH_ID int,
    ROW_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_REMS_DISTRIBUTOR
(
    PROGRAM_ID int,
    PROGRAM_NAME varchar(48),
    CHANNEL_INITIATED varchar(64),
    ENROLLMENT_ID varchar(20),
    FACILITY_TYPE varchar(64),
    SITE_NAME varchar(200),
    ADDRESS_1 varchar(40),
    ADDRESS_2 varchar(40),
    CITY varchar(40),
    STATE varchar(2),
    ZIP_CODE varchar(5),
    SITE_PHONE_NUMBER varchar(10),
    SITE_FAX_NUMBER varchar(10),
    SITE_EMAIL_ADDRESS varchar(100),
    AUTH_REP_FIRST_NAME varchar(36),
    AUTH_REP_MIDDLE_NAME varchar(36),
    AUTH_REP_LAST_NAME varchar(40),
    AUTH_REP_PHONE_NUMBER varchar(10),
    AUTH_REP_EMAIL_ADDRESS varchar(100),
    STATUS_DESCRIPTION varchar(60),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    DEA varchar(20),
    OBSOLESCENCE_DATE timestamp,
    OBSOLESCENCE_REASON varchar(64),
    LAST_BUILD_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.STG_REMS_FACILITY
(
    PROGRAM_ID int,
    PROGRAM_NAME varchar(48),
    CHANNEL_INITIATED varchar(64),
    ENROLLMENT_ID varchar(20),
    HEALTHCARE_FACILITY_TYPE varchar(64),
    SITE_NAME varchar(200),
    ADDRESS_1 varchar(40),
    ADDRESS_2 varchar(40),
    CITY varchar(40),
    STATE varchar(2),
    ZIP_CODE varchar(5),
    FIRST_NAME varchar(36),
    MIDDLE_NAME varchar(36),
    LAST_NAME varchar(40),
    STATUS_DESCRIPTION varchar(60),
    IN_PROGRESS_STEP varchar(40),
    PHONE_NUMBER varchar(10),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    NCPDP varchar(20),
    NPI varchar(20),
    DEA varchar(20),
    OBSOLESCENCE_DATE timestamp,
    OBSOLESCENCE_REASON varchar(64),
    LAST_BUILD_DATE timestamp,
    VEEVA_ACCOUNT_ID varchar(18),
    ASI_ACCOUNT_ID varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_REMS_PHARMACY
(
    PROGRAM_ID int,
    PROGRAM_NAME varchar(48),
    CHANNEL varchar(20),
    ENROLLMENT_ID varchar(20),
    PHARMACY_TYPE varchar(20),
    PHARMACY_NAME varchar(200),
    ADDRESS1 varchar(40),
    ADDRESS2 varchar(40),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    FIRST_NAME varchar(36),
    MIDDLE_NAME varchar(36),
    LAST_NAME varchar(40),
    STATUS varchar(60),
    IN_PROGRESS_STEP varchar(40),
    PHONE varchar(10),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    NCPDP varchar(20),
    NPI varchar(20),
    DEA_NUM varchar(20),
    LICENSE_NUMBER varchar(20),
    OBSOLESCENCE_DATE timestamp,
    OBSOLESCENCE_REASON varchar(64),
    LAST_BUILD_DATE timestamp,
    STOCKED_LAST_6_MONTHS varchar(1) DEFAULT 'N'
);


CREATE TABLE WSMP_ADMIN_ORA.STG_REMS_PRESCRIBER
(
    CEPH_ID varchar(12),
    PROGRAM_ID int,
    PROGRAM_NAME varchar(48),
    CHANNEL varchar(20),
    ENROLLMENT_ID varchar(20),
    FIRST_NAME varchar(36),
    MIDDLE_NAME varchar(36),
    LAST_NAME varchar(40),
    CREDENTIAL varchar(40),
    SPECIALTY varchar(64),
    SITE_NAME varchar(200),
    ADDRESS1 varchar(40),
    ADDRESS2 varchar(40),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    STATUS varchar(60),
    IN_PROGRESS_STEP varchar(40),
    PHONE varchar(10),
    EFFECTIVE_DATE timestamp,
    EXPIRATION_DATE timestamp,
    NPI varchar(20),
    DEA_NUM varchar(20),
    OBSOLESCENCE_DATE timestamp,
    OBSOLESCENCE_REASON varchar(64),
    LAST_BUILD_DATE timestamp,
    PPAF_COUNT int,
    HAD_ENROLLED_IN_FENTORA_REMS varchar(1) DEFAULT 'N',
    CM_ID int,
    IMS_ID varchar(10),
    VEEVA_ACCOUNT_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SFA_ONC_ACCT_CALL_DETAIL
(
    SMART_CALL_DOC_ID varchar(32),
    SMART_ACCT_DOC_ID varchar(32),
    ACCT_DEMO_ID int,
    IMS_OUTLET_CODE varchar(8),
    REP_ID varchar(8),
    TERRITORY_NUM varchar(8),
    CALL_DATE timestamp,
    TRISENOX_DETAIL_POSITION varchar(5),
    FENTORA_DETAIL_POSITION varchar(5),
    FENTORA_REASON_CODE varchar(4),
    FENTORA_REASON_EXPLN varchar(100),
    ACTIQ_DETAIL_POSITION varchar(5),
    ACTIQ_REASON_CODE varchar(4),
    ACTIQ_REASON_EXPLN varchar(100),
    HIGH_OPIOID_FLAG varchar(1),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPD_DATE timestamp,
    FENTORA_SAFETY_MSG_IND varchar(1),
    TREANDA_DETAIL_POSITION varchar(5),
    SYNRIBO_DETAIL_POSITION varchar(5),
    ACCOUNT_MGMT_DETAIL_POSITION varchar(5)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_SKA_DEMO
(
    TTL varchar(5),
    TTL2 varchar(5),
    FIRST_NAME varchar(15),
    MIDDLE varchar(1),
    LAST_NAME varchar(15),
    T1 varchar(31),
    COMPANY1 varchar(31),
    ADDRESS1 varchar(31),
    CITY varchar(17),
    STATE varchar(2),
    ZIP varchar(10),
    ADDRESS2 varchar(31),
    CITY2 varchar(17),
    STATE2 varchar(2),
    ZIP2 varchar(10),
    DEPTCODE varchar(3),
    DEPT_EXPL varchar(31),
    OWNER varchar(3),
    SKA_PERSID int,
    SKA_ID int,
    SKA_UID int,
    EMAILAVAIL varchar(1),
    DO1 varchar(1),
    MD varchar(1),
    SPEC varchar(3),
    SPEC_EXPL varchar(31),
    SPEC2 varchar(3),
    SPEC2_EXPL varchar(31),
    SPEC3 varchar(3),
    SPEC3_EXPL varchar(31),
    PHONE varchar(12),
    PRACTICE_SIZE numeric(37,15),
    PATVOLN numeric(37,15),
    SURGI varchar(5),
    FS varchar(5),
    CODE2 varchar(3),
    EXPL2 varchar(38),
    CODE3 varchar(3),
    EXPL3 varchar(41),
    CD3_SITE numeric(37,15),
    CD3UNQ_DRS numeric(37,15),
    CODE4 varchar(3),
    EXPL4 varchar(41),
    CODE5 varchar(3),
    EXPL5 varchar(41),
    CODE6 varchar(3),
    EXPL6 varchar(41),
    CODE7 varchar(3),
    EXPL7 varchar(41),
    FIPS varchar(5),
    LICSTATE varchar(2),
    LICNUM varchar(25),
    REGNO varchar(9),
    UPIN varchar(6),
    WEBSITE varchar(40),
    CHANGEDATE timestamp,
    NPI varchar(10),
    ORIGDATE timestamp,
    COUNTY varchar(25),
    MSA varchar(4),
    PMSA varchar(4),
    PMSA_NAME varchar(60),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CEPH_ID varchar(12),
    TIME_PERIOD varchar(7),
    ADDRESS_ID int,
    UPDATE_DATE timestamp,
    REGNO_SCORE numeric(37,15),
    IMS_ID varchar(10),
    CM_ID int
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TIME_OFF_TERRITORY_KC_OLD
(
    TERRITORY_NUM varchar(8),
    TIME_OFF_DATE timestamp,
    TIME_ON_DATE timestamp,
    DESCRIPTION varchar(50),
    DURATION_IN_DAYS int,
    OWNER_PER_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TOUCHPOINT_CALL
(
    CALL_ID int,
    CALL_ATTEMPT_ID int,
    TOUCHPOINT_ID int,
    CLIENT_ID varchar(20),
    IMS_ID varchar(10),
    FIRST_NAME varchar(50),
    LAST_NAME varchar(50),
    CALL_TYPE varchar(100),
    CALL_DATE int,
    STATUS_CODE varchar(10),
    STATUS_DESCRIPTION varchar(100),
    REP_ID int,
    REP_FIRST_NAME varchar(50),
    REP_LAST_NAME varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TOUCHPOINT_PRESENTATION
(
    CALL_ID int,
    CALL_ATTEMPT_ID int,
    PRESENTATION_ID int,
    PRODUCT varchar(50),
    "POSITION" numeric(38,0),
    ITEM_TYPE varchar(50),
    ITEM_DESCRIPTION varchar(100),
    QUANTITY numeric(38,0)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_ANDA_SALES
(
    SALES_MONTH varchar(20),
    SALES_DATE varchar(20),
    CUSTOMER_NO int,
    CUSTOMER varchar(100),
    CUSTOMER_ADDRESS_LINE1 varchar(100),
    CUSTOMER_ADDRESS_LINE2 varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    BILL_CUSTOMER_NO int,
    BILL_ADDRESS_LINE1 varchar(100),
    BILL_ADDRESS_LINE2 varchar(100),
    BILL_STATE varchar(2),
    BILL_CITY varchar(50),
    BILL_ZIP varchar(10),
    CUSTOMER_TYPE_CD int,
    CUSTOMER_TYPE varchar(50),
    PVP_340B_ID varchar(20),
    TRADE_CLASS varchar(50),
    DEA_REGISTRATION_NO varchar(20),
    DEA_REGISTRATION_EXPIRATION int,
    STATE_LICENSE varchar(20),
    STATE_LICENSE_EXPIRATION numeric(37,15),
    ITEM_NO int,
    NDC varchar(20),
    BRAND varchar(50),
    PACKAGE_SIZE numeric(37,15),
    VENDOR varchar(50),
    DOCUMENT_NO int,
    ORDER_NO int,
    UNITS_NET numeric(37,15),
    NET_COST numeric(37,15)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_ICS_SALES
(
    BP_CODE varchar(20),
    ORTHO_E varchar(100),
    BP_NAME varchar(100),
    SHIP_TO_ADDRESS varchar(100),
    SHIP_TO_CITY varchar(50),
    SHIP_TO_STATE varchar(2),
    SHIP_TO_ZIP_CODE varchar(10),
    SHIP_TO_COUNTRY varchar(50),
    SHIP_TO_PHONE varchar(50),
    SHIP_TO_FAX varchar(50),
    SHIP_TO_EMAIL varchar(100),
    BILL_TO_ADDRESS varchar(100),
    BILL_TO_CITY varchar(50),
    BILL_TO_STATE varchar(2),
    BILL_TO_ZIP_CODE varchar(10),
    BILL_TO_COUNTRY varchar(50),
    BILL_TO_PHONE varchar(50),
    BILL_TO_FAX varchar(50),
    BILL_TO_EMAIL varchar(100),
    CLASS_OF_TRADE varchar(20),
    INVOICE_NUM varchar(50),
    DEL_AMT numeric(37,15),
    INVOICE_DATE varchar(50),
    "24237" numeric(37,15),
    "24238" numeric(37,15),
    "24800" numeric(37,15),
    "33223" numeric(37,15),
    PACKS numeric(37,15),
    UNIT_PRICE numeric(37,15),
    TERRITORY varchar(20),
    ORDER_TYPE_CODE varchar(20),
    ORDER_TYPE_DESC varchar(50),
    LOB_CODE_DESC varchar(100),
    PRICE_MATRIX_DEF varchar(20),
    PARENT_BP_CODE varchar(20),
    PARENT_BP_DESC varchar(100),
    GRAND_PARENT_BP_DESC varchar(100),
    PO_NUMBER varchar(50),
    UPS_NUMBER varchar(50),
    ORDER_NUMBER varchar(50),
    ORDER_LINE_NUMBER int,
    DISC_AMT numeric(37,15),
    WHSE_CD varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TW_SPECIALTY_ADDRESS
(
    DATA_SOURCE varchar(20),
    CUSTOMER_CODE varchar(20),
    ADDRESS_ID int,
    ADDRESS_TYPE varchar(20),
    ADDRESS varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP_CODE varchar(10),
    PHONE varchar(50),
    FAX varchar(50),
    EMAIL varchar(100),
    TAX_ID varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_VOUCHER_PTR
(
    SALES_FORCE_ID varchar(5),
    PRODUCT_NAME varchar(30),
    IMS_ID varchar(10),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    CM_ID int,
    SOURCE_TABLE varchar(250),
    ISDEMO varchar(1),
    tvcmid int,
    veeva_account_id varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_WHOLESALE_867
(
    WHOLESALE_867_ID int,
    TRADING_PARTNER varchar(50),
    PARTNER_DUNS varchar(15),
    PARTNER_DUNS_4 varchar(15),
    PARTNER_DEA varchar(9),
    PARTNER_HIN varchar(20),
    PARTNER_SELLER_ASSIGNED_ID varchar(50),
    PARTNER_BUYER_ASSIGNED_ID varchar(50),
    CLIENT_NAME varchar(50),
    ADDRESS1 varchar(50),
    ADDRESS2 varchar(50),
    CITY varchar(50),
    STATE varchar(2),
    ZIP varchar(10),
    CLIENT_DUNS varchar(15),
    CLIENT_DUNS_4 varchar(15),
    CLIENT_DEA varchar(9),
    CLIENT_HIN varchar(20),
    CLIENT_SELLER_ASSIGNED_ID varchar(50),
    CLIENT_BUYER_ASSIGNED_ID varchar(50),
    NCPDP varchar(20),
    NDC varchar(20),
    PRODUCT_CODE varchar(6),
    PRODUCT varchar(100),
    SHIP_DATE timestamp,
    SHIP_DATE_MONTH timestamp,
    SHIP_DATE_QUARTER varchar(7),
    QUANTITY_PURCHASED numeric(37,15),
    QUANTITY_RETURNED numeric(37,15),
    QUANTITY_DROP_SHIPPED numeric(37,15),
    QUANTITY_INTER_BRANCH numeric(37,15),
    UNIT_PRICE numeric(37,15),
    GROSS_AMOUNT numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(30) DEFAULT "current_user"(),
    LAST_UPD_DATE timestamp,
    LAST_UPD_USER varchar(30)
);


CREATE TABLE WSMP_ADMIN_ORA.STG_ZP4_TW_SPECIALTY
(
    BATCH int,
    STATUS varchar(20),
    RECORD_TYPE varchar(32),
    RECORD_ID int,
    FULL_ADDRESS varchar(125),
    CITY varchar(100),
    STATE varchar(2),
    ZIP varchar(10),
    STD_ADDRESS varchar(125),
    STD_CITY varchar(100),
    STD_STATE varchar(2),
    STD_ZIP5 varchar(5),
    STD_ZIP4 varchar(4),
    ADDRESS_LEFTOVER varchar(125),
    CERTIFICATION varchar(1),
    DATE_CERTIFIED varchar(8),
    DELIVERY_POINT_VALIDATION varchar(1),
    ERROR_MESSAGE varchar(100),
    SEARCH_TIME numeric(37,15),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    ORGANIZATION_NAME varchar(60)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ASI_COPAY_DETAIL
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    PROGRAM_NUM varchar(10),
    VOUCHER_NUM varchar(12),
    CEPH_ID varchar(20),
    ME_NUM varchar(20),
    DEA_NUM varchar(20),
    NPI int,
    PROVIDER_NAME varchar(50),
    PROVIDER_ADDRESS varchar(100),
    PROVIDER_CITY varchar(50),
    PROVIDER_STATE varchar(2),
    PROVIDER_ZIP varchar(5),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    QTY numeric(37,15),
    FILL_DATE timestamp,
    AGE_AT_REDEMPTION int,
    SEX varchar(1),
    NDC_CODE varchar(20),
    PRODUCT_NAME varchar(20),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    SUBMITTED_COST numeric(10,2),
    REBATE_AMOUNT numeric(10,2),
    MEMBER_CASH_EXPENSE numeric(10,2),
    PHARMACY_FEE numeric(10,2),
    TOTAL_AMOUNT_DUE numeric(10,2),
    ASI_TXN_ID varchar(14),
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    COMMENTS varchar(255),
    OTHER_COVERAGE_CODE int,
    CM_ID int,
    IMS_ID varchar(10),
    PROVIDER_LAST_NAME varchar(50),
    PROVIDER_FIRST_NAME varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ASI_COPAY_DETAIL_WKLY
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    ASI_TXN_ID varchar(20),
    ORIG_ASI_TXN_ID varchar(20),
    RX_NUM varchar(12),
    FILL_DATE timestamp,
    HCP_DATE_WRITTEN timestamp,
    DAYS_SUPPLY int,
    NDC_CODE varchar(20),
    DAW int,
    BRAND_NAME varchar(45),
    DRUG_DESC varchar(35),
    NEW_REFILL int,
    QTY numeric(37,15),
    REFILLS int,
    OTHER_COVERAGE_CODE int,
    PROGRAM_NUM varchar(15),
    COPAY_CARD_NUM varchar(15),
    SEX varchar(1),
    DOB timestamp,
    AGE_AT_REDEMPTION_OLD numeric(37,15),
    PHARMACY_PROCESS_DATE timestamp,
    PHARMACY_CHAIN_NUM varchar(5),
    NABP varchar(7),
    PHARMACY_CHAIN varchar(40),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_ADDRESS2 varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    PHARMACY_PHONE varchar(10),
    PHARMACY_NPI_NUM int,
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    PRINCIPLE_PHYS_DEA_NUM varchar(9),
    PRINCIPLE_PHYS_NPI_NUM int,
    PHYSICIAN_NAME varchar(50),
    ASI_PHYS_ADDRESS1 varchar(100),
    ASI_PHYS_ADDRESS2 varchar(100),
    ASI_PHYS_CITY varchar(50),
    ASI_PHYS_STATE varchar(2),
    ASI_PHYS_ZIP varchar(5),
    REBATE_AMOUNT numeric(37,15),
    MEMBER_CASH_EXPENSE numeric(37,15),
    SUBMITTED_COST numeric(37,15),
    PHARMACY_FEE numeric(37,15),
    TOTAL_AMOUNT_DUE numeric(37,15),
    CALC_AWP numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_DATE timestamp,
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    OCC_PAYMENT_TYPE varchar(10),
    COUNTED_COPAY varchar(1) DEFAULT 'N',
    COMMENTS varchar(255),
    IMS_ID varchar(10),
    CM_ID int,
    SIEBEL_CONTACT_ROW_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    AGE_AT_REDEMPTION varchar(4)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ASI_REDEMPTION_DETAIL
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    PROGRAM_NUM varchar(10),
    VOUCHER_NUM varchar(12),
    CEPH_ID varchar(20),
    ME_NUM varchar(20),
    DEA_NUM varchar(20),
    NPI int,
    PROVIDER_NAME varchar(50),
    PROVIDER_ADDRESS varchar(100),
    PROVIDER_CITY varchar(50),
    PROVIDER_STATE varchar(2),
    PROVIDER_ZIP varchar(5),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    QTY numeric(37,15),
    FILL_DATE timestamp,
    AGE_AT_REDEMPTION int,
    SEX varchar(1),
    NDC_CODE varchar(20),
    PRODUCT_NAME varchar(20),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    COMMENTS varchar(255),
    COMP_INCLUDE varchar(1) DEFAULT 'N',
    COMP_WEIGHT numeric(37,15),
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    ASI_TXN_ID varchar(20),
    OTHER_COVERAGE_CODE int,
    CM_ID int,
    IMS_ID varchar(10),
    PROVIDER_LAST_NAME varchar(50),
    PROVIDER_FIRST_NAME varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ASI_REDEMPTION_DETAIL_WKLY
(
    RD_KEY int,
    REDEMPTION_TYPE varchar(10),
    PROGRAM_NUM varchar(10),
    VOUCHER_NUM varchar(10),
    CEPH_ID varchar(20),
    ME_NUM varchar(20),
    DEA_NUM varchar(20),
    NPI int,
    PROVIDER_NAME varchar(50),
    PROVIDER_ADDRESS varchar(100),
    PROVIDER_CITY varchar(50),
    PROVIDER_STATE varchar(2),
    PROVIDER_ZIP varchar(5),
    PHARMACY_NAME varchar(100),
    PHARMACY_ADDRESS varchar(100),
    PHARMACY_CITY varchar(50),
    PHARMACY_STATE varchar(2),
    PHARMACY_ZIP varchar(5),
    QTY numeric(37,15),
    FILL_DATE timestamp,
    AGE_AT_REDEMPTION_OLD numeric(37,15),
    SEX varchar(1),
    NDC_CODE varchar(20),
    PRODUCT_NAME varchar(20),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    COMMENTS varchar(255),
    COMP_INCLUDE varchar(1) DEFAULT 'N',
    COMP_WEIGHT numeric(37,15),
    ASI_TXN_ID varchar(14),
    MBO_INCLUDE varchar(1) DEFAULT 'N',
    REBATE_AMOUNT numeric(37,15),
    MEMBER_CASH_EXPENSE numeric(37,15),
    SUBMITTED_COST numeric(37,15),
    PHARMACY_FEE numeric(37,15),
    TOTAL_AMOUNT_DUE numeric(37,15),
    CALC_AWP numeric(37,15),
    RX_NUM varchar(12),
    HCP_DATE_WRITTEN timestamp,
    DAYS_SUPPLY int,
    DAW int,
    DRUG_DESC varchar(35),
    NEW_REFILL int,
    REFILLS int,
    OTHER_COVERAGE_CODE int,
    PHARMACY_PROCESS_DATE timestamp,
    PHARMACY_CHAIN_NUM varchar(5),
    NABP varchar(7),
    PHARMACY_CHAIN varchar(40),
    PHARMACY_PHONE varchar(10),
    PHARMACY_NPI_NUM int,
    IMS_ID varchar(10),
    CM_ID int,
    SIEBEL_CONTACT_ROW_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    AGE_AT_REDEMPTION varchar(4)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_DATASOURCE_STATUS
(
    DATASOURCE_NAME varchar(75),
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0),
    DATA_DAY numeric(2,0),
    NUM_ROWS_01 int,
    NUM_ROWS_02 int,
    NUM_ROWS_03 int,
    NUM_ROWS_04 int,
    NUM_ROWS_05 int,
    NUM_ROWS_06 int,
    NUM_ROWS_07 int,
    NUM_ROWS_08 int,
    NUM_ROWS_09 int,
    NUM_ROWS_10 int,
    NUM_ROWS_11 int,
    NUM_ROWS_12 int
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_DDD_DOD_QTY
(
    OUTLET_CODE varchar(8),
    SUBCATEGORY_CODE varchar(2),
    CATEGORY_CODE varchar(2),
    IMS_PRODUCT_CODE varchar(3),
    PRODUCT_CODE varchar(6),
    MTH_YYYYMM varchar(6),
    QTY_MTH01 int,
    QTY_MTH02 int,
    QTY_MTH03 int,
    QTY_MTH04 int,
    QTY_MTH05 int,
    QTY_MTH06 int,
    QTY_MTH07 int,
    QTY_MTH08 int,
    QTY_MTH09 int,
    QTY_MTH10 int,
    QTY_MTH11 int,
    QTY_MTH12 int,
    QTY_MTH13 int,
    QTY_MTH14 int,
    QTY_MTH15 int,
    QTY_MTH16 int,
    QTY_MTH17 int,
    QTY_MTH18 int,
    QTY_MTH19 int,
    QTY_MTH20 int,
    QTY_MTH21 int,
    QTY_MTH22 int,
    QTY_MTH23 int,
    QTY_MTH24 int,
    OUTLET_NAME varchar(30),
    OUTLET_ADDRESS varchar(30),
    OUTLET_CITY varchar(25),
    OUTLET_STATE varchar(2),
    OUTLET_ZIP varchar(5),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    IMS_CLIENT_NUM varchar(3),
    IMS_REPORT_NUM varchar(2)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PLAN_XREF
(
    PAYER_NUM varchar(6),
    PAYER_NAME varchar(100),
    PLAN_NUM varchar(4),
    PAYER_PLAN_NUM varchar(10),
    PLAN_NAME varchar(100),
    MODEL varchar(10),
    CITY varchar(30),
    HQ_STATE varchar(2),
    OPERATING_STATE varchar(2),
    MONTHS_WITH_DATA int,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    PBM_NUM varchar(6) DEFAULT '999999',
    PBM_NAME varchar(100) DEFAULT 'N/A'
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PRESC_DEMO_ANTIMGRN
(
    SALES_FORCE_ID varchar(5),
    IMS_ID varchar(10),
    TVCMID int,
    CM_ID int,
    ME_NUM varchar(10),
    SPECIALTY varchar(10),
    SPECIALTY_SOURCE varchar(10),
    ORIGINAL_IMS_SPECIALTY varchar(10),
    LAST_NAME varchar(80),
    FIRST_NAME varchar(25),
    MID_NAME varchar(2),
    PTR_ADDRESS varchar(100),
    PTR_CITY varchar(50),
    PTR_STATE varchar(2),
    PTR_ZIP varchar(5),
    PTR_PHONE varchar(10),
    PTR_TERRITORY_NUM varchar(8),
    PTR_MAILABLE char(1) DEFAULT 'N',
    PTR_ADDRESS_ID int,
    PTR_ADDRESS_SOURCE varchar(30),
    COMP_ADDRESS varchar(100),
    COMP_CITY varchar(50),
    COMP_STATE varchar(2),
    COMP_ZIP varchar(5),
    COMP_TERRITORY_NUM varchar(8),
    COMP_MAILABLE char(1) DEFAULT 'N',
    COMP_ADDRESS_ID int,
    COMP_ADDRESS_SOURCE varchar(50),
    SKA_SPECIALTY_1 varchar(10),
    SKA_SPECIALTY_2 varchar(10),
    SKA_SPECIALTY_3 varchar(10),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE timestamp,
    PDRP_FLAG char(1) DEFAULT 'N',
    PDRP_DATE timestamp,
    NP_PA_FLAG char(1) DEFAULT 'N',
    NO_SPEND char(1) DEFAULT 'N',
    AMA_NO_CONTACT_FLAG char(1) DEFAULT 'N',
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PRESC_PAYER_SHARE
(
    IMS_ID varchar(10),
    PAYER_PLAN_NUM varchar(10),
    PRODUCT_CODE varchar(10),
    TRX_CNT numeric(37,15),
    TOTAL_TRX_CNT numeric(37,15),
    PAYER_SHARE numeric(37,15),
    PAYER_RANK int,
    PAYER_NAME varchar(100),
    PLAN_NAME varchar(100),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_DMD_MONTHLY_SALES
(
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    IMS_PRODUCT_CODE varchar(6),
    DOL_MTH01 numeric(19,2),
    DOL_MTH02 numeric(19,2),
    DOL_MTH03 numeric(19,2),
    DOL_MTH04 numeric(19,2),
    DOL_MTH05 numeric(19,2),
    DOL_MTH06 numeric(19,2),
    DOL_MTH07 numeric(19,2),
    DOL_MTH08 numeric(19,2),
    DOL_MTH09 numeric(19,2),
    DOL_MTH10 numeric(19,2),
    DOL_MTH11 numeric(19,2),
    DOL_MTH12 numeric(19,2),
    DOL_MTH13 numeric(19,2),
    DOL_MTH14 numeric(19,2),
    DOL_MTH15 numeric(19,2),
    DOL_MTH16 numeric(19,2),
    DOL_MTH17 numeric(19,2),
    DOL_MTH18 numeric(19,2),
    DOL_MTH19 numeric(19,2),
    DOL_MTH20 numeric(19,2),
    DOL_MTH21 numeric(19,2),
    DOL_MTH22 numeric(19,2),
    DOL_MTH23 numeric(19,2),
    DOL_MTH24 numeric(19,2),
    DATA_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_DMD_SALES_DECILE
(
    ACCT_DEMO_ID int,
    DECILE_NAME varchar(75),
    DECILE_REPORTED_TRX_DOL_01_06 int,
    DECILE_REPORTED_TRX_DOL_01_12 int,
    REPORTED_TRX_DOL_01_06 int,
    REPORTED_TRX_DOL_01_12 int,
    REPORTED_TRX_DOL_01_24 int,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_DMD_WEEKLY_SALES
(
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    IMS_PRODUCT_CODE varchar(6),
    DOL_WK01 numeric(19,2),
    DOL_WK02 numeric(19,2),
    DOL_WK03 numeric(19,2),
    DOL_WK04 numeric(19,2),
    DOL_WK05 numeric(19,2),
    DOL_WK06 numeric(19,2),
    DOL_WK07 numeric(19,2),
    DOL_WK08 numeric(19,2),
    DOL_WK09 numeric(19,2),
    DOL_WK10 numeric(19,2),
    DOL_WK11 numeric(19,2),
    DOL_WK12 numeric(19,2),
    DOL_WK13 numeric(19,2),
    DOL_WK14 numeric(19,2),
    DOL_WK15 numeric(19,2),
    DOL_WK16 numeric(19,2),
    DOL_WK17 numeric(19,2),
    DOL_WK18 numeric(19,2),
    DOL_WK19 numeric(19,2),
    DOL_WK20 numeric(19,2),
    DOL_WK21 numeric(19,2),
    DOL_WK22 numeric(19,2),
    DOL_WK23 numeric(19,2),
    DOL_WK24 numeric(19,2),
    DOL_WK25 numeric(19,2),
    DOL_WK26 numeric(19,2),
    DOL_WK27 numeric(19,2),
    DOL_WK28 numeric(19,2),
    DOL_WK29 numeric(19,2),
    DOL_WK30 numeric(19,2),
    DOL_WK31 numeric(19,2),
    DOL_WK32 numeric(19,2),
    DOL_WK33 numeric(19,2),
    DOL_WK34 numeric(19,2),
    DOL_WK35 numeric(19,2),
    DOL_WK36 numeric(19,2),
    DOL_WK37 numeric(19,2),
    DOL_WK38 numeric(19,2),
    DOL_WK39 numeric(19,2),
    DOL_WK40 numeric(19,2),
    DOL_WK41 numeric(19,2),
    DOL_WK42 numeric(19,2),
    DOL_WK43 numeric(19,2),
    DOL_WK44 numeric(19,2),
    DOL_WK45 numeric(19,2),
    DOL_WK46 numeric(19,2),
    DOL_WK47 numeric(19,2),
    DOL_WK48 numeric(19,2),
    DOL_WK49 numeric(19,2),
    DOL_WK50 numeric(19,2),
    DOL_WK51 numeric(19,2),
    DOL_WK52 numeric(19,2),
    DOL_WK53 numeric(19,2),
    DOL_WK54 numeric(19,2),
    DOL_WK55 numeric(19,2),
    DOL_WK56 numeric(19,2),
    DATA_DATE timestamp,
    CREATE_DATE timestamp DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_PRESC_DEMO
(
    CEPH_ID varchar(12),
    ME_NUM varchar(10),
    PRIM_SPECIALTY varchar(3),
    CEPH_SPECIALTY varchar(3),
    LAST_NAME varchar(25),
    FIRST_NAME varchar(25),
    MID_NAME varchar(25),
    NAME_SUFFIX varchar(4),
    TITLE varchar(5),
    ADDRESS varchar(30),
    CITY varchar(28),
    STATE_ABBREV varchar(2),
    ZIP_CODE varchar(5),
    CALL_STATUS_CODE varchar(3),
    ADDRESS_IND varchar(1),
    TERRITORY_NUM varchar(10),
    FORMATTED_NAME varchar(67),
    FORMATTED_ADDRESS varchar(38),
    DEA_NUM varchar(9),
    DEA_EXPIR_DATE timestamp,
    PDRP_DATE timestamp,
    PDRP_FLAG varchar(1),
    NP_PA_FLAG varchar(1),
    LR_FLAG varchar(1),
    DEA_LR_FLAG varchar(1) DEFAULT 'N',
    XDEA_LR_FLAG varchar(1) DEFAULT 'N',
    DATA_YEAR numeric(4,0),
    DATA_MTH numeric(2,0),
    ADDRESS_OVRD_IND varchar(1),
    SECONDARY_SPECIALTY varchar(3),
    NO_SPEND varchar(1),
    ADDRESS_ID int,
    PTR_TIME_PERIOD varchar(7),
    PTR_ADDRESS varchar(30),
    PTR_CITY varchar(28),
    PTR_STATE_ABBREV varchar(2),
    PTR_ZIP_CODE varchar(5),
    PTR_ADDRESS_ID int,
    PTR_CALL_STATUS_CODE varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_SALES_ADJUST
(
    ONC_SALES_ADJUST_ID int,
    ADJ_CODE varchar(10),
    ADJ_DESCR varchar(50),
    ACT_TIME_PERIOD varchar(10),
    ACT_START_DATE timestamp,
    ACT_END_DATE timestamp,
    STATUS_CODE varchar(10),
    ACCT_DEMO_ID int,
    PRODUCT_ID int,
    ADJ_FACTOR numeric(37,15),
    ADJ_REASON varchar(200),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25),
    LAST_CALC_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_SALES_ADJUST_ALLOC
(
    ONC_SALES_ADJUST_ID int,
    ACCT_DEMO_ID int,
    ADJ_FACTOR numeric(37,15),
    ADJ_REASON varchar(200),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_SALES_ALLOC
(
    ONC_SALES_ADJUST_ID int,
    SALES_MTH timestamp,
    SALES_QTY numeric(37,15),
    SALES_DOL numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_SALES_QUOTA
(
    ONC_SALES_QUOTA_ID int,
    TIME_PERIOD varchar(10),
    SALES_FORCE_ID varchar(5),
    TERRITORY_NUM varchar(8),
    POSITION_ID int,
    BRAND_ID int,
    QUOTA_QTY numeric(37,15),
    QUOTA_DOL numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_ONC_UNREPORTED_SALES
(
    UNREPORTED_SALES_ID int,
    ACCT_DEMO_ID int,
    SALES_TYPE varchar(10),
    ALLOC_ACCT_DEMO_ID int,
    MTH timestamp,
    PRODUCT_ID int,
    SALES_QTY numeric(37,15),
    SALES_DOL numeric(37,15),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    CREATE_USER varchar(25) DEFAULT "current_user"(),
    UPDATE_DATE timestamp,
    UPDATE_USER varchar(25)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_PROMOTIONAL_ITEMS_DISTRIB
(
    SALES_FORCE_ID varchar(4),
    TERRITORY_NUM varchar(20),
    PRODUCT_NAME varchar(10),
    PRODUCT_CODE varchar(10),
    DISTRIBUTION_DATE timestamp,
    QTY int,
    ITEM_NAME varchar(150),
    ITEM_TYPE varchar(30) DEFAULT 'Other',
    CALL_ID varchar(32),
    DEMO_ID varchar(32),
    REP_ID varchar(11),
    IMS_ID varchar(10),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    SIEBEL_ACT_PRDINT_ID varchar(15),
    VEEVA_ACCOUNT_ID varchar(18),
    VEEVA_SAMPLE_ID varchar(18),
    SMART_CALL_DOC_ID varchar(32),
    SMART_DEMO_DOC_ID varchar(32),
    TARGET_CALL_ID int,
    TARGET_PROF_ID int,
    NAME_ON_CALL varchar(150),
    ZIP_ON_CALL varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp,
    ROW_SOURCE varchar(50),
    PROMOTIONAL_ITEMS_DISTRIB_KEY varchar(32)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_REPRINT_DISTRIB
(
    SALES_FORCE_ID varchar(4),
    TERRITORY_NUM varchar(20),
    PRODUCT_NAME varchar(10),
    PRODUCT_CODE varchar(10),
    DISTRIBUTION_DATE timestamp,
    QTY int,
    REPRINT_NAME varchar(150),
    REPRINT_ID varchar(50),
    CALL_ID varchar(32),
    DEMO_ID varchar(32),
    REP_ID varchar(11),
    IMS_ID varchar(10),
    VEEVA_ACCOUNT_ID varchar(18),
    VEEVA_SAMPLE_ID varchar(18),
    NAME_ON_CALL varchar(150),
    ZIP_ON_CALL varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp,
    ROW_SOURCE varchar(50),
    REPRINT_DISTRIB_KEY varchar(32)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_SAMPLE_DETAIL
(
    SAMPLE_ID varchar(18),
    CALL_ID varchar(18),
    VEEVA_ACCOUNT_ID varchar(18),
    CALL_DATE timestamp,
    SALES_FORCE_ID varchar(2),
    TERRITORY_NUM varchar(8),
    CALL_TYPE varchar(50),
    ATTENDEE_TYPE varchar(18),
    DEMO_TYPE varchar(4),
    SAMPLE_TYPE varchar(7),
    PRODUCT_NAME varchar(80),
    SAMPLE_NAME varchar(80),
    SAMPLE_NDC varchar(50),
    QTY int,
    NAME_ON_CALL varchar(100),
    ZIP_ON_CALL varchar(10),
    DEA_NUM varchar(9),
    OWNERID varchar(18),
    EMPLOYEENUMBER varchar(20),
    PARENT_CALL_ID varchar(18),
    CREATED_BY varchar(18),
    CREATED_DATE timestamp,
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    SIEBEL_CONTACT_ROW_ID varchar(15),
    ROW_SOURCE varchar(50),
    IMS_ID varchar(10)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_SFA_CSF_CALL_DETAIL
(
    SALES_FORCE_ID varchar(5),
    CSF_CALL_ID varchar(32),
    CSF_DEMO_ID varchar(32),
    CALL_TYPE varchar(50),
    SMART_CALL_DOC_ID varchar(32),
    SMART_DEMO_DOC_ID varchar(32),
    TARGET_CALL_ID int,
    TARGET_PROF_ID int,
    ME_NUM varchar(10),
    DEA_NUM varchar(9),
    CEPH_ACCT_ID varchar(12),
    IMS_OUTLET_CODE varchar(8),
    REP_ID varchar(10),
    TERRITORY_NUM varchar(8),
    CALL_DATE timestamp,
    FIRST_DETAILED_PRODUCT varchar(30),
    SECOND_DETAILED_PRODUCT varchar(30),
    THIRD_DETAILED_PRODUCT varchar(30),
    HIGH_OPIOID_FLAG varchar(1),
    ACTIQ_REASON_CODE varchar(4),
    ACTIQ_REASON_EXPLN varchar(100),
    LAST_BUILD_DATE timestamp DEFAULT "sysdate"(),
    FENTORA_REASON_CODE varchar(4),
    FENTORA_REASON_EXPLN varchar(100),
    CALL_COMMENTS varchar(3500),
    DOC_AUTHOR varchar(50),
    ORA_KEY int,
    FENTORA_SAFETY_MSG_IND varchar(1),
    PRIM_SPECIALTY varchar(3),
    SIEBEL_EVT_ACT_ROW_ID varchar(15),
    SIEBEL_TARGET_PER_ID varchar(15),
    IMS_ID varchar(10),
    CM_ID int,
    FOURTH_DETAILED_PRODUCT varchar(30),
    FIFTH_DETAILED_PRODUCT varchar(30),
    SIXTH_DETAILED_PRODUCT varchar(30),
    NAME_ON_CALL varchar(150),
    ZIP_ON_CALL varchar(30),
    INTEGRATION_ID varchar(30),
    HMS_ID varchar(10),
    VEEVA_ACCOUNT_ID varchar(18),
    ROW_SOURCE varchar(50),
    DEMO_TYPE varchar(50),
    SFA_CALL_TYPE varchar(50),
    LEGACY_CALL_TYPE varchar(50),
    SUBMIT_DATE timestamp,
    ATTENDEES int,
    ATTENDEE_TYPE varchar(255)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_SFA_RESOURCE_DIST_DETAIL
(
    SALES_FORCE_ID varchar(4),
    PRODUCT_NAME varchar(10),
    PRODUCT_CODE varchar(10),
    RESOURCE_TYPE varchar(150),
    CEPH_ID varchar(20),
    ME_NUM varchar(11),
    PROFESSIONAL_ID int,
    EMP_ID varchar(11),
    TERRITORY_NUM varchar(20),
    DISTRIBUTION_DATE timestamp,
    QTY int,
    ACTION_ITEM_ID int,
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    LAST_UPDATE_DATE timestamp,
    CM_ID int,
    SIEBEL_CONTACT_ROW_ID varchar(15),
    IMS_ID varchar(10),
    SIEBEL_ACT_PRDINT_ID varchar(15),
    MS_ACCESS_KEY int,
    SUB_TYPE_CD varchar(30),
    CALL_ID varchar(32)
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_VEEVA_DSA_ANALYSIS
(
    SALES_FORCE_ID varchar(2),
    TERRITORY varchar(8),
    VEEVA_ID varchar(18),
    ACCOUNT_TYPE varchar(80),
    ACCOUNT_SUB_TYPE varchar(40),
    IMS_ID varchar(7),
    ME_NUM varchar(25),
    NPI_NUM varchar(25),
    ACCOUNT_NAME varchar(255),
    FIRST_NAME varchar(40),
    MIDDLE_NAME varchar(40),
    LAST_NAME varchar(80),
    ADDRESS varchar(80),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(10),
    CREDENTIAL varchar(255),
    DEGREE varchar(30),
    SPECIALTY varchar(255),
    CALL_ID varchar(18),
    CALL_DATE timestamp,
    PRODUCT_NAME varchar(80),
    DETAIL_PRIORITY int,
    DISPLAY_ORDER int,
    DURATION int,
    PRESENTATION_NAME varchar(80),
    MESSAGE_NAME varchar(80),
    DETAILED_PRODUCTS varchar(255),
    DETAIL_TYPE varchar(7),
    SAMPLED_CALL varchar(1),
    MESSAGE_VISIT_NUMBER int,
    VISIT_NUMBER int,
    REP_NAME varchar(125),
    WEEK_ENDING timestamp,
    CALL_TYPE varchar(25),
    REP_ID varchar(20)
);


CREATE TABLE WSMP_ADMIN_ORA.TW_SPECIALTY_ADDRESS
(
    DATA_SOURCE varchar(20),
    ADDRESS_ID int,
    ADDRESS varchar(100),
    CITY varchar(50),
    STATE varchar(2),
    ZIP_CODE varchar(10),
    PHONE varchar(50),
    FAX varchar(50),
    EMAIL varchar(100),
    TAX_ID varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.TW_SPECIALTY_ADDR_XREF
(
    DATA_SOURCE varchar(20),
    CUSTOMER_CODE varchar(20),
    ADDRESS_ID int,
    ADDRESS_TYPE varchar(20),
    START_DATE timestamp,
    END_DATE timestamp,
    ACTIVE_IND varchar(1)
);


CREATE TABLE WSMP_ADMIN_ORA.stg_ims_decile_unnorm
(
    ims_id varchar(10),
    category varchar(100),
    decile_name varchar(50),
    trx_cnt_01_06 int,
    trx_cnt_01_12 int,
    last_build_date timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.tvcmid_hco_demo
(
    TVCMID int,
    IMS_ORG_ID varchar(11),
    NPI varchar(18),
    HIN varchar(18),
    IMS_OUTLET_CODE varchar(18),
    BUSINESS_NAME varchar(80),
    ADDRESS_LINE1 varchar(80),
    ADDRESS_LINE2 varchar(80),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    C_BO_HCE_ADDRESS__ADDRESS_ID char(14),
    COT_CLASSIFICATION varchar(50),
    COT_FACILITY_TYPE varchar(50),
    COT_SPECIALTY varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.tvcmid_hcp_demo
(
    TVCMID int,
    IMS_HCE_ID int,
    IMS_ID varchar(7),
    NPI varchar(18),
    LAST_NAME varchar(40),
    FIRST_NAME varchar(40),
    MIDDLE_NAME varchar(40),
    PERSONAL_SUFFIX varchar(10),
    MEDICAL_SUFFIX varchar(10),
    PRIMARY_SPECIALTY varchar(5),
    ADDRESS_LINE1 varchar(80),
    ADDRESS_LINE2 varchar(80),
    CITY varchar(40),
    STATE varchar(2),
    ZIP varchar(5),
    C_BO_HCE_ADDRESS__ADDRESS_ID char(14),
    LEGACY_ADDRESS_ID int,
    BUSINESS_PHONE varchar(100),
    BUSINESS_EMAIL varchar(100),
    HCE_STATUS_DESC varchar(50)
);


CREATE TABLE WSMP_ADMIN_ORA.tvcmid_merges
(
    PREVIOUS_TVCMID int,
    CURRENT_TVCMID int,
    MERGE_CYCLE char(1)
);


CREATE TABLE WSMP_ADMIN_ORA.tvcmid_xref
(
    TVCMID int,
    ID_NUM varchar(255),
    ID_TYPE varchar(14),
    STATE varchar(2),
    EXPIRATION_DATE date
);


CREATE TABLE WSMP_ADMIN_ORA.STG_IMS_PRESC_DEMO_W
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    tvcmid int,
    specialty varchar(10),
    specialty_source varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    ims_address varchar(30),
    ims_city varchar(25),
    ims_state varchar(2),
    ims_zip varchar(5),
    ptr_address varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(10),
    ptr_mailable char(1) NOT NULL DEFAULT 'N',
    ptr_address_id int,
    ptr_veeva_address_id varchar(18),
    ptr_address_source varchar(30),
    comp_address varchar(100),
    comp_city varchar(50),
    comp_state varchar(2),
    comp_zip varchar(5),
    comp_mailable char(1) NOT NULL DEFAULT 'N',
    comp_address_id int,
    comp_veeva_address_id varchar(18),
    comp_address_source varchar(50),
    pdrp_flag char(1) NOT NULL DEFAULT 'N',
    pdrp_date timestamp,
    np_pa_flag char(1) NOT NULL DEFAULT 'N',
    no_spend char(1) NOT NULL DEFAULT 'N',
    ama_no_contact_flag char(1) NOT NULL DEFAULT 'N',
    me_num varchar(10),
    dea_num varchar(9),
    dea_expir_date timestamp,
    npi varchar(10),
    row_source varchar(50) NOT NULL DEFAULT 'IMS',
    last_build_date timestamp NOT NULL DEFAULT "sysdate"(),
    CONSTRAINT C_PRIMARY PRIMARY KEY (sales_force_id, ims_id) DISABLED
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PRESC_DEMO_W
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    tvcmid int,
    specialty varchar(10),
    specialty_source varchar(10),
    original_ims_specialty varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    ptr_address varchar(100),
    ptr_city varchar(50),
    ptr_state varchar(2),
    ptr_zip varchar(5),
    ptr_phone varchar(10),
    ptr_territory_num varchar(8) NOT NULL,
    ptr_mailable char(1) NOT NULL DEFAULT 'N',
    ptr_address_id int,
    ptr_veeva_address_id varchar(18),
    ptr_address_source varchar(30),
    comp_address varchar(100),
    comp_city varchar(50),
    comp_state varchar(2),
    comp_zip varchar(5),
    comp_territory_num varchar(8),
    comp_mailable char(1) NOT NULL DEFAULT 'N',
    comp_address_id int,
    comp_veeva_address_id varchar(18),
    comp_address_source varchar(50),
    npi varchar(10),
    me_num varchar(10),
    dea_num varchar(9),
    dea_expir_date timestamp,
    pdrp_flag char(1) NOT NULL DEFAULT 'N',
    pdrp_date timestamp,
    np_pa_flag char(1) NOT NULL DEFAULT 'N',
    no_spend char(1) NOT NULL DEFAULT 'N',
    ama_no_contact_flag char(1) NOT NULL DEFAULT 'N',
    last_build_date timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.TJR_ORA_CALLS
(
    CSF_CALL_ID varchar(32) NOT NULL,
    CSF_DEMO_ID varchar(32) NOT NULL,
    CALL_TYPE varchar(50) NOT NULL,
    CALL_DATE timestamp
);


CREATE TABLE WSMP_ADMIN_ORA.TFC_IMS_PRESC_DEMO_COMP
(
    sales_force_id varchar(5) NOT NULL,
    ims_id varchar(10) NOT NULL,
    tvcmid numeric(38,0),
    me_num varchar(10),
    specialty varchar(10),
    specialty_source varchar(10),
    original_ims_specialty varchar(10),
    last_name varchar(80),
    first_name varchar(25),
    mid_name varchar(2),
    comp_address varchar(100),
    comp_city varchar(50),
    comp_state varchar(2),
    comp_zip varchar(5),
    comp_territory_num varchar(8) NOT NULL,
    comp_address_id numeric(38,0),
    comp_veeva_address_id varchar(18),
    comp_address_source varchar(50),
    dea_num varchar(9),
    dea_expir_date date,
    pdrp_flag char(1) NOT NULL DEFAULT 'N',
    pdrp_date date,
    np_pa_flag char(1) NOT NULL DEFAULT 'N',
    no_spend char(1) NOT NULL DEFAULT 'N',
    ama_no_contact_flag char(1) NOT NULL DEFAULT 'N',
    last_build_date timestamp NOT NULL DEFAULT "sysdate"()
);


CREATE TABLE WSMP_ADMIN_ORA.STG_TIME_OFF_TERRITORY_KC
(
    TERRITORY_NUM varchar(8),
    TIME_OFF_DATE timestamp,
    TIME_ON_DATE timestamp,
    DESCRIPTION varchar(50),
    DURATION_IN_DAYS numeric(10,3),
    OWNER_PER_ID varchar(18)
);


CREATE TABLE WSMP_ADMIN_ORA.kmb_ext_ims_mhj_cnt_m_total
(
    ims_client_num int,
    ims_report_num int,
    ims_product_group_num int,
    nrx_001 numeric(9,3),
    nrx_002 numeric(9,3),
    nrx_003 numeric(9,3),
    nrx_004 numeric(9,3),
    trx_001 numeric(9,3),
    trx_002 numeric(9,3),
    trx_003 numeric(9,3),
    trx_004 numeric(9,3)
);


CREATE TABLE WSMP_ADMIN_ORA.kmb_ext_ims_mhj_qty_m_total
(
    ims_client_num int,
    ims_report_num int,
    ims_product_group_num int,
    nrx_001 numeric(9,3),
    nrx_002 numeric(9,3),
    nrx_003 numeric(9,3),
    nrx_004 numeric(9,3),
    trx_001 numeric(9,3),
    trx_002 numeric(9,3),
    trx_003 numeric(9,3),
    trx_004 numeric(9,3)
);


CREATE TABLE WSMP_ADMIN_ORA.DIM_VA_PRODUCT_XREF
(
    VA_PRODUCT varchar(255),
    CEPH_PROD_DESC varchar(75),
    WK_PROD_CODE varchar(255),
    IMS_PRODUCT_GROUP_NUM varchar(9),
    DIVISOR numeric(38,0),
    MULTIPLIER numeric(38,0)
);


CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_samples_prof AS
SELECT ap.ROW_ID AS sample_id, ea.ROW_ID AS call_id, c.ROW_ID AS siebel_contact_row_id, CASE WHEN (length(c.INTEGRATION_ID) = 18) THEN c.INTEGRATION_ID ELSE NULL END AS veeva_account_id, trunc(ea.APPT_START_DT, 'DD'::varchar(2)) AS call_date, rep_p.X_SALES_FORCE AS sales_force_id, rep_p.NAME AS territory_num, ea.SUBTYPE_CD AS subtype_cd, ea.TODO_CD AS todo_cd, CASE WHEN (ap.RELATION_TYPE_CD = 'Direct Send'::varchar(11)) THEN 'REQUEST'::varchar(7) WHEN (ap.RELATION_TYPE_CD = 'Sample'::varchar(6)) THEN 'DROP'::varchar(4) ELSE 'UNKNOWN'::varchar(7) END AS sample_type, CASE WHEN (p.DESC_TEXT ~~ 'Adipex%'::varchar(7)) THEN 'ADIPEX-P'::varchar(8) WHEN (p.DESC_TEXT ~~ 'Amrix%'::varchar(6)) THEN 'AMRIX'::varchar(5) WHEN (p.DESC_TEXT ~~ 'Azilect%'::varchar(8)) THEN 'AZILECT'::varchar(7) WHEN (p.DESC_TEXT ~~ 'Budesonide%'::varchar(11)) THEN 'BUDESONIDE'::varchar(10) WHEN (p.DESC_TEXT ~~ 'COPAXONE%'::varchar(9)) THEN 'COPAXONE'::varchar(8) WHEN (p.DESC_TEXT ~~ 'ENJUVIA%'::varchar(8)) THEN 'ENJUVIA'::varchar(7) WHEN (p.DESC_TEXT ~~ 'LoSeasonique%'::varchar(13)) THEN 'LOSEASONIQUE'::varchar(12) WHEN (p.DESC_TEXT ~~ 'NIASPAN%'::varchar(8)) THEN 'NIASPAN'::varchar(7) WHEN (p.DESC_TEXT ~~ 'Nuvigil%'::varchar(8)) THEN 'NUVIGIL'::varchar(7) WHEN (p.DESC_TEXT ~~ 'ProAir%'::varchar(7)) THEN 'PROAIR'::varchar(6) WHEN (p.DESC_TEXT ~~ 'Qnasl%'::varchar(6)) THEN 'QNASL'::varchar(5) WHEN (p.DESC_TEXT ~~ 'QVAR%'::varchar(5)) THEN 'QVAR'::varchar(4) WHEN (p.DESC_TEXT ~~ 'Seasonique%'::varchar(11)) THEN 'SEASONIQUE'::varchar(10) WHEN (p.DESC_TEXT ~~ 'Tev-Tropin%'::varchar(11)) THEN 'TEV-TROPIN'::varchar(10) ELSE 'UNKNOWN'::varchar(7) END AS product_name, p.DESC_TEXT AS sample_name, p.PART_NUM AS sample_ndc, ap.QTY AS qty, ea.NAME AS name_on_call, ea.COMMENTS AS address_line_on_call, ea.ZIPCODE AS zip_on_call, d.ims_id, eax.ATTRIB_03 AS dea_num, ea.OWNER_PER_ID AS ownerid, emp.CSN AS employeenumber, ea.CREATED_BY AS created_by, ea.CREATED AS created_date FROM (((((((WSMP_ADMIN.S_EVT_ACT ea JOIN WSMP_ADMIN.S_CONTACT c ON ((ea.TARGET_PER_ID = c.ROW_ID))) JOIN WSMP_ADMIN.S_POSTN rep_p ON ((ea.OWNER_POSTN_ID = rep_p.ROW_ID))) JOIN WSMP_ADMIN.S_ACT_PRDINT ap ON ((ea.ROW_ID = ap.ACTIVITY_ID))) JOIN WSMP_ADMIN.S_PROD_INT p ON ((ap.PRDINT_ID = p.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_EVT_ACT_X eax ON ((ea.ROW_ID = eax.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT emp ON ((emp.ROW_ID = ea.CREATED_BY))) LEFT JOIN (SELECT iq.ims_id, iq.cm_id, iq.me_num, iq.siebel_contact_row_id, iq.rnk FROM (SELECT dim_sfa_csf_demo.IMS_ID AS ims_id, dim_sfa_csf_demo.CM_ID AS cm_id, dim_sfa_csf_demo.ME_NUM AS me_num, dim_sfa_csf_demo.SIEBEL_CONTACT_ROW_ID AS siebel_contact_row_id, row_number() OVER (PARTITION BY dim_sfa_csf_demo.SIEBEL_CONTACT_ROW_ID ORDER BY dim_sfa_csf_demo.VEEVA_ACCOUNT_ID, dim_sfa_csf_demo.SALES_FORCE_ID) AS rnk FROM WSMP_ADMIN.DIM_SFA_CSF_DEMO) iq WHERE (iq.rnk = 1)) d ON ((c.ROW_ID = d.siebel_contact_row_id))) WHERE ((rep_p.POSTN_TYPE_CD = ANY (ARRAY['Sales Representative'::varchar(20), 'TSP Test Position'::varchar(17)])) AND (ap.RELATION_TYPE_CD = ANY (ARRAY['Direct Send'::varchar(11), 'Sample'::varchar(6)])) AND (ea.OWNER_POSTN_ID <> '0-5220'::varchar(6)) AND (ea.APPT_START_DT >= '2012-01-01 00:00:00'::timestamp(0)) AND (ea.APPT_START_DT < (statement_timestamp())::timestamp));

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_samples_account_calls AS
SELECT rep_p.X_SALES_FORCE AS sales_force_id, ea.PAR_EVT_ID AS par_evt_id, ea.ROW_ID AS csf_call_id, ea.TARGET_PER_ID AS csf_demo_id, 'ACCT'::varchar(4) AS call_type, ea.NAME AS name_on_call, ea.ZIPCODE AS zip_on_call, ea.SUBTYPE_CD AS subtype_cd, ea.TODO_CD AS todo_cd, ea.INTEGRATION_ID AS integration_id, ea.ROW_ID AS siebel_evt_act_row_id, ea.TARGET_PER_ID AS siebel_target_per_id, emp.CSN AS rep_id, rep_p.NAME AS territory_num, trunc(ea.APPT_START_DT, 'DD'::varchar(2)) AS call_date, details.product_name, details.lot_num, details.qty, details.relation_type_cd, o.OU_TYPE_CD AS ou_type_cd, CASE WHEN (length(emp.INTEGRATION_ID) = 18) THEN emp.INTEGRATION_ID ELSE NULL END AS veeva_account_id FROM ((((WSMP_ADMIN.S_EVT_ACT ea LEFT JOIN WSMP_ADMIN.S_POSTN rep_p ON ((rep_p.ROW_ID = ea.OWNER_POSTN_ID))) LEFT JOIN WSMP_ADMIN.S_ORG_EXT o ON ((o.ROW_ID = rep_p.BU_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT emp ON ((emp.ROW_ID = ea.TARGET_PER_ID))) JOIN (SELECT appl.ACTIVITY_ID AS activity_id, upper(spi.NAME) AS product_name, appl.LOT_NUM AS lot_num, appl.QTY AS qty, appl.RELATION_TYPE_CD AS relation_type_cd FROM (WSMP_ADMIN.S_ACT_PRDINT appl JOIN WSMP_ADMIN.S_PROD_INT spi ON ((appl.PRDINT_ID = spi.ROW_ID))) WHERE ((appl.CONFLICT_ID = '0'::varchar(1)) AND (appl.RELATION_TYPE_CD = ANY (ARRAY['DirectSend'::varchar(10), 'Sample'::varchar(6)])))) details ON ((details.activity_id = ea.ROW_ID))) WHERE ((rep_p.NAME <> ALL (ARRAY['Siebel Administrator'::varchar(20), 'TWH Siebel Administrator'::varchar(24)])) AND (o.NAME <> ALL (ARRAY['Siebel Administration'::varchar(21), 'ERM AnonUser'::varchar(12), 'Default Organization'::varchar(20)])) AND (coalesce(o.OU_TYPE_CD, 'XXX'::varchar(3)) <> 'Manufacturer'::varchar(12)));

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_account_calls AS
SELECT rep_p.X_SALES_FORCE AS sales_force_id, ea.PAR_EVT_ID AS par_evt_id, ea.ROW_ID AS csf_call_id, ea.TARGET_OU_ID AS csf_demo_id, 'ACCT'::varchar(4) AS call_type, o.OU_TYPE_CD AS ou_type_cd, ea.NAME AS name_on_call, ea.ZIPCODE AS zip_on_call, ea.SUBTYPE_CD AS subtype_cd, ea.TODO_CD AS todo_cd, ea.ROW_ID AS siebel_evt_act_row_id, ea.TARGET_OU_ID AS siebel_target_ou_id, emp.CSN AS rep_id, rep_p.NAME AS territory_num, trunc(ea.APPT_START_DT, 'DD'::varchar(2)) AS call_date, details.first_detailed_product, details.second_detailed_product, details.third_detailed_product, details.fourth_detailed_product, details.fifth_detailed_product, details.sixth_detailed_product, CASE WHEN (length(o.INTEGRATION_ID) = 18) THEN o.INTEGRATION_ID ELSE NULL END AS veeva_account_id, ea.INTEGRATION_ID AS integration_id FROM ((((WSMP_ADMIN.S_EVT_ACT ea LEFT JOIN WSMP_ADMIN.S_POSTN rep_p ON ((rep_p.ROW_ID = ea.OWNER_POSTN_ID))) LEFT JOIN WSMP_ADMIN.S_ORG_EXT o ON ((o.ROW_ID = ea.TARGET_OU_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT emp ON ((emp.ROW_ID = ea.CREATED_BY))) LEFT JOIN (SELECT iq.activity_id, max(CASE WHEN (iq.priority = 1) THEN iq.product_name ELSE NULL END) AS first_detailed_product, max(CASE WHEN (iq.priority = 2) THEN iq.product_name ELSE NULL END) AS second_detailed_product, max(CASE WHEN (iq.priority = 3) THEN iq.product_name ELSE NULL END) AS third_detailed_product, max(CASE WHEN (iq.priority = 4) THEN iq.product_name ELSE NULL END) AS fourth_detailed_product, max(CASE WHEN (iq.priority = 5) THEN iq.product_name ELSE NULL END) AS fifth_detailed_product, max(CASE WHEN (iq.priority = 6) THEN iq.product_name ELSE NULL END) AS sixth_detailed_product FROM (SELECT appl.ACTIVITY_ID AS activity_id, upper(spi.NAME) AS product_name, row_number() OVER (PARTITION BY appl.ACTIVITY_ID ORDER BY appl.PRIORITY_NUM, upper(spi.NAME)) AS priority FROM (WSMP_ADMIN.S_ACT_PROD_APPL appl LEFT JOIN WSMP_ADMIN.S_PROD_INT spi ON ((appl.PRDINT_ID = spi.ROW_ID))) WHERE (appl.CONFLICT_ID = '0'::varchar(1))) iq GROUP BY iq.activity_id) details ON ((details.activity_id = ea.PAR_EVT_ID))) WHERE ((ea.EVT_STAT_CD = 'Submitted'::varchar(9)) AND (rep_p.POSTN_TYPE_CD = ANY (ARRAY['Sales Representative'::varchar(20), 'TSP Test Position'::varchar(17)])) AND (ea.OWNER_POSTN_ID <> '0-5220'::varchar(6)) AND (ea.APPT_START_DT >= '2011-01-01 00:00:00'::timestamp(0)) AND (ea.APPT_START_DT < (statement_timestamp())::timestamp) AND (ea.SUBTYPE_CD = 'Account Call'::varchar(12)) AND (ea.TODO_CD = 'Account Call'::varchar(12)));

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_demo_accounts AS
SELECT oe.ROW_ID AS csf_demo_id, p.X_SALES_FORCE AS sales_force_id, 'ACCT'::varchar(4) AS demo_type, oe.OU_TYPE_CD AS account_type, 'N'::varchar(1) AS house_acct_flag, 'A'::varchar(1) AS src_verification_status, x.ATTRIB_07 AS hms_id, x.X_ATTRIB_109 AS bp_code, p.NAME AS territory_num, btrim(oe.NAME) AS org_name, substr(btrim(ap.ADDR), 1, 75) AS address1, substr(btrim(ap.ADDR_LINE_2), 1, 75) AS address2, substr(btrim(ap.ADDR_LINE_3), 1, 75) AS address3, ap.CITY AS city, ap.STATE AS state, ap.ZIPCODE AS zip, s_accnt_postn.LAST_CALL_DT AS last_call_date, ap.ROW_ID AS siebel_addr_per_row_id, 'Y'::varchar(1) AS ora_viewable_flag, oe.CREATED AS sfa_create_date, (statement_timestamp())::timestamp AS last_build_date, CASE WHEN (length(oe.INTEGRATION_ID) = 18) THEN oe.INTEGRATION_ID ELSE NULL END AS veeva_account_id FROM ((((WSMP_ADMIN.S_ORG_EXT oe LEFT JOIN WSMP_ADMIN.S_ORG_EXT_X x ON ((oe.ROW_ID = x.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_ADDR_PER ap ON ((oe.PR_ADDR_ID = ap.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_ACCNT_POSTN ON ((oe.ROW_ID = s_accnt_postn.OU_EXT_ID))) LEFT JOIN WSMP_ADMIN.S_POSTN p ON ((s_accnt_postn.POSITION_ID = p.ROW_ID))) WHERE ((oe.NAME <> ALL (ARRAY['Siebel Administration'::varchar(21), 'ERM AnonUser'::varchar(12), 'Default Organization'::varchar(20)])) AND (p.NAME <> ALL (ARRAY['Siebel Administrator'::varchar(20), 'TWH Siebel Administrator'::varchar(24)])) AND (oe.OU_TYPE_CD <> 'Manufacturer'::varchar(12)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_4th_sales_roster AS
SELECT fourth_sale_force_roster.EMPLOYEE_ID AS employee_id, fourth_sale_force_roster.USERNAME AS username, CASE fourth_sale_force_roster.LAST_NAME WHEN NULLSEQUAL 'Vacant'::varchar(6) THEN NULL ELSE fourth_sale_force_roster.LAST_NAME END AS last_name, CASE fourth_sale_force_roster.FIRST_NAME WHEN NULLSEQUAL 'Vacant'::varchar(6) THEN NULL ELSE fourth_sale_force_roster.FIRST_NAME END AS first_name, fourth_sale_force_roster.MIDDLE_NAME AS middle_name, fourth_sale_force_roster.SALUTATION AS salutation, fourth_sale_force_roster.SUFFIX AS suffix, fourth_sale_force_roster.TITLE AS title, fourth_sale_force_roster.TERRITORY AS territory, fourth_sale_force_roster.TERRITORY_NAME AS territory_name, CASE WHEN (substr(fourth_sale_force_roster.MANAGER_TERRITORY, 3, 4) = 'ZZZZ'::varchar(4)) THEN NULL WHEN (fourth_sale_force_roster.MANAGER_TERRITORY = 'TOFRMZ00'::varchar(8)) THEN NULL WHEN (fourth_sale_force_roster.MANAGER_TERRITORY = 'TOSCGZ00'::varchar(8)) THEN NULL ELSE fourth_sale_force_roster.MANAGER_TERRITORY END AS manager_territory, fourth_sale_force_roster.TEAM AS team, fourth_sale_force_roster.BUSINESS_LINE_1_ADDR AS business_line_1_addr, fourth_sale_force_roster.BUSINESS_LINE_2_ADDR AS business_line_2_addr, fourth_sale_force_roster.BUSINESS_LINE_3_ADDR AS business_line_3_addr, fourth_sale_force_roster.BUSINESS_CITY AS business_city, fourth_sale_force_roster.BUSINESS_STATE AS business_state, fourth_sale_force_roster.BUSINESS_POSTAL_CODE AS business_postal_code, fourth_sale_force_roster.BUSINESS_COUNTRY_CODE AS business_country_code, fourth_sale_force_roster.HOME_LINE_1_ADDR AS home_line_1_addr, fourth_sale_force_roster.HOME_LINE_2_ADDR AS home_line_2_addr, fourth_sale_force_roster.HOME_LINE_3_ADDR AS home_line_3_addr, fourth_sale_force_roster.HOME_CITY AS home_city, fourth_sale_force_roster.HOME_STATE AS home_state, fourth_sale_force_roster.HOME_POSTAL_CODE AS home_postal_code, fourth_sale_force_roster.HOME_COUNTRY_CODE AS home_country_code, fourth_sale_force_roster.CORRESPONDENCE_ADDRESS AS correspondence_address, fourth_sale_force_roster.BUSINESS_PHONE AS business_phone, fourth_sale_force_roster.BUSINESS_PHONE_EXTENSION AS business_phone_extension, fourth_sale_force_roster.BUSINESS_FAX AS business_fax, fourth_sale_force_roster.VOICE_MAIL AS voice_mail, fourth_sale_force_roster.MOBILE_PHONE AS mobile_phone, fourth_sale_force_roster.HOME_PHONE AS home_phone, fourth_sale_force_roster.HOME_FAX AS home_fax, fourth_sale_force_roster.CORRESPONDENCE_PHONE AS correspondence_phone, fourth_sale_force_roster.BUSINESS_EMAIL AS business_email, fourth_sale_force_roster.HOME_EMAIL AS home_email, fourth_sale_force_roster.CORRESPONDENCE_EMAIL AS correspondence_email, fourth_sale_force_roster.COST_CENTER AS cost_center FROM WSMP_ADMIN.FOURTH_SALE_FORCE_ROSTER WHERE ((fourth_sale_force_roster.TERRITORY !~~ '%ZZZZ%'::varchar(6)) AND ((trunc(fourth_sale_force_roster.HIRE_DT, 'DD'::varchar(2)) <= (statement_timestamp())::timestamp) OR (fourth_sale_force_roster.HIRE_DT IS NULL)) AND (fourth_sale_force_roster.TERRITORY <> '111111'::varchar(6)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_SP_Attendees AS
SELECT a.EVENT_NUMBER AS event_number, e.EVENT_NAME AS event_name, e.EVENT_START_DATE AS event_start_date, a.ME_NUMBER AS me_number, a.DEA_NUMBER AS dea_number, cm.CEPH_ID AS ceph_id, a.CUSTOMER_ID AS customer_id, (cm.CUSTOMER_MASTER_ID)::varchar AS cm_id, a.ATTENDEE_FIRST_NAME AS attendee_first_name, a.ATTENDEE_LAST_NAME AS attendee_last_name, a.ATTENDEE_ADDRESS_LINE_1 AS attendee_address_line_1, a.ATTENDEE_ADDRESS_LINE_2 AS attendee_address_line_2, a.ATTENDEE_ADDRESS_LINE_3 AS attendee_address_line_3, a.ATTENDEE_CITY AS attendee_city, a.ATTENDEE_STATE_PROVINCE AS attendee_state_province, a.ATTENDEE_POSTAL_CODE AS attendee_postal_code, a.ATTENDEE_SPECIALTY AS attendee_specialty, a.ATTENDEE_DEGREE AS attendee_degree FROM ((WSMP_ADMIN.STG_AHM_EVENT_ATTENDEE a JOIN WSMP_ADMIN.STG_AHM_EVENT e ON ((e.EVENT_NUMBER = a.EVENT_NUMBER))) LEFT JOIN WSMP_ADMIN.STG_CUSTOMER_MASTER cm ON ((cm.SOURCE_ID = a.IMS_NUMBER))) WHERE ((e.EVENT_START_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (e.EVENT_START_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1))))) GROUP BY a.EVENT_NUMBER, e.EVENT_NAME, e.EVENT_START_DATE, a.ME_NUMBER, a.DEA_NUMBER, cm.CEPH_ID, a.CUSTOMER_ID, (cm.CUSTOMER_MASTER_ID)::varchar, a.ATTENDEE_FIRST_NAME, a.ATTENDEE_LAST_NAME, a.ATTENDEE_ADDRESS_LINE_1, a.ATTENDEE_ADDRESS_LINE_2, a.ATTENDEE_ADDRESS_LINE_3, a.ATTENDEE_CITY, a.ATTENDEE_STATE_PROVINCE, a.ATTENDEE_POSTAL_CODE, a.ATTENDEE_SPECIALTY, a.ATTENDEE_DEGREE;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_AHM_PostalCodeTerritory AS
SELECT ahm_postal_code_territory_xref.COUNTRY_CODE, ahm_postal_code_territory_xref.POSTAL_CODE, ahm_postal_code_territory_xref.TERRITORY FROM WSMP_ADMIN.AHM_POSTAL_CODE_TERRITORY_XREF WHERE (ahm_postal_code_territory_xref.TERRITORY !~~ '%ZZZZ%'::varchar(6));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Amrix_Product_Totals AS
SELECT rx.PRODUCT_CODE AS product_code, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.DW_PRESC_PLAN_RX_M rx WHERE ((rx.PRODUCT_CODE = ANY (ARRAY['A00380'::varchar(6), 'A00100'::varchar(6), 'A00330'::varchar(6), 'A00210'::varchar(6), 'A00370'::varchar(6), 'A00220'::varchar(6), 'A00230'::varchar(6), 'A00350'::varchar(6), 'A00360'::varchar(6), 'A00240'::varchar(6), 'A00320'::varchar(6), 'A00250'::varchar(6), 'A00340'::varchar(6), 'A00260'::varchar(6), 'A00270'::varchar(6), 'A00280'::varchar(6), 'A00290'::varchar(6)])) AND (rx.MONTH_BUCKET >= 1::numeric(18,0)) AND (rx.MONTH_BUCKET <= 24::numeric(18,0))) GROUP BY rx.PRODUCT_CODE;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Azilect_Product_Totals AS
SELECT rx.PRODUCT_CODE AS product_code, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.DW_PRESC_PLAN_RX_M rx WHERE ((rx.PRODUCT_CODE = ANY (ARRAY['700105'::varchar(6), '700110'::varchar(6), '700210'::varchar(6), '700220'::varchar(6), '700310'::varchar(6), '700320'::varchar(6), '700410'::varchar(6), '700420'::varchar(6), '700510'::varchar(6), '700520'::varchar(6), '700530'::varchar(6), '700540'::varchar(6), '700550'::varchar(6), '700582'::varchar(6), '700584'::varchar(6), '700586'::varchar(6), '700588'::varchar(6), '700570'::varchar(6)])) AND (rx.MONTH_BUCKET >= 1::numeric(18,0)) AND (rx.MONTH_BUCKET <= 24::numeric(18,0))) GROUP BY rx.PRODUCT_CODE;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_cmop_rx_backup AS
SELECT rx.STATION_NUMBER, rx.VA_PRODUCT, 0 AS PRODUCT_ID, rx.PRODUCT_CODE, to_char(rx.MONTH, 'YYYY-MM-DD'::varchar(10)) AS MONTH, rx.TRX_CNT, rx.CMOP_CNT, rx.TRX_QTY, rx.CMOP_QTY, rx.CNT_30_DAY_RX, rx.ID FROM (WSMP_ADMIN.DW_CMOP_RX_TEVA rx JOIN CUSTOMER.DIM_VA_PRODUCT_XREF p ON ((rx.PRODUCT_CODE = p.WK_PROD_CODE)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_cmop_station AS
SELECT dim_va_station.VISN, dim_va_station.STATION_NUMBER, dim_va_station.STATION, dim_va_station.STATION_TYPE, dim_va_station.ADDRESS, dim_va_station.CITY, dim_va_station.STATE, dim_va_station.ZIP, dim_va_station.CMOP, dim_va_station.CMOP_DATE, to_char(dim_va_station.CREATE_DATE, 'YYYY-MM-DD'::varchar(10)) AS CREATE_DATE, to_char(dim_va_station.LAST_UPD_DATE, 'YYYY-MM-DD'::varchar(10)) AS LAST_UPD_DATE, dim_va_station.STANDARD_ZIP FROM WSMP_ADMIN.DIM_VA_STATION;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_anda_sales_backup AS
SELECT STG_ANDA_SALES.TRANSACTION_ID, to_char(STG_ANDA_SALES.INVOICE_DATE, 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, STG_ANDA_SALES.PRODUCT_BRAND, STG_ANDA_SALES.PRODUCT_NDC, STG_ANDA_SALES.PRODUCT_DESC, STG_ANDA_SALES.INVOICE_QTY, STG_ANDA_SALES.INVOICE_UNITS, STG_ANDA_SALES.INVOICE_COST, STG_ANDA_SALES.INVOICE_PACK_COST, STG_ANDA_SALES.INVOICE_UNIT_COST, STG_ANDA_SALES.CONTRACT_PACK_COST, STG_ANDA_SALES.CONTRACT_PURCHASES, STG_ANDA_SALES.CONTRACT_NUMBER, STG_ANDA_SALES.DISPENSING_LOCATION, STG_ANDA_SALES.DL_ADDRESS_1, STG_ANDA_SALES.DL_ADDRESS_2, STG_ANDA_SALES.DL_CITY, STG_ANDA_SALES.DL_STATE, STG_ANDA_SALES.DL_ZIP, STG_ANDA_SALES.DL_DEA_NUM, STG_ANDA_SALES.DEPOT_LOCATION, STG_ANDA_SALES.DEP_ADDRESS_1, STG_ANDA_SALES.DEP_ADDRESS_2, STG_ANDA_SALES.DEP_CITY, STG_ANDA_SALES.DEP_STATE, STG_ANDA_SALES.DEP_ZIP, STG_ANDA_SALES.DEP_DEA_NUM, STG_ANDA_SALES.UNIT_AP, STG_ANDA_SALES.AP FROM WSMP_ADMIN.STG_ANDA_SALES;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_cns_deciles AS
SELECT d.ims_id AS hcp_id, CASE d.decile_name WHEN NULLSEQUAL 'Modafinil'::varchar(9) THEN 'Wake'::varchar(4) ELSE d.decile_name END AS decile_name, d.trx_cnt_01_06 AS decile_value FROM WSMP_ADMIN.tfc_ims_decile d WHERE ((d.decile_name = ANY (ARRAY['Fentora'::varchar(7), 'Actiq'::varchar(5), 'Nuvigil'::varchar(7), 'Amrix'::varchar(5), 'Azilect'::varchar(7), 'Copaxone'::varchar(8)])) AND (NOT EXISTS (SELECT NULL FROM WSMP_ADMIN.tfc_ims_presc_demo_w pd WHERE ((pd.ims_id = d.ims_id) AND (pd.pdrp_flag = 'Y'::char(1)))))) UNION ALL SELECT d.ims_id AS hcp_id, CASE d.decile_name WHEN NULLSEQUAL 'Modafinil'::varchar(9) THEN 'Wake'::varchar(4) ELSE d.decile_name END AS decile_name, d.trx_cnt_01_06 AS decile_value FROM WSMP_ADMIN.tfc_ims_decile d WHERE (d.decile_name = ANY (ARRAY['TIRF Total'::varchar(10), 'Total Combo SAO'::varchar(15), 'Total Opioid Market'::varchar(19), 'Total LAO'::varchar(9), 'Total Pure SAO'::varchar(14), 'Branded Sleep / Sedative'::varchar(24), 'Modafinil'::varchar(9), 'Muscle Relaxant Market'::varchar(22)]));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_copay_voucher_program_backup AS
SELECT DIM_ASI_PROGRAM.REDEMPTION_TYPE, DIM_ASI_PROGRAM.ASI_PROGRAM_NUM, DIM_ASI_PROGRAM.PROGRAM_DESC, DIM_ASI_PROGRAM.SALES_FORCE_ID, DIM_ASI_PROGRAM.PROGRAM_TYPE, DIM_ASI_PROGRAM.PRODUCT_NAME, to_char(DIM_ASI_PROGRAM.PROGRAM_START_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_START_DATE, to_char(DIM_ASI_PROGRAM.PROGRAM_END_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_END_DATE, DIM_ASI_PROGRAM.NUMBER_OF_TABLETS FROM WSMP_ADMIN.DIM_ASI_PROGRAM;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_copay_voucher_redemption_backup AS
SELECT coalesce(tfc_asi_copay_detail_wkly.VEEVA_ACCOUNT_ID, tfc_asi_copay_detail_wkly.IMS_ID) AS veeva_account_id, tfc_asi_copay_detail_wkly.IMS_ID AS ims_id, tfc_asi_copay_detail_wkly.REDEMPTION_TYPE AS redemption_type, to_char(tfc_asi_copay_detail_wkly.FILL_DATE, 'YYYY-MM-DD'::varchar(10)) AS fill_date, to_char(tfc_asi_copay_detail_wkly.HCP_DATE_WRITTEN, 'YYYY-MM-DD'::varchar(10)) AS hcp_date_written, tfc_asi_copay_detail_wkly.DAYS_SUPPLY AS days_supply, tfc_asi_copay_detail_wkly.NDC_CODE AS ndc_code, tfc_asi_copay_detail_wkly.BRAND_NAME AS brand_name, tfc_asi_copay_detail_wkly.QTY AS qty, tfc_asi_copay_detail_wkly.REFILLS AS refills, tfc_asi_copay_detail_wkly.PROGRAM_NUM AS program_num, tfc_asi_copay_detail_wkly.COPAY_CARD_NUM AS copay_voucher_num, tfc_asi_copay_detail_wkly.PHARMACY_CHAIN_NUM AS pharmacy_chain_num, tfc_asi_copay_detail_wkly.PHARMACY_CHAIN AS pharmacy_chain, tfc_asi_copay_detail_wkly.PHARMACY_NAME AS pharmacy_name, tfc_asi_copay_detail_wkly.PHARMACY_ADDRESS AS pharmacy_address, tfc_asi_copay_detail_wkly.PHARMACY_ADDRESS2 AS pharmacy_address2, tfc_asi_copay_detail_wkly.PHARMACY_CITY AS pharmacy_city, tfc_asi_copay_detail_wkly.PHARMACY_STATE AS pharmacy_state, tfc_asi_copay_detail_wkly.PHARMACY_ZIP AS pharmacy_zip, tfc_asi_copay_detail_wkly.PHARMACY_NPI_NUM AS pharmacy_npi_num, NULL AS ceph_id, tfc_asi_copay_detail_wkly.ME_NUM AS me_num, tfc_asi_copay_detail_wkly.PRINCIPLE_PHYS_DEA_NUM AS principle_phys_dea_num, tfc_asi_copay_detail_wkly.PRINCIPLE_PHYS_NPI_NUM AS principle_phys_npi_num, tfc_asi_copay_detail_wkly.PHYSICIAN_NAME AS physician_name, tfc_asi_copay_detail_wkly.ASI_PHYS_ADDRESS1 AS physician_address1, tfc_asi_copay_detail_wkly.ASI_PHYS_ADDRESS2 AS physician_address2, tfc_asi_copay_detail_wkly.ASI_PHYS_CITY AS physician_city, tfc_asi_copay_detail_wkly.ASI_PHYS_STATE AS physician_state, tfc_asi_copay_detail_wkly.ASI_PHYS_ZIP AS physician_zip, tfc_asi_copay_detail_wkly.REBATE_AMOUNT AS rebate_amount, tfc_asi_copay_detail_wkly.MEMBER_CASH_EXPENSE AS member_cash_expense, tfc_asi_copay_detail_wkly.SUBMITTED_COST AS submitted_cost, tfc_asi_copay_detail_wkly.PHARMACY_FEE AS pharmacy_fee, tfc_asi_copay_detail_wkly.TOTAL_AMOUNT_DUE AS total_amount_due, tfc_asi_copay_detail_wkly.CALC_AWP AS calc_awp, tfc_asi_copay_detail_wkly.OCC_PAYMENT_TYPE AS occ_payment_type, tfc_asi_copay_detail_wkly.NEW_REFILL AS new_refill FROM WSMP_ADMIN.TFC_ASI_COPAY_DETAIL_WKLY WHERE ((tfc_asi_copay_detail_wkly.BRAND_NAME = ANY (ARRAY['NUVIGIL'::varchar(7), 'FENTORA'::varchar(7), 'AMRIX'::varchar(5), 'ADIPEX-P'::varchar(8), 'TEV-TROPIN'::varchar(10), 'AZILECT'::varchar(7), 'QUARTETTE'::varchar(9)])) AND (tfc_asi_copay_detail_wkly.FILL_DATE < (statement_timestamp())::timestamp) AND (tfc_asi_copay_detail_wkly.HCP_DATE_WRITTEN < (statement_timestamp())::timestamp) AND (months_between((statement_timestamp())::timestamp, tfc_asi_copay_detail_wkly.FILL_DATE) <= 25::float)) UNION ALL SELECT coalesce(tfc_asi_redemption_detail_wkly.VEEVA_ACCOUNT_ID, tfc_asi_redemption_detail_wkly.IMS_ID) AS veeva_account_id, tfc_asi_redemption_detail_wkly.IMS_ID AS ims_id, tfc_asi_redemption_detail_wkly.REDEMPTION_TYPE AS redemption_type, to_char(tfc_asi_redemption_detail_wkly.FILL_DATE, 'YYYY-MM-DD'::varchar(10)) AS fill_date, to_char(tfc_asi_redemption_detail_wkly.HCP_DATE_WRITTEN, 'YYYY-MM-DD'::varchar(10)) AS hcp_date_written, tfc_asi_redemption_detail_wkly.DAYS_SUPPLY AS days_supply, tfc_asi_redemption_detail_wkly.NDC_CODE AS ndc_code, tfc_asi_redemption_detail_wkly.PRODUCT_NAME AS brand_name, tfc_asi_redemption_detail_wkly.QTY AS qty, tfc_asi_redemption_detail_wkly.REFILLS AS refills, tfc_asi_redemption_detail_wkly.PROGRAM_NUM AS program_num, tfc_asi_redemption_detail_wkly.VOUCHER_NUM AS copay_voucher_num, tfc_asi_redemption_detail_wkly.PHARMACY_CHAIN_NUM AS pharmacy_chain_num, tfc_asi_redemption_detail_wkly.PHARMACY_CHAIN AS pharmacy_chain, tfc_asi_redemption_detail_wkly.PHARMACY_NAME AS pharmacy_name, tfc_asi_redemption_detail_wkly.PHARMACY_ADDRESS AS pharmacy_address, NULL AS pharmacy_address2, tfc_asi_redemption_detail_wkly.PHARMACY_CITY AS pharmacy_city, tfc_asi_redemption_detail_wkly.PHARMACY_STATE AS pharmacy_state, tfc_asi_redemption_detail_wkly.PHARMACY_ZIP AS pharmacy_zip, tfc_asi_redemption_detail_wkly.PHARMACY_NPI_NUM AS pharmacy_npi_num, NULL AS ceph_id, tfc_asi_redemption_detail_wkly.ME_NUM AS me_num, tfc_asi_redemption_detail_wkly.DEA_NUM AS dea_num, tfc_asi_redemption_detail_wkly.NPI AS npi, tfc_asi_redemption_detail_wkly.PROVIDER_NAME AS provider_name, tfc_asi_redemption_detail_wkly.PROVIDER_ADDRESS AS provider_address, NULL AS physician_address2, tfc_asi_redemption_detail_wkly.PROVIDER_CITY AS provider_city, tfc_asi_redemption_detail_wkly.PROVIDER_STATE AS provider_state, tfc_asi_redemption_detail_wkly.PROVIDER_ZIP AS provider_zip, tfc_asi_redemption_detail_wkly.REBATE_AMOUNT AS rebate_amount, tfc_asi_redemption_detail_wkly.MEMBER_CASH_EXPENSE AS member_cash_expense, tfc_asi_redemption_detail_wkly.SUBMITTED_COST AS submitted_cost, tfc_asi_redemption_detail_wkly.PHARMACY_FEE AS pharmacy_fee, tfc_asi_redemption_detail_wkly.TOTAL_AMOUNT_DUE AS total_amount_due, tfc_asi_redemption_detail_wkly.CALC_AWP AS calc_awp, NULL AS occ_payment_type, tfc_asi_redemption_detail_wkly.NEW_REFILL AS new_refill FROM WSMP_ADMIN.TFC_ASI_REDEMPTION_DETAIL_WKLY WHERE ((tfc_asi_redemption_detail_wkly.PRODUCT_NAME = ANY (ARRAY['NUVIGIL'::varchar(7), 'FENTORA'::varchar(7), 'AMRIX'::varchar(5), 'ADIPEX-P'::varchar(8), 'TEV-TROPIN'::varchar(10), 'AZILECT'::varchar(7), 'QUARTETTE'::varchar(9)])) AND (tfc_asi_redemption_detail_wkly.FILL_DATE < (statement_timestamp())::timestamp) AND (tfc_asi_redemption_detail_wkly.HCP_DATE_WRITTEN < (statement_timestamp())::timestamp) AND (months_between((statement_timestamp())::timestamp, tfc_asi_redemption_detail_wkly.FILL_DATE) <= 25::float));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_omnicare_sale_backup AS
SELECT STG_OMNICARE_SALES.TRANSACTION_ID, to_char(STG_OMNICARE_SALES.INVOICE_DATE, 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, STG_OMNICARE_SALES.PRODUCT_BRAND, STG_OMNICARE_SALES.PRODUCT_NDC, STG_OMNICARE_SALES.PRODUCT_DESC, STG_OMNICARE_SALES.INVOICE_QTY, STG_OMNICARE_SALES.INVOICE_UNITS, STG_OMNICARE_SALES.INVOICE_COST, STG_OMNICARE_SALES.INVOICE_PACK_COST, STG_OMNICARE_SALES.INVOICE_UNIT_COST, STG_OMNICARE_SALES.CONTRACT_PACK_COST, STG_OMNICARE_SALES.CONTRACT_PURCHASES, STG_OMNICARE_SALES.CONTRACT_NUMBER, STG_OMNICARE_SALES.DISPENSING_LOCATION, STG_OMNICARE_SALES.DL_ADDRESS_1, STG_OMNICARE_SALES.DL_ADDRESS_2, STG_OMNICARE_SALES.DL_CITY, STG_OMNICARE_SALES.DL_STATE, STG_OMNICARE_SALES.DL_ZIP, STG_OMNICARE_SALES.DL_DEA_NUM, STG_OMNICARE_SALES.DEPOT_LOCATION, STG_OMNICARE_SALES.DEP_ADDRESS_1, STG_OMNICARE_SALES.DEP_ADDRESS_2, STG_OMNICARE_SALES.DEP_CITY, STG_OMNICARE_SALES.DEP_STATE, STG_OMNICARE_SALES.DEP_ZIP, STG_OMNICARE_SALES.DEP_DEA_NUM, STG_OMNICARE_SALES.UNIT_AP, STG_OMNICARE_SALES.AP FROM WSMP_ADMIN.STG_OMNICARE_SALES;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_paragard_anda_sales_backup AS
SELECT ('A'::varchar(1) || lpad((STG_TW_ANDA_SALES.CUSTOMER_NO)::varchar, 9, '0'::varchar(1))) AS BP_CODE, NULL AS ORTHO_E, STG_TW_ANDA_SALES.CUSTOMER AS BP_NAME, coalesce(STG_TW_ANDA_SALES.CUSTOMER_ADDRESS_LINE2, STG_TW_ANDA_SALES.CUSTOMER_ADDRESS_LINE1) AS SHIP_TO_ADDRESS, STG_TW_ANDA_SALES.CITY AS SHIP_TO_CITY, STG_TW_ANDA_SALES.STATE AS SHIP_TO_STATE, STG_TW_ANDA_SALES.ZIP AS SHIP_TO_ZIP_CODE, NULL AS SHIP_TO_COUNTRY, NULL AS SHIP_TO_PHONE, NULL AS SHIP_TO_FAX, NULL AS SHIP_TO_EMAIL, coalesce(STG_TW_ANDA_SALES.BILL_ADDRESS_LINE2, STG_TW_ANDA_SALES.BILL_ADDRESS_LINE1) AS BILL_TO_ADDRESS, STG_TW_ANDA_SALES.BILL_CITY AS BILL_TO_CITY, STG_TW_ANDA_SALES.BILL_STATE AS BILL_TO_STATE, STG_TW_ANDA_SALES.BILL_ZIP AS BILL_TO_ZIP_CODE, NULL AS BILL_TO_COUNTRY, NULL AS BILL_TO_PHONE, NULL AS BILL_TO_FAX, NULL AS BILL_TO_EMAIL, STG_TW_ANDA_SALES.CUSTOMER_TYPE_CD AS CLASS_OF_TRADE, STG_TW_ANDA_SALES.ORDER_NO AS INVOICE_NUM, STG_TW_ANDA_SALES.NET_COST AS DEL_AMT, to_char(to_date(STG_TW_ANDA_SALES.SALES_DATE, 'MM/DD/YY'::varchar(8)), 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, STG_TW_ANDA_SALES.UNITS_NET AS "24237", NULL AS "24238", NULL AS "24800", NULL AS "33223", STG_TW_ANDA_SALES.PACKAGE_SIZE AS PACKS, NULL AS UNIT_PRICE, NULL AS TERRITORY, NULL AS ORDER_TYPE_CODE, NULL AS ORDER_TYPE_DESC, NULL AS LOB_CODE_DESC, NULL AS PRICE_MATRIX_DEF, ('A'::varchar(1) || lpad((STG_TW_ANDA_SALES.BILL_CUSTOMER_NO)::varchar, 9, '0'::varchar(1))) AS PARENT_BP_CODE, NULL AS PARENT_BP_DESC, NULL AS GRAND_PARENT_BP_DESC, NULL AS PO_NUMBER, NULL AS UPS_NUMBER, STG_TW_ANDA_SALES.ORDER_NO AS ORDER_NUMBER, NULL AS ORDER_LINE_NUMBER, NULL AS DISC_AMT, NULL AS WHSE_CD FROM WSMP_ADMIN.STG_TW_ANDA_SALES WHERE (STG_TW_ANDA_SALES.BRAND ~~ '%PARAGARD%'::varchar(10));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_product_lookup AS
(( SELECT '100100'::varchar(6) AS product_id,
        'Provigil'::varchar(8) AS product_desc,
        'Wake'::varchar(4) AS market_desc
 FROM v_catalog.dual UNION ALL  SELECT '100700'::varchar(6),
        'Nuvigil'::varchar(7),
        'Wake'::varchar(4)
 FROM v_catalog.dual) UNION ALL  SELECT '300500'::varchar(6),
        'Fentora'::varchar(7),
        'Pain'::varchar(4)
 FROM v_catalog.dual) UNION ALL  SELECT '700100'::varchar(6),
        'Azilect'::varchar(7),
        'Wake'::varchar(4)
 FROM v_catalog.dual;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_cb_accountsummary AS
SELECT STG_TB_CB_ACCOUNTS.ACCOUNT_ID, STG_TB_CB_ACCOUNTS.LOCATION_ID, STG_TB_CB_ACCOUNTS.DEA_NUMBER, STG_TB_CB_ACCOUNTS.END_CUSTOMER, STG_TB_CB_ACCOUNTS.ADDRESS_1, STG_TB_CB_ACCOUNTS.ADDRESS_2, STG_TB_CB_ACCOUNTS.CITY, STG_TB_CB_ACCOUNTS.STATE, STG_TB_CB_ACCOUNTS.ZIP, STG_TB_CB_ACCOUNTS.CONTRACT_TITLE, STG_TB_CB_ACCOUNTS.CONTRACT_ID, STG_TB_CB_ACCOUNTS.WHOLESALER_NAME, STG_TB_CB_ACCOUNTS.HIN, STG_TB_CB_ACCOUNTS.CONTRACT_ALIAS, STG_TB_CB_ACCOUNTS.WHOLESALER_DEA, STG_TB_CB_ACCOUNTS.COT_SOURCE, STG_TB_CB_ACCOUNTS.CLASS_OF_TRADE FROM WSMP_ADMIN.STG_TB_CB_ACCOUNTS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_cb_transactions_backup AS
SELECT STG_TB_CB_TRANSACTIONS.ACCOUNT_ID, STG_TB_CB_TRANSACTIONS.LOCATION_ID, to_char(STG_TB_CB_TRANSACTIONS.SHIPMENT_DATE, 'YYYY-MM-DD'::varchar(10)) AS SHIPMENT_DATE, STG_TB_CB_TRANSACTIONS.NDC_CODE, STG_TB_CB_TRANSACTIONS.PRODUCT_NAME, STG_TB_CB_TRANSACTIONS.CONTRACT_ID, STG_TB_CB_TRANSACTIONS.CHARGEBACK_UNITS, STG_TB_CB_TRANSACTIONS.CHARGEBACK_DOLLARS, to_char(STG_TB_CB_TRANSACTIONS.RECEIPT_DATE, 'YYYY-MM-DD'::varchar(10)) AS RECEIPT_DATE, STG_TB_CB_TRANSACTIONS.UNIT_AP, STG_TB_CB_TRANSACTIONS.AP, STG_TB_CB_TRANSACTIONS.DEBIT_MEMO_NUM, to_char(STG_TB_CB_TRANSACTIONS.CREDIT_MEMO_DATE, 'YYYY-MM-DD HH24:MI:SS'::varchar(21)) AS CREDIT_MEMO_DATE, STG_TB_CB_TRANSACTIONS.CREDIT_MEMO_NUM, to_char(STG_TB_CB_TRANSACTIONS.SETTLEMENT_DATE, 'YYYY-MM-DD HH24:MI:SS'::varchar(21)) AS SETTLEMENT_DATE, STG_TB_CB_TRANSACTIONS.CONTRACT_PRICE, STG_TB_CB_TRANSACTIONS.CONTRACT_ALIAS FROM WSMP_ADMIN.STG_TB_CB_TRANSACTIONS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_ds_transactions_backup AS
SELECT STG_TB_DS_TRANSACTIONS.ACCOUNT_ID, STG_TB_DS_TRANSACTIONS.LOCATION_ID, to_char(STG_TB_DS_TRANSACTIONS.SHIPMENT_DATE, 'YYYY-MM-DD'::varchar(10)) AS SHIPMENT_DATE, STG_TB_DS_TRANSACTIONS.NDC_CODE, STG_TB_DS_TRANSACTIONS.PRODUCT_NAME, STG_TB_DS_TRANSACTIONS.TRANSACTION_TYPE, STG_TB_DS_TRANSACTIONS.DIRECT_SALES_UNITS, STG_TB_DS_TRANSACTIONS.DIRECT_SALES_DOLLARS, STG_TB_DS_TRANSACTIONS.UNIT_AP, STG_TB_DS_TRANSACTIONS.AP FROM WSMP_ADMIN.STG_TB_DS_TRANSACTIONS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ddd_subcategory AS
SELECT DIM_DDD_SUBCATEGORY.SUBCATEGORY_CODE, DIM_DDD_SUBCATEGORY.CATEGORY_CODE, DIM_DDD_SUBCATEGORY.COT_CODE, DIM_DDD_SUBCATEGORY.MAILORDER_FLAG, DIM_DDD_SUBCATEGORY.NONRETAIL_FLAG, DIM_DDD_SUBCATEGORY.OUTLET_EXAMPLE, DIM_DDD_SUBCATEGORY.OUTLET_DESC, DIM_DDD_SUBCATEGORY.OUTLET_DEFN, DIM_DDD_SUBCATEGORY.MDM_FLAG, DIM_DDD_SUBCATEGORY.ADM_FLAG, DIM_DDD_SUBCATEGORY.ONC_SUBCAT_GROUP FROM WSMP_ADMIN.DIM_DDD_SUBCATEGORY;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_dnc AS
SELECT dnc.IMS_ID AS ims_id, dea.DEA_NUM AS dea_num, dnc.LAST_NAME AS last_name, dnc.FIRST_NAME AS first_name, dnc.MIDDLE_NAME AS mid_name, dnc.ADDRESS AS address, dnc.CITY AS city, dnc.STATE AS state, dnc.ZIP AS zip, npi.NPI AS npi FROM ((WSMP_ADMIN.DIM_DNC dnc LEFT JOIN WSMP_ADMIN.STG_IMS_DEA dea ON ((dnc.IMS_ID = dea.IMS_ID))) LEFT JOIN WSMP_ADMIN.STG_IMS_NPI npi ON ((dnc.IMS_ID = npi.IMS_ID))) WHERE ((dnc.PRODUCT_NAME = 'NUVIGIL'::varchar(7)) AND (dnc.SALES_FORCE_ID = 'TC'::varchar(2)) AND ((dea.DEA_NUM IS NULL) OR (regexp_replace(dea.DEA_NUM, '[0-9]'::varchar(5), ''::varchar, 1, 0, ''::varchar) IS NOT NULL)) AND ((dea.DEA_NUM IS NOT NULL) OR (npi.NPI IS NOT NULL)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_IMSZip_List AS
SELECT CASE WHEN (length(stg_ims_presc_demo_w.ims_id) = 8) THEN ('XX'::varchar(2) || substr(stg_ims_presc_demo_w.ims_id, 4)) ELSE stg_ims_presc_demo_w.ims_id END AS ims_id, stg_ims_presc_demo_w.ims_zip AS zip FROM WSMP_ADMIN.STG_IMS_PRESC_DEMO_W WHERE ((stg_ims_presc_demo_w.sales_force_id = 'TR'::varchar(2)) AND ((stg_ims_presc_demo_w.last_name <> 'l32123'::varchar(6)) OR (stg_ims_presc_demo_w.last_name IS NULL) OR (length(stg_ims_presc_demo_w.ims_id) = 8))) GROUP BY CASE WHEN (length(stg_ims_presc_demo_w.ims_id) = 8) THEN ('XX'::varchar(2) || substr(stg_ims_presc_demo_w.ims_id, 4)) ELSE stg_ims_presc_demo_w.ims_id END, stg_ims_presc_demo_w.ims_zip ORDER BY CASE WHEN (length(stg_ims_presc_demo_w.ims_id) = 8) THEN ('XX'::varchar(2) || substr(stg_ims_presc_demo_w.ims_id, 4)) ELSE stg_ims_presc_demo_w.ims_id END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Nuvigil_Product_Totals AS
SELECT rx.PRODUCT_CODE AS product_code, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.DW_PRESC_PLAN_RX_M rx WHERE ((rx.PRODUCT_CODE = ANY (ARRAY['100N00'::varchar(6), '100100'::varchar(6), '100120'::varchar(6)])) AND (rx.MONTH_BUCKET >= 1::numeric(18,0)) AND (rx.MONTH_BUCKET <= 24::numeric(18,0))) GROUP BY rx.PRODUCT_CODE;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_pcs_ddd_nonretail AS
SELECT TFC_PCS_DDD_NONRETAIL.TERRITORY_NUM, TFC_PCS_DDD_NONRETAIL.OUTLET_CODE, TFC_PCS_DDD_NONRETAIL.SUBCATEGORY_CODE, TFC_PCS_DDD_NONRETAIL.CATEGORY_CODE, TFC_PCS_DDD_NONRETAIL.IMS_PRODUCT_CODE, TFC_PCS_DDD_NONRETAIL.PRODUCT_CODE, TFC_PCS_DDD_NONRETAIL.MTH_YYYYMM, TFC_PCS_DDD_NONRETAIL.QTY_MTH01, TFC_PCS_DDD_NONRETAIL.QTY_MTH02, TFC_PCS_DDD_NONRETAIL.QTY_MTH03, TFC_PCS_DDD_NONRETAIL.QTY_MTH04, TFC_PCS_DDD_NONRETAIL.QTY_MTH05, TFC_PCS_DDD_NONRETAIL.QTY_MTH06, TFC_PCS_DDD_NONRETAIL.QTY_MTH07, TFC_PCS_DDD_NONRETAIL.QTY_MTH08, TFC_PCS_DDD_NONRETAIL.QTY_MTH09, TFC_PCS_DDD_NONRETAIL.QTY_MTH10, TFC_PCS_DDD_NONRETAIL.QTY_MTH11, TFC_PCS_DDD_NONRETAIL.QTY_MTH12, TFC_PCS_DDD_NONRETAIL.QTY_MTH13, TFC_PCS_DDD_NONRETAIL.QTY_MTH14, TFC_PCS_DDD_NONRETAIL.QTY_MTH15, TFC_PCS_DDD_NONRETAIL.QTY_MTH16, TFC_PCS_DDD_NONRETAIL.QTY_MTH17, TFC_PCS_DDD_NONRETAIL.QTY_MTH18, TFC_PCS_DDD_NONRETAIL.QTY_MTH19, TFC_PCS_DDD_NONRETAIL.QTY_MTH20, TFC_PCS_DDD_NONRETAIL.QTY_MTH21, TFC_PCS_DDD_NONRETAIL.QTY_MTH22, TFC_PCS_DDD_NONRETAIL.QTY_MTH23, TFC_PCS_DDD_NONRETAIL.QTY_MTH24, TFC_PCS_DDD_NONRETAIL.OUTLET_NAME, TFC_PCS_DDD_NONRETAIL.OUTLET_ADDRESS, TFC_PCS_DDD_NONRETAIL.OUTLET_CITY, TFC_PCS_DDD_NONRETAIL.OUTLET_STATE, TFC_PCS_DDD_NONRETAIL.OUTLET_ZIP FROM WSMP_ADMIN.TFC_PCS_DDD_NONRETAIL;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_pdrp AS
SELECT d.IMS_ID AS ims_id, d.DEA_NUM AS dea_num, d.LAST_NAME AS last_name, d.FIRST_NAME AS first_name, d.MID_NAME AS mid_name, upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_ADDRESS ELSE d.PTR_ADDRESS END) AS address, upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_CITY ELSE d.PTR_CITY END) AS city, upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_STATE ELSE d.PTR_STATE END) AS state, upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_ZIP ELSE d.PTR_ZIP END) AS zip, npi.NPI AS npi FROM (WSMP_ADMIN.TFC_IMS_PRESC_DEMO_M d LEFT JOIN WSMP_ADMIN.STG_IMS_NPI npi ON ((d.IMS_ID = npi.IMS_ID))) WHERE ((d.PDRP_FLAG = 'Y'::char(1)) AND ((d.DEA_NUM IS NULL) OR (regexp_replace(d.DEA_NUM, '[0-9]'::varchar(5), ''::varchar, 1, 0, ''::varchar) IS NOT NULL)) AND ((d.DEA_NUM IS NOT NULL) OR (npi.NPI IS NOT NULL))) GROUP BY d.IMS_ID, d.DEA_NUM, d.LAST_NAME, d.FIRST_NAME, d.MID_NAME, upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_ADDRESS ELSE d.PTR_ADDRESS END), upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_CITY ELSE d.PTR_CITY END), upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_STATE ELSE d.PTR_STATE END), upper(CASE WHEN (d.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)])) THEN d.COMP_ZIP ELSE d.PTR_ZIP END), npi.NPI;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rems_extract_backup AS
SELECT coalesce(r.VEEVA_ACCOUNT_ID, r.IMS_ID) AS account_id, r.ENROLLMENT_ID AS enrollment_id, r.NPI AS npi, r.DEA_NUM AS dea_num, r.PROGRAM_ID AS program_id, substr(r.PROGRAM_NAME, 1, 4) AS REMS_PROGRAM, r.STATUS AS enrollment_status, r.IN_PROGRESS_STEP AS current_enrollment_step, to_char(r.EFFECTIVE_DATE, 'YYYY-MM-DD'::varchar(10)) AS effective_date, to_char(r.EXPIRATION_DATE, 'YYYY-MM-DD'::varchar(10)) AS expiration_date FROM WSMP_ADMIN.STG_REMS_PRESCRIBER r UNION SELECT coalesce(STG_REMS_FACILITY.VEEVA_ACCOUNT_ID, STG_REMS_FACILITY.ASI_ACCOUNT_ID) AS account_id, STG_REMS_FACILITY.ENROLLMENT_ID AS enrollment_id, STG_REMS_FACILITY.NPI AS npi, STG_REMS_FACILITY.DEA AS dea, STG_REMS_FACILITY.PROGRAM_ID AS program_id, STG_REMS_FACILITY.PROGRAM_NAME AS REMS_program, STG_REMS_FACILITY.STATUS_DESCRIPTION AS enrollment_status, STG_REMS_FACILITY.IN_PROGRESS_STEP AS current_enrollment_step, to_char(STG_REMS_FACILITY.EFFECTIVE_DATE, 'YYYY-MM-DD'::varchar(10)) AS effective_date, to_char(STG_REMS_FACILITY.EXPIRATION_DATE, 'YYYY-MM-DD'::varchar(10)) AS expiration_date FROM WSMP_ADMIN.STG_REMS_FACILITY;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rems_program_lookup_backup AS
SELECT r.PROGRAM_ID AS program_id, r.PROGRAM_NAME AS program_name FROM WSMP_ADMIN.STG_REMS_PRESCRIBER r UNION SELECT stg_rems_facility.PROGRAM_ID AS program_id, stg_rems_facility.PROGRAM_NAME AS program_name FROM WSMP_ADMIN.STG_REMS_FACILITY;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_TC_Physician_Univ AS
SELECT npi.NPI AS npi, dc.dea_num, upper(dc.last_name) AS last_name, upper(dc.first_name) AS first_name, upper(dc.mid_name) AS middle_name, upper(dc.address) AS address, upper(dc.city) AS city, dc.state, dc.zip FROM WSMP_ADMIN.demo_combined dc, WSMP_ADMIN.STG_IMS_NPI npi WHERE (((dc.ims_id IS NOT NULL) OR (dc.dea_num IS NOT NULL)) AND (dc.ims_id = npi.IMS_ID) AND (dc.sales_force_id = 'TC'::varchar(2)) AND ((npi.NPI, dc.territory_num) IN (SELECT n.NPI AS npi, min(d.territory_num) AS min FROM WSMP_ADMIN.STG_IMS_NPI n, WSMP_ADMIN.demo_combined d WHERE ((d.sales_force_id = 'TC'::varchar(2)) AND (n.IMS_ID = d.ims_id)) GROUP BY n.NPI)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_TP_Physician_Univ AS
SELECT npi.NPI AS npi, dc.dea_num, upper(dc.last_name) AS last_name, upper(dc.first_name) AS first_name, upper(dc.mid_name) AS middle_name, upper(dc.address) AS address, upper(dc.city) AS city, dc.state, dc.zip FROM WSMP_ADMIN.demo_combined dc, WSMP_ADMIN.STG_IMS_NPI npi WHERE (((dc.ims_id IS NOT NULL) OR (dc.dea_num IS NOT NULL)) AND (dc.ims_id = npi.IMS_ID) AND (dc.sales_force_id = 'TP'::varchar(2)) AND ((npi.NPI, dc.territory_num) IN (SELECT n.NPI AS npi, min(d.territory_num) AS min FROM WSMP_ADMIN.STG_IMS_NPI n, WSMP_ADMIN.demo_combined d WHERE ((d.sales_force_id = 'TP'::varchar(2)) AND (n.IMS_ID = d.ims_id)) GROUP BY n.NPI)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_zs_tr_calls_obw AS
SELECT c.SALES_FORCE_ID AS sales_force_id, c.TERRITORY_NUM AS territory_num, c.VEEVA_ACCOUNT_ID AS veeva_account_id, c.IMS_ID AS ims_id, c.CALL_DATE AS call_date, cd1.PRODUCT AS first_product_detailed, cd2.PRODUCT AS second_product_detailed, cd3.PRODUCT AS third_product_detailed, cd4.PRODUCT AS fourth_product_detailed FROM ((((WSMP_ADMIN.DW_CALL c LEFT JOIN WSMP_ADMIN.DW_CALL_DETAIL cd1 ON (((c.DW_CALL_KEY = cd1.DW_CALL_KEY) AND (cd1.DETAIL_POSITION = 1::numeric(18,0))))) LEFT JOIN WSMP_ADMIN.DW_CALL_DETAIL cd2 ON (((c.DW_CALL_KEY = cd2.DW_CALL_KEY) AND (cd2.DETAIL_POSITION = 2::numeric(18,0))))) LEFT JOIN WSMP_ADMIN.DW_CALL_DETAIL cd3 ON (((c.DW_CALL_KEY = cd3.DW_CALL_KEY) AND (cd3.DETAIL_POSITION = 3::numeric(18,0))))) LEFT JOIN WSMP_ADMIN.DW_CALL_DETAIL cd4 ON (((c.DW_CALL_KEY = cd4.DW_CALL_KEY) AND (cd4.DETAIL_POSITION = 4::numeric(18,0))))) WHERE ((c.SALES_FORCE_ID = 'TR'::varchar(2)) AND (c.CALL_DATE > ((trunc(((statement_timestamp())::timestamp + 1::float), 'd'::varchar(1)) + (-2)::float) + (-42)::float)) AND (c.CALL_DATE <= (trunc(((statement_timestamp())::timestamp + 1::float), 'd'::varchar(1)) + (-2)::float)) AND (c.VEEVA_ACCOUNT_ID IN (SELECT vv_account.ID AS id FROM WSMP_ADMIN.VV_ACCOUNT WHERE (vv_account.ISPERSONACCOUNT = 'true'::varchar(4)))));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_debarred_with_veevaid AS
SELECT dnc.SALES_FORCE_ID AS sales_force_id, sln.veeva_id, sln.state_license_number, coalesce(dea.DEA_NUM, x.ID_NUM) AS dea_num FROM (((WSMP_ADMIN.DIM_DNC dnc LEFT JOIN (SELECT acc.ID AS veeva_id, acc.ID_VOD__C AS ims_id, addr.LICENSE_VOD__C AS state_license_number FROM (((((WSMP_ADMIN.VV_ACCOUNT acc JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acc.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acc.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_TSF_VOD__C tsf ON (((tsf.ACCOUNT_VOD__C = acc.ID) AND (tsf.TERRITORY_VOD__C = g.DEVELOPERNAME)))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acc.ID) AND (tsf.ADDRESS_VOD__C = addr.ID)))) WHERE ((g.DEVELOPERNAME ~~ 'TC%'::varchar(3)) AND (addr.LICENSE_VOD__C IS NOT NULL))) sln ON ((dnc.IMS_ID = sln.ims_id))) LEFT JOIN WSMP_ADMIN.STG_IMS_DEA dea ON ((dnc.IMS_ID = dea.IMS_ID))) LEFT JOIN WSMP_ADMIN.STG_CM_ID_XREF x ON (((dnc.CM_ID = x.CM_ID) AND (x.ID_TYPE = 'DEA_NUM'::varchar(7))))) WHERE ((dnc.DEBARRED = 'Y'::varchar(1)) AND (dnc.SALES_FORCE_ID = 'TC'::varchar(2)) AND ((dea.DEA_NUM IS NOT NULL) OR (sln.state_license_number IS NOT NULL))) GROUP BY dnc.SALES_FORCE_ID, sln.veeva_id, sln.state_license_number, coalesce(dea.DEA_NUM, x.ID_NUM);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_do_not_promote_with_veevaid_backup AS
(SELECT d.SALES_FORCE_ID AS sales_force_id, acct.ID AS veeva_id, sln.state_license_number, dea.DEA_NUM AS dea_num, d.PRODUCT_NAME AS product_name, d.SPECIALTY_GROUP AS specialty_group, 'N'::varchar(1) AS app FROM (((WSMP_ADMIN.DIM_DNC d JOIN WSMP_ADMIN.STG_IMS_DEA dea ON ((d.IMS_ID = dea.IMS_ID))) LEFT JOIN (SELECT substr(g.DEVELOPERNAME, 1, 2) AS sales_force_id, acct.ID_VOD__C AS ims_id, addr.LICENSE_VOD__C AS state_license_number FROM ((((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acct.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acct.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON ((addr.ACCOUNT_VOD__C = acct.ID))) WHERE ((addr.LICENSE_VOD__C IS NOT NULL) AND (acct.ID_VOD__C IS NOT NULL)) GROUP BY substr(g.DEVELOPERNAME, 1, 2), acct.ID_VOD__C, addr.LICENSE_VOD__C) sln ON (((d.IMS_ID = sln.ims_id) AND (d.SALES_FORCE_ID = sln.sales_force_id)))) LEFT JOIN WSMP_ADMIN.VV_ACCOUNT acct ON ((d.IMS_ID = acct.ID_VOD__C))) UNION SELECT 'TC'::varchar(2) AS sales_force_id, acct.ID AS veeva_id, addr.LICENSE_VOD__C AS state_license_number, dea.DEA_NUM AS dea_num, 'NUVIGIL'::varchar(7) AS product_name, ssx.SPECIALTY_CODE AS specialty_code, 'Y'::varchar(1) AS app FROM (((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.STG_IMS_DEA dea ON ((acct.ID_VOD__C = dea.IMS_ID))) LEFT JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acct.ID) AND (addr.LICENSE_VOD__C IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.SIEBEL_SPECIALTY_XREF ssx ON ((acct.SPECIALTY_1_VOD__C = ssx.SPECIALTY_DESCRIPTION))) WHERE (acct.NUVIGIL_APP_TVA__C = 'true'::varchar(4))) UNION SELECT 'TP'::varchar(2) AS sales_force_id, acct.ID AS veeva_id, addr.LICENSE_VOD__C AS state_license_number, dea.DEA_NUM AS dea_num, 'FENTORA'::varchar(7) AS product_name, ssx.SPECIALTY_CODE AS specialty_code, 'Y'::varchar(1) AS app FROM (((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.STG_IMS_DEA dea ON ((acct.ID_VOD__C = dea.IMS_ID))) LEFT JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acct.ID) AND (addr.LICENSE_VOD__C IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.SIEBEL_SPECIALTY_XREF ssx ON ((acct.SPECIALTY_1_VOD__C = ssx.SPECIALTY_DESCRIPTION))) WHERE (acct.FENTORA_APP_TVA__C = 'true'::varchar(4));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_cmop_rx AS
SELECT rx.STATION_NUMBER, rx.VA_PRODUCT, 0 AS PRODUCT_ID, rx.PRODUCT_CODE, to_char(rx.MONTH, 'YYYY-MM-DD'::varchar(10)) AS MONTH, CASE mod(rx.TRX_CNT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.TRX_CNT)::int)::varchar ELSE rtrim((rx.TRX_CNT)::varchar, '0'::varchar(1)) END AS TRX_CNT, CASE mod(rx.CMOP_CNT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.CMOP_CNT)::int)::varchar ELSE rtrim((rx.CMOP_CNT)::varchar, '0'::varchar(1)) END AS CMOP_CNT, CASE mod(rx.TRX_QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.TRX_QTY)::int)::varchar ELSE rtrim((rx.TRX_QTY)::varchar, '0'::varchar(1)) END AS TRX_QTY, CASE mod(rx.CMOP_QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.CMOP_QTY)::int)::varchar ELSE rtrim((rx.CMOP_QTY)::varchar, '0'::varchar(1)) END AS CMOP_QTY, CASE mod(rx.CNT_30_DAY_RX, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.CNT_30_DAY_RX)::int)::varchar ELSE rtrim((rx.CNT_30_DAY_RX)::varchar, '0'::varchar(1)) END AS CNT_30_DAY_RX, rx.ID FROM (WSMP_ADMIN.DW_CMOP_RX_TEVA rx JOIN (SELECT dim_va_product_xref.WK_PROD_CODE AS wk_prod_code FROM CUSTOMER.DIM_VA_PRODUCT_XREF GROUP BY dim_va_product_xref.WK_PROD_CODE) p ON ((rx.PRODUCT_CODE = p.wk_prod_code)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_copay_voucher_program AS
SELECT DIM_ASI_PROGRAM.REDEMPTION_TYPE, DIM_ASI_PROGRAM.ASI_PROGRAM_NUM, DIM_ASI_PROGRAM.PROGRAM_DESC, DIM_ASI_PROGRAM.SALES_FORCE_ID, DIM_ASI_PROGRAM.PROGRAM_TYPE, DIM_ASI_PROGRAM.PRODUCT_NAME, to_char(DIM_ASI_PROGRAM.PROGRAM_START_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_START_DATE, to_char(DIM_ASI_PROGRAM.PROGRAM_END_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_END_DATE, (DIM_ASI_PROGRAM.NUMBER_OF_TABLETS)::int AS NUMBER_OF_TABLETS FROM WSMP_ADMIN.DIM_ASI_PROGRAM;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_copay_voucher_redemption AS
SELECT coalesce(TFC_ASI_COPAY_DETAIL_WKLY.VEEVA_ACCOUNT_ID, TFC_ASI_COPAY_DETAIL_WKLY.IMS_ID) AS veeva_account_id, TFC_ASI_COPAY_DETAIL_WKLY.IMS_ID AS ims_id, TFC_ASI_COPAY_DETAIL_WKLY.REDEMPTION_TYPE AS redemption_type, to_char(TFC_ASI_COPAY_DETAIL_WKLY.FILL_DATE, 'YYYY-MM-DD'::varchar(10)) AS fill_date, to_char(TFC_ASI_COPAY_DETAIL_WKLY.HCP_DATE_WRITTEN, 'YYYY-MM-DD'::varchar(10)) AS hcp_date_written, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.DAYS_SUPPLY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.DAYS_SUPPLY)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.DAYS_SUPPLY)::varchar, '0'::varchar(1)) END AS days_supply, TFC_ASI_COPAY_DETAIL_WKLY.NDC_CODE AS ndc_code, TFC_ASI_COPAY_DETAIL_WKLY.BRAND_NAME AS brand_name, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.QTY)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.QTY)::varchar, '0'::varchar(1)) END AS qty, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.REFILLS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.REFILLS)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.REFILLS)::varchar, '0'::varchar(1)) END AS refills, TFC_ASI_COPAY_DETAIL_WKLY.PROGRAM_NUM AS program_num, TFC_ASI_COPAY_DETAIL_WKLY.COPAY_CARD_NUM AS copay_voucher_num, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_CHAIN_NUM AS pharmacy_chain_num, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_CHAIN AS pharmacy_chain, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_NAME AS pharmacy_name, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_ADDRESS AS pharmacy_address, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_ADDRESS2 AS pharmacy_address2, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_CITY AS pharmacy_city, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_STATE AS pharmacy_state, TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_ZIP AS pharmacy_zip, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_NPI_NUM, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_NPI_NUM)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_NPI_NUM)::varchar, '0'::varchar(1)) END AS pharmacy_npi_num, NULL AS ceph_id, TFC_ASI_COPAY_DETAIL_WKLY.ME_NUM AS me_num, TFC_ASI_COPAY_DETAIL_WKLY.PRINCIPLE_PHYS_DEA_NUM AS principle_phys_dea_num, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.PRINCIPLE_PHYS_NPI_NUM, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.PRINCIPLE_PHYS_NPI_NUM)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.PRINCIPLE_PHYS_NPI_NUM)::varchar, '0'::varchar(1)) END AS principle_phys_npi_num, TFC_ASI_COPAY_DETAIL_WKLY.PHYSICIAN_NAME AS physician_name, TFC_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ADDRESS1 AS physician_address1, TFC_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ADDRESS2 AS physician_address2, TFC_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_CITY AS physician_city, TFC_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_STATE AS physician_state, TFC_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ZIP AS physician_zip, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.REBATE_AMOUNT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.REBATE_AMOUNT)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.REBATE_AMOUNT)::varchar, '0'::varchar(1)) END AS rebate_amount, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.MEMBER_CASH_EXPENSE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.MEMBER_CASH_EXPENSE)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.MEMBER_CASH_EXPENSE)::varchar, '0'::varchar(1)) END AS member_cash_expense, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.SUBMITTED_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.SUBMITTED_COST)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.SUBMITTED_COST)::varchar, '0'::varchar(1)) END AS submitted_cost, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_FEE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_FEE)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.PHARMACY_FEE)::varchar, '0'::varchar(1)) END AS pharmacy_fee, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.TOTAL_AMOUNT_DUE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.TOTAL_AMOUNT_DUE)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.TOTAL_AMOUNT_DUE)::varchar, '0'::varchar(1)) END AS total_amount_due, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.CALC_AWP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.CALC_AWP)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.CALC_AWP)::varchar, '0'::varchar(1)) END AS calc_awp, TFC_ASI_COPAY_DETAIL_WKLY.OCC_PAYMENT_TYPE AS occ_payment_type, CASE mod(TFC_ASI_COPAY_DETAIL_WKLY.NEW_REFILL, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_COPAY_DETAIL_WKLY.NEW_REFILL)::int)::varchar ELSE rtrim((TFC_ASI_COPAY_DETAIL_WKLY.NEW_REFILL)::varchar, '0'::varchar(1)) END AS new_refill FROM WSMP_ADMIN.TFC_ASI_COPAY_DETAIL_WKLY WHERE ((TFC_ASI_COPAY_DETAIL_WKLY.BRAND_NAME = ANY (ARRAY['NUVIGIL'::varchar(7), 'FENTORA'::varchar(7), 'AMRIX'::varchar(5), 'ADIPEX-P'::varchar(8), 'TEV-TROPIN'::varchar(10), 'AZILECT'::varchar(7), 'QUARTETTE'::varchar(9)])) AND (TFC_ASI_COPAY_DETAIL_WKLY.FILL_DATE < (statement_timestamp())::timestamp) AND (TFC_ASI_COPAY_DETAIL_WKLY.HCP_DATE_WRITTEN < (statement_timestamp())::timestamp) AND (months_between((statement_timestamp())::timestamp, TFC_ASI_COPAY_DETAIL_WKLY.FILL_DATE) <= 25::float)) UNION ALL SELECT coalesce(TFC_ASI_REDEMPTION_DETAIL_WKLY.VEEVA_ACCOUNT_ID, TFC_ASI_REDEMPTION_DETAIL_WKLY.IMS_ID) AS veeva_account_id, TFC_ASI_REDEMPTION_DETAIL_WKLY.IMS_ID AS ims_id, TFC_ASI_REDEMPTION_DETAIL_WKLY.REDEMPTION_TYPE AS redemption_type, to_char(TFC_ASI_REDEMPTION_DETAIL_WKLY.FILL_DATE, 'YYYY-MM-DD'::varchar(10)) AS fill_date, to_char(TFC_ASI_REDEMPTION_DETAIL_WKLY.HCP_DATE_WRITTEN, 'YYYY-MM-DD'::varchar(10)) AS hcp_date_written, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.DAYS_SUPPLY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.DAYS_SUPPLY)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.DAYS_SUPPLY)::varchar, '0'::varchar(1)) END AS days_supply, TFC_ASI_REDEMPTION_DETAIL_WKLY.NDC_CODE AS ndc_code, TFC_ASI_REDEMPTION_DETAIL_WKLY.PRODUCT_NAME AS brand_name, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.QTY)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.QTY)::varchar, '0'::varchar(1)) END AS qty, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.REFILLS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.REFILLS)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.REFILLS)::varchar, '0'::varchar(1)) END AS refills, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROGRAM_NUM AS program_num, TFC_ASI_REDEMPTION_DETAIL_WKLY.VOUCHER_NUM AS copay_voucher_num, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_CHAIN_NUM AS pharmacy_chain_num, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_CHAIN AS pharmacy_chain, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_NAME AS pharmacy_name, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_ADDRESS AS pharmacy_address, NULL AS pharmacy_address2, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_CITY AS pharmacy_city, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_STATE AS pharmacy_state, TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_ZIP AS pharmacy_zip, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_NPI_NUM, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_NPI_NUM)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_NPI_NUM)::varchar, '0'::varchar(1)) END AS pharmacy_npi_num, NULL AS ceph_id, TFC_ASI_REDEMPTION_DETAIL_WKLY.ME_NUM AS me_num, TFC_ASI_REDEMPTION_DETAIL_WKLY.DEA_NUM AS dea_num, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.NPI, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.NPI)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.NPI)::varchar, '0'::varchar(1)) END AS npi, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROVIDER_NAME AS provider_name, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROVIDER_ADDRESS AS provider_address, NULL AS physician_address2, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROVIDER_CITY AS provider_city, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROVIDER_STATE AS provider_state, TFC_ASI_REDEMPTION_DETAIL_WKLY.PROVIDER_ZIP AS provider_zip, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.REBATE_AMOUNT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.REBATE_AMOUNT)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.REBATE_AMOUNT)::varchar, '0'::varchar(1)) END AS rebate_amount, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.MEMBER_CASH_EXPENSE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.MEMBER_CASH_EXPENSE)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.MEMBER_CASH_EXPENSE)::varchar, '0'::varchar(1)) END AS member_cash_expense, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.SUBMITTED_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.SUBMITTED_COST)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.SUBMITTED_COST)::varchar, '0'::varchar(1)) END AS submitted_cost, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_FEE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_FEE)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.PHARMACY_FEE)::varchar, '0'::varchar(1)) END AS pharmacy_fee, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.TOTAL_AMOUNT_DUE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.TOTAL_AMOUNT_DUE)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.TOTAL_AMOUNT_DUE)::varchar, '0'::varchar(1)) END AS total_amount_due, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.CALC_AWP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.CALC_AWP)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.CALC_AWP)::varchar, '0'::varchar(1)) END AS calc_awp, NULL AS occ_payment_type, CASE mod(TFC_ASI_REDEMPTION_DETAIL_WKLY.NEW_REFILL, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((TFC_ASI_REDEMPTION_DETAIL_WKLY.NEW_REFILL)::int)::varchar ELSE rtrim((TFC_ASI_REDEMPTION_DETAIL_WKLY.NEW_REFILL)::varchar, '0'::varchar(1)) END AS new_refill FROM WSMP_ADMIN.TFC_ASI_REDEMPTION_DETAIL_WKLY WHERE ((TFC_ASI_REDEMPTION_DETAIL_WKLY.PRODUCT_NAME = ANY (ARRAY['NUVIGIL'::varchar(7), 'FENTORA'::varchar(7), 'AMRIX'::varchar(5), 'ADIPEX-P'::varchar(8), 'TEV-TROPIN'::varchar(10), 'AZILECT'::varchar(7), 'QUARTETTE'::varchar(9)])) AND (TFC_ASI_REDEMPTION_DETAIL_WKLY.FILL_DATE < (statement_timestamp())::timestamp) AND (TFC_ASI_REDEMPTION_DETAIL_WKLY.HCP_DATE_WRITTEN < (statement_timestamp())::timestamp) AND (months_between((statement_timestamp())::timestamp, TFC_ASI_REDEMPTION_DETAIL_WKLY.FILL_DATE) <= 25::float));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rxnormalizationControl2014 AS
SELECT p.IMS_CLIENT_NUM_W AS ClientNo, p.IMS_REPORT_NUM_W_CNT AS RxReportNo, lpad(p.IMS_PRODUCT_GROUP_NUM, 9, '0'::varchar(1)) AS ProductGroupNo, p.IMS_REPORT_NUM_W_QTY AS CorrespondingUnitsReportNo, p.PRODUCT_NAME AS ProductGroupName, CASE mod(nf.DIVISOR, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((nf.DIVISOR)::int)::varchar ELSE rtrim((nf.DIVISOR)::varchar, '0'::varchar(1)) END AS Divisor, CASE mod(nf.MULTIPLIER, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((nf.MULTIPLIER)::int)::varchar ELSE rtrim((nf.MULTIPLIER)::varchar, '0'::varchar(1)) END AS Multiplier FROM (WSMP_ADMIN.DRM45_PRODUCT_2014 p JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_SP_Programs AS
SELECT p.EVENT_NUMBER, p.PARENT_EVENT_NUMBER, p.EVENT_NAME, p.EVENT_STATUS_CODE, p.EVENT_STATUS_DESCRIPTION, to_char(p.EVENT_STATUS_CHANGE_DATE, 'YYYY-MM-DD'::varchar(10)) AS EVENT_STATUS_CHANGE_DATE, to_char(p.EVENT_START_DATE, 'YYYY-MM-DD'::varchar(10)) AS EVENT_START_DATE, to_char(p.EVENT_END_DATE, 'YYYY-MM-DD'::varchar(10)) AS EVENT_END_DATE, p.EVENT_TIME_ZONE, p.FUNDING_SOURCE, p.EVENT_TYPE, p.EVENT_TYPE_DESCRIPTION, p.EVENT_FORMAT, p.EVENT_LOCATION, to_char(p.PENDING_MGMNT_APPROVAL_DATE, 'YYYY-MM-DD'::varchar(10)) AS PENDING_MGMNT_APPROVAL_DATE, to_char(p.EVENT_APPROVAL_DATE, 'YYYY-MM-DD'::varchar(10)) AS EVENT_APPROVAL_DATE, p.EVENT_APPROVER_ID, to_char(p.EVENT_SCHEDULE_DATE, 'YYYY-MM-DD'::varchar(10)) AS EVENT_SCHEDULE_DATE, to_char(p.ATTENDEE_CLOSEOUT_DATE, 'YYYY-MM-DD'::varchar(10)) AS ATTENDEE_CLOSEOUT_DATE, to_char(p.FINANCIAL_CLOSEOUT_DATE, 'YYYY-MM-DD'::varchar(10)) AS FINANCIAL_CLOSEOUT_DATE, to_char(p.CANCELLATION_DATE, 'YYYY-MM-DD'::varchar(10)) AS CANCELLATION_DATE, p.CANCELLATION_REASON, p.CANCELLATION_SOURCE, p.EVENT_VENUE_MIN_CNT_REQ_IND, p.EVENT_VENUE_MIN_COUNT, p.ESTIMATED_ATTENDANCE, p.VENUE_ID, p.VENUE_FULL_NAME, p.VENUE_ADDRESS_LINE_1, p.VENUE_ADDRESS_LINE_2, p.VENUE_ADDRESS_LINE_3, p.VENUE_ADDRESS_LINE_4, p.VENUE_CITY, p.VENUE_STATE_PROVINCE, p.VENUE_POSTAL_CODE, p.VENUE_POSTAL_EXTENDED_CODE, p.VENUE_COUNTRY_CODE, p.VENUE_CONTACT, p.VENUE_PHONE, p.VENUE_FAX, p.VENUE_EMAIL, p.TRADE_SECRET_INDICATOR, p.TRADE_SECRET_REASON, p.CUSTOM_FIELD_1, p.CUSTOM_FIELD_2, p.CUSTOM_FIELD_3, p.CUSTOM_FIELD_4, p.CUSTOM_FIELD_5, p.REC_STAT_CD, e.PAYMENT_ID AS payment_id, e.EXPENSE_CATEGORY AS expense_category, CASE mod(e.AMOUNT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((e.AMOUNT)::int)::varchar ELSE rtrim((e.AMOUNT)::varchar, '0'::varchar(1)) END AS amount FROM (WSMP_ADMIN.STG_AHM_EVENT p LEFT JOIN WSMP_ADMIN.STG_AHM_EVENT_EXPENSE e ON ((e.EVENT_NUMBER = p.EVENT_NUMBER)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_caremark_external_match AS
SELECT foo2.caremark_md_id AS source_key, 'CAREMARK'::varchar(8) AS source_name, 'CAREMARK'::varchar(8) AS file_name, btrim(((foo2.first_name || ' '::varchar(1)) || foo2.last_name)) AS person_name, NULL AS organization_name, 99 AS ex_sub_type, 1 AS ex_hce_type, NULL AS ex_communication_type, NULL AS ex_alt_id_value, NULL AS ex_alt_id, NULL AS ex_communication_value, foo2.state AS ex_state, foo2.zip AS ex_zip, NULL AS ex_alt_id_state, foo2.city AS ex_city, NULL AS ex_suffix, btrim(((coalesce(foo2.first_name, ''::varchar) || ' '::varchar(1)) || coalesce(foo2.last_name, ''::varchar))) AS ex_person_name, NULL AS ex_organization_name, foo2.address1 AS address_part1, foo2.address1 AS ex_address_line1, foo2.address2 AS ex_address_line2, btrim(((coalesce(foo2.address1, ''::varchar) || ' '::varchar(1)) || coalesce(foo2.address2, ''::varchar))) AS ex_address FROM (SELECT foo1.CAREMARK_MD_ID AS caremark_md_id, foo1.LAST_NAME AS last_name, foo1.FIRST_NAME AS first_name, foo1.NPI AS npi, CASE WHEN ((foo1.ADDRESS1 IS NULL) AND (foo1.ADDRESS2 IS NOT NULL)) THEN foo1.ADDRESS2 WHEN ((foo1.ADDRESS1 ~~ 'STE %'::varchar(5)) AND (foo1.ADDRESS2 IS NOT NULL)) THEN foo1.ADDRESS2 ELSE foo1.ADDRESS1 END AS address1, CASE WHEN ((foo1.ADDRESS1 IS NULL) AND (foo1.ADDRESS2 IS NOT NULL)) THEN NULL WHEN ((foo1.ADDRESS1 ~~ 'STE %'::varchar(5)) AND (foo1.ADDRESS2 IS NOT NULL)) THEN foo1.ADDRESS1 ELSE foo1.ADDRESS2 END AS address2, foo1.CITY AS city, foo1.STATE AS state, foo1.ZIP AS zip, foo1.oldest_ship_date, foo1.SHIP_DATE AS current_ship_date, foo1.how_many_rows FROM (SELECT c.CAREMARK_MD_ID, c.LAST_NAME, c.FIRST_NAME, c.NPI, c.ADDRESS1, c.ADDRESS2, c.CITY, c.STATE, c.ZIP, c.PRODUCT_NDC, c.SHIP_DATE, c.QTY, c.IMS_ID, c.IMS_ID_VIA, c.LAST_BUILD_DATE, c.PRODUCT_CODE, c.TRX_CNT, c.IMS_PRODUCT_GROUP_NUM, row_number() OVER (PARTITION BY c.CAREMARK_MD_ID ORDER BY c.SHIP_DATE DESC) AS rnk, count(1) OVER (PARTITION BY c.CAREMARK_MD_ID) AS how_many_rows, min(c.SHIP_DATE) OVER (PARTITION BY c.CAREMARK_MD_ID) AS oldest_ship_date FROM WSMP_ADMIN.STG_CAREMARK_RX c WHERE ((c.IMS_ID IS NULL) AND (c.LAST_NAME <> 'UNAVAILABLE'::varchar(11)) AND ((c.ADDRESS1 IS NOT NULL) OR (c.ADDRESS2 IS NOT NULL)))) foo1 WHERE (foo1.rnk = 1)) foo2 ORDER BY foo2.caremark_md_id;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ftf_ims_monthly_market_obm AS
SELECT substr(rx.payer_plan_num, 1, 6) AS "PLAN ID", rx.plan_name AS "PLAN NAME", substr(rx.payer_plan_num, ((length(rx.payer_plan_num) - 4) + 1), 4) AS "PAYER ID", rx.payer_name AS "PAYER NAME", rx.market_name AS "MARKET NAME", rx.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx WHERE (rx.market_name = ANY (ARRAY['ANTI-PARKINSON'::varchar(14), 'BDP NASAL'::varchar(9), 'ICS'::varchar(3), 'MULTIPLE SCLEROSIS'::varchar(18), 'SABA'::varchar(4), 'WAKE'::varchar(4)])) GROUP BY rx.payer_plan_num, rx.plan_name, rx.payer_name, rx.market_name, rx.product_name, rx.zip, rx.month_ending;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_anda_sales AS
SELECT clozapine_sales.transaction_id AS TRANSACTION_ID, to_char(clozapine_sales.invoice_date, 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, clozapine_sales.product_brand AS PRODUCT_BRAND, clozapine_sales.product_ndc AS PRODUCT_NDC, clozapine_sales.product_desc AS PRODUCT_DESC, clozapine_sales.invoice_qty AS INVOICE_QTY, clozapine_sales.invoice_units AS INVOICE_UNITS, clozapine_sales.invoice_cost AS INVOICE_COST, clozapine_sales.invoice_pack_cost AS INVOICE_PACK_COST, clozapine_sales.invoice_unit_cost AS INVOICE_UNIT_COST, clozapine_sales.contract_pack_cost AS CONTRACT_PACK_COST, clozapine_sales.contract_purchases AS CONTRACT_PURCHASES, clozapine_sales.contract_number AS CONTRACT_NUMBER, clozapine_sales.dispensing_location AS DISPENSING_LOCATION, clozapine_sales.dl_address_1 AS DL_ADDRESS_1, clozapine_sales.dl_address_2 AS DL_ADDRESS_2, clozapine_sales.dl_city AS DL_CITY, clozapine_sales.dl_state AS DL_STATE, clozapine_sales.dl_zip AS DL_ZIP, clozapine_sales.dl_dea_number AS DL_DEA_NUMBER, clozapine_sales.depot_location AS DEPOT_LOCATION, clozapine_sales.dep_address_1 AS DEP_ADDRESS_1, clozapine_sales.dep_address_2 AS DEP_ADDRESS_2, clozapine_sales.dep_city AS DEP_CITY, clozapine_sales.dep_state AS DEP_STATE, clozapine_sales.dep_zip AS DEP_ZIP, clozapine_sales.dep_dea_number AS DEP_DEA_NUMBER, clozapine_sales.unit_ap AS UNIT_AP, clozapine_sales.ap AS AP FROM datamart.clozapine_sales WHERE (clozapine_sales.data_source = 'Anda'::varchar(4));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_AHM_Sales_Roster AS
SELECT AHM_SALE_FORCE_ROSTER.EMPLOYEE_ID AS employee_id, AHM_SALE_FORCE_ROSTER.USERNAME AS username, CASE AHM_SALE_FORCE_ROSTER.LAST_NAME WHEN NULLSEQUAL 'Vacant'::varchar(6) THEN NULL ELSE AHM_SALE_FORCE_ROSTER.LAST_NAME END AS last_name, CASE AHM_SALE_FORCE_ROSTER.FIRST_NAME WHEN NULLSEQUAL 'Vacant'::varchar(6) THEN NULL ELSE AHM_SALE_FORCE_ROSTER.FIRST_NAME END AS first_name, AHM_SALE_FORCE_ROSTER.MIDDLE_NAME AS middle_name, AHM_SALE_FORCE_ROSTER.SALUTATION AS salutation, AHM_SALE_FORCE_ROSTER.SUFFIX AS suffix, AHM_SALE_FORCE_ROSTER.TITLE AS title, AHM_SALE_FORCE_ROSTER.TERRITORY AS territory, AHM_SALE_FORCE_ROSTER.TERRITORY_NAME AS territory_name, CASE WHEN (substr(AHM_SALE_FORCE_ROSTER.MANAGER_TERRITORY, 3, 4) = 'ZZZZ'::varchar(4)) THEN NULL WHEN (AHM_SALE_FORCE_ROSTER.MANAGER_TERRITORY = 'TOFRMZ00'::varchar(8)) THEN NULL WHEN (AHM_SALE_FORCE_ROSTER.MANAGER_TERRITORY = 'TOSCGZ00'::varchar(8)) THEN NULL ELSE AHM_SALE_FORCE_ROSTER.MANAGER_TERRITORY END AS manager_territory, AHM_SALE_FORCE_ROSTER.TEAM AS team, AHM_SALE_FORCE_ROSTER.BUSINESS_LINE_1_ADDR AS business_line_1_addr, AHM_SALE_FORCE_ROSTER.BUSINESS_LINE_2_ADDR AS business_line_2_addr, AHM_SALE_FORCE_ROSTER.BUSINESS_LINE_3_ADDR AS business_line_3_addr, AHM_SALE_FORCE_ROSTER.BUSINESS_CITY AS business_city, AHM_SALE_FORCE_ROSTER.BUSINESS_STATE AS business_state, AHM_SALE_FORCE_ROSTER.BUSINESS_POSTAL_CODE AS business_postal_code, AHM_SALE_FORCE_ROSTER.BUSINESS_COUNTRY_CODE AS business_country_code, AHM_SALE_FORCE_ROSTER.HOME_LINE_1_ADDR AS home_line_1_addr, AHM_SALE_FORCE_ROSTER.HOME_LINE_2_ADDR AS home_line_2_addr, AHM_SALE_FORCE_ROSTER.HOME_LINE_3_ADDR AS home_line_3_addr, AHM_SALE_FORCE_ROSTER.HOME_CITY AS home_city, AHM_SALE_FORCE_ROSTER.HOME_STATE AS home_state, AHM_SALE_FORCE_ROSTER.HOME_POSTAL_CODE AS home_postal_code, AHM_SALE_FORCE_ROSTER.HOME_COUNTRY_CODE AS home_country_code, AHM_SALE_FORCE_ROSTER.CORRESPONDENCE_ADDRESS AS correspondence_address, AHM_SALE_FORCE_ROSTER.BUSINESS_PHONE AS business_phone, AHM_SALE_FORCE_ROSTER.BUSINESS_PHONE_EXTENSION AS business_phone_extension, AHM_SALE_FORCE_ROSTER.BUSINESS_FAX AS business_fax, AHM_SALE_FORCE_ROSTER.VOICE_MAIL AS voice_mail, AHM_SALE_FORCE_ROSTER.MOBILE_PHONE AS mobile_phone, AHM_SALE_FORCE_ROSTER.HOME_PHONE AS home_phone, AHM_SALE_FORCE_ROSTER.HOME_FAX AS home_fax, AHM_SALE_FORCE_ROSTER.CORRESPONDENCE_PHONE AS correspondence_phone, AHM_SALE_FORCE_ROSTER.BUSINESS_EMAIL AS business_email, AHM_SALE_FORCE_ROSTER.HOME_EMAIL AS home_email, AHM_SALE_FORCE_ROSTER.CORRESPONDENCE_EMAIL AS correspondence_email, AHM_SALE_FORCE_ROSTER.COST_CENTER AS cost_center FROM WSMP_ADMIN.AHM_SALE_FORCE_ROSTER WHERE ((AHM_SALE_FORCE_ROSTER.TERRITORY !~~ '%ZZZZ%'::varchar(6)) AND (AHM_SALE_FORCE_ROSTER.TEAM <> ALL (ARRAY['Teva Clin Nurse Educ'::varchar(20), 'Field Medical Affairs'::varchar(21), 'Clinical Nurse Educator'::varchar(23)])));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_survey AS
(((( SELECT y1.account_id,
        y1.bu,
        y1.survey_update_date,
        y1.survey,
        y1.question,
        y1.answer,
        y1.response_update_date,
        y1.response_create_date
 FROM ( SELECT w.account_id,
        w.bu,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date,
        'e-Rx Survey B'::varchar(13) AS survey,
        w.question,
        w.answer,
        w.response_update_date,
        w.response_create_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = 'e-Rx Survey'::varchar(11)) AND (w.order_vod__c = 2::float))) y1 UNION ALL  SELECT repclick.account_id,
        repclick.bu,
        repclick.survey_update_date,
        repclick.survey,
        repclick.question,
        repclick.answer,
        repclick.response_update_date,
        repclick.response_create_date
 FROM ( SELECT w.account_id,
        w.bu,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date,
        w.survey,
        ((w.order_vod__c || '. '::varchar(2)) || w.question) AS question,
        w.answer,
        w.response_update_date,
        w.response_create_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = 'Respiratory - RespiClick Readiness'::varchar(34)))) repclick) UNION ALL  SELECT a.account_id,
        a.bu,
        a.survey_update_date,
        a.survey,
        a.question,
        a.answer,
        a.response_update_date,
        a.response_create_date
 FROM ( SELECT yr.account_id,
        yr.bu,
        yr.survey_update_date,
        yr.survey,
        '*Future Scheduled Adasuve Formulary Review Date'::varchar(47) AS question,
        ((((coalesce(yr.answer, '    '::varchar(4)) || '-'::varchar(1)) || CASE substr(mth.answer, 1, 3) WHEN NULLSEQUAL 'Jan'::varchar(3) THEN '01'::varchar(2) WHEN NULLSEQUAL 'Feb'::varchar(3) THEN '02'::varchar(2) WHEN NULLSEQUAL 'Mar'::varchar(3) THEN '03'::varchar(2) WHEN NULLSEQUAL 'Apr'::varchar(3) THEN '04'::varchar(2) WHEN NULLSEQUAL 'May'::varchar(3) THEN '05'::varchar(2) WHEN NULLSEQUAL 'Jun'::varchar(3) THEN '06'::varchar(2) WHEN NULLSEQUAL 'Jul'::varchar(3) THEN '07'::varchar(2) WHEN NULLSEQUAL 'Aug'::varchar(3) THEN '08'::varchar(2) WHEN NULLSEQUAL 'Sep'::varchar(3) THEN '09'::varchar(2) WHEN NULLSEQUAL 'Oct'::varchar(3) THEN '10'::varchar(2) WHEN NULLSEQUAL 'Nov'::varchar(3) THEN '11'::varchar(2) WHEN NULLSEQUAL 'Dec'::varchar(3) THEN '12'::varchar(2) ELSE '  '::varchar(2) END) || '-'::varchar(1)) || coalesce(lpad(dy.answer, 2, '0'::varchar(1)), '  '::varchar(2))) AS answer,
        yr.response_update_date,
        yr.response_create_date
 FROM ((( SELECT x.account_id,
        x.bu,
        x.survey,
        x.question,
        x.answer,
        x.response_create_date,
        x.response_update_date,
        x.answer_type,
        x.survey_target_vod__c,
        x.rnk,
        x.nm,
        x.order_vod__c,
        x.survey_update_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question = '*Future Scheduled Adasuve Formulary Review Year'::varchar(47))) yr JOIN ( SELECT x.account_id,
        x.bu,
        x.survey,
        x.question,
        x.answer,
        x.response_create_date,
        x.response_update_date,
        x.answer_type,
        x.survey_target_vod__c,
        x.rnk,
        x.nm,
        x.order_vod__c,
        x.survey_update_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question ~~ '*Future Scheduled Adasuve % Review Month'::varchar(40))) mth ON ((yr.survey_target_vod__c = mth.survey_target_vod__c))) JOIN ( SELECT x.account_id,
        x.bu,
        x.survey,
        x.question,
        x.answer,
        x.response_create_date,
        x.response_update_date,
        x.answer_type,
        x.survey_target_vod__c,
        x.rnk,
        x.nm,
        x.order_vod__c,
        x.survey_update_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question = '*Future Scheduled Adasuve Formulary Review Date'::varchar(47))) dy ON ((yr.survey_target_vod__c = dy.survey_target_vod__c)))) a) UNION ALL  SELECT b.account_id,
        b.bu,
        b.survey_update_date,
        b.survey,
        b.question,
        b.answer,
        b.response_update_date,
        b.response_create_date
 FROM ( SELECT yr.account_id,
        yr.bu,
        yr.survey_update_date,
        yr.survey,
        '*Prior Adasuve Formulary Review Date'::varchar(36) AS question,
        ((coalesce(yr.answer, '    '::varchar(4)) || '-'::varchar(1)) || CASE substr(mth.answer, 1, 3) WHEN NULLSEQUAL 'Jan'::varchar(3) THEN '01'::varchar(2) WHEN NULLSEQUAL 'Feb'::varchar(3) THEN '02'::varchar(2) WHEN NULLSEQUAL 'Mar'::varchar(3) THEN '03'::varchar(2) WHEN NULLSEQUAL 'Apr'::varchar(3) THEN '04'::varchar(2) WHEN NULLSEQUAL 'May'::varchar(3) THEN '05'::varchar(2) WHEN NULLSEQUAL 'Jun'::varchar(3) THEN '06'::varchar(2) WHEN NULLSEQUAL 'Jul'::varchar(3) THEN '07'::varchar(2) WHEN NULLSEQUAL 'Aug'::varchar(3) THEN '08'::varchar(2) WHEN NULLSEQUAL 'Sep'::varchar(3) THEN '09'::varchar(2) WHEN NULLSEQUAL 'Oct'::varchar(3) THEN '10'::varchar(2) WHEN NULLSEQUAL 'Nov'::varchar(3) THEN '11'::varchar(2) WHEN NULLSEQUAL 'Dec'::varchar(3) THEN '12'::varchar(2) ELSE '  '::varchar(2) END) AS answer,
        yr.response_update_date,
        yr.response_create_date
 FROM (( SELECT x.account_id,
        x.bu,
        x.survey,
        x.question,
        x.answer,
        x.response_create_date,
        x.response_update_date,
        x.answer_type,
        x.survey_target_vod__c,
        x.rnk,
        x.nm,
        x.order_vod__c,
        x.survey_update_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question = '*Prior Adasuve Formulary Review Year'::varchar(36))) yr JOIN ( SELECT x.account_id,
        x.bu,
        x.survey,
        x.question,
        x.answer,
        x.response_create_date,
        x.response_update_date,
        x.answer_type,
        x.survey_target_vod__c,
        x.rnk,
        x.nm,
        x.order_vod__c,
        x.survey_update_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question ~~ '*Prior Adasuve % Review Month'::varchar(29))) mth ON ((yr.survey_target_vod__c = mth.survey_target_vod__c)))) b) UNION ALL  SELECT c.account_id,
        c.bu,
        c.survey_update_date,
        c.survey,
        c.question,
        c.answer,
        c.response_update_date,
        c.response_create_date
 FROM ( SELECT x.account_id,
        x.bu,
        x.survey_update_date,
        x.survey,
        x.question,
        x.answer,
        x.response_update_date,
        x.response_create_date
 FROM ( SELECT w.account_id,
        w.bu,
        w.survey,
        w.question,
        w.answer,
        w.response_create_date,
        w.response_update_date,
        w.answer_type,
        w.survey_target_vod__c,
        w.rnk,
        w.nm,
        w.order_vod__c,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x
 WHERE (x.question !~~ '%Adasuve%Review%'::varchar(16))) c) UNION ALL  SELECT y.account_id,
        y.bu,
        y.survey_update_date,
        y.survey,
        y.question,
        y.answer,
        y.response_update_date,
        y.response_create_date
 FROM ( SELECT w.account_id,
        w.bu,
        max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date,
        w.survey,
        w.question,
        w.answer,
        w.response_update_date,
        w.response_create_date
 FROM ( SELECT st.ACCOUNT_VOD__C AS account_id,
        substr(s.TERRITORY_VOD__C, 1, 2) AS bu,
        coalesce(b.SURVEY_NAME, s.NAME) AS survey,
        coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question,
        CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer,
        to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date,
        to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date,
        ty.NAME AS answer_type,
        st.ID AS survey_target_vod__c,
        row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk,
        s.NAME AS nm,
        CASE sq.ORDER_VOD__C WHEN NULLSEQUAL 0::numeric(1,0) THEN '1'::varchar(1) WHEN NULLSEQUAL 1::numeric(1,0) THEN '2'::varchar(1) WHEN NULLSEQUAL 2::numeric(1,0) THEN '3'::varchar(1) ELSE NULL END AS order_vod__c
 FROM ((((((WSMP_ADMIN_ORA.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN_ORA.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN_ORA.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN_ORA.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT  JOIN WSMP_ADMIN_ORA.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w
 WHERE ((w.rnk = 1) AND (w.nm = 'e-Rx Survey'::varchar(11)))) y;

CREATE  VIEW WSMP_ADMIN_ORA.v_do_not_promote AS
SELECT iq2.ims_id, iq2.last_name, iq2.first_name, iq2.mid_name, iq2.suffix FROM (SELECT iq1.ims_id, iq1.last_name, iq1.first_name, iq1.mid_name, iq1.suffix, row_number() OVER (PARTITION BY iq1.ims_id ORDER BY iq1.u_rnk) AS rnk FROM (SELECT dim_debarred.IMS_ID AS ims_id, dim_debarred.LAST_NAME AS last_name, dim_debarred.FIRST_NAME AS first_name, dim_debarred.MID_NAME AS mid_name, dim_debarred.SUFFIX AS suffix, 2 AS u_rnk FROM teva_archive.DIM_DEBARRED WHERE (dim_debarred.IMS_ID IS NOT NULL) UNION SELECT debarred.IMS_ID AS ims_id, debarred.LAST_NAME AS last_name, debarred.FIRST_NAME AS first_name, debarred.MIDDLE_NAME AS middle_name, debarred.SUFFIX AS suffix, 1 AS u_rnk FROM WSMP_ADMIN.DEBARRED WHERE ((debarred.IMS_ID IS NOT NULL) AND (debarred.CURRENT_IND = 'Y'::varchar(1)))) iq1) iq2 WHERE (iq2.rnk = 1);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_zs_tr_demo_obw AS
SELECT acct.ID AS veeva_account_id, acct.ID_VOD__C AS ims_id, g.DEVELOPERNAME AS territory_num, acct.FIRSTNAME AS first_name, acct.LASTNAME AS last_name, addr.NAME AS address1, addr.ADDRESS_LINE_2_VOD__C AS address2, addr.CITY_VOD__C AS city, addr.STATE_VOD__C AS state, addr.ZIP_VOD__C AS zip, cg.call_goal, cg.committed_p1, cg.committed_p2, cg.committed_p3 FROM ((((((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acct.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acct.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_TSF_VOD__C tsf ON (((tsf.ACCOUNT_VOD__C = acct.ID) AND (tsf.TERRITORY_VOD__C = g.DEVELOPERNAME)))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acct.ID) AND (tsf.ADDRESS_VOD__C = addr.ID)))) LEFT JOIN (SELECT cg.ACCOUNT_TVA__C AS account_tva__c, cg.TERRITORY_TVA__C AS territory_tva__c, sum(CASE WHEN (cg.PRIORITY_TVA__C = 1::numeric(18,0)) THEN cg.GOAL_TVA__C ELSE 0::numeric(18,0) END) AS call_goal, min(CASE WHEN (cg.PRIORITY_TVA__C = 1::numeric(18,0)) THEN p.NAME ELSE NULL END) AS committed_p1, min(CASE WHEN (cg.PRIORITY_TVA__C = 2::numeric(18,0)) THEN p.NAME ELSE NULL END) AS committed_p2, min(CASE WHEN (cg.PRIORITY_TVA__C = 3::numeric(18,0)) THEN p.NAME ELSE NULL END) AS committed_p3 FROM (WSMP_ADMIN.VV_CALL_GOAL_TVA__C cg JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((cg.PRODUCT_CATALOG_TVA__C = p.ID))) WHERE (cg.TERRITORY_TVA__C ~~ 'TR%'::varchar(3)) GROUP BY cg.ACCOUNT_TVA__C, cg.TERRITORY_TVA__C) cg ON (((cg.account_tva__c = acct.ID) AND (cg.territory_tva__c = g.DEVELOPERNAME)))) WHERE ((g.DEVELOPERNAME ~~ 'TR%'::varchar(3)) AND (acct.ISPERSONACCOUNT = 'true'::varchar(4)) AND (acct.ID IN (SELECT dw_call.VEEVA_ACCOUNT_ID AS veeva_account_id FROM WSMP_ADMIN.DW_CALL WHERE (dw_call.CALL_DATE > ((trunc(((statement_timestamp())::timestamp + 1::float), 'd'::varchar(1)) + (-2)::float) + (-42)::float)))));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_survey_backup AS
((SELECT a.account_id, a.bu, a.survey_update_date, a.survey, a.question, a.answer, a.response_update_date, a.response_create_date FROM (SELECT yr.account_id, yr.bu, yr.survey_update_date, yr.survey, '*Future Scheduled Adasuve Formulary Review Date'::varchar(47) AS question, ((((coalesce(yr.answer, '    '::varchar(4)) || '-'::varchar(1)) || CASE substr(mth.answer, 1, 3) WHEN NULLSEQUAL 'Jan'::varchar(3) THEN '01'::varchar(2) WHEN NULLSEQUAL 'Feb'::varchar(3) THEN '02'::varchar(2) WHEN NULLSEQUAL 'Mar'::varchar(3) THEN '03'::varchar(2) WHEN NULLSEQUAL 'Apr'::varchar(3) THEN '04'::varchar(2) WHEN NULLSEQUAL 'May'::varchar(3) THEN '05'::varchar(2) WHEN NULLSEQUAL 'Jun'::varchar(3) THEN '06'::varchar(2) WHEN NULLSEQUAL 'Jul'::varchar(3) THEN '07'::varchar(2) WHEN NULLSEQUAL 'Aug'::varchar(3) THEN '08'::varchar(2) WHEN NULLSEQUAL 'Sep'::varchar(3) THEN '09'::varchar(2) WHEN NULLSEQUAL 'Oct'::varchar(3) THEN '10'::varchar(2) WHEN NULLSEQUAL 'Nov'::varchar(3) THEN '11'::varchar(2) WHEN NULLSEQUAL 'Dec'::varchar(3) THEN '12'::varchar(2) ELSE '  '::varchar(2) END) || '-'::varchar(1)) || coalesce(lpad(dy.answer, 2, '0'::varchar(1)), '  '::varchar(2))) AS answer, yr.response_update_date, yr.response_create_date FROM (((SELECT x.account_id, x.bu, x.survey, x.question, x.answer, x.response_create_date, x.response_update_date, x.answer_type, x.survey_target_vod__c, x.rnk, x.nm, x.survey_update_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question = '*Future Scheduled Adasuve Formulary Review Year'::varchar(47))) yr JOIN (SELECT x.account_id, x.bu, x.survey, x.question, x.answer, x.response_create_date, x.response_update_date, x.answer_type, x.survey_target_vod__c, x.rnk, x.nm, x.survey_update_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question ~~ '*Future Scheduled Adasuve % Review Month'::varchar(40))) mth ON ((yr.survey_target_vod__c = mth.survey_target_vod__c))) JOIN (SELECT x.account_id, x.bu, x.survey, x.question, x.answer, x.response_create_date, x.response_update_date, x.answer_type, x.survey_target_vod__c, x.rnk, x.nm, x.survey_update_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question = '*Future Scheduled Adasuve Formulary Review Date'::varchar(47))) dy ON ((yr.survey_target_vod__c = dy.survey_target_vod__c)))) a UNION ALL SELECT b.account_id, b.bu, b.survey_update_date, b.survey, b.question, b.answer, b.response_update_date, b.response_create_date FROM (SELECT yr.account_id, yr.bu, yr.survey_update_date, yr.survey, '*Prior Adasuve Formulary Review Date'::varchar(36) AS question, ((coalesce(yr.answer, '    '::varchar(4)) || '-'::varchar(1)) || CASE substr(mth.answer, 1, 3) WHEN NULLSEQUAL 'Jan'::varchar(3) THEN '01'::varchar(2) WHEN NULLSEQUAL 'Feb'::varchar(3) THEN '02'::varchar(2) WHEN NULLSEQUAL 'Mar'::varchar(3) THEN '03'::varchar(2) WHEN NULLSEQUAL 'Apr'::varchar(3) THEN '04'::varchar(2) WHEN NULLSEQUAL 'May'::varchar(3) THEN '05'::varchar(2) WHEN NULLSEQUAL 'Jun'::varchar(3) THEN '06'::varchar(2) WHEN NULLSEQUAL 'Jul'::varchar(3) THEN '07'::varchar(2) WHEN NULLSEQUAL 'Aug'::varchar(3) THEN '08'::varchar(2) WHEN NULLSEQUAL 'Sep'::varchar(3) THEN '09'::varchar(2) WHEN NULLSEQUAL 'Oct'::varchar(3) THEN '10'::varchar(2) WHEN NULLSEQUAL 'Nov'::varchar(3) THEN '11'::varchar(2) WHEN NULLSEQUAL 'Dec'::varchar(3) THEN '12'::varchar(2) ELSE '  '::varchar(2) END) AS answer, yr.response_update_date, yr.response_create_date FROM ((SELECT x.account_id, x.bu, x.survey, x.question, x.answer, x.response_create_date, x.response_update_date, x.answer_type, x.survey_target_vod__c, x.rnk, x.nm, x.survey_update_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question = '*Prior Adasuve Formulary Review Year'::varchar(36))) yr JOIN (SELECT x.account_id, x.bu, x.survey, x.question, x.answer, x.response_create_date, x.response_update_date, x.answer_type, x.survey_target_vod__c, x.rnk, x.nm, x.survey_update_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question ~~ '*Prior Adasuve % Review Month'::varchar(29))) mth ON ((yr.survey_target_vod__c = mth.survey_target_vod__c)))) b) UNION ALL SELECT c.account_id, c.bu, c.survey_update_date, c.survey, c.question, c.answer, c.response_update_date, c.response_create_date FROM (SELECT x.account_id, x.bu, x.survey_update_date, x.survey, x.question, x.answer, x.response_update_date, x.response_create_date FROM (SELECT w.account_id, w.bu, w.survey, w.question, w.answer, w.response_create_date, w.response_update_date, w.answer_type, w.survey_target_vod__c, w.rnk, w.nm, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])))) x WHERE (x.question !~~ '%Adasuve%Review%'::varchar(16))) c) UNION ALL SELECT y.account_id, y.bu, y.survey_update_date, y.survey, y.question, y.answer, y.response_update_date, y.response_create_date FROM (SELECT w.account_id, w.bu, max(w.response_update_date) OVER (PARTITION BY w.account_id) AS survey_update_date, w.survey, w.question, w.answer, w.response_update_date, w.response_create_date FROM (SELECT st.ACCOUNT_VOD__C AS account_id, substr(s.TERRITORY_VOD__C, 1, 2) AS bu, coalesce(b.SURVEY_NAME, s.NAME) AS survey, coalesce(a.QUESTION_TEXT_VOD__C, sq.TEXT_VOD__C) AS question, CASE ty.NAME WHEN NULLSEQUAL 'Date_vod'::varchar(8) THEN to_char(qr.DATE_VOD__C, 'YYYY-MM-DD'::varchar(10)) WHEN NULLSEQUAL 'Text_vod'::varchar(8) THEN qr.TEXT_VOD__C ELSE qr.RESPONSE_VOD__C END AS answer, to_char(qr.CREATEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_create_date, to_char(qr.LASTMODIFIEDDATE, 'YYYY-MM-DD'::varchar(10)) AS response_update_date, ty.NAME AS answer_type, st.ID AS survey_target_vod__c, row_number() OVER (PARTITION BY st.ACCOUNT_VOD__C, sq.ID ORDER BY qr.LASTMODIFIEDDATE DESC) AS rnk, s.NAME AS nm FROM ((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_QUESTION_VOD__C sq ON ((s.ID = sq.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C st ON ((s.ID = st.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C qr ON (((st.ID = qr.SURVEY_TARGET_VOD__C) AND (sq.ID = qr.SURVEY_QUESTION_VOD__C)))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((qr.TYPE_VOD__C = ty.ID))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_QUESTION_ABBR a ON ((sq.ID = a.SURVEY_QUESTION_VOD__C))) LEFT JOIN WSMP_ADMIN.STG_VV_SURVEY_NAME_ABBR b ON ((s.ID = b.SURVEY_VOD__C)))) w WHERE ((w.rnk = 1) AND (w.nm = 'e-Rx Survey'::varchar(11)))) y;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Amrix_Market AS
SELECT rx.payer_plan_num AS plan_num, rx.product_code, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.dw_presc_plan_rx_m rx WHERE ((rx.product_code = ANY (ARRAY['A00380'::varchar(6), 'A00100'::varchar(6), 'A00330'::varchar(6), 'A00210'::varchar(6), 'A00370'::varchar(6), 'A00220'::varchar(6), 'A00230'::varchar(6), 'A00350'::varchar(6), 'A00360'::varchar(6), 'A00240'::varchar(6), 'A00320'::varchar(6), 'A00250'::varchar(6), 'A00340'::varchar(6), 'A00260'::varchar(6), 'A00270'::varchar(6), 'A00280'::varchar(6), 'A00290'::varchar(6)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY rx.payer_plan_num, rx.product_code;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Azilect_Market AS
SELECT rx.payer_plan_num AS plan_num, rx.product_code, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.dw_presc_plan_rx_m rx WHERE ((rx.product_code = ANY (ARRAY['700105'::varchar(6), '700110'::varchar(6), '700210'::varchar(6), '700220'::varchar(6), '700310'::varchar(6), '700320'::varchar(6), '700410'::varchar(6), '700420'::varchar(6), '700510'::varchar(6), '700520'::varchar(6), '700530'::varchar(6), '700540'::varchar(6), '700550'::varchar(6), '700582'::varchar(6), '700584'::varchar(6), '700586'::varchar(6), '700588'::varchar(6), '700570'::varchar(6)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY rx.payer_plan_num, rx.product_code;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Nuvigil_Market AS
SELECT rx.payer_plan_num AS plan_num, rx.product_code, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.dw_presc_plan_rx_m rx WHERE ((rx.product_code = ANY (ARRAY['100N00'::varchar(6), '100100'::varchar(6), '100120'::varchar(6)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY rx.payer_plan_num, rx.product_code;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rxnormalizationControl2014_backup AS
SELECT p.IMS_CLIENT_NUM_W AS ClientNo, p.IMS_REPORT_NUM_W_CNT AS RxReportNo, lpad(p.IMS_PRODUCT_GROUP_NUM, 9, '0'::varchar(1)) AS ProductGroupNo, p.IMS_REPORT_NUM_W_QTY AS CorrespondingUnitsReportNo, p.PRODUCT_NAME AS ProductGroupName, nf.DIVISOR AS Divisor, nf.MULTIPLIER AS Multiplier FROM (WSMP_ADMIN.DRM45_PRODUCT_2014 p JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_sharepoint_onc AS
SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS title, dim_csf_sales_roster_teva.TERRITORY_NUM AS territory FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (dim_csf_sales_roster_teva.SALES_FORCE_ID = ANY (ARRAY['ONC'::varchar(3), 'TO'::varchar(2)])));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ceph_sales_roster AS
SELECT DIM_CSF_SALES_ROSTER_TEVA.EMAIL AS email, DIM_CSF_SALES_ROSTER_TEVA.FIRST_NAME AS first_name, DIM_CSF_SALES_ROSTER_TEVA.LAST_NAME AS last_name, NULL AS PASSWORD, CASE WHEN (DIM_CSF_SALES_ROSTER_TEVA.REP_TYPE = 'REP'::varchar(3)) THEN 'Sales Representative'::varchar(20) WHEN (DIM_CSF_SALES_ROSTER_TEVA.REP_TYPE = 'AD'::varchar(2)) THEN 'Regional Sales Manager'::varchar(22) WHEN (DIM_CSF_SALES_ROSTER_TEVA.REP_TYPE = 'RM'::varchar(2)) THEN 'Regional Sales Manager'::varchar(22) ELSE NULL END AS rep_desc, DIM_CSF_SALES_ROSTER_TEVA.REP_TYPE AS rep_type FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((DIM_CSF_SALES_ROSTER_TEVA.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TR'::varchar(2), 'TN'::varchar(2)])) AND (DIM_CSF_SALES_ROSTER_TEVA.LAST_NAME <> 'Vacant'::varchar(6)) AND (DIM_CSF_SALES_ROSTER_TEVA.REP_TYPE IS NOT NULL));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_ds_accountsummary AS
SELECT STG_TB_DS_ACCOUNTS.ACCOUNT_ID, STG_TB_DS_ACCOUNTS.LOCATION_ID, STG_TB_DS_ACCOUNTS.ACCOUNT_NAME, STG_TB_DS_ACCOUNTS.ACCOUNT_CLASS, STG_TB_DS_ACCOUNTS.ADDRESS_1, STG_TB_DS_ACCOUNTS.ADDRESS_2, STG_TB_DS_ACCOUNTS.CITY, STG_TB_DS_ACCOUNTS.STATE, STG_TB_DS_ACCOUNTS.ZIP FROM WSMP_ADMIN.STG_TB_DS_ACCOUNTS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Touchpoint_Presentation AS
SELECT STG_TOUCHPOINT_PRESENTATION.CALL_ID, STG_TOUCHPOINT_PRESENTATION.CALL_ATTEMPT_ID, STG_TOUCHPOINT_PRESENTATION.PRESENTATION_ID, STG_TOUCHPOINT_PRESENTATION.PRODUCT, STG_TOUCHPOINT_PRESENTATION."POSITION", STG_TOUCHPOINT_PRESENTATION.ITEM_TYPE, STG_TOUCHPOINT_PRESENTATION.ITEM_DESCRIPTION, STG_TOUCHPOINT_PRESENTATION.QUANTITY FROM WSMP_ADMIN.STG_TOUCHPOINT_PRESENTATION;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Touchpoint_Call AS
SELECT STG_TOUCHPOINT_CALL.CALL_ID, STG_TOUCHPOINT_CALL.CALL_ATTEMPT_ID, STG_TOUCHPOINT_CALL.TOUCHPOINT_ID, STG_TOUCHPOINT_CALL.CLIENT_ID, STG_TOUCHPOINT_CALL.IMS_ID, STG_TOUCHPOINT_CALL.FIRST_NAME, STG_TOUCHPOINT_CALL.LAST_NAME, STG_TOUCHPOINT_CALL.CALL_TYPE, STG_TOUCHPOINT_CALL.CALL_DATE, STG_TOUCHPOINT_CALL.STATUS_CODE, STG_TOUCHPOINT_CALL.STATUS_DESCRIPTION, STG_TOUCHPOINT_CALL.REP_ID, STG_TOUCHPOINT_CALL.REP_FIRST_NAME, STG_TOUCHPOINT_CALL.REP_LAST_NAME FROM WSMP_ADMIN.STG_TOUCHPOINT_CALL;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_anda_sales_backup_2 AS
SELECT STG_ANDA_SALES.TRANSACTION_ID, to_char(STG_ANDA_SALES.INVOICE_DATE, 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, STG_ANDA_SALES.PRODUCT_BRAND, STG_ANDA_SALES.PRODUCT_NDC, STG_ANDA_SALES.PRODUCT_DESC, CASE mod(STG_ANDA_SALES.INVOICE_QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.INVOICE_QTY)::int)::varchar ELSE rtrim((STG_ANDA_SALES.INVOICE_QTY)::varchar, '0'::varchar(1)) END AS INVOICE_QTY, CASE mod(STG_ANDA_SALES.INVOICE_UNITS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.INVOICE_UNITS)::int)::varchar ELSE rtrim((STG_ANDA_SALES.INVOICE_UNITS)::varchar, '0'::varchar(1)) END AS INVOICE_UNITS, CASE mod(STG_ANDA_SALES.INVOICE_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.INVOICE_COST)::int)::varchar ELSE rtrim((STG_ANDA_SALES.INVOICE_COST)::varchar, '0'::varchar(1)) END AS INVOICE_COST, CASE mod(STG_ANDA_SALES.INVOICE_PACK_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.INVOICE_PACK_COST)::int)::varchar ELSE rtrim((STG_ANDA_SALES.INVOICE_PACK_COST)::varchar, '0'::varchar(1)) END AS INVOICE_PACK_COST, CASE mod(STG_ANDA_SALES.INVOICE_UNIT_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.INVOICE_UNIT_COST)::int)::varchar ELSE rtrim((STG_ANDA_SALES.INVOICE_UNIT_COST)::varchar, '0'::varchar(1)) END AS INVOICE_UNIT_COST, CASE mod(STG_ANDA_SALES.CONTRACT_PACK_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.CONTRACT_PACK_COST)::int)::varchar ELSE rtrim((STG_ANDA_SALES.CONTRACT_PACK_COST)::varchar, '0'::varchar(1)) END AS CONTRACT_PACK_COST, CASE mod(STG_ANDA_SALES.CONTRACT_PURCHASES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.CONTRACT_PURCHASES)::int)::varchar ELSE rtrim((STG_ANDA_SALES.CONTRACT_PURCHASES)::varchar, '0'::varchar(1)) END AS CONTRACT_PURCHASES, STG_ANDA_SALES.CONTRACT_NUMBER, STG_ANDA_SALES.DISPENSING_LOCATION, STG_ANDA_SALES.DL_ADDRESS_1, STG_ANDA_SALES.DL_ADDRESS_2, STG_ANDA_SALES.DL_CITY, STG_ANDA_SALES.DL_STATE, STG_ANDA_SALES.DL_ZIP, STG_ANDA_SALES.DL_DEA_NUM, STG_ANDA_SALES.DEPOT_LOCATION, STG_ANDA_SALES.DEP_ADDRESS_1, STG_ANDA_SALES.DEP_ADDRESS_2, STG_ANDA_SALES.DEP_CITY, STG_ANDA_SALES.DEP_STATE, STG_ANDA_SALES.DEP_ZIP, STG_ANDA_SALES.DEP_DEA_NUM, CASE mod(STG_ANDA_SALES.UNIT_AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.UNIT_AP)::int)::varchar ELSE rtrim((STG_ANDA_SALES.UNIT_AP)::varchar, '0'::varchar(1)) END AS UNIT_AP, CASE mod(STG_ANDA_SALES.AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_ANDA_SALES.AP)::int)::varchar ELSE rtrim((STG_ANDA_SALES.AP)::varchar, '0'::varchar(1)) END AS AP FROM WSMP_ADMIN.STG_ANDA_SALES;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_omnicare_sale AS
SELECT STG_OMNICARE_SALES.TRANSACTION_ID, to_char(STG_OMNICARE_SALES.INVOICE_DATE, 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, STG_OMNICARE_SALES.PRODUCT_BRAND, STG_OMNICARE_SALES.PRODUCT_NDC, STG_OMNICARE_SALES.PRODUCT_DESC, CASE mod(STG_OMNICARE_SALES.INVOICE_QTY, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.INVOICE_QTY)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.INVOICE_QTY)::varchar, '0'::varchar(1)) END AS INVOICE_QTY, CASE mod(STG_OMNICARE_SALES.INVOICE_UNITS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.INVOICE_UNITS)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.INVOICE_UNITS)::varchar, '0'::varchar(1)) END AS INVOICE_UNITS, CASE mod(STG_OMNICARE_SALES.INVOICE_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.INVOICE_COST)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.INVOICE_COST)::varchar, '0'::varchar(1)) END AS INVOICE_COST, CASE mod(STG_OMNICARE_SALES.INVOICE_PACK_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.INVOICE_PACK_COST)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.INVOICE_PACK_COST)::varchar, '0'::varchar(1)) END AS INVOICE_PACK_COST, CASE mod(STG_OMNICARE_SALES.INVOICE_UNIT_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.INVOICE_UNIT_COST)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.INVOICE_UNIT_COST)::varchar, '0'::varchar(1)) END AS INVOICE_UNIT_COST, CASE mod(STG_OMNICARE_SALES.CONTRACT_PACK_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.CONTRACT_PACK_COST)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.CONTRACT_PACK_COST)::varchar, '0'::varchar(1)) END AS CONTRACT_PACK_COST, CASE mod(STG_OMNICARE_SALES.CONTRACT_PURCHASES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.CONTRACT_PURCHASES)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.CONTRACT_PURCHASES)::varchar, '0'::varchar(1)) END AS CONTRACT_PURCHASES, STG_OMNICARE_SALES.CONTRACT_NUMBER, STG_OMNICARE_SALES.DISPENSING_LOCATION, STG_OMNICARE_SALES.DL_ADDRESS_1, STG_OMNICARE_SALES.DL_ADDRESS_2, STG_OMNICARE_SALES.DL_CITY, STG_OMNICARE_SALES.DL_STATE, STG_OMNICARE_SALES.DL_ZIP, STG_OMNICARE_SALES.DL_DEA_NUM, STG_OMNICARE_SALES.DEPOT_LOCATION, STG_OMNICARE_SALES.DEP_ADDRESS_1, STG_OMNICARE_SALES.DEP_ADDRESS_2, STG_OMNICARE_SALES.DEP_CITY, STG_OMNICARE_SALES.DEP_STATE, STG_OMNICARE_SALES.DEP_ZIP, STG_OMNICARE_SALES.DEP_DEA_NUM, CASE mod(STG_OMNICARE_SALES.UNIT_AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.UNIT_AP)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.UNIT_AP)::varchar, '0'::varchar(1)) END AS UNIT_AP, CASE mod(STG_OMNICARE_SALES.AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_OMNICARE_SALES.AP)::int)::varchar ELSE rtrim((STG_OMNICARE_SALES.AP)::varchar, '0'::varchar(1)) END AS AP FROM WSMP_ADMIN.STG_OMNICARE_SALES;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_cb_transactions AS
SELECT STG_TB_CB_TRANSACTIONS.ACCOUNT_ID, STG_TB_CB_TRANSACTIONS.LOCATION_ID, to_char(STG_TB_CB_TRANSACTIONS.SHIPMENT_DATE, 'YYYY-MM-DD'::varchar(10)) AS SHIPMENT_DATE, STG_TB_CB_TRANSACTIONS.NDC_CODE, STG_TB_CB_TRANSACTIONS.PRODUCT_NAME, STG_TB_CB_TRANSACTIONS.CONTRACT_ID, CASE mod(STG_TB_CB_TRANSACTIONS.CHARGEBACK_UNITS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_CB_TRANSACTIONS.CHARGEBACK_UNITS)::int)::varchar ELSE rtrim((STG_TB_CB_TRANSACTIONS.CHARGEBACK_UNITS)::varchar, '0'::varchar(1)) END AS CHARGEBACK_UNITS, CASE mod(STG_TB_CB_TRANSACTIONS.CHARGEBACK_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_CB_TRANSACTIONS.CHARGEBACK_DOLLARS)::int)::varchar ELSE rtrim((STG_TB_CB_TRANSACTIONS.CHARGEBACK_DOLLARS)::varchar, '0'::varchar(1)) END AS CHARGEBACK_DOLLARS, to_char(STG_TB_CB_TRANSACTIONS.RECEIPT_DATE, 'YYYY-MM-DD'::varchar(10)) AS RECEIPT_DATE, CASE mod(STG_TB_CB_TRANSACTIONS.UNIT_AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_CB_TRANSACTIONS.UNIT_AP)::int)::varchar ELSE rtrim((STG_TB_CB_TRANSACTIONS.UNIT_AP)::varchar, '0'::varchar(1)) END AS UNIT_AP, CASE mod(STG_TB_CB_TRANSACTIONS.AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_CB_TRANSACTIONS.AP)::int)::varchar ELSE rtrim((STG_TB_CB_TRANSACTIONS.AP)::varchar, '0'::varchar(1)) END AS AP, STG_TB_CB_TRANSACTIONS.DEBIT_MEMO_NUM, to_char(STG_TB_CB_TRANSACTIONS.CREDIT_MEMO_DATE, 'YYYY-MM-DD HH24:MI:SS'::varchar(21)) AS CREDIT_MEMO_DATE, STG_TB_CB_TRANSACTIONS.CREDIT_MEMO_NUM, to_char(STG_TB_CB_TRANSACTIONS.SETTLEMENT_DATE, 'YYYY-MM-DD HH24:MI:SS'::varchar(21)) AS SETTLEMENT_DATE, CASE mod(STG_TB_CB_TRANSACTIONS.CONTRACT_PRICE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_CB_TRANSACTIONS.CONTRACT_PRICE)::int)::varchar ELSE rtrim((STG_TB_CB_TRANSACTIONS.CONTRACT_PRICE)::varchar, '0'::varchar(1)) END AS CONTRACT_PRICE, STG_TB_CB_TRANSACTIONS.CONTRACT_ALIAS FROM WSMP_ADMIN.STG_TB_CB_TRANSACTIONS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_tb_ds_transactions AS
SELECT STG_TB_DS_TRANSACTIONS.ACCOUNT_ID, STG_TB_DS_TRANSACTIONS.LOCATION_ID, to_char(STG_TB_DS_TRANSACTIONS.SHIPMENT_DATE, 'YYYY-MM-DD'::varchar(10)) AS SHIPMENT_DATE, STG_TB_DS_TRANSACTIONS.NDC_CODE, STG_TB_DS_TRANSACTIONS.PRODUCT_NAME, STG_TB_DS_TRANSACTIONS.TRANSACTION_TYPE, CASE mod(STG_TB_DS_TRANSACTIONS.DIRECT_SALES_UNITS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_DS_TRANSACTIONS.DIRECT_SALES_UNITS)::int)::varchar ELSE rtrim((STG_TB_DS_TRANSACTIONS.DIRECT_SALES_UNITS)::varchar, '0'::varchar(1)) END AS DIRECT_SALES_UNITS, CASE mod(STG_TB_DS_TRANSACTIONS.DIRECT_SALES_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_DS_TRANSACTIONS.DIRECT_SALES_DOLLARS)::int)::varchar ELSE rtrim((STG_TB_DS_TRANSACTIONS.DIRECT_SALES_DOLLARS)::varchar, '0'::varchar(1)) END AS DIRECT_SALES_DOLLARS, CASE mod(STG_TB_DS_TRANSACTIONS.UNIT_AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_DS_TRANSACTIONS.UNIT_AP)::int)::varchar ELSE rtrim((STG_TB_DS_TRANSACTIONS.UNIT_AP)::varchar, '0'::varchar(1)) END AS UNIT_AP, CASE mod(STG_TB_DS_TRANSACTIONS.AP, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TB_DS_TRANSACTIONS.AP)::int)::varchar ELSE rtrim((STG_TB_DS_TRANSACTIONS.AP)::varchar, '0'::varchar(1)) END AS AP FROM WSMP_ADMIN.STG_TB_DS_TRANSACTIONS;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_rems_account AS
SELECT stg.ASI_ACCOUNT_ID AS HCP_ID, align.TERRITORY_NUM AS territory_num, stg.SITE_NAME AS ACCOUNT_NAME, stg.ADDRESS_1 AS ADDRESS1, stg.ADDRESS_2 AS ADDRESS2, NULL AS ADDRESS3, stg.CITY, stg.STATE, stg.ZIP_CODE AS ZIP, 'Y'::varchar(1) AS PRIMARY_ADDRESS, stg.PHONE_NUMBER, fact.IMS_ORG_ID AS EXTERNAL_ID, 'HOSPITAL'::varchar(8) AS CUSTOMER_TYPE, NULL AS BPNUMBER, NULL AS SUBTYPE, NULL AS CM_ID FROM ((WSMP_ADMIN.STG_REMS_FACILITY stg LEFT JOIN (SELECT kc_zip_to_territory.ZIP, kc_zip_to_territory.CITY, kc_zip_to_territory.STATE, kc_zip_to_territory.TERRITORY_NUM, kc_zip_to_territory.IS_A_MIRROR, kc_zip_to_territory.MIRROR_TERRITORY_NUM, kc_zip_to_territory.TERRITORY_NAME, kc_zip_to_territory.AREA_NAME, kc_zip_to_territory.REGION_NAME, kc_zip_to_territory.SALES_FORCE_ID, kc_zip_to_territory.ORGANIZATION_CODE, kc_zip_to_territory.COMMENTS FROM WSMP_ADMIN.KC_ZIP_TO_TERRITORY WHERE (kc_zip_to_territory.SALES_FORCE_ID = 'TB'::varchar(2))) align ON ((substr(stg.ZIP_CODE, 1, 5) = align.ZIP))) LEFT JOIN WSMP_ADMIN.HCOS_IDENTIFIER_FACT fact ON (((fact.IDENTIFIER_ID = 15::numeric(18,0)) AND (fact.IDENTIFIER = stg.NPI)))) WHERE (stg.VEEVA_ACCOUNT_ID IS NULL);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_paragard_anda_sales AS
SELECT ('A'::varchar(1) || btrim(to_char(STG_TW_ANDA_SALES.CUSTOMER_NO, '000000000'::varchar(9)))) AS BP_CODE, NULL AS ORTHO_E, STG_TW_ANDA_SALES.CUSTOMER AS BP_NAME, coalesce(STG_TW_ANDA_SALES.CUSTOMER_ADDRESS_LINE2, STG_TW_ANDA_SALES.CUSTOMER_ADDRESS_LINE1) AS SHIP_TO_ADDRESS, STG_TW_ANDA_SALES.CITY AS SHIP_TO_CITY, STG_TW_ANDA_SALES.STATE AS SHIP_TO_STATE, STG_TW_ANDA_SALES.ZIP AS SHIP_TO_ZIP_CODE, NULL AS SHIP_TO_COUNTRY, NULL AS SHIP_TO_PHONE, NULL AS SHIP_TO_FAX, NULL AS SHIP_TO_EMAIL, coalesce(STG_TW_ANDA_SALES.BILL_ADDRESS_LINE2, STG_TW_ANDA_SALES.BILL_ADDRESS_LINE1) AS BILL_TO_ADDRESS, STG_TW_ANDA_SALES.BILL_CITY AS BILL_TO_CITY, STG_TW_ANDA_SALES.BILL_STATE AS BILL_TO_STATE, STG_TW_ANDA_SALES.BILL_ZIP AS BILL_TO_ZIP_CODE, NULL AS BILL_TO_COUNTRY, NULL AS BILL_TO_PHONE, NULL AS BILL_TO_FAX, NULL AS BILL_TO_EMAIL, CASE mod(STG_TW_ANDA_SALES.CUSTOMER_TYPE_CD, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.CUSTOMER_TYPE_CD)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.CUSTOMER_TYPE_CD)::varchar, '0'::varchar(1)) END AS CLASS_OF_TRADE, CASE mod(STG_TW_ANDA_SALES.ORDER_NO, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.ORDER_NO)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.ORDER_NO)::varchar, '0'::varchar(1)) END AS INVOICE_NUM, CASE mod(STG_TW_ANDA_SALES.NET_COST, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.NET_COST)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.NET_COST)::varchar, '0'::varchar(1)) END AS DEL_AMT, to_char(to_date(STG_TW_ANDA_SALES.SALES_DATE, 'MM/DD/YY'::varchar(8)), 'YYYY-MM-DD'::varchar(10)) AS INVOICE_DATE, CASE mod(STG_TW_ANDA_SALES.UNITS_NET, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.UNITS_NET)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.UNITS_NET)::varchar, '0'::varchar(1)) END AS "24237", NULL AS "24238", NULL AS "24800", NULL AS "33223", CASE mod(STG_TW_ANDA_SALES.PACKAGE_SIZE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.PACKAGE_SIZE)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.PACKAGE_SIZE)::varchar, '0'::varchar(1)) END AS PACKS, NULL AS UNIT_PRICE, NULL AS TERRITORY, NULL AS ORDER_TYPE_CODE, NULL AS ORDER_TYPE_DESC, NULL AS LOB_CODE_DESC, NULL AS PRICE_MATRIX_DEF, ('A'::varchar(1) || btrim(to_char(STG_TW_ANDA_SALES.BILL_CUSTOMER_NO, '000000000'::varchar(9)))) AS PARENT_BP_CODE, NULL AS PARENT_BP_DESC, NULL AS GRAND_PARENT_BP_DESC, NULL AS PO_NUMBER, NULL AS UPS_NUMBER, CASE mod(STG_TW_ANDA_SALES.ORDER_NO, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_TW_ANDA_SALES.ORDER_NO)::int)::varchar ELSE rtrim((STG_TW_ANDA_SALES.ORDER_NO)::varchar, '0'::varchar(1)) END AS ORDER_NUMBER, NULL AS ORDER_LINE_NUMBER, NULL AS DISC_AMT, NULL AS WHSE_CD FROM WSMP_ADMIN.STG_TW_ANDA_SALES WHERE (STG_TW_ANDA_SALES.BRAND ~~ '%PARAGARD%'::varchar(10));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rems_extract AS
SELECT coalesce(r.VEEVA_ACCOUNT_ID, r.IMS_ID) AS account_id, r.ENROLLMENT_ID AS enrollment_id, r.NPI AS npi, r.DEA_NUM AS dea_num, (r.PROGRAM_ID)::int AS program_id, substr(r.PROGRAM_NAME, 1, 4) AS REMS_PROGRAM, r.STATUS AS enrollment_status, r.IN_PROGRESS_STEP AS current_enrollment_step, to_char(r.EFFECTIVE_DATE, 'YYYY-MM-DD'::varchar(10)) AS effective_date, to_char(r.EXPIRATION_DATE, 'YYYY-MM-DD'::varchar(10)) AS expiration_date FROM WSMP_ADMIN.STG_REMS_PRESCRIBER r UNION SELECT coalesce(STG_REMS_FACILITY.VEEVA_ACCOUNT_ID, STG_REMS_FACILITY.ASI_ACCOUNT_ID) AS account_id, STG_REMS_FACILITY.ENROLLMENT_ID AS enrollment_id, STG_REMS_FACILITY.NPI AS npi, STG_REMS_FACILITY.DEA AS dea, (STG_REMS_FACILITY.PROGRAM_ID)::int AS program_id, STG_REMS_FACILITY.PROGRAM_NAME AS REMS_program, STG_REMS_FACILITY.STATUS_DESCRIPTION AS enrollment_status, STG_REMS_FACILITY.IN_PROGRESS_STEP AS current_enrollment_step, to_char(STG_REMS_FACILITY.EFFECTIVE_DATE, 'YYYY-MM-DD'::varchar(10)) AS effective_date, to_char(STG_REMS_FACILITY.EXPIRATION_DATE, 'YYYY-MM-DD'::varchar(10)) AS expiration_date FROM WSMP_ADMIN.STG_REMS_FACILITY;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_rems_program_lookup AS
SELECT (r.PROGRAM_ID)::int AS program_id, r.PROGRAM_NAME AS program_name FROM WSMP_ADMIN.STG_REMS_PRESCRIBER r UNION SELECT (STG_REMS_FACILITY.PROGRAM_ID)::int AS program_id, STG_REMS_FACILITY.PROGRAM_NAME AS program_name FROM WSMP_ADMIN.STG_REMS_FACILITY;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ddd_category AS
SELECT DIM_DDD_CATEGORY.CATEGORY_CODE, DIM_DDD_CATEGORY.CATEGORY_DESC, DIM_DDD_CATEGORY.CATEGORY_DEFN FROM WSMP_ADMIN.DIM_DDD_CATEGORY ORDER BY DIM_DDD_CATEGORY.CATEGORY_CODE LIMIT 100;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_BrandedIMS_MedicaidPlanGroups AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, coalesce(demo.veeva_account_id, rx.ims_id) AS hcp_id, rx.payer_plan_num AS plan_code, rx.plan_name, rx.model, rx.payer_name AS plan_group, CASE WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-12-003'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-001'::varchar(10)) THEN 'QNASL 80'::varchar(8) WHEN (rx.product_code = '330-15-002'::varchar(10)) THEN 'QNASL 40'::varchar(8) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-040'::varchar(10)) THEN 'ZETONNA'::varchar(7) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1.000) THEN rx.trx_cnt ELSE 0.000 END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-15-019'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-15-001'::varchar(10), '330-15-002'::varchar(10), '330-15-030'::varchar(10), '330-15-047'::varchar(10), '330-15-040'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND ((rx.payment_method ~~ '%MEDICAID%'::varchar(10)) OR (rx.payer_plan_num = ANY (ARRAY['7001720001'::varchar(10), '0013670087'::varchar(10)])))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, coalesce(demo.veeva_account_id, rx.ims_id), rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name, CASE WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-12-003'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-001'::varchar(10)) THEN 'QNASL 80'::varchar(8) WHEN (rx.product_code = '330-15-002'::varchar(10)) THEN 'QNASL 40'::varchar(8) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-040'::varchar(10)) THEN 'ZETONNA'::varchar(7) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_BrandedIMS_MoP AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)) AS payment_method, CASE WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-12-003'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-001'::varchar(10)) THEN 'QNASL 80'::varchar(8) WHEN (rx.product_code = '330-15-002'::varchar(10)) THEN 'QNASL 40'::varchar(8) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-040'::varchar(10)) THEN 'ZETONNA'::varchar(7) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-15-019'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-15-001'::varchar(10), '330-15-002'::varchar(10), '330-15-030'::varchar(10), '330-15-047'::varchar(10), '330-15-040'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)), CASE WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-12-003'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-001'::varchar(10)) THEN 'QNASL 80'::varchar(8) WHEN (rx.product_code = '330-15-002'::varchar(10)) THEN 'QNASL 40'::varchar(8) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-040'::varchar(10)) THEN 'ZETONNA'::varchar(7) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ICS_MedicaidPlanGroups AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, rx.payer_plan_num AS plan_code, rx.plan_name, rx.model, rx.payer_name AS plan_group, CASE WHEN (rx.product_code = '330-16-020'::varchar(10)) THEN 'AEROSPAN'::varchar(8) WHEN (rx.product_code = '330-13-010'::varchar(10)) THEN 'AEROBID'::varchar(7) WHEN (rx.product_code = '330-13-021'::varchar(10)) THEN 'ALVESCO'::varchar(7) WHEN (rx.product_code = '330-13-016'::varchar(10)) THEN 'ASMANEX'::varchar(7) WHEN (rx.product_code = '330-13-008'::varchar(10)) THEN 'AZMACORT'::varchar(8) WHEN (rx.product_code = '330-13-011'::varchar(10)) THEN 'ARNUITY ELLIPTA'::varchar(15) WHEN (rx.product_code = '330-13-017'::varchar(10)) THEN 'ASMANEX HFA MDI'::varchar(15) WHEN (rx.product_code = ANY (ARRAY['330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10)])) THEN 'FLOVENT'::varchar(7) WHEN (rx.product_code = '330-13-009'::varchar(10)) THEN 'PULMICORT'::varchar(9) WHEN (rx.product_code = ANY (ARRAY['330-13-005'::varchar(10), '330-13-006'::varchar(10)])) THEN 'QVAR'::varchar(4) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-13-010'::varchar(10), '330-16-020'::varchar(10), '330-13-021'::varchar(10), '330-13-016'::varchar(10), '330-13-008'::varchar(10), '330-13-011'::varchar(10), '330-13-017'::varchar(10), '330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10), '330-13-009'::varchar(10), '330-13-005'::varchar(10), '330-13-006'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (rx.payment_method ~~ '%MEDICAID%'::varchar(10))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name, CASE WHEN (rx.product_code = '330-16-020'::varchar(10)) THEN 'AEROSPAN'::varchar(8) WHEN (rx.product_code = '330-13-010'::varchar(10)) THEN 'AEROBID'::varchar(7) WHEN (rx.product_code = '330-13-021'::varchar(10)) THEN 'ALVESCO'::varchar(7) WHEN (rx.product_code = '330-13-016'::varchar(10)) THEN 'ASMANEX'::varchar(7) WHEN (rx.product_code = '330-13-008'::varchar(10)) THEN 'AZMACORT'::varchar(8) WHEN (rx.product_code = '330-13-011'::varchar(10)) THEN 'ARNUITY ELLIPTA'::varchar(15) WHEN (rx.product_code = '330-13-017'::varchar(10)) THEN 'ASMANEX HFA MDI'::varchar(15) WHEN (rx.product_code = ANY (ARRAY['330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10)])) THEN 'FLOVENT'::varchar(7) WHEN (rx.product_code = '330-13-009'::varchar(10)) THEN 'PULMICORT'::varchar(9) WHEN (rx.product_code = ANY (ARRAY['330-13-005'::varchar(10), '330-13-006'::varchar(10)])) THEN 'QVAR'::varchar(4) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ics_mop AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)) AS payment_method, CASE WHEN (rx.product_code = '330-16-020'::varchar(10)) THEN 'AEROSPAN'::varchar(8) WHEN (rx.product_code = '330-13-010'::varchar(10)) THEN 'AEROBID'::varchar(7) WHEN (rx.product_code = '330-13-021'::varchar(10)) THEN 'ALVESCO'::varchar(7) WHEN (rx.product_code = '330-13-016'::varchar(10)) THEN 'ASMANEX'::varchar(7) WHEN (rx.product_code = '330-13-008'::varchar(10)) THEN 'AZMACORT'::varchar(8) WHEN (rx.product_code = ANY (ARRAY['330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10)])) THEN 'FLOVENT'::varchar(7) WHEN (rx.product_code = '330-13-009'::varchar(10)) THEN 'PULMICORT'::varchar(9) WHEN (rx.product_code = ANY (ARRAY['330-13-005'::varchar(10), '330-13-006'::varchar(10)])) THEN 'QVAR'::varchar(4) WHEN (rx.product_code = '330-13-011'::varchar(10)) THEN 'ARNUITY ELLIPTA'::varchar(15) WHEN (rx.product_code = '330-13-017'::varchar(10)) THEN 'ASMANEX HFA MDI'::varchar(15) ELSE 'UNKOWN'::varchar(6) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-13-010'::varchar(10), '330-16-020'::varchar(10), '330-13-021'::varchar(10), '330-13-016'::varchar(10), '330-13-008'::varchar(10), '330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10), '330-13-009'::varchar(10), '330-13-005'::varchar(10), '330-13-006'::varchar(10), '330-13-011'::varchar(10), '330-13-017'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)), CASE WHEN (rx.product_code = '330-16-020'::varchar(10)) THEN 'AEROSPAN'::varchar(8) WHEN (rx.product_code = '330-13-010'::varchar(10)) THEN 'AEROBID'::varchar(7) WHEN (rx.product_code = '330-13-021'::varchar(10)) THEN 'ALVESCO'::varchar(7) WHEN (rx.product_code = '330-13-016'::varchar(10)) THEN 'ASMANEX'::varchar(7) WHEN (rx.product_code = '330-13-008'::varchar(10)) THEN 'AZMACORT'::varchar(8) WHEN (rx.product_code = ANY (ARRAY['330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10)])) THEN 'FLOVENT'::varchar(7) WHEN (rx.product_code = '330-13-009'::varchar(10)) THEN 'PULMICORT'::varchar(9) WHEN (rx.product_code = ANY (ARRAY['330-13-005'::varchar(10), '330-13-006'::varchar(10)])) THEN 'QVAR'::varchar(4) WHEN (rx.product_code = '330-13-011'::varchar(10)) THEN 'ARNUITY ELLIPTA'::varchar(15) WHEN (rx.product_code = '330-13-017'::varchar(10)) THEN 'ASMANEX HFA MDI'::varchar(15) ELSE 'UNKOWN'::varchar(6) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_NASAL_MedicaidPlanGroups AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, rx.payer_plan_num AS plan_code, rx.plan_name, rx.model, rx.payer_name AS plan_group, CASE WHEN (rx.product_code = '330-15-005'::varchar(10)) THEN 'FLONASE'::varchar(7) WHEN (rx.product_code = '330-15-010'::varchar(10)) THEN 'FLUTICASONE'::varchar(11) WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-15-015'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-050'::varchar(10)) THEN 'OTHER (NASAL)'::varchar(13) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-15-005'::varchar(10), '330-15-010'::varchar(10), '330-15-019'::varchar(10), '330-15-015'::varchar(10), '330-15-025'::varchar(10), '330-15-030'::varchar(10), '330-15-047'::varchar(10), '330-15-050'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (rx.payment_method ~~ '%MEDICAID%'::varchar(10))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name, CASE WHEN (rx.product_code = '330-15-005'::varchar(10)) THEN 'FLONASE'::varchar(7) WHEN (rx.product_code = '330-15-010'::varchar(10)) THEN 'FLUTICASONE'::varchar(11) WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-15-015'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-050'::varchar(10)) THEN 'OTHER (NASAL)'::varchar(13) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_nasal_mop AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)) AS payment_method, CASE WHEN (rx.product_code = '330-15-005'::varchar(10)) THEN 'FLONASE'::varchar(7) WHEN (rx.product_code = '330-15-010'::varchar(10)) THEN 'FLUTICASONE'::varchar(11) WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-15-015'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-050'::varchar(10)) THEN 'OTHER (NASAL)'::varchar(13) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-15-005'::varchar(10), '330-15-010'::varchar(10), '330-15-019'::varchar(10), '330-15-015'::varchar(10), '330-15-025'::varchar(10), '330-15-030'::varchar(10), '330-15-047'::varchar(10), '330-15-050'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)), CASE WHEN (rx.product_code = '330-15-005'::varchar(10)) THEN 'FLONASE'::varchar(7) WHEN (rx.product_code = '330-15-010'::varchar(10)) THEN 'FLUTICASONE'::varchar(11) WHEN (rx.product_code = '330-15-019'::varchar(10)) THEN 'NASACORT'::varchar(8) WHEN (rx.product_code = '330-15-015'::varchar(10)) THEN 'NASONEX'::varchar(7) WHEN (rx.product_code = '330-15-025'::varchar(10)) THEN 'OMNARIS'::varchar(7) WHEN (rx.product_code = '330-15-030'::varchar(10)) THEN 'RHINOCORT'::varchar(9) WHEN (rx.product_code = '330-15-047'::varchar(10)) THEN 'VERAMYST'::varchar(8) WHEN (rx.product_code = '330-15-050'::varchar(10)) THEN 'OTHER (NASAL)'::varchar(13) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_SABA_MedicaidPlanGroups AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, rx.payer_plan_num AS plan_code, rx.plan_name, rx.model, rx.payer_name AS plan_group, CASE WHEN (rx.product_code = '330-14-001'::varchar(10)) THEN 'ALBUTEROL CFC'::varchar(13) WHEN (rx.product_code = '330-14-007'::varchar(10)) THEN 'MAXAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-14-009'::varchar(10), '330-14-002'::varchar(10)])) THEN 'PROAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-050'::varchar(10), '330-14-003'::varchar(10)])) THEN 'PROVENTIL'::varchar(9) WHEN (rx.product_code = '330-14-008'::varchar(10)) THEN 'RELION'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-055'::varchar(10), '330-14-004'::varchar(10)])) THEN 'VENTOLIN'::varchar(8) WHEN (rx.product_code = ANY (ARRAY['330-16-056'::varchar(10), '330-14-006'::varchar(10)])) THEN 'XOPENEX'::varchar(7) WHEN (rx.product_code = '330-14-005'::varchar(10)) THEN 'OTHER (SABA)'::varchar(12) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-14-001'::varchar(10), '330-14-007'::varchar(10), '330-14-009'::varchar(10), '330-14-002'::varchar(10), '330-14-003'::varchar(10), '330-14-008'::varchar(10), '330-14-004'::varchar(10), '330-14-006'::varchar(10), '330-14-005'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (rx.payment_method ~~ '%MEDICAID%'::varchar(10))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name, CASE WHEN (rx.product_code = '330-14-001'::varchar(10)) THEN 'ALBUTEROL CFC'::varchar(13) WHEN (rx.product_code = '330-14-007'::varchar(10)) THEN 'MAXAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-14-009'::varchar(10), '330-14-002'::varchar(10)])) THEN 'PROAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-050'::varchar(10), '330-14-003'::varchar(10)])) THEN 'PROVENTIL'::varchar(9) WHEN (rx.product_code = '330-14-008'::varchar(10)) THEN 'RELION'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-055'::varchar(10), '330-14-004'::varchar(10)])) THEN 'VENTOLIN'::varchar(8) WHEN (rx.product_code = ANY (ARRAY['330-16-056'::varchar(10), '330-14-006'::varchar(10)])) THEN 'XOPENEX'::varchar(7) WHEN (rx.product_code = '330-14-005'::varchar(10)) THEN 'OTHER (SABA)'::varchar(12) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_saba_mop AS
SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END AS hcp_id, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)) AS payment_method, CASE WHEN (rx.product_code = '330-14-001'::varchar(10)) THEN 'ALBUTEROL CFC'::varchar(13) WHEN (rx.product_code = '330-14-007'::varchar(10)) THEN 'MAXAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-14-009'::varchar(10), '330-14-002'::varchar(10)])) THEN 'PROAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-050'::varchar(10), '330-14-003'::varchar(10)])) THEN 'PROVENTIL'::varchar(9) WHEN (rx.product_code = '330-14-008'::varchar(10)) THEN 'RELION'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-055'::varchar(10), '330-14-004'::varchar(10)])) THEN 'VENTOLIN'::varchar(8) WHEN (rx.product_code = '330-14-006'::varchar(10)) THEN 'XOPENEX'::varchar(7) WHEN (rx.product_code = '330-14-005'::varchar(10)) THEN 'OTHER (SABA)'::varchar(12) ELSE 'UNKNOWN'::varchar(7) END AS product, (sum(CASE WHEN (rx.month_bucket = 24::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth24, (sum(CASE WHEN (rx.month_bucket = 23::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth23, (sum(CASE WHEN (rx.month_bucket = 22::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth22, (sum(CASE WHEN (rx.month_bucket = 21::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth21, (sum(CASE WHEN (rx.month_bucket = 20::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth20, (sum(CASE WHEN (rx.month_bucket = 19::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth19, (sum(CASE WHEN (rx.month_bucket = 18::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth18, (sum(CASE WHEN (rx.month_bucket = 17::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth17, (sum(CASE WHEN (rx.month_bucket = 16::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth16, (sum(CASE WHEN (rx.month_bucket = 15::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth15, (sum(CASE WHEN (rx.month_bucket = 14::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth14, (sum(CASE WHEN (rx.month_bucket = 13::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth13, (sum(CASE WHEN (rx.month_bucket = 12::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth12, (sum(CASE WHEN (rx.month_bucket = 11::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth11, (sum(CASE WHEN (rx.month_bucket = 10::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth10, (sum(CASE WHEN (rx.month_bucket = 9::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth9, (sum(CASE WHEN (rx.month_bucket = 8::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth8, (sum(CASE WHEN (rx.month_bucket = 7::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth7, (sum(CASE WHEN (rx.month_bucket = 6::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth6, (sum(CASE WHEN (rx.month_bucket = 5::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth5, (sum(CASE WHEN (rx.month_bucket = 4::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth4, (sum(CASE WHEN (rx.month_bucket = 3::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth3, (sum(CASE WHEN (rx.month_bucket = 2::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth2, (sum(CASE WHEN (rx.month_bucket = 1::numeric(18,0)) THEN rx.trx_cnt ELSE 0::numeric(18,0) END))::numeric(18,3) AS trx_mth1 FROM (WSMP_ADMIN.dw_presc_plan_rx_w rx LEFT JOIN (SELECT iq1.ims_id, iq1.veeva_account_id FROM (SELECT VV_ACCOUNT.ID_VOD__C AS ims_id, VV_ACCOUNT.ID AS veeva_account_id, row_number() OVER (PARTITION BY VV_ACCOUNT.ID_VOD__C ORDER BY VV_ACCOUNT.ID) AS rnk FROM WSMP_ADMIN.VV_ACCOUNT WHERE (VV_ACCOUNT.ID_VOD__C IS NOT NULL)) iq1 WHERE (iq1.rnk = 1)) demo ON ((demo.ims_id = rx.ims_id))) WHERE ((rx.product_code = ANY (ARRAY['330-14-001'::varchar(10), '330-14-007'::varchar(10), '330-14-009'::varchar(10), '330-14-002'::varchar(10), '330-14-003'::varchar(10), '330-14-008'::varchar(10), '330-14-004'::varchar(10), '330-14-006'::varchar(10), '330-14-005'::varchar(10)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0))) GROUP BY CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END, CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(demo.veeva_account_id, rx.ims_id) END, coalesce(rx.payment_method, 'COMMERCIAL 3RD PTY'::varchar(18)), CASE WHEN (rx.product_code = '330-14-001'::varchar(10)) THEN 'ALBUTEROL CFC'::varchar(13) WHEN (rx.product_code = '330-14-007'::varchar(10)) THEN 'MAXAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-14-009'::varchar(10), '330-14-002'::varchar(10)])) THEN 'PROAIR'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-050'::varchar(10), '330-14-003'::varchar(10)])) THEN 'PROVENTIL'::varchar(9) WHEN (rx.product_code = '330-14-008'::varchar(10)) THEN 'RELION'::varchar(6) WHEN (rx.product_code = ANY (ARRAY['330-16-055'::varchar(10), '330-14-004'::varchar(10)])) THEN 'VENTOLIN'::varchar(8) WHEN (rx.product_code = '330-14-006'::varchar(10)) THEN 'XOPENEX'::varchar(7) WHEN (rx.product_code = '330-14-005'::varchar(10)) THEN 'OTHER (SABA)'::varchar(12) ELSE 'UNKNOWN'::varchar(7) END;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_nuvigil_demo AS
SELECT CASE mod(dem.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((dem.tvcmid)::int)::varchar ELSE rtrim((dem.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, dem.ims_id, dem.veeva_account_id, initcap(dem.first_name) AS first_name, initcap(dem.middle_name) AS middle_name, initcap(dem.last_name) AS last_name, dem.DEGREE, initcap(dem.address1) AS address1, initcap(dem.address2) AS address2, initcap(dem.address3) AS address3, initcap(dem.city) AS city, dem.state, dem.zip, dem.prim_specialty, dem.nuvigil_report_group, dec1.trx_cnt_01_06 AS nuvigil_decile, dec2.trx_cnt_01_06 AS wake_decile FROM (((SELECT demo.tvcmid, demo.ims_id, demo.veeva_account_id, demo.first_name, demo.middle_name, demo.last_name, demo.DEGREE, demo.address1, demo.address2, demo.address3, demo.city, demo.state, demo.zip, demo.prim_specialty, demo.nuvigil_report_group, demo.source_rank, rank() OVER (PARTITION BY demo.tvcmid, demo.ims_id ORDER BY demo.source_rank) AS demo_rank FROM (SELECT d.TVCMID AS tvcmid, d.IMS_ID AS ims_id, d.VEEVA_ACCOUNT_ID AS veeva_account_id, d.FIRST_NAME AS first_name, d.MIDDLE_NAME AS middle_name, d.LAST_NAME AS last_name, d.CREDENTIALS AS DEGREE, d.ADDRESS1 AS address1, d.ADDRESS2 AS address2, d.ADDRESS3 AS address3, d.CITY AS city, d.STATE AS state, d.ZIP AS zip, coalesce(d2.specialty, coalesce(s1.SPECIALTY_CODE, coalesce(s2.specialty_code, d.PRIM_SPECIALTY))) AS prim_specialty, coalesce(s1.NUVIGIL_REPORT_GROUP, s2.nuvigil_report_group) AS nuvigil_report_group, 1 AS source_rank FROM (((WSMP_ADMIN.DIM_SFA_CSF_DEMO d LEFT JOIN WSMP_ADMIN.TFC_IMS_PRESC_DEMO_M d2 ON (((d2.ims_id = d.IMS_ID) AND (d2.sales_force_id = 'TC'::varchar(2))))) LEFT JOIN WSMP_ADMIN.TFC_SPECIALTY_XREF s1 ON ((s1.SPECIALTY_CODE = d.PRIM_SPECIALTY))) LEFT JOIN (SELECT TFC_SPECIALTY_XREF.SPECIALTY_CODE AS specialty_code, TFC_SPECIALTY_XREF.SPECIALTY_DESC AS specialty_desc, TFC_SPECIALTY_XREF.NUVIGIL_REPORT_GROUP AS nuvigil_report_group FROM WSMP_ADMIN.TFC_SPECIALTY_XREF WHERE (TFC_SPECIALTY_XREF.SPECIALTY_CODE IN (SELECT iq1.specialty_code FROM (SELECT TFC_SPECIALTY_XREF.SPECIALTY_DESC AS specialty_desc, min(TFC_SPECIALTY_XREF.SPECIALTY_CODE) AS specialty_code FROM WSMP_ADMIN.TFC_SPECIALTY_XREF GROUP BY TFC_SPECIALTY_XREF.SPECIALTY_DESC) iq1))) s2 ON ((upper(CASE d.PRIM_SPECIALTY WHEN NULLSEQUAL 'Other'::varchar(5) THEN 'OTHER SPECIALTY'::varchar(15) ELSE d.PRIM_SPECIALTY END) = s2.specialty_desc))) WHERE ((d.SALES_FORCE_ID = 'TC'::varchar(2)) AND (d.DEMO_TYPE = 'PROF'::varchar(4)) AND (d.DEMO_RANK = 1::numeric(18,0))) UNION ALL SELECT s1.tvcmid, s1.ims_id, NULL AS siebel_id, s1.first_name, s1.mid_name, s1.last_name, s1.DEGREE AS degree, s1.address1, s1.address2, s1.address3, s1.city, s1.state, s1.zip, s1.prim_specialty, s1.nuvigil_report_group, s1.source_rank FROM (SELECT cm1.TVCMID AS tvcmid, d.ims_id, cm1.ID_NUM AS siebel_id, d.first_name, d.mid_name, d.last_name, NULL AS DEGREE, d.ptr_address AS address1, NULL AS address2, NULL AS address3, d.ptr_city AS city, d.ptr_state AS state, d.ptr_zip AS zip, d.specialty AS prim_specialty, s1.NUVIGIL_REPORT_GROUP AS nuvigil_report_group, 2 AS source_rank FROM ((WSMP_ADMIN.TFC_IMS_PRESC_DEMO_M d LEFT JOIN WSMP_ADMIN.TFC_SPECIALTY_XREF s1 ON ((s1.SPECIALTY_CODE = d.specialty))) LEFT JOIN WSMP_ADMIN.tvcmid_xref cm1 ON (((cm1.ID_NUM = d.ims_id) AND (cm1.ID_TYPE = 'IMS_ID'::varchar(6))))) WHERE (d.sales_force_id = 'TC'::varchar(2))) s1) demo) dem LEFT JOIN WSMP_ADMIN.TFC_IMS_DECILE dec1 ON (((dec1.ims_id = dem.ims_id) AND (dec1.category = 'Provigil'::varchar(8)) AND (dec1.decile_name = 'Nuvigil'::varchar(7))))) LEFT JOIN WSMP_ADMIN.TFC_IMS_DECILE dec2 ON (((dec2.ims_id = dem.ims_id) AND (dec2.category = 'Provigil'::varchar(8)) AND (dec2.decile_name = 'Modafinil'::varchar(9))))) WHERE (dem.demo_rank = 1);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_pvs_for_data_stewards AS
SELECT sp_pharm_address_lookups.SOURCE_ID AS source_id, sp_pharm_address_lookups.TEVA_LAST_NAME AS last_name, sp_pharm_address_lookups.TEVA_FIRST_NAME AS first_name, sp_pharm_address_lookups.TEVA_PROFESSIONAL_ID AS npi, sp_pharm_address_lookups.TEVA_ADDRESS1 AS address1, sp_pharm_address_lookups.TEVA_ADDRESS2 AS address2, sp_pharm_address_lookups.TEVA_CITY AS city, sp_pharm_address_lookups.TEVA_STATE AS state, sp_pharm_address_lookups.TEVA_ZIP AS zip, NULL AS IMS_ID, NULL AS HCE_ID FROM WSMP_ADMIN.sp_pharm_address_lookups WHERE (trunc(sp_pharm_address_lookups.CREATE_DATE, 'DD'::varchar(2)) = trunc((statement_timestamp())::timestamp, 'DD'::varchar(2))) ORDER BY sp_pharm_address_lookups.TEVA_LAST_NAME, sp_pharm_address_lookups.TEVA_FIRST_NAME, sp_pharm_address_lookups.TEVA_ZIP;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_IMS_Plan_Workbook AS
 SELECT x.PAYER_PLAN_NUM AS payer_plan_num,
        x.PLAN_NAME AS plan_name,
        x.PAYER_NAME AS payer_name,
        m.PAYMENT_METHOD AS payment_method,
        x.MODEL AS model
 FROM WSMP_ADMIN_ORA.TFC_IMS_PLAN_XREF x, WSMP_ADMIN_ORA.DIM_IMS_MODEL_PAYMENT_METHOD m
 WHERE (x.MODEL = m.MODEL);

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_tb_affiliations AS
SELECT affl.FROM_ACCOUNT_VOD__C AS affiliated_from_id, replace(rt1.NAME, '_vod'::varchar(4), ''::varchar) AS affiliated_from_account_type, acct1.OUTLET_ID_TVA__C AS ims_outlet_code, acct1.ACCOUNT_DEMO_ID_TVA__C AS acct_demo_id, affl.TO_ACCOUNT_VOD__C AS affiliated_to_id, replace(rt2.NAME, '_vod'::varchar(4), ''::varchar) AS affiliated_to_account_type, acct2.ID_VOD__C AS ims_id FROM (((((WSMP_ADMIN.VV_ACCOUNT acct1 JOIN WSMP_ADMIN.VV_AFFILIATION_VOD__C affl ON ((acct1.ID = affl.FROM_ACCOUNT_VOD__C))) JOIN WSMP_ADMIN.VV_ACCOUNT acct2 ON ((affl.TO_ACCOUNT_VOD__C = acct2.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rt1 ON ((acct1.RECORDTYPEID = rt1.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rt2 ON ((acct2.RECORDTYPEID = rt2.ID))) JOIN (SELECT acctshr.ACCOUNTID AS accountid FROM (WSMP_ADMIN.VV_ACCOUNTSHARE acctshr JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) WHERE (g.DEVELOPERNAME ~~ 'TB%'::varchar(3)) GROUP BY acctshr.ACCOUNTID) x ON ((acct1.ID = x.accountid))) WHERE (rt1.NAME <> ALL (ARRAY['Professional_vod'::varchar(16), 'Staff'::varchar(5)]));

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_segment AS
SELECT iq.veeva_account_id, iq.product_name, iq.segment FROM (SELECT pm.ACCOUNT_VOD__C AS veeva_account_id, p.NAME AS product_name, coalesce(pm.SEGMENT__C, pm.BUSINESS_SEGMENT_TVA__C) AS segment, row_number() OVER (PARTITION BY pm.ACCOUNT_VOD__C, p.NAME ORDER BY pm.LASTMODIFIEDDATE) AS rnk FROM (WSMP_ADMIN.VV_PRODUCT_METRICS_VOD__C pm JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((pm.PRODUCTS_VOD__C = p.ID))) WHERE ((pm.SEGMENT__C IS NOT NULL) OR (pm.BUSINESS_SEGMENT_TVA__C IS NOT NULL))) iq WHERE (iq.rnk = 1);

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_samples AS
SELECT s.ID AS sample_id, c.ID AS call_id, a.ID AS veeva_account_id, trunc(c.LOCAL_CALL_DATETIME_VOD__C, 'DD'::varchar(2)) AS call_date, substr(c.TERRITORY_VOD__C, 1, 2) AS sales_force_id, c.TERRITORY_VOD__C AS territory_num, c.CALL_TYPE_VOD__C AS call_type, c.ATTENDEE_TYPE_VOD__C AS attendee_type, CASE WHEN (rta.NAME = ANY (ARRAY['Hospital_vod'::varchar(12), 'Pharmacy_vod'::varchar(12), 'Practice_vod'::varchar(12)])) THEN 'ACCT'::varchar(4) WHEN ((rta.NAME = 'Professional_vod'::varchar(16)) AND (a.ID_VOD__C IS NULL) AND (a.CREDENTIALS_VOD__C = ANY (ARRAY['Nurse'::varchar(5), 'Billing Staff'::varchar(13), 'Office Staff'::varchar(12), 'Other Contact'::varchar(13), 'Pharmacist/Pharm D'::varchar(18), 'Practice Manager'::varchar(16), 'Refill Coordinator'::varchar(18), 'Reimbursement Specialist'::varchar(24)]))) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Staff'::varchar(5)) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Professional_vod'::varchar(16)) THEN 'PROF'::varchar(4) ELSE 'UNK'::varchar(3) END AS demo_type, CASE WHEN (p.PRODUCT_TYPE_VOD__C = 'BRC'::varchar(3)) THEN 'REQUEST'::varchar(7) ELSE 'DROP'::varchar(4) END AS sample_type, upper(pp.NAME) AS product_name, upper(p.NAME) AS sample_name, p.PRODUCT_ID_TEVA__C AS sample_ndc, s.QUANTITY_VOD__C AS qty, c.ENTITY_DISPLAY_NAME_VOD__C AS name_on_call, c.ADDRESS_LINE_1_VOD__C AS address1_on_call, c.ADDRESS_LINE_2_VOD__C AS address2_on_call, c.CITY_VOD__C AS city_on_call, c.STATE_VOD__C AS state_on_call, c.ZIP_VOD__C AS zip_on_call, a.ID_VOD__C AS ims_id, c.DEA_VOD__C AS dea_num, c.OWNERID AS ownerid, u.EMPLOYEENUMBER AS employeenumber, c.PARENT_CALL_VOD__C AS parent_call_id, c.CREATEDBYID AS created_by, c.CREATEDDATE AS created_date FROM (((((((WSMP_ADMIN.VV_CALL2_VOD__C c JOIN WSMP_ADMIN.VV_CALL2_SAMPLE_VOD__C s ON ((c.ID = s.CALL2_VOD__C))) JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((s.PRODUCT_VOD__C = p.ID))) LEFT JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C pp ON ((p.PARENT_PRODUCT_VOD__C = pp.ID))) JOIN WSMP_ADMIN.VV_ACCOUNT a ON ((c.ACCOUNT_VOD__C = a.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rtc ON ((c.RECORDTYPEID = rtc.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((a.RECORDTYPEID = rta.ID))) LEFT JOIN WSMP_ADMIN.VV_USER u ON ((c.OWNERID = u.ID))) WHERE ((c.LOCAL_CALL_DATETIME_VOD__C >= '2012-01-01 00:00:00'::timestamp(0)) AND (c.STATUS_VOD__C = 'Submitted_vod'::varchar(13)) AND (p.PRODUCT_TYPE_VOD__C = ANY (ARRAY['BRC'::varchar(3), 'Sample'::varchar(6)])));

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_rtm AS
SELECT substr(c.TERRITORY_VOD__C, 1, 2) AS sales_force_id, c.TERRITORY_VOD__C AS territory_num, c.ID AS call_id, c.ACCOUNT_VOD__C AS veeva_account_id, a.ID_VOD__C AS ims_id, a.EXTERNAL_ID_VOD__C AS siebel_id, trunc(c.CALL_DATETIME_VOD__C, 'DD'::varchar(2)) AS rtm_letter_date, CASE WHEN (p.PRODUCT_ID_TEVA__C ~~ 'AMR%'::varchar(4)) THEN 'AMRIX'::varchar(5) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'FEN%'::varchar(4)) THEN 'FENTORA'::varchar(7) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'NUV%'::varchar(4)) THEN 'NUVIGIL'::varchar(7) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'TIRF%'::varchar(5)) THEN 'FENTORA'::varchar(7) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'TRE%'::varchar(4)) THEN 'TREANDA'::varchar(7) ELSE 'error'::varchar(5) END AS product_name, CASE WHEN (p.PRODUCT_ID_TEVA__C ~~ 'AMR%'::varchar(4)) THEN 'A00100'::varchar(6) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'FEN%'::varchar(4)) THEN '300500'::varchar(6) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'NUV%'::varchar(4)) THEN '100N00'::varchar(6) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'TIRF%'::varchar(5)) THEN '300500'::varchar(6) WHEN (p.PRODUCT_ID_TEVA__C ~~ 'TRE%'::varchar(4)) THEN 'ONC590'::varchar(6) ELSE 'error'::varchar(5) END AS product_code, p.PRODUCT_ID_TEVA__C AS rtm_letter_code, p.DESCRIPTION_VOD__C AS description, c.ENTITY_DISPLAY_NAME_VOD__C AS prof_full_name, u.EMPLOYEENUMBER AS emp_id, u.NAME AS emp_full_name, c.CREATEDBYID AS created_by, c.CREATEDDATE AS created_date FROM ((((WSMP_ADMIN.VV_CALL2_VOD__C c JOIN WSMP_ADMIN.VV_CALL2_SAMPLE_VOD__C s ON ((c.ID = s.CALL2_VOD__C))) JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((s.PRODUCT_VOD__C = p.ID))) JOIN WSMP_ADMIN.VV_ACCOUNT a ON ((c.ACCOUNT_VOD__C = a.ID))) LEFT JOIN WSMP_ADMIN.VV_USER u ON ((c.OWNERID = u.ID))) WHERE ((p.PRODUCT_TYPE_VOD__C = 'Educational'::varchar(11)) AND (p.SUB_TYPE__C = 'Letters'::varchar(7)) AND (c.STATUS_VOD__C = 'Submitted_vod'::varchar(13)));

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_merge_history AS
SELECT vv_acct_merge_history_vod__c.NAME AS old_veeva_account_id, vv_acct_merge_history_vod__c.ACCOUNT_VOD__C AS new_veeva_account_id, vv_acct_merge_history_vod__c.CREATEDDATE AS merge_date FROM WSMP_ADMIN.VV_ACCT_MERGE_HISTORY_VOD__C;

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_call_plan AS
SELECT iq.account_tva__c AS veeva_account_id, iq.id_vod__c AS ims_id, substr(iq.territory_tva__c, 1, 2) AS sales_force_id, iq.territory_tva__c AS territory_num, initcap(iq.name) AS prod, sum(CASE WHEN (iq.priority_tva__c = 1::numeric(18,0)) THEN iq.goal_tva__c ELSE 0::numeric(18,0) END) AS committed_p1, sum(CASE WHEN (iq.priority_tva__c = 2::numeric(18,0)) THEN iq.goal_tva__c ELSE 0::numeric(18,0) END) AS committed_p2, sum(CASE WHEN (iq.priority_tva__c = 3::numeric(18,0)) THEN iq.goal_tva__c ELSE 0::numeric(18,0) END) AS committed_p3, iq.lastname AS last_name, iq.firstname AS first_name, iq.start_date_tva__c AS start_date, iq.end_date_tva__c AS end_date FROM (SELECT cg.ACCOUNT_TVA__C AS account_tva__c, a.ID_VOD__C AS id_vod__c, cg.TERRITORY_TVA__C AS territory_tva__c, p.NAME AS name, cg.PRIORITY_TVA__C AS priority_tva__c, cg.GOAL_TVA__C AS goal_tva__c, a.LASTNAME AS lastname, a.FIRSTNAME AS firstname, cg.START_DATE_TVA__C AS start_date_tva__c, cg.END_DATE_TVA__C AS end_date_tva__c FROM ((WSMP_ADMIN.VV_CALL_GOAL_TVA__C cg JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((cg.PRODUCT_CATALOG_TVA__C = p.ID))) JOIN WSMP_ADMIN.VV_ACCOUNT a ON ((cg.ACCOUNT_TVA__C = a.ID)))) iq GROUP BY iq.account_tva__c, iq.id_vod__c, iq.territory_tva__c, iq.name, iq.lastname, iq.firstname, iq.start_date_tva__c, iq.end_date_tva__c;

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_bp_affiliations AS
SELECT affl.FROM_ACCOUNT_VOD__C AS affiliated_from_id, acct1.EXTERNAL_ID_VOD__C AS bp_code, affl.TO_ACCOUNT_VOD__C AS affiliated_to_id, acct2.ID_VOD__C AS ims_id FROM (((WSMP_ADMIN.VV_ACCOUNT acct1 JOIN WSMP_ADMIN.VV_AFFILIATION_VOD__C affl ON ((acct1.ID = affl.FROM_ACCOUNT_VOD__C))) JOIN WSMP_ADMIN.VV_RECORDTYPE rt ON ((acct1.RECORDTYPEID = rt.ID))) JOIN WSMP_ADMIN.VV_ACCOUNT acct2 ON ((affl.TO_ACCOUNT_VOD__C = acct2.ID))) WHERE (rt.NAME = 'ParaGard_TVA'::varchar(12));

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_affiliations AS
SELECT affl.FROM_ACCOUNT_VOD__C AS affiliated_from_id, replace(rt1.NAME, '_vod'::varchar(4), ''::varchar) AS affiliated_from_account_type, acct1.OUTLET_ID_TVA__C AS ims_outlet_code, acct1.ACCOUNT_DEMO_ID_TVA__C AS acct_demo_id, affl.TO_ACCOUNT_VOD__C AS affiliated_to_id, replace(rt2.NAME, '_vod'::varchar(4), ''::varchar) AS affiliated_to_account_type, acct2.ID_VOD__C AS ims_id FROM (((((WSMP_ADMIN.VV_ACCOUNT acct1 JOIN WSMP_ADMIN.VV_AFFILIATION_VOD__C affl ON ((acct1.ID = affl.FROM_ACCOUNT_VOD__C))) JOIN WSMP_ADMIN.VV_ACCOUNT acct2 ON ((affl.TO_ACCOUNT_VOD__C = acct2.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rt1 ON ((acct1.RECORDTYPEID = rt1.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rt2 ON ((acct2.RECORDTYPEID = rt2.ID))) JOIN (SELECT acctshr.ACCOUNTID AS accountid FROM (WSMP_ADMIN.VV_ACCOUNTSHARE acctshr JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) GROUP BY acctshr.ACCOUNTID) x ON ((acct1.ID = x.accountid))) WHERE (rt1.NAME <> ALL (ARRAY['Professional_vod'::varchar(16), 'Staff'::varchar(5)]));

CREATE  VIEW WSMP_ADMIN_ORA.v_territory_rep_mgr_dir AS
SELECT rep.SALES_FORCE_ID AS sales_force_id, rep.TERRITORY_NUM AS rep_territory_num, rep.TERRITORY_NAME AS rep_territory_name, m.TERRITORY_NUM AS m_territory_num, m.TERRITORY_NAME AS m_territory_name, d.TERRITORY_NUM AS d_territory_num, d.TERRITORY_NAME AS d_territory_name, h.TERRITORY_NUM AS h_territory_num, h.TERRITORY_NAME AS h_territory_name FROM (((WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA rep LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA m ON ((rep.PARENT_TERRITORY_NUM = m.TERRITORY_NUM))) LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA d ON (((m.PARENT_TERRITORY_NUM = d.TERRITORY_NUM) AND (d.REP_TYPE IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA h ON ((d.PARENT_TERRITORY_NUM = h.TERRITORY_NUM))) WHERE (rep.REP_TYPE = 'REP'::varchar(3));

CREATE  VIEW WSMP_ADMIN_ORA.v_roster_teva_rep_mgr_dir AS
SELECT rep.SALES_FORCE_ID AS sales_force_id, rep.EMPLOYEE_ID AS rep_emp_id, rep.TERRITORY_NUM AS rep_territory_num, rep.FIRST_NAME AS rep_first_name, rep.LAST_NAME AS rep_last_name, rep.FULL_NAME AS rep_full_name, rep.EMAIL AS rep_email, rep.USERNAME AS rep_username, rep.HIRE_DATE AS rep_hire_date, m.EMPLOYEE_ID AS m_emp_id, m.TERRITORY_NUM AS m_territory_num, m.FIRST_NAME AS m_first_name, m.LAST_NAME AS m_last_name, m.FULL_NAME AS m_full_name, m.EMAIL AS m_email, m.USERNAME AS m_username, d.EMPLOYEE_ID AS d_emp_id, d.TERRITORY_NUM AS d_territory_num, d.FIRST_NAME AS d_first_name, d.LAST_NAME AS d_last_name, d.FULL_NAME AS d_full_name, d.EMAIL AS d_email, d.USERNAME AS d_username, h.EMPLOYEE_ID AS h_emp_id, h.TERRITORY_NUM AS h_territory_num, h.FIRST_NAME AS h_first_name, h.LAST_NAME AS h_last_name, h.FULL_NAME AS h_full_name, h.EMAIL AS h_email, h.USERNAME AS h_username FROM (((WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA rep LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA m ON ((rep.PARENT_TERRITORY_NUM = m.TERRITORY_NUM))) LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA d ON (((m.PARENT_TERRITORY_NUM = d.TERRITORY_NUM) AND (d.REP_TYPE IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA h ON ((d.PARENT_TERRITORY_NUM = h.TERRITORY_NUM))) WHERE (rep.REP_TYPE = 'REP'::varchar(3)) ORDER BY rep.TERRITORY_NUM;

CREATE  VIEW WSMP_ADMIN_ORA.v_onc_related_accounts AS
SELECT ra.ACCT_DEMO_ID AS acct_demo_id, coalesce(ad.OUTLET_NAME, ad.FACILITY_NAME, ad.PRESCRIBER_NAME) AS acct_name, ra.REL_TYPE AS rel_type, ra.REL_ACCT_DEMO_ID AS rel_acct_demo_id, coalesce(rd.OUTLET_NAME, rd.FACILITY_NAME, rd.PRESCRIBER_NAME) AS rel_acct_name FROM ((WSMP_ADMIN.DIM_ONC_RELATED_ACCOUNTS ra JOIN WSMP_ADMIN.DIM_ONC_ACCOUNT_DEMO ad ON ((ad.ACCT_DEMO_ID = ra.ACCT_DEMO_ID))) JOIN WSMP_ADMIN.DIM_ONC_ACCOUNT_DEMO rd ON ((rd.ACCT_DEMO_ID = ra.REL_ACCT_DEMO_ID)));

CREATE  VIEW WSMP_ADMIN_ORA.v_hcos_kaiser_prof_affil AS
SELECT p.IMS_ID AS ims_id, p.NPI AS npi, p.ALL_DEA AS all_dea, p.LAST_NAME AS last_name, p.FIRST_NAME AS first_name, p.MIDDLE_NAME AS middle_name, at.AFFIL_TYPE_DESC AS affil_type_desc, b.IMS_ORG_ID AS ims_facility_number, b.COT_FACILITY_TYPE AS cot_facility_type, b.BUSINESS_NAME AS business_name, b.PHYSICAL_ADDR_1 AS physical_addr_1, b.PHYSICAL_ADDR_2 AS physical_addr_2, b.PHYSICAL_CITY AS physical_city, b.PHYSICAL_STATE AS physical_state, b.PHYSICAL_ZIP AS physical_zip FROM ((((WSMP_ADMIN.HCOS_BUSINESS b JOIN WSMP_ADMIN.HCOS_PROVIDER_AFFILIATION_FACT paf ON ((b.IMS_ORG_ID = paf.IMS_ORG_ID))) JOIN WSMP_ADMIN.HCOS_PROFESSIONAL p ON ((paf.HCE_ID_PRFSNL = p.HCE_ID_PRFSNL))) LEFT JOIN WSMP_ADMIN.HCOS_AFFILIATION_TYPE at ON ((paf.AFFIL_TYPE_ID = at.AFFIL_TYPE_ID))) JOIN WSMP_ADMIN.HCOS_RELATIONSHIP_FACT rf ON ((b.IMS_ORG_ID = rf.IMS_ORG_ID_CHILD))) WHERE ((rf.IMS_ORG_ID_PARENT = 'INS00000226'::varchar(11)) AND (b.PHYSICAL_STATE = 'CA'::varchar(2)));

CREATE  VIEW WSMP_ADMIN_ORA.v_hcos_kaiser_contact_affil AS
SELECT p.IMS_ID AS ims_id, p.NPI AS npi, p.ALL_DEA AS all_dea, p.LAST_NAME AS last_name, p.FIRST_NAME AS first_name, p.MIDDLE_NAME AS middle_name, pt.TITLE_GROUP_DESC AS title_group_desc, b.IMS_ORG_ID AS ims_facility_number, b.BUSINESS_NAME AS business_name, b.PHYSICAL_ADDR_1 AS physical_addr_1, b.PHYSICAL_ADDR_2 AS physical_addr_2, b.PHYSICAL_CITY AS physical_city, b.PHYSICAL_STATE AS physical_state, b.PHYSICAL_ZIP AS physical_zip FROM ((((WSMP_ADMIN.HCOS_BUSINESS b JOIN WSMP_ADMIN.HCOS_CONTACT_AFFILTN_FACT caf ON ((b.IMS_ORG_ID = caf.IMS_ORG_ID))) JOIN WSMP_ADMIN.HCOS_PROFESSIONAL p ON ((caf.HCE_ID_PRFSNL = p.HCE_ID_PRFSNL))) LEFT JOIN WSMP_ADMIN.HCOS_PROFESSIONAL_TITLE pt ON ((caf.TITLE_GROUP_CODE = pt.TITLE_GROUP_CODE))) JOIN WSMP_ADMIN.HCOS_RELATIONSHIP_FACT rf ON ((b.IMS_ORG_ID = rf.IMS_ORG_ID_CHILD))) WHERE ((rf.IMS_ORG_ID_PARENT = 'INS00000226'::varchar(11)) AND (b.PHYSICAL_STATE = 'CA'::varchar(2)));

CREATE  VIEW WSMP_ADMIN_ORA.v_asi_voucher_redemption AS
SELECT 'asi'::varchar(3) AS provider, ar.RD_KEY AS rd_key, ar.PROGRAM_NUM AS program_num, ar.VOUCHER_NUM AS voucher_num, ar.CEPH_ID AS ceph_id, ar.NDC_CODE AS ndc_code, ar.PRODUCT_NAME AS product_name, ar.FILL_DATE AS fill_date, ar.QTY AS qty, ap.PROGRAM_DESC AS program_desc, ap.SALES_FORCE_ID AS sales_force_id, ap.PROGRAM_TYPE AS program_type, ar.COMP_INCLUDE AS comp_include FROM (WSMP_ADMIN.TFC_ASI_REDEMPTION_DETAIL ar LEFT JOIN WSMP_ADMIN.DIM_ASI_PROGRAM ap ON ((ap.ASI_PROGRAM_NUM = ar.PROGRAM_NUM))) WHERE (ar.REDEMPTION_TYPE = 'VOUCHER'::varchar(7)) ORDER BY ar.CEPH_ID, ar.FILL_DATE, ar.NDC_CODE;

CREATE  VIEW WSMP_ADMIN_ORA.v_asi_plan_name AS
SELECT tfc_ims_plan_xref.PAYER_PLAN_NUM AS payer_plan_num, tfc_ims_plan_xref.PLAN_NAME AS plan_name, CASE tfc_ims_plan_xref.PAYER_NUM WHEN NULLSEQUAL '000002'::varchar(6) THEN tfc_ims_plan_xref.PLAN_NAME ELSE tfc_ims_plan_xref.PAYER_NAME END AS payer_name, tfc_ims_plan_xref.MODEL AS model FROM WSMP_ADMIN.TFC_IMS_PLAN_XREF ORDER BY tfc_ims_plan_xref.PAYER_PLAN_NUM;

CREATE  VIEW WSMP_ADMIN_ORA.v_adasuve_sampling AS
SELECT stg_rems_facility.ENROLLMENT_ID AS enrollment_id, stg_rems_facility.SITE_NAME AS site_name, stg_rems_facility.ADDRESS_1 AS address_1, stg_rems_facility.ADDRESS_2 AS address_2, stg_rems_facility.CITY AS city, stg_rems_facility.STATE AS state, stg_rems_facility.ZIP_CODE AS zip_code FROM WSMP_ADMIN.STG_REMS_FACILITY WHERE ((stg_rems_facility.STATUS_DESCRIPTION = 'Enrolled'::varchar(8)) AND (stg_rems_facility.EXPIRATION_DATE > (statement_timestamp())::timestamp));

CREATE  VIEW WSMP_ADMIN_ORA.i_adasuve_rems_facility AS
SELECT stg_rems_facility.VEEVA_ACCOUNT_ID AS veeva_account_id, stg_rems_facility.NPI AS npi, stg_rems_facility.DEA AS dea, stg_rems_facility.ENROLLMENT_ID AS enrollment_id, stg_rems_facility.PROGRAM_NAME AS program_name, stg_rems_facility.HEALTHCARE_FACILITY_TYPE AS healthcare_facility_type, stg_rems_facility.SITE_NAME AS site_name, stg_rems_facility.ADDRESS_1 AS address_1, stg_rems_facility.ADDRESS_2 AS address_2, stg_rems_facility.CITY AS city, stg_rems_facility.STATE AS state, stg_rems_facility.ZIP_CODE AS zip_code, stg_rems_facility.FIRST_NAME AS first_name, stg_rems_facility.MIDDLE_NAME AS middle_name, stg_rems_facility.LAST_NAME AS last_name, stg_rems_facility.STATUS_DESCRIPTION AS status_description, stg_rems_facility.IN_PROGRESS_STEP AS in_progress_step, stg_rems_facility.PHONE_NUMBER AS phone_number, stg_rems_facility.EFFECTIVE_DATE AS effective_date, stg_rems_facility.EXPIRATION_DATE AS expiration_date, stg_rems_facility.LAST_BUILD_DATE AS last_build_date FROM WSMP_ADMIN.STG_REMS_FACILITY;

CREATE  VIEW WSMP_ADMIN_ORA.i_contact_data AS
SELECT d.ims_id, d.veeva_account_id, CASE WHEN (dncn.PRODUCT_NAME = 'NUVIGIL'::varchar(7)) THEN 'Y'::varchar(1) ELSE NULL END AS nuvigil_dnc_flag, CASE WHEN (dncf.PRODUCT_NAME = 'FENTORA'::varchar(7)) THEN 'Y'::varchar(1) ELSE NULL END AS fentora_dnc_flag, CASE WHEN (s.IMS_ID IS NOT NULL) THEN 'Y'::varchar(1) ELSE NULL END AS dnp_flag, r.status AS tirf_rems_flag, r.effective_date AS tirf_rems_effective_date, r.expiration_date AS tirf_rems_expiration_date, seg.PARAGARD_SEGMENT AS paragard_segment FROM ((((((SELECT ims_ids.ims_id, a.ID AS veeva_account_id FROM ((((SELECT tfc_ims_presc_demo_w.ims_id FROM WSMP_ADMIN.tfc_ims_presc_demo_w UNION SELECT dim_dnc.IMS_ID AS ims_id FROM WSMP_ADMIN.DIM_DNC) UNION SELECT debarred.IMS_ID AS ims_id FROM WSMP_ADMIN.DEBARRED WHERE (debarred.CURRENT_IND = 'Y'::varchar(1))) UNION SELECT vv_account.ID_VOD__C AS ims_id FROM WSMP_ADMIN.VV_ACCOUNT WHERE (vv_account.ID_VOD__C IS NOT NULL)) ims_ids LEFT JOIN WSMP_ADMIN.VV_ACCOUNT a ON ((ims_ids.ims_id = a.ID_VOD__C)))) d LEFT JOIN WSMP_ADMIN.DIM_DNC dncn ON (((d.ims_id = dncn.IMS_ID) AND (dncn.PRODUCT_NAME = 'NUVIGIL'::varchar(7))))) LEFT JOIN WSMP_ADMIN.DIM_DNC dncf ON (((d.ims_id = dncf.IMS_ID) AND (dncf.PRODUCT_NAME = 'FENTORA'::varchar(7))))) LEFT JOIN WSMP_ADMIN.DEBARRED s ON (((d.ims_id = s.IMS_ID) AND (s.CURRENT_IND = 'Y'::varchar(1))))) LEFT JOIN (SELECT r.IMS_ID AS ims_id, CASE WHEN ((r.STATUS = 'Enrolled'::varchar(8)) AND (r.PPAF_COUNT IS NOT NULL)) THEN concat('Enrolled-'::varchar(9), (r.PPAF_COUNT)::varchar) ELSE r.STATUS END AS status, r.EFFECTIVE_DATE AS effective_date, r.EXPIRATION_DATE AS expiration_date FROM WSMP_ADMIN.STG_REMS_PRESCRIBER r GROUP BY r.IMS_ID, CASE WHEN ((r.STATUS = 'Enrolled'::varchar(8)) AND (r.PPAF_COUNT IS NOT NULL)) THEN concat('Enrolled-'::varchar(9), (r.PPAF_COUNT)::varchar) ELSE r.STATUS END, r.EFFECTIVE_DATE, r.EXPIRATION_DATE) r ON ((d.ims_id = r.ims_id))) LEFT JOIN WSMP_ADMIN.STG_TW_PARAGARD_SEGMENT seg ON ((d.ims_id = seg.IMS_ID))) GROUP BY d.ims_id, d.veeva_account_id, CASE WHEN (dncn.PRODUCT_NAME = 'NUVIGIL'::varchar(7)) THEN 'Y'::varchar(1) ELSE NULL END, CASE WHEN (dncf.PRODUCT_NAME = 'FENTORA'::varchar(7)) THEN 'Y'::varchar(1) ELSE NULL END, CASE WHEN (s.IMS_ID IS NOT NULL) THEN 'Y'::varchar(1) ELSE NULL END, r.status, r.effective_date, r.expiration_date, seg.PARAGARD_SEGMENT;

CREATE  VIEW WSMP_ADMIN_ORA.roster_office_toolkit AS
(((((((((((SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS username, dim_csf_sales_roster_teva.SALES_FORCE_ID AS sales_force_id FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (length(dim_csf_sales_roster_teva.TERRITORY_NUM) = 8)) UNION SELECT 'afoote'::varchar(6), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'sbischof'::varchar(8), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'phazel'::varchar(6), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'gfowler'::varchar(7), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'mtarrant'::varchar(8), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'jpage'::varchar(5), 'TC'::varchar(2) FROM v_catalog.dual) UNION SELECT 'mday'::varchar(4), 'TC'::varchar(2) FROM v_catalog.dual) UNION SELECT 'kreedy'::varchar(6), 'TC'::varchar(2) FROM v_catalog.dual) UNION SELECT 'trainey'::varchar(7), 'TO'::varchar(2) FROM v_catalog.dual) UNION SELECT 'mkartman'::varchar(8), 'TO'::varchar(2) FROM v_catalog.dual) UNION SELECT 'dmack01'::varchar(7), 'TN'::varchar(2) FROM v_catalog.dual) UNION SELECT 'rkim'::varchar(4), 'TN'::varchar(2) FROM v_catalog.dual;

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_demo AS
SELECT c.ROW_ID AS csf_demo_id, p.X_SALES_FORCE AS sales_force_id, 'PROF'::varchar(4) AS demo_type, x.ATTRIB_03 AS ims_id, x.X_ATTRIB_50 AS hms_id, substr(btrim(x.ATTRIB_36), 1, 10) AS me_num, ca.DEA_NUM AS dea_num, ca.DEA_EXPR_DT AS dea_expir_date, substr(ca.X_ATTRIB_03, 1, 12) AS dea_drug_schedule, p.NAME AS territory_num, 'N'::varchar(1) AS house_acct_flag, 'A'::varchar(1) AS src_verification_status, c.LAST_NAME AS last_name, c.FST_NAME AS first_name, c.MID_NAME AS middle_name, c.PER_TITLE_SUFFIX AS suffix_name, fnx.CRRPT_FMT_CD AS degree, substr(btrim(ap.ADDR), 1, 75) AS address1, substr(btrim(ap.ADDR_LINE_2), 1, 75) AS address2, substr(btrim(ap.ADDR_LINE_3), 1, 75) AS address3, ap.CITY AS city, ap.STATE AS state, ap.ZIPCODE AS zip, c.WORK_PH_NUM AS phone, c.FAX_PH_NUM AS fax, c.CELL_PH_NUM AS mobile, c.EMAIL_ADDR AS email, ms.NAME AS prim_specialty, substr(btrim(l.LICENSE_NUM), 1, 20) AS state_license_number, l.STATE_CD AS state_license_state, CASE WHEN (l.X_OK_TO_SAMPLE_FLG = 'Y'::char(1)) THEN 'E'::varchar(1) ELSE 'I'::varchar(1) END AS state_license_elig_code, l.LICENSE_EXP_DT AS state_license_expir_date, substr(btrim(CASE WHEN ((btrim(fnx.CRRPT_FMT_CD) IS NOT NULL) AND (btrim(l.STATE_CD) IS NOT NULL) AND (btrim(l.LICENSE_NUM) IS NOT NULL)) THEN ((((btrim(fnx.CRRPT_FMT_CD) || '-'::varchar(1)) || btrim(l.STATE_CD)) || '-'::varchar(1)) || btrim(l.LICENSE_NUM)) ELSE NULL END), 1, 30) AS state_num, l.X_VALIDATION_DT AS sln_validation_date, CASE WHEN ((l.X_VALIDATION_DT IS NOT NULL) AND (l.X_OK_TO_SAMPLE_FLG = 'Y'::char(1))) THEN 'MedPro'::varchar(6) ELSE NULL END AS sln_validation_source, x.ATTRIB_09 AS no_spend, pc.X_ATTRIB_11 AS treats_es, CASE WHEN (p.X_SALES_FORCE = 'TC'::varchar(2)) THEN x.X_ATTRIB_58 ELSE NULL END AS nuvigil_dnc, CASE WHEN (p.X_SALES_FORCE = 'TC'::varchar(2)) THEN x.X_ATTRIB_83 ELSE NULL::"char" END AS nuvigil_rems_pb, CASE WHEN (p.X_SALES_FORCE = 'TC'::varchar(2)) THEN substr(x.X_ATTRIB_73, 1, 1) ELSE NULL END AS nuvigil_app, CASE WHEN (p.X_SALES_FORCE = 'TP'::varchar(2)) THEN x.X_ATTRIB_72 ELSE NULL END AS fentora_dnc, CASE WHEN (p.X_SALES_FORCE = 'TP'::varchar(2)) THEN x.X_ATTRIB_71 ELSE NULL::"char" END AS fentora_app, CASE WHEN (p.X_SALES_FORCE = 'TP'::varchar(2)) THEN x.ATTRIB_42 ELSE NULL END AS fentora_rems_status, pc.LAST_CALL_DT AS sfa_last_call_date, coalesce(cm2.CM_ID, cm1.CM_ID) AS cm_id, c.ROW_ID AS siebel_contact_row_id, ap.ROW_ID AS siebel_addr_per_row_id, 'Y'::varchar(1) AS ora_viewable_flag, c.CREATED AS sfa_create_date, (statement_timestamp())::timestamp AS last_build_date, NULL AS ceph_id, CASE WHEN (length(c.INTEGRATION_ID) = 18) THEN c.INTEGRATION_ID ELSE NULL END AS veeva_account_id, pc.STATUS AS territory_status FROM (((((((((((WSMP_ADMIN.S_CONTACT c JOIN WSMP_ADMIN.S_POSTN_CON pc ON ((pc.CON_ID = c.ROW_ID))) JOIN WSMP_ADMIN.S_POSTN p ON ((pc.POSTN_ID = p.ROW_ID))) JOIN WSMP_ADMIN.S_ORG_EXT o ON ((p.BU_ID = o.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT_X x ON ((x.ROW_ID = c.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT_FNX fnx ON ((fnx.ROW_ID = c.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_ADDR_PER ap ON ((ap.ROW_ID = pc.PR_ADDR_ID))) LEFT JOIN WSMP_ADMIN.S_MED_SPEC ms ON ((ms.ROW_ID = c.MED_SPEC_ID))) LEFT JOIN (SELECT iq.ROW_ID, iq.CREATED, iq.CREATED_BY, iq.LAST_UPD, iq.LAST_UPD_BY, iq.MODIFICATION_NUM, iq.CONFLICT_ID, iq.ACTIVE_FLG, iq.ADDR_PER_ID, iq.BL_ADDR_FLG, iq.FRAUD_FLG, iq.MAIN_ADDR_FLG, iq.RELATION_TYPE_CD, iq.SHIP_ADDR_FLG, iq.DEA_EXPR_DT, iq.END_DT, iq.FRI_1ST_CLOSE_TM, iq.FRI_1ST_OPEN_TM, iq.FRI_2ND_CLOSE_TM, iq.FRI_2ND_OPEN_TM, iq.MON_1ST_CLOSE_TM, iq.MON_1ST_OPEN_TM, iq.MON_2ND_CLOSE_TM, iq.MON_2ND_OPEN_TM, iq.NUM_MONTHS_AT_ADDR, iq.SAT_1ST_CLOSE_TM, iq.SAT_1ST_OPEN_TM, iq.SAT_2ND_CLOSE_TM, iq.SAT_2ND_OPEN_TM, iq.START_DT, iq.SUN_1ST_CLOSE_TM, iq.SUN_1ST_OPEN_TM, iq.SUN_2ND_CLOSE_TM, iq.SUN_2ND_OPEN_TM, iq.THU_1ST_CLOSE_TM, iq.THU_1ST_OPEN_TM, iq.THU_2ND_CLOSE_TM, iq.THU_2ND_OPEN_TM, iq.TUE_1ST_CLOSE_TM, iq.TUE_1ST_OPEN_TM, iq.TUE_2ND_CLOSE_TM, iq.TUE_2ND_OPEN_TM, iq.WED_1ST_CLOSE_TM, iq.WED_1ST_OPEN_TM, iq.WED_2ND_CLOSE_TM, iq.WED_2ND_OPEN_TM, iq.ACCNT_ID, iq.ADDR_MAIL_CD, iq.ADDR_TYPE_CD, iq.BRICK_ID, iq.BU_ID, iq.CONTACT_ID, iq.DEA_NUM, iq.DFLT_SHIP_PRIO_CD, iq.EMAIL_ADDR, iq.FAX_PH_NUM, iq.MAIL_TYPE_CD, iq.OCCUPANCY_CD, iq.ORG_GROUP_ID, iq.PH_NUM, iq.TRNSPRT_ZONE_CD, iq.X_ATTRIB_01, iq.X_ATTRIB_02, iq.X_ATTRIB_03, iq.X_ATTRIB_04, iq.X_ATTRIB_05, iq.X_ATTRIB_06, iq.X_ATTRIB_07, iq.X_OK_TO_SAMPLE, iq.ADDRESSEE, iq.ALIGNMENT_FLG, iq.DB_LAST_UPD, iq.DB_LAST_UPD_SRC, iq.YEARLY_END_DT, iq.YEARLY_START_DT, iq.X_SRC_LAST_UPD, iq.rnk FROM (SELECT sca.ROW_ID, sca.CREATED, sca.CREATED_BY, sca.LAST_UPD, sca.LAST_UPD_BY, sca.MODIFICATION_NUM, sca.CONFLICT_ID, sca.ACTIVE_FLG, sca.ADDR_PER_ID, sca.BL_ADDR_FLG, sca.FRAUD_FLG, sca.MAIN_ADDR_FLG, sca.RELATION_TYPE_CD, sca.SHIP_ADDR_FLG, sca.DEA_EXPR_DT, sca.END_DT, sca.FRI_1ST_CLOSE_TM, sca.FRI_1ST_OPEN_TM, sca.FRI_2ND_CLOSE_TM, sca.FRI_2ND_OPEN_TM, sca.MON_1ST_CLOSE_TM, sca.MON_1ST_OPEN_TM, sca.MON_2ND_CLOSE_TM, sca.MON_2ND_OPEN_TM, sca.NUM_MONTHS_AT_ADDR, sca.SAT_1ST_CLOSE_TM, sca.SAT_1ST_OPEN_TM, sca.SAT_2ND_CLOSE_TM, sca.SAT_2ND_OPEN_TM, sca.START_DT, sca.SUN_1ST_CLOSE_TM, sca.SUN_1ST_OPEN_TM, sca.SUN_2ND_CLOSE_TM, sca.SUN_2ND_OPEN_TM, sca.THU_1ST_CLOSE_TM, sca.THU_1ST_OPEN_TM, sca.THU_2ND_CLOSE_TM, sca.THU_2ND_OPEN_TM, sca.TUE_1ST_CLOSE_TM, sca.TUE_1ST_OPEN_TM, sca.TUE_2ND_CLOSE_TM, sca.TUE_2ND_OPEN_TM, sca.WED_1ST_CLOSE_TM, sca.WED_1ST_OPEN_TM, sca.WED_2ND_CLOSE_TM, sca.WED_2ND_OPEN_TM, sca.ACCNT_ID, sca.ADDR_MAIL_CD, sca.ADDR_TYPE_CD, sca.BRICK_ID, sca.BU_ID, sca.CONTACT_ID, sca.DEA_NUM, sca.DFLT_SHIP_PRIO_CD, sca.EMAIL_ADDR, sca.FAX_PH_NUM, sca.MAIL_TYPE_CD, sca.OCCUPANCY_CD, sca.ORG_GROUP_ID, sca.PH_NUM, sca.TRNSPRT_ZONE_CD, sca.X_ATTRIB_01, sca.X_ATTRIB_02, sca.X_ATTRIB_03, sca.X_ATTRIB_04, sca.X_ATTRIB_05, sca.X_ATTRIB_06, sca.X_ATTRIB_07, sca.X_OK_TO_SAMPLE, sca.ADDRESSEE, sca.ALIGNMENT_FLG, sca.DB_LAST_UPD, sca.DB_LAST_UPD_SRC, sca.YEARLY_END_DT, sca.YEARLY_START_DT, sca.X_SRC_LAST_UPD, row_number() OVER (PARTITION BY sca.CONTACT_ID, sca.ADDR_PER_ID ORDER BY sca.LAST_UPD DESC, sca.CREATED DESC) AS rnk FROM WSMP_ADMIN.S_CON_ADDR sca) iq WHERE (iq.rnk = 1)) ca ON (((ca.ADDR_PER_ID = pc.PR_ADDR_ID) AND (ca.CONTACT_ID = pc.CON_ID)))) LEFT JOIN WSMP_ADMIN.S_STATE_LIC_LS l ON (((l.ROW_ID = ca.X_ATTRIB_02) AND (l.CONTACT_ID = ca.CONTACT_ID) AND (l.STATUS_CD <> 'Invalid'::varchar(7))))) LEFT JOIN WSMP_ADMIN.STG_CM_ID_XREF cm1 ON (((c.ROW_ID = cm1.ID_NUM) AND (cm1.ID_TYPE = 'SIEBEL_ID'::varchar(9))))) LEFT JOIN WSMP_ADMIN.STG_CM_ID_XREF cm2 ON (((x.ATTRIB_03 = cm2.ID_NUM) AND (cm2.ID_TYPE = 'IMS_ID'::varchar(6))))) WHERE ((p.X_SALES_FORCE = ANY (ARRAY['TB'::varchar(2), 'TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2), 'TR'::varchar(2), 'TW'::varchar(2)])) AND (p.NAME !~~ '%SiebelAdministrator%'::varchar(21)) AND (p.NAME <> 'Align_2007'::varchar(10)) AND (NOT ((x.ATTRIB_03 IS NULL) AND (c.DEGREE = ANY (ARRAY['Billing Staff'::varchar(13), 'Office Staff'::varchar(12), 'Other Contact'::varchar(13), 'Pharmacist/Pharm D'::varchar(18), 'Practice Manager'::varchar(16), 'Refill Coordinator'::varchar(18), 'Reimbursement Specialist'::varchar(24)])))));

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_calls AS
SELECT rep_p.X_SALES_FORCE AS sales_force_id, ea.PAR_EVT_ID AS par_evt_id, ea.ROW_ID AS csf_call_id, ea.TARGET_PER_ID AS csf_demo_id, 'PROF'::varchar(4) AS legacy_call_type, ea.NAME AS name_on_call, ea.ZIPCODE AS zip_on_call, ea.SUBTYPE_CD AS subtype_cd, ea.TODO_CD AS todo_cd, ea.INTEGRATION_ID AS integration_id, ea.ROW_ID AS siebel_evt_act_row_id, ea.TARGET_PER_ID AS siebel_target_per_id, d.ims_id, d.cm_id, d.me_num, ca.DEA_NUM AS dea_num, emp.CSN AS rep_id, rep_p.NAME AS territory_num, trunc(ea.APPT_START_DT, 'DD'::varchar(2)) AS call_date, details.first_detailed_product, details.second_detailed_product, details.third_detailed_product, details.fourth_detailed_product, details.fifth_detailed_product, details.sixth_detailed_product, CASE WHEN (length(c.INTEGRATION_ID) = 18) THEN c.INTEGRATION_ID ELSE NULL END AS veeva_account_id FROM (((((((WSMP_ADMIN.S_EVT_ACT ea JOIN WSMP_ADMIN.S_CONTACT c ON ((c.ROW_ID = ea.TARGET_PER_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT_X x ON ((x.ROW_ID = c.ROW_ID))) JOIN WSMP_ADMIN.S_POSTN rep_p ON ((rep_p.ROW_ID = ea.OWNER_POSTN_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT emp ON ((emp.ROW_ID = ea.CREATED_BY))) LEFT JOIN (SELECT iq.ims_id, iq.cm_id, iq.me_num, iq.siebel_contact_row_id, iq.rnk FROM (SELECT v_siebel_demo.ims_id, v_siebel_demo.cm_id, v_siebel_demo.me_num, v_siebel_demo.siebel_contact_row_id, row_number() OVER (PARTITION BY v_siebel_demo.siebel_contact_row_id ORDER BY v_siebel_demo.veeva_account_id, v_siebel_demo.sales_force_id) AS rnk FROM WSMP_ADMIN.v_siebel_demo) iq WHERE (iq.rnk = 1)) d ON ((c.ROW_ID = d.siebel_contact_row_id))) LEFT JOIN (SELECT iq2.ROW_ID, iq2.CREATED, iq2.CREATED_BY, iq2.LAST_UPD, iq2.LAST_UPD_BY, iq2.MODIFICATION_NUM, iq2.CONFLICT_ID, iq2.ACTIVE_FLG, iq2.ADDR_PER_ID, iq2.BL_ADDR_FLG, iq2.FRAUD_FLG, iq2.MAIN_ADDR_FLG, iq2.RELATION_TYPE_CD, iq2.SHIP_ADDR_FLG, iq2.DEA_EXPR_DT, iq2.END_DT, iq2.FRI_1ST_CLOSE_TM, iq2.FRI_1ST_OPEN_TM, iq2.FRI_2ND_CLOSE_TM, iq2.FRI_2ND_OPEN_TM, iq2.MON_1ST_CLOSE_TM, iq2.MON_1ST_OPEN_TM, iq2.MON_2ND_CLOSE_TM, iq2.MON_2ND_OPEN_TM, iq2.NUM_MONTHS_AT_ADDR, iq2.SAT_1ST_CLOSE_TM, iq2.SAT_1ST_OPEN_TM, iq2.SAT_2ND_CLOSE_TM, iq2.SAT_2ND_OPEN_TM, iq2.START_DT, iq2.SUN_1ST_CLOSE_TM, iq2.SUN_1ST_OPEN_TM, iq2.SUN_2ND_CLOSE_TM, iq2.SUN_2ND_OPEN_TM, iq2.THU_1ST_CLOSE_TM, iq2.THU_1ST_OPEN_TM, iq2.THU_2ND_CLOSE_TM, iq2.THU_2ND_OPEN_TM, iq2.TUE_1ST_CLOSE_TM, iq2.TUE_1ST_OPEN_TM, iq2.TUE_2ND_CLOSE_TM, iq2.TUE_2ND_OPEN_TM, iq2.WED_1ST_CLOSE_TM, iq2.WED_1ST_OPEN_TM, iq2.WED_2ND_CLOSE_TM, iq2.WED_2ND_OPEN_TM, iq2.ACCNT_ID, iq2.ADDR_MAIL_CD, iq2.ADDR_TYPE_CD, iq2.BRICK_ID, iq2.BU_ID, iq2.CONTACT_ID, iq2.DEA_NUM, iq2.DFLT_SHIP_PRIO_CD, iq2.EMAIL_ADDR, iq2.FAX_PH_NUM, iq2.MAIL_TYPE_CD, iq2.OCCUPANCY_CD, iq2.ORG_GROUP_ID, iq2.PH_NUM, iq2.TRNSPRT_ZONE_CD, iq2.X_ATTRIB_01, iq2.X_ATTRIB_02, iq2.X_ATTRIB_03, iq2.X_ATTRIB_04, iq2.X_ATTRIB_05, iq2.X_ATTRIB_06, iq2.X_ATTRIB_07, iq2.X_OK_TO_SAMPLE, iq2.ADDRESSEE, iq2.ALIGNMENT_FLG, iq2.DB_LAST_UPD, iq2.DB_LAST_UPD_SRC, iq2.YEARLY_END_DT, iq2.YEARLY_START_DT, iq2.X_SRC_LAST_UPD, iq2.rnk FROM (SELECT ca.ROW_ID, ca.CREATED, ca.CREATED_BY, ca.LAST_UPD, ca.LAST_UPD_BY, ca.MODIFICATION_NUM, ca.CONFLICT_ID, ca.ACTIVE_FLG, ca.ADDR_PER_ID, ca.BL_ADDR_FLG, ca.FRAUD_FLG, ca.MAIN_ADDR_FLG, ca.RELATION_TYPE_CD, ca.SHIP_ADDR_FLG, ca.DEA_EXPR_DT, ca.END_DT, ca.FRI_1ST_CLOSE_TM, ca.FRI_1ST_OPEN_TM, ca.FRI_2ND_CLOSE_TM, ca.FRI_2ND_OPEN_TM, ca.MON_1ST_CLOSE_TM, ca.MON_1ST_OPEN_TM, ca.MON_2ND_CLOSE_TM, ca.MON_2ND_OPEN_TM, ca.NUM_MONTHS_AT_ADDR, ca.SAT_1ST_CLOSE_TM, ca.SAT_1ST_OPEN_TM, ca.SAT_2ND_CLOSE_TM, ca.SAT_2ND_OPEN_TM, ca.START_DT, ca.SUN_1ST_CLOSE_TM, ca.SUN_1ST_OPEN_TM, ca.SUN_2ND_CLOSE_TM, ca.SUN_2ND_OPEN_TM, ca.THU_1ST_CLOSE_TM, ca.THU_1ST_OPEN_TM, ca.THU_2ND_CLOSE_TM, ca.THU_2ND_OPEN_TM, ca.TUE_1ST_CLOSE_TM, ca.TUE_1ST_OPEN_TM, ca.TUE_2ND_CLOSE_TM, ca.TUE_2ND_OPEN_TM, ca.WED_1ST_CLOSE_TM, ca.WED_1ST_OPEN_TM, ca.WED_2ND_CLOSE_TM, ca.WED_2ND_OPEN_TM, ca.ACCNT_ID, ca.ADDR_MAIL_CD, ca.ADDR_TYPE_CD, ca.BRICK_ID, ca.BU_ID, ca.CONTACT_ID, ca.DEA_NUM, ca.DFLT_SHIP_PRIO_CD, ca.EMAIL_ADDR, ca.FAX_PH_NUM, ca.MAIL_TYPE_CD, ca.OCCUPANCY_CD, ca.ORG_GROUP_ID, ca.PH_NUM, ca.TRNSPRT_ZONE_CD, ca.X_ATTRIB_01, ca.X_ATTRIB_02, ca.X_ATTRIB_03, ca.X_ATTRIB_04, ca.X_ATTRIB_05, ca.X_ATTRIB_06, ca.X_ATTRIB_07, ca.X_OK_TO_SAMPLE, ca.ADDRESSEE, ca.ALIGNMENT_FLG, ca.DB_LAST_UPD, ca.DB_LAST_UPD_SRC, ca.YEARLY_END_DT, ca.YEARLY_START_DT, ca.X_SRC_LAST_UPD, row_number() OVER (PARTITION BY ca.CONTACT_ID, ca.ADDR_PER_ID ORDER BY ca.LAST_UPD DESC, ca.CREATED DESC) AS rnk FROM WSMP_ADMIN.S_CON_ADDR ca) iq2 WHERE (iq2.rnk = 1)) ca ON (((ca.ADDR_PER_ID = ea.TARGET_PER_ADDR_ID) AND (ca.CONTACT_ID = ea.TARGET_PER_ID)))) LEFT JOIN (SELECT d.activity_id, max(CASE WHEN (d.priority = 1) THEN d.product_name ELSE NULL END) AS first_detailed_product, max(CASE WHEN (d.priority = 2) THEN d.product_name ELSE NULL END) AS second_detailed_product, max(CASE WHEN (d.priority = 3) THEN d.product_name ELSE NULL END) AS third_detailed_product, max(CASE WHEN (d.priority = 4) THEN d.product_name ELSE NULL END) AS fourth_detailed_product, max(CASE WHEN (d.priority = 5) THEN d.product_name ELSE NULL END) AS fifth_detailed_product, max(CASE WHEN (d.priority = 6) THEN d.product_name ELSE NULL END) AS sixth_detailed_product FROM (SELECT appl.ACTIVITY_ID AS activity_id, upper(spi.NAME) AS product_name, row_number() OVER (PARTITION BY appl.ACTIVITY_ID ORDER BY appl.PRIORITY_NUM, upper(spi.NAME)) AS priority FROM (WSMP_ADMIN.S_ACT_PROD_APPL appl LEFT JOIN WSMP_ADMIN.S_PROD_INT spi ON ((appl.PRDINT_ID = spi.ROW_ID))) WHERE (appl.CONFLICT_ID = '0'::varchar(1))) d GROUP BY d.activity_id) details ON ((details.activity_id = ea.PAR_EVT_ID))) WHERE ((ea.EVT_STAT_CD = 'Submitted'::varchar(9)) AND (rep_p.POSTN_TYPE_CD = ANY (ARRAY['Sales Representative'::varchar(20), 'TSP Test Position'::varchar(17)])) AND (ea.OWNER_POSTN_ID <> '0-5220'::varchar(6)) AND (((ea.APPT_START_DT >= '2012-01-01 00:00:00'::timestamp) AND (rep_p.X_SALES_FORCE = ANY (ARRAY['TB'::varchar(2), 'TN'::varchar(2), 'TR'::varchar(2), 'TW'::varchar(2)]))) OR ((ea.APPT_START_DT >= '2012-03-01 00:00:00'::timestamp) AND (rep_p.X_SALES_FORCE = ANY (ARRAY['TC'::varchar(2), 'TP'::varchar(2)])))) AND (ea.APPT_START_DT < (statement_timestamp())::timestamp) AND (ea.SUBTYPE_CD = ANY (ARRAY['Contact Call'::varchar(12), 'Attendee Call'::varchar(13)])) AND ((ea.TODO_CD ~~ '%Detail%'::varchar(8)) OR (ea.TODO_CD ~~ '%Call%'::varchar(6))));

CREATE  VIEW WSMP_ADMIN_ORA.v_siebel_bp_affiliations AS
SELECT oex.ROW_ID AS siebel_account_row_id, oex.X_ATTRIB_109 AS bp_code, c.ROW_ID AS siebel_contact_row_id, cx.ATTRIB_03 AS ims_id FROM (((WSMP_ADMIN.S_ORG_EXT_X oex JOIN WSMP_ADMIN.S_PARTY_PER pp ON ((oex.ROW_ID = pp.PARTY_ID))) JOIN WSMP_ADMIN.S_CONTACT c ON ((pp.PERSON_ID = c.ROW_ID))) LEFT JOIN WSMP_ADMIN.S_CONTACT_X cx ON ((cx.ROW_ID = c.ROW_ID))) WHERE (oex.X_ATTRIB_109 IS NOT NULL);

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_calls AS
SELECT c.ID AS call_id, trunc((c.LOCAL_CALL_DATETIME_VOD__C)::timestamp, 'DD'::varchar(2)) AS call_date, h.submit_date, c.LOCAL_CALL_DATETIME_VOD__C AS call_datetime, a.ID AS csf_demo_id, substr(c.TERRITORY_VOD__C, 1, 2) AS sales_force_id, c.TERRITORY_VOD__C AS territory_num, c.CALL_TYPE_VOD__C AS call_type_vod__c, c.ACCOUNT_VOD__C AS demo_id, CASE WHEN (rta.NAME = ANY (ARRAY['Hospital_vod'::varchar(12), 'Pharmacy_vod'::varchar(12), 'Practice_vod'::varchar(12), 'ParaGard_TVA'::varchar(12)])) THEN 'ACCT'::varchar(4) WHEN ((rta.NAME = 'Professional_vod'::varchar(16)) AND (a.ID_VOD__C IS NULL) AND (a.CREDENTIALS_VOD__C = ANY (ARRAY['Nurse'::varchar(5), 'Billing Staff'::varchar(13), 'Office Staff'::varchar(12), 'Other Contact'::varchar(13), 'Pharmacist/Pharm D'::varchar(18), 'Practice Manager'::varchar(16), 'Refill Coordinator'::varchar(18), 'Reimbursement Specialist'::varchar(24)]))) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Staff'::varchar(5)) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Professional_vod'::varchar(16)) THEN 'PROF'::varchar(4) ELSE 'UNK'::varchar(3) END AS legacy_call_type, substr(c.ENTITY_DISPLAY_NAME_VOD__C, 1, 150) AS name_on_call, c.ZIP_VOD__C AS zip_on_call, a.ID_VOD__C AS ims_id, a.ACCOUNT_MASTER_ID_TVA__C AS hms_id, a.NPI_VOD__C AS npi, a.CREDENTIALS_VOD__C AS degree, a.ID AS veeva_account_id, substr(btrim(a.ME__C), 1, 10) AS me_num, c.DEA_VOD__C AS dea_num, CASE WHEN (NOT regexp_like(a.EXTERNAL_ID_VOD__C, '[[:digit:]]{9}'::varchar(14), ''::varchar)) THEN a.EXTERNAL_ID_VOD__C ELSE NULL END AS siebel_target_per_id, CASE WHEN regexp_like(a.EXTERNAL_ID_VOD__C, '[[:digit:]]{9}'::varchar(14), ''::varchar) THEN a.EXTERNAL_ID_VOD__C ELSE NULL END AS bp_code, c.OWNERID AS ownerid, u.EMPLOYEENUMBER AS employeenumber, c.PARENT_CALL_VOD__C AS parent_call_vod__c, CASE WHEN (rtc.NAME = 'Account Management'::varchar(18)) THEN upper(rtc.NAME) ELSE d.first_detailed_product END AS first_detailed_product, d.second_detailed_product, d.third_detailed_product, d.fourth_detailed_product, d.fifth_detailed_product, d.sixth_detailed_product, c.CREATEDBYID AS created_by, c.CREATEDDATE AS created_date, coalesce(c.ATTENDEES_VOD__C, 0::numeric(18,0)) AS attendees, CASE WHEN (c.ATTENDEE_TYPE_VOD__C = 'Group_Account_vod'::varchar(17)) THEN 'Group'::varchar(5) WHEN (c.ATTENDEE_TYPE_VOD__C = 'Person_Account_vod'::varchar(18)) THEN 'Person'::varchar(6) ELSE c.ATTENDEE_TYPE_VOD__C END AS attendee_type FROM ((((((WSMP_ADMIN.VV_CALL2_VOD__C c JOIN WSMP_ADMIN.VV_ACCOUNT a ON ((c.ACCOUNT_VOD__C = a.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rtc ON ((c.RECORDTYPEID = rtc.ID))) JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((a.RECORDTYPEID = rta.ID))) LEFT JOIN (SELECT VV_CALL2_VOD__HISTORY.PARENTID AS parentid, trunc(max(VV_CALL2_VOD__HISTORY.CREATEDDATE), 'DD'::varchar(2)) AS submit_date FROM WSMP_ADMIN.VV_CALL2_VOD__HISTORY WHERE (VV_CALL2_VOD__HISTORY.NEWVALUE = 'Submitted_vod'::varchar(13)) GROUP BY VV_CALL2_VOD__HISTORY.PARENTID) h ON ((c.ID = h.parentid))) LEFT JOIN WSMP_ADMIN.VV_USER u ON ((c.OWNERID = u.ID))) LEFT JOIN (SELECT d.call2_vod__c, max(CASE WHEN (d.priority = 1) THEN d.product_name ELSE NULL END) AS first_detailed_product, max(CASE WHEN (d.priority = 2) THEN d.product_name ELSE NULL END) AS second_detailed_product, max(CASE WHEN (d.priority = 3) THEN d.product_name ELSE NULL END) AS third_detailed_product, max(CASE WHEN (d.priority = 4) THEN d.product_name ELSE NULL END) AS fourth_detailed_product, max(CASE WHEN (d.priority = 5) THEN d.product_name ELSE NULL END) AS fifth_detailed_product, max(CASE WHEN (d.priority = 6) THEN d.product_name ELSE NULL END) AS sixth_detailed_product FROM (SELECT d.CALL2_VOD__C AS call2_vod__c, row_number() OVER (PARTITION BY d.CALL2_VOD__C ORDER BY d.DETAIL_PRIORITY_VOD__C, p.NAME) AS priority, upper(p.NAME) AS product_name FROM (WSMP_ADMIN.VV_CALL2_DETAIL_VOD__C d JOIN WSMP_ADMIN.VV_PRODUCT_VOD__C p ON ((d.PRODUCT_VOD__C = p.ID)))) d GROUP BY d.call2_vod__c) d ON ((d.call2_vod__c = c.ID))) WHERE ((c.STATUS_VOD__C = 'Submitted_vod'::varchar(13)) AND (c.CALL_DATE_VOD__C < trunc((statement_timestamp())::timestamp, 'DD'::varchar(2))) AND (c.CALL_TYPE_VOD__C <> 'Sample Only'::varchar(11)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_mkt_access_obw_wake AS
SELECT mpzd.ZIP AS zip, mpzd.STATE AS state, rx.plan_id AS payer_plan_num, to_char(rx.ims_report_num, '00'::varchar(2)) AS report_num, to_char(rx.ims_product_group_num, '000000000'::varchar(9)) AS ims_product_group_num, ((substr(rx.data_date, 1, 2) || '/20'::varchar(3)) || substr(rx.data_date, 5, 2)) AS data_month, sum((((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_001, sum((((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_002, sum((((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_003, sum((((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_004, sum((((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_005, sum((((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_006, sum((((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_007, sum((((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_008, sum((((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_009, sum((((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_010, sum((((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_011, sum((((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_012, sum((((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_013, sum((((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_014, sum((((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_015, sum((((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_016, sum((((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_017, sum((((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_018, sum((((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_019, sum((((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_020, sum((((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_021, sum((((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_022, sum((((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_023, sum((((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS nrx_024, sum((((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_001, sum((((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_002, sum((((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_003, sum((((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_004, sum((((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_005, sum((((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_006, sum((((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_007, sum((((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_008, sum((((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_009, sum((((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_010, sum((((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_011, sum((((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_012, sum((((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_013, sum((((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_014, sum((((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_015, sum((((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_016, sum((((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_017, sum((((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_018, sum((((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_019, sum((((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_020, sum((((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_021, sum((((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_022, sum((((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_023, sum((((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3)) AS trx_024 FROM (((ims.stg_ims_mhj_qty_m rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) JOIN WSMP_ADMIN.MARKET_PRESC_ZIP_DIVISOR mpzd ON (((p.MARKET_NAME = mpzd.MARKET_NAME) AND (rx.ims_id = mpzd.IMS_ID)))) WHERE (p.MARKET_NAME = 'WAKE'::varchar(4)) GROUP BY mpzd.ZIP, mpzd.STATE, rx.plan_id, to_char(rx.ims_report_num, '00'::varchar(2)), to_char(rx.ims_product_group_num, '000000000'::varchar(9)), ((substr(rx.data_date, 1, 2) || '/20'::varchar(3)) || substr(rx.data_date, 5, 2)) UNION ALL SELECT mpzd.ZIP AS zip, mpzd.STATE AS state, rx.plan_id AS payer_plan_num, to_char(rx.ims_report_num, '00'::varchar(2)) AS report_num, to_char(rx.ims_product_group_num, '000000000'::varchar(9)) AS ims_product_group_num, ((substr(rx.data_date, 1, 2) || '/20'::varchar(3)) || substr(rx.data_date, 5, 2)) AS data_month, sum(rx.nrx_001) AS nrx_001, sum(rx.nrx_002) AS nrx_002, sum(rx.nrx_003) AS nrx_003, sum(rx.nrx_004) AS nrx_004, sum(rx.nrx_005) AS nrx_005, sum(rx.nrx_006) AS nrx_006, sum(rx.nrx_007) AS nrx_007, sum(rx.nrx_008) AS nrx_008, sum(rx.nrx_009) AS nrx_009, sum(rx.nrx_010) AS nrx_010, sum(rx.nrx_011) AS nrx_011, sum(rx.nrx_012) AS nrx_012, sum(rx.nrx_013) AS nrx_013, sum(rx.nrx_014) AS nrx_014, sum(rx.nrx_015) AS nrx_015, sum(rx.nrx_016) AS nrx_016, sum(rx.nrx_017) AS nrx_017, sum(rx.nrx_018) AS nrx_018, sum(rx.nrx_019) AS nrx_019, sum(rx.nrx_020) AS nrx_020, sum(rx.nrx_021) AS nrx_021, sum(rx.nrx_022) AS nrx_022, sum(rx.nrx_023) AS nrx_023, sum(rx.nrx_024) AS nrx_024, sum(rx.trx_001) AS trx_001, sum(rx.trx_002) AS trx_002, sum(rx.trx_003) AS trx_003, sum(rx.trx_004) AS trx_004, sum(rx.trx_005) AS trx_005, sum(rx.trx_006) AS trx_006, sum(rx.trx_007) AS trx_007, sum(rx.trx_008) AS trx_008, sum(rx.trx_009) AS trx_009, sum(rx.trx_010) AS trx_010, sum(rx.trx_011) AS trx_011, sum(rx.trx_012) AS trx_012, sum(rx.trx_013) AS trx_013, sum(rx.trx_014) AS trx_014, sum(rx.trx_015) AS trx_015, sum(rx.trx_016) AS trx_016, sum(rx.trx_017) AS trx_017, sum(rx.trx_018) AS trx_018, sum(rx.trx_019) AS trx_019, sum(rx.trx_020) AS trx_020, sum(rx.trx_021) AS trx_021, sum(rx.trx_022) AS trx_022, sum(rx.trx_023) AS trx_023, sum(rx.trx_024) AS trx_024 FROM (((ims.stg_ims_mhj_cnt_m rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) JOIN WSMP_ADMIN.MARKET_PRESC_ZIP_DIVISOR mpzd ON (((p.MARKET_NAME = mpzd.MARKET_NAME) AND (rx.ims_id = mpzd.IMS_ID)))) WHERE ((p.MARKET_NAME = 'WAKE'::varchar(4)) AND (nf.PRODUCT_CODE IS NULL)) GROUP BY mpzd.ZIP, mpzd.STATE, rx.plan_id, to_char(rx.ims_report_num, '00'::varchar(2)), to_char(rx.ims_product_group_num, '000000000'::varchar(9)), ((substr(rx.data_date, 1, 2) || '/20'::varchar(3)) || substr(rx.data_date, 5, 2));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Paytype AS
SELECT rx.model, rx.payment_method FROM WSMP_ADMIN.dw_presc_plan_rx_w rx WHERE ((rx.product_code = ANY (ARRAY['330-14-001'::varchar(10), '330-14-007'::varchar(10), '330-14-009'::varchar(10), '330-14-0025'::varchar(11), '330-16-050'::varchar(10), '330-14-003'::varchar(10), '330-14-008'::varchar(10), '330-16-055'::varchar(10), '330-14-004'::varchar(10), '330-16-056'::varchar(10), '330-14-006'::varchar(10), '330-15-050'::varchar(10), '330-14-005'::varchar(10), '330-15-005'::varchar(10), '330-12-002'::varchar(10), '330-15-010'::varchar(10), '330-15-019'::varchar(10), '330-12-015'::varchar(10), '330-15-015'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-12-023'::varchar(10), '330-15-030'::varchar(10), '330-12-019'::varchar(10), '330-15-047'::varchar(10), '330-15-050'::varchar(10), '330-13-020'::varchar(10), '330-16-020'::varchar(10), '330-13-021'::varchar(10), '330-13-016'::varchar(10), '330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10), '330-16-027'::varchar(10), '330-16-028'::varchar(10), '330-16-029'::varchar(10), '330-13-009'::varchar(10), '330-13-005'::varchar(10), '330-13-006'::varchar(10), '330-13-011'::varchar(10), '330-15-019'::varchar(10), '330-12-015'::varchar(10), '330-15-015'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-12-023'::varchar(10), '330-15-001'::varchar(10), '330-15-030'::varchar(10), '330-12-019'::varchar(10), '330-15-047'::varchar(10), '330-15-040'::varchar(10)])) AND (length(rx.ims_id) = 7)) GROUP BY rx.model, rx.payment_method;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_planname AS
SELECT rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name FROM WSMP_ADMIN.dw_presc_plan_rx_w rx WHERE ((rx.product_code = ANY (ARRAY['330-14-001'::varchar(10), '330-14-007'::varchar(10), '330-14-009'::varchar(10), '330-14-0025'::varchar(11), '330-16-050'::varchar(10), '330-14-003'::varchar(10), '330-14-008'::varchar(10), '330-16-055'::varchar(10), '330-14-004'::varchar(10), '330-16-056'::varchar(10), '330-14-006'::varchar(10), '330-15-050'::varchar(10), '330-14-005'::varchar(10), '330-15-005'::varchar(10), '330-12-002'::varchar(10), '330-15-010'::varchar(10), '330-15-019'::varchar(10), '330-12-015'::varchar(10), '330-15-015'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-12-023'::varchar(10), '330-15-030'::varchar(10), '330-12-019'::varchar(10), '330-15-047'::varchar(10), '330-15-050'::varchar(10), '330-13-020'::varchar(10), '330-16-020'::varchar(10), '330-13-021'::varchar(10), '330-13-016'::varchar(10), '330-13-022'::varchar(10), '330-13-023'::varchar(10), '330-13-024'::varchar(10), '330-13-025'::varchar(10), '330-13-026'::varchar(10), '330-13-027'::varchar(10), '330-13-028'::varchar(10), '330-13-029'::varchar(10), '330-13-030'::varchar(10), '330-16-027'::varchar(10), '330-16-028'::varchar(10), '330-16-029'::varchar(10), '330-13-009'::varchar(10), '330-13-005'::varchar(10), '330-13-006'::varchar(10), '330-13-011'::varchar(10), '330-15-019'::varchar(10), '330-12-015'::varchar(10), '330-15-015'::varchar(10), '330-12-003'::varchar(10), '330-15-025'::varchar(10), '330-12-023'::varchar(10), '330-15-001'::varchar(10), '330-15-030'::varchar(10), '330-12-019'::varchar(10), '330-15-047'::varchar(10), '330-15-040'::varchar(10)])) AND (length(rx.ims_id) = 7)) GROUP BY rx.payer_plan_num, rx.plan_name, rx.model, rx.payer_name;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_factory_sales_852 AS
SELECT STG_FACTORY_SALES_852.TRADING_PARTNER, STG_FACTORY_SALES_852.DISTRIB_CENTER, STG_FACTORY_SALES_852.DISTRIB_CENTER_DEA_NUM, to_char(STG_FACTORY_SALES_852.REPORTING_DATE, 'DD-MON-YY'::varchar(9)) AS REPORTING_DATE, STG_FACTORY_SALES_852.NDC, STG_FACTORY_SALES_852.PRODUCT_CODE, STG_FACTORY_SALES_852.PRODUCT_NAME, STG_FACTORY_SALES_852.DESCRIPTION, CASE mod(STG_FACTORY_SALES_852.QTY_RECEIVED, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_RECEIVED)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_RECEIVED)::varchar, '0'::varchar(1)) END AS QTY_RECEIVED, CASE mod(STG_FACTORY_SALES_852.QTY_RECEIVED_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_RECEIVED_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_RECEIVED_DOLLARS)::varchar, '0'::varchar(1)) END AS QTY_RECEIVED_DOLLARS, CASE mod(STG_FACTORY_SALES_852.QTY_SOLD, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_SOLD)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_SOLD)::varchar, '0'::varchar(1)) END AS QTY_SOLD, CASE mod(STG_FACTORY_SALES_852.QTY_SOLD_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_SOLD_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_SOLD_DOLLARS)::varchar, '0'::varchar(1)) END AS QTY_SOLD_DOLLARS, CASE mod(STG_FACTORY_SALES_852.QTY_OMIT, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_OMIT)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_OMIT)::varchar, '0'::varchar(1)) END AS QTY_OMIT, CASE mod(STG_FACTORY_SALES_852.QTY_OMIT_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_OMIT_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_OMIT_DOLLARS)::varchar, '0'::varchar(1)) END AS QTY_OMIT_DOLLARS, CASE mod(STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND)::varchar, '0'::varchar(1)) END AS MTH_END_QTY_ON_HAND, CASE mod(STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_QTY_ON_HAND_DOLLARS)::varchar, '0'::varchar(1)) END AS MTH_END_QTY_ON_HAND_DOLLARS, CASE mod(STG_FACTORY_SALES_852.MTH_END_COMMITTED, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_COMMITTED)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_COMMITTED)::varchar, '0'::varchar(1)) END AS MTH_END_COMMITTED, CASE mod(STG_FACTORY_SALES_852.MTH_END_COMMITTED_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_COMMITTED_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_COMMITTED_DOLLARS)::varchar, '0'::varchar(1)) END AS MTH_END_COMMITTED_DOLLARS, CASE mod(STG_FACTORY_SALES_852.MTH_END_RESERVED, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_RESERVED)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_RESERVED)::varchar, '0'::varchar(1)) END AS MTH_END_RESERVED, CASE mod(STG_FACTORY_SALES_852.MTH_END_RESERVED_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.MTH_END_RESERVED_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.MTH_END_RESERVED_DOLLARS)::varchar, '0'::varchar(1)) END AS MTH_END_RESERVED_DOLLARS, CASE mod(STG_FACTORY_SALES_852.QTY_RETURN, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_RETURN)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_RETURN)::varchar, '0'::varchar(1)) END AS QTY_RETURN, CASE mod(STG_FACTORY_SALES_852.QTY_RETURN_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_RETURN_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_RETURN_DOLLARS)::varchar, '0'::varchar(1)) END AS QTY_RETURN_DOLLARS, CASE mod(STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN)::varchar, '0'::varchar(1)) END AS QTY_CUSTOMER_RETURN, CASE mod(STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN_DOLLARS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN_DOLLARS)::int)::varchar ELSE rtrim((STG_FACTORY_SALES_852.QTY_CUSTOMER_RETURN_DOLLARS)::varchar, '0'::varchar(1)) END AS QTY_CUSTOMER_RETURN_DOLLARS, to_char(STG_FACTORY_SALES_852.LAST_BUILD_DATE, 'DD-MON-YY'::varchar(9)) AS LAST_BUILD_DATE FROM WSMP_ADMIN.STG_FACTORY_SALES_852;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_CSP_Attendees AS
SELECT (a.COGENIX_PROGRAM_ID)::int AS cogenix_program_id, a.PROGRAM_NAME, a.PROGRAM_DATE, a.SFA_PROF_ID, a.ME_NUM, a.DEA_NUM, (a.COGENIX_ID)::int AS cogenix_id, coalesce(a.CM_ID, (cm.CUSTOMER_MASTER_ID)::varchar) AS cm_id, a.STATE_LICENSE_STATE, a.STATE_LICENSE_NUMBER, a.FIRST_NAME, a.LAST_NAME, a.ADDRESS1, a.ADDRESS2, a.ADDRESS3, a.CITY, a.STATE, a.ZIP, a.PRIMARY_SPECIALTY, a.HCP_TYPE AS hcp_type, a.PRESCRIBER_FLAG FROM ((WSMP_ADMIN.STG_COGENIX_CSP_ATTENDEE a JOIN WSMP_ADMIN.STG_COGENIX_CSP_PROGRAM p ON ((p.COGENIX_PROGRAM_ID = a.COGENIX_PROGRAM_ID))) LEFT JOIN WSMP_ADMIN.STG_CUSTOMER_MASTER cm ON (((cm.SOURCE_ID = CASE WHEN (a.PRESCRIBER_FLAG = 'N'::varchar(1)) THEN ('NONHCP_'::varchar(7) || (a.COGENIX_ID)::varchar) ELSE (a.COGENIX_ID)::varchar END) AND (cm.RECORD_SOURCE_SYSTEM = 'CGX'::varchar(3))))) WHERE ((p.PROGRAM_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (p.PROGRAM_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (p.PRODUCT = 'Nuvigil'::varchar(7)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_CSP_Programs AS
SELECT CASE mod(STG_COGENIX_CSP_PROGRAM.COGENIX_PROGRAM_ID, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.COGENIX_PROGRAM_ID)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.COGENIX_PROGRAM_ID)::varchar, '0'::varchar(1)) END AS COGENIX_PROGRAM_ID, STG_COGENIX_CSP_PROGRAM.PROGRAM_NAME, to_char(STG_COGENIX_CSP_PROGRAM.PROGRAM_REQUEST_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_REQUEST_DATE, to_char(STG_COGENIX_CSP_PROGRAM.PROGRAM_DATE, 'YYYY-MM-DD'::varchar(10)) AS PROGRAM_DATE, STG_COGENIX_CSP_PROGRAM.PRODUCT, STG_COGENIX_CSP_PROGRAM.TOPIC, STG_COGENIX_CSP_PROGRAM.PROGRAM_TYPE, STG_COGENIX_CSP_PROGRAM.PROGRAM_STATUS, STG_COGENIX_CSP_PROGRAM.VENUE_NAME, STG_COGENIX_CSP_PROGRAM.VENUE_CITY, STG_COGENIX_CSP_PROGRAM.VENUE_STATE, CASE mod(STG_COGENIX_CSP_PROGRAM.ESTIMATED_ATTENDANCE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.ESTIMATED_ATTENDANCE)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.ESTIMATED_ATTENDANCE)::varchar, '0'::varchar(1)) END AS ESTIMATED_ATTENDANCE, CASE mod(STG_COGENIX_CSP_PROGRAM.NONPRESCRIBER_CEPHALON_COUNTS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.NONPRESCRIBER_CEPHALON_COUNTS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.NONPRESCRIBER_CEPHALON_COUNTS)::varchar, '0'::varchar(1)) END AS NONPRESCRIBER_CEPHALON_COUNTS, CASE mod(STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_W_O_DEA, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_W_O_DEA)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_W_O_DEA)::varchar, '0'::varchar(1)) END AS PRESCRIBERS_W_O_DEA, CASE mod(STG_COGENIX_CSP_PROGRAM.NONHCP_OFFICE_STAFF_COUNTS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.NONHCP_OFFICE_STAFF_COUNTS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.NONHCP_OFFICE_STAFF_COUNTS)::varchar, '0'::varchar(1)) END AS NONHCP_OFFICE_STAFF_COUNTS, CASE mod(STG_COGENIX_CSP_PROGRAM.PRESCRIBERS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS)::varchar, '0'::varchar(1)) END AS PRESCRIBERS, CASE mod(STG_COGENIX_CSP_PROGRAM.HCPS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.HCPS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.HCPS)::varchar, '0'::varchar(1)) END AS HCPS, CASE mod(STG_COGENIX_CSP_PROGRAM.TOTAL_PRESCRIBERS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.TOTAL_PRESCRIBERS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.TOTAL_PRESCRIBERS)::varchar, '0'::varchar(1)) END AS TOTAL_PRESCRIBERS, CASE mod(STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_ACCEPTED_NO_SHOW, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_ACCEPTED_NO_SHOW)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.PRESCRIBERS_ACCEPTED_NO_SHOW)::varchar, '0'::varchar(1)) END AS PRESCRIBERS_ACCEPTED_NO_SHOW, STG_COGENIX_CSP_PROGRAM.ATTENDEE_FORM_RECEIVED, STG_COGENIX_CSP_PROGRAM.ATTENDEE_SIGN_IN_SHEET_RECVD, CASE mod(STG_COGENIX_CSP_PROGRAM.ACTUAL_ATTENDANCE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.ACTUAL_ATTENDANCE)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.ACTUAL_ATTENDANCE)::varchar, '0'::varchar(1)) END AS ACTUAL_ATTENDANCE, CASE mod(STG_COGENIX_CSP_PROGRAM.ESTIMATED_COSTS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.ESTIMATED_COSTS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.ESTIMATED_COSTS)::varchar, '0'::varchar(1)) END AS ESTIMATED_COSTS, STG_COGENIX_CSP_PROGRAM.OFFICES_REPRESENTED, CASE mod(STG_COGENIX_CSP_PROGRAM.AV_EXPENSES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.AV_EXPENSES)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.AV_EXPENSES)::varchar, '0'::varchar(1)) END AS AV_EXPENSES, CASE mod(STG_COGENIX_CSP_PROGRAM.FOOD_AND_BEVERAGE, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.FOOD_AND_BEVERAGE)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.FOOD_AND_BEVERAGE)::varchar, '0'::varchar(1)) END AS FOOD_AND_BEVERAGE, CASE mod(STG_COGENIX_CSP_PROGRAM.MEETING_EXPENSES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.MEETING_EXPENSES)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.MEETING_EXPENSES)::varchar, '0'::varchar(1)) END AS MEETING_EXPENSES, CASE mod(STG_COGENIX_CSP_PROGRAM.MISCELLANEOUS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.MISCELLANEOUS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.MISCELLANEOUS)::varchar, '0'::varchar(1)) END AS MISCELLANEOUS, CASE mod(STG_COGENIX_CSP_PROGRAM.SPEAKER_EXPENSES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.SPEAKER_EXPENSES)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.SPEAKER_EXPENSES)::varchar, '0'::varchar(1)) END AS SPEAKER_EXPENSES, CASE mod(STG_COGENIX_CSP_PROGRAM.SPEAKER_HONORARIA, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.SPEAKER_HONORARIA)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.SPEAKER_HONORARIA)::varchar, '0'::varchar(1)) END AS SPEAKER_HONORARIA, CASE mod(STG_COGENIX_CSP_PROGRAM.SPEAKER_TRAVEL, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.SPEAKER_TRAVEL)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.SPEAKER_TRAVEL)::varchar, '0'::varchar(1)) END AS SPEAKER_TRAVEL, CASE mod(STG_COGENIX_CSP_PROGRAM.VENUE_ROOM_RENTAL, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.VENUE_ROOM_RENTAL)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.VENUE_ROOM_RENTAL)::varchar, '0'::varchar(1)) END AS VENUE_ROOM_RENTAL, CASE mod(STG_COGENIX_CSP_PROGRAM.ACTUAL_COSTS, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.ACTUAL_COSTS)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.ACTUAL_COSTS)::varchar, '0'::varchar(1)) END AS ACTUAL_COSTS, CASE mod(STG_COGENIX_CSP_PROGRAM.UNMET_MINIMUM, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.UNMET_MINIMUM)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.UNMET_MINIMUM)::varchar, '0'::varchar(1)) END AS UNMET_MINIMUM, to_char(STG_COGENIX_CSP_PROGRAM.CREATE_DATE, 'YYYY-MM-DD'::varchar(10)) AS CREATE_DATE, CASE mod(STG_COGENIX_CSP_PROGRAM.TAKEDA_ATTENDEES, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((STG_COGENIX_CSP_PROGRAM.TAKEDA_ATTENDEES)::int)::varchar ELSE rtrim((STG_COGENIX_CSP_PROGRAM.TAKEDA_ATTENDEES)::varchar, '0'::varchar(1)) END AS TAKEDA_ATTENDEES FROM WSMP_ADMIN.STG_COGENIX_CSP_PROGRAM WHERE ((STG_COGENIX_CSP_PROGRAM.PROGRAM_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (STG_COGENIX_CSP_PROGRAM.PROGRAM_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (STG_COGENIX_CSP_PROGRAM.PRODUCT = 'Nuvigil'::varchar(7)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_Copay_Voucher_Drops AS
SELECT CASE mod(x.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((x.tvcmid)::int)::varchar ELSE rtrim((x.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, x.ims_id, x.veeva_account_id, d.RESOURCE_TYPE AS Resource_type, d.TERRITORY_NUM AS Territory_num, d.DISTRIBUTION_DATE AS distribution_date, (d.QTY)::int AS qty FROM WSMP_ADMIN.TFC_SFA_RESOURCE_DIST_DETAIL d, (SELECT demo_combined.ims_id, demo_combined.tvcmid, demo_combined.veeva_account_id FROM WSMP_ADMIN.demo_combined WHERE ((demo_combined.sales_force_id = 'TC'::varchar(2)) AND (demo_combined.veeva_account_id IS NOT NULL)) GROUP BY demo_combined.ims_id, demo_combined.tvcmid, demo_combined.veeva_account_id) x WHERE ((d.PRODUCT_NAME = 'NUVIGIL'::varchar(7)) AND (d.DISTRIBUTION_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (d.DISTRIBUTION_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (d.IMS_ID = x.ims_id));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_Demo AS
SELECT CASE mod(d.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((d.tvcmid)::int)::varchar ELSE rtrim((d.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, d.ims_id, d.veeva_account_id, d.first_name, d.mid_name, d.last_name, d.degree AS DEGREE, d.address, d.city, d.state, d.zip, d.specialty AS prim_specialty, s1.NUVIGIL_REPORT_GROUP AS nuvigil_report_group, dec1.trx_cnt_01_06 AS nuvigil_decile, dec2.trx_cnt_01_06 AS wake_decile, cp.TARGET_VALUE AS target_flag FROM (((((WSMP_ADMIN.demo_combined d LEFT JOIN WSMP_ADMIN.TFC_SPECIALTY_XREF s1 ON ((s1.SPECIALTY_CODE = d.specialty))) LEFT JOIN WSMP_ADMIN.TFC_IMS_DECILE dec1 ON (((dec1.ims_id = d.ims_id) AND (dec1.category = 'Provigil'::varchar(8)) AND (dec1.decile_name = 'Nuvigil'::varchar(7))))) LEFT JOIN WSMP_ADMIN.TFC_IMS_DECILE dec2 ON (((dec2.ims_id = d.ims_id) AND (dec2.category = 'Provigil'::varchar(8)) AND (dec2.decile_name = 'Modafinil'::varchar(9))))) JOIN (SELECT prodx.ims_id FROM (SELECT dw_presc_plan_rx_m.ims_id FROM WSMP_ADMIN.dw_presc_plan_rx_m WHERE ((dw_presc_plan_rx_m.product_code = '100N00'::varchar(6)) AND (dw_presc_plan_rx_m.month_bucket >= 1::numeric(18,0)) AND (dw_presc_plan_rx_m.month_bucket <= 24::numeric(18,0))) UNION ALL SELECT DIM_SFA_CSF_DEMO.IMS_ID AS ims_id FROM WSMP_ADMIN.DIM_SFA_CSF_DEMO WHERE (DIM_SFA_CSF_DEMO.SALES_FORCE_ID = 'TC'::varchar(2))) prodx GROUP BY prodx.ims_id) r ON ((d.ims_id = r.ims_id))) LEFT JOIN WSMP_ADMIN.DIM_SFA_TARGETS cp ON (((d.ims_id = cp.IMS_ID) AND (cp.NAME = 'Nuvigil'::varchar(7)) AND (cp.PERIOD ~~ '2015%'::varchar(5))))) WHERE ((d.sales_force_id = 'TC'::varchar(2)) AND (d.last_name <> 'NATIONAL ASSIGNMENT'::varchar(19)) AND (d.first_name IS NOT NULL));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_agile_mktg_mix_rx AS
SELECT rx.ims_id AS IMS_ID, rx.product_code, p.NAME AS product_name, rx.month_ending AS MONTH_ENDING, sum(CASE mod(rx.nrx_qty, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.nrx_qty)::int)::varchar ELSE rtrim((rx.nrx_qty)::varchar, '0'::varchar(1)) END) AS nrx_qty, sum(CASE mod(rx.trx_qty, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.trx_qty)::int)::varchar ELSE rtrim((rx.trx_qty)::varchar, '0'::varchar(1)) END) AS trx_qty, sum(CASE mod(rx.nrx_cnt, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.nrx_cnt)::int)::varchar ELSE rtrim((rx.nrx_cnt)::varchar, '0'::varchar(1)) END) AS nrx_cnt, sum(CASE mod(rx.trx_cnt, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((rx.trx_cnt)::int)::varchar ELSE rtrim((rx.trx_cnt)::varchar, '0'::varchar(1)) END) AS trx_cnt FROM WSMP_ADMIN.dw_presc_plan_rx_m rx, CUSTOMER.PRODUCT p WHERE ((rx.product_code = p.PRODUCT_CODE) AND (rx.month_ending >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (rx.month_ending <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (rx.product_code = ANY (ARRAY['100100'::varchar(6), '100101'::varchar(6), '100102'::varchar(6), '100N00'::varchar(6), '100N05'::varchar(6), '100N15'::varchar(6), '100N20'::varchar(6), '100N25'::varchar(6), '100700'::varchar(6)])) AND (length(rx.ims_id) = 7)) GROUP BY rx.ims_id, rx.product_code, p.NAME, rx.month_ending;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_Samples AS
SELECT S.sales_force_id, S.territory_num, CASE mod(IX.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((IX.tvcmid)::int)::varchar ELSE rtrim((IX.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, IX.ims_id, IX.veeva_account_id, to_char(S.ship_date, 'YYYY-MM-DD'::varchar(10)) AS ship_date, S.product_code, S.product, CASE mod(S.ship_qty, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((S.ship_qty)::int)::varchar ELSE rtrim((S.ship_qty)::varchar, '0'::varchar(1)) END AS ship_qty FROM ((SELECT ss.SALES_FORCE_ID AS sales_force_id, ss.TERRITORY_NUM AS territory_num, NULL AS tvcmid, ss.IMS_ID AS ims_id, ss.DEMO_ID AS demo_id, ss.SHIP_DATE AS ship_date, ss.PRODUCT_CODE AS product_code, ss.PRODUCT AS product, ss.SHIP_QTY AS ship_qty FROM WSMP_ADMIN.STG_KNIPPER_SAMPLES_SHIPPED ss WHERE ((ss.SALES_FORCE_ID = 'TC'::varchar(2)) AND (ss.SHIP_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (ss.SHIP_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (ss.PRODUCT_CODE ~~ '100N%'::varchar(5)))) S LEFT JOIN (SELECT demo_combined.tvcmid, demo_combined.ims_id, demo_combined.veeva_account_id FROM WSMP_ADMIN.demo_combined WHERE ((demo_combined.sales_force_id = 'TC'::varchar(2)) AND (demo_combined.veeva_account_id IS NOT NULL)) GROUP BY demo_combined.tvcmid, demo_combined.ims_id, demo_combined.veeva_account_id) IX ON ((S.demo_id = IX.veeva_account_id)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_Details AS
SELECT CASE mod(d.TVCMID, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((d.TVCMID)::int)::varchar ELSE rtrim((d.TVCMID)::varchar, '0'::varchar(1)) END AS tvcmid, cd.IMS_ID AS ims_id, cd.VEEVA_ACCOUNT_ID AS veeva_account_id, initcap(d.LAST_NAME) AS last_name, initcap(d.FIRST_NAME) AS first_name, initcap(d.MIDDLE_NAME) AS middle_name, d.CREDENTIALS AS DEGREE, d.ZIP AS zip, cd.REP_ID AS rep_id, cd.TERRITORY_NUM AS territory_num, to_char(cd.CALL_DATE, 'YYYY-MM-DD'::varchar(10)) AS call_date, 'NUVIGIL'::varchar(7) AS product, CASE WHEN (cd.FIRST_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) THEN 1 WHEN (cd.SECOND_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) THEN 2 ELSE NULL::int END AS detail_position FROM WSMP_ADMIN.TFC_SFA_CSF_CALL_DETAIL cd, WSMP_ADMIN.DIM_SFA_CSF_DEMO d, WSMP_ADMIN.TFC_CURRENT_ZIP_ALIGNMENT z WHERE ((cd.SALES_FORCE_ID = 'TC'::varchar(2)) AND (cd.SALES_FORCE_ID = d.SALES_FORCE_ID) AND (cd.TERRITORY_NUM = d.TERRITORY_NUM) AND (cd.CALL_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (cd.CALL_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (cd.VEEVA_ACCOUNT_ID = d.VEEVA_ACCOUNT_ID) AND (d.ZIP = z.ZIP) AND ((cd.FIRST_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) OR (cd.SECOND_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7))) AND (cd.LEGACY_CALL_TYPE = 'PROF'::varchar(4)) AND ((cd.FIRST_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) OR (cd.SECOND_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7))) AND (cd.LEGACY_CALL_TYPE = 'PROF'::varchar(4))) GROUP BY d.TVCMID, cd.IMS_ID, cd.VEEVA_ACCOUNT_ID, initcap(d.LAST_NAME), initcap(d.FIRST_NAME), initcap(d.MIDDLE_NAME), d.CREDENTIALS, d.ZIP, cd.REP_ID, cd.TERRITORY_NUM, cd.CALL_DATE, 'NUVIGIL'::varchar(7), CASE WHEN (cd.FIRST_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) THEN 1 WHEN (cd.SECOND_DETAILED_PRODUCT = 'NUVIGIL'::varchar(7)) THEN 2 ELSE NULL::int END;

CREATE  VIEW WSMP_ADMIN_ORA.dim_ims_month_buckets AS
SELECT dw_presc_rx_m.month_bucket, dw_presc_rx_m.month_ending FROM WSMP_ADMIN.dw_presc_rx_m GROUP BY dw_presc_rx_m.month_bucket, dw_presc_rx_m.month_ending;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_ValueCentricRxDataExtract AS
((SELECT '4416451422'::varchar(10) AS customerid, CASE WHEN (x.product_code = '100N05'::varchar(6)) THEN 'Nuvigil 50mg'::varchar(12) WHEN (x.product_code = '100N15'::varchar(6)) THEN 'Nuvigil 150mg'::varchar(13) WHEN (x.product_code = '100N25'::varchar(6)) THEN 'Nuvigil 250mg'::varchar(13) WHEN (x.product_code = '100N20'::varchar(6)) THEN 'Nuvigil 200mg'::varchar(13) ELSE NULL END AS brand_name, CASE WHEN (x.product_code = '100N05'::varchar(6)) THEN '63459020530'::varchar(11) WHEN (x.product_code = '100N15'::varchar(6)) THEN '63459021530'::varchar(11) WHEN (x.product_code = '100N25'::varchar(6)) THEN '63459022530'::varchar(11) WHEN (x.product_code = '100N20'::varchar(6)) THEN '63459022030'::varchar(11) ELSE NULL END AS ndcupc, d.zip, x.month_ending AS period_end_date, sum(x.trx_cnt) AS trx_cnt, sum(x.trx_qty) AS trx_qty FROM WSMP_ADMIN.dw_presc_plan_rx_m x, (SELECT DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id, min(DEMO_COMBINED.zip) AS zip FROM WSMP_ADMIN.DEMO_COMBINED WHERE (DEMO_COMBINED.sales_force_id = 'TC'::varchar(2)) GROUP BY DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id) d WHERE ((d.ims_id = x.ims_id) AND (x.product_code = ANY (ARRAY['100N05'::varchar(6), '100N15'::varchar(6), '100N25'::varchar(6), '100N20'::varchar(6)])) AND (x.sales_category = '1'::varchar(2)) AND (x.month_bucket >= 1::numeric(18,0)) AND (x.month_bucket <= 12::numeric(18,0))) GROUP BY '4416451422'::varchar(10), CASE WHEN (x.product_code = '100N05'::varchar(6)) THEN 'Nuvigil 50mg'::varchar(12) WHEN (x.product_code = '100N15'::varchar(6)) THEN 'Nuvigil 150mg'::varchar(13) WHEN (x.product_code = '100N25'::varchar(6)) THEN 'Nuvigil 250mg'::varchar(13) WHEN (x.product_code = '100N20'::varchar(6)) THEN 'Nuvigil 200mg'::varchar(13) ELSE NULL END, CASE WHEN (x.product_code = '100N05'::varchar(6)) THEN '63459020530'::varchar(11) WHEN (x.product_code = '100N15'::varchar(6)) THEN '63459021530'::varchar(11) WHEN (x.product_code = '100N25'::varchar(6)) THEN '63459022530'::varchar(11) WHEN (x.product_code = '100N20'::varchar(6)) THEN '63459022030'::varchar(11) ELSE NULL END, d.zip, x.month_ending UNION SELECT '4416451422'::varchar(10) AS customerid, CASE WHEN (x.product_code = '330-14-002'::varchar(10)) THEN 'PROAIR HFA'::varchar(10) WHEN (x.product_code = '330-14-009'::varchar(10)) THEN 'PROAIR HFA COUNTER'::varchar(18) WHEN (x.product_code = '330-15-001'::varchar(10)) THEN 'QNASL'::varchar(5) WHEN (x.product_code = '330-13-005'::varchar(10)) THEN 'QVAR 40MCG'::varchar(10) WHEN (x.product_code = '330-13-006'::varchar(10)) THEN 'QVAR 80MCG'::varchar(10) ELSE NULL END AS brand_name, CASE WHEN (x.product_code = '330-14-002'::varchar(10)) THEN '59310057920'::varchar(11) WHEN (x.product_code = '330-14-009'::varchar(10)) THEN '59310057922'::varchar(11) WHEN (x.product_code = '330-15-001'::varchar(10)) THEN '59310021012'::varchar(11) WHEN (x.product_code = '330-13-005'::varchar(10)) THEN '59310020240'::varchar(11) WHEN (x.product_code = '330-13-006'::varchar(10)) THEN '59310020480'::varchar(11) ELSE NULL END AS ndcupc, d.zip, x.month_ending AS period_end_date, sum(x.trx_cnt) AS trx_cnt, sum(0) AS trx_qty FROM WSMP_ADMIN.dw_presc_plan_rx_w x, (SELECT DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id, min(DEMO_COMBINED.zip) AS zip FROM WSMP_ADMIN.DEMO_COMBINED WHERE (DEMO_COMBINED.sales_force_id = 'TR'::varchar(2)) GROUP BY DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id) d WHERE ((d.ims_id = x.ims_id) AND (x.product_code = ANY (ARRAY['330-14-002'::varchar(10), '330-14-009'::varchar(10), '330-15-001'::varchar(10), '330-13-005'::varchar(10), '330-13-006'::varchar(10)])) AND (x.sales_category = '1'::varchar(2)) AND (x.month_bucket >= 1::numeric(18,0)) AND (x.month_bucket <= 12::numeric(18,0))) GROUP BY '4416451422'::varchar(10), CASE WHEN (x.product_code = '330-14-002'::varchar(10)) THEN 'PROAIR HFA'::varchar(10) WHEN (x.product_code = '330-14-009'::varchar(10)) THEN 'PROAIR HFA COUNTER'::varchar(18) WHEN (x.product_code = '330-15-001'::varchar(10)) THEN 'QNASL'::varchar(5) WHEN (x.product_code = '330-13-005'::varchar(10)) THEN 'QVAR 40MCG'::varchar(10) WHEN (x.product_code = '330-13-006'::varchar(10)) THEN 'QVAR 80MCG'::varchar(10) ELSE NULL END, CASE WHEN (x.product_code = '330-14-002'::varchar(10)) THEN '59310057920'::varchar(11) WHEN (x.product_code = '330-14-009'::varchar(10)) THEN '59310057922'::varchar(11) WHEN (x.product_code = '330-15-001'::varchar(10)) THEN '59310021012'::varchar(11) WHEN (x.product_code = '330-13-005'::varchar(10)) THEN '59310020240'::varchar(11) WHEN (x.product_code = '330-13-006'::varchar(10)) THEN '59310020480'::varchar(11) ELSE NULL END, d.zip, x.month_ending) UNION SELECT '4416451422'::varchar(10) AS customerid, CASE WHEN (x.product_code = '982-23-204'::varchar(10)) THEN 'QUARTETTE'::varchar(9) ELSE NULL END AS brand_name, CASE WHEN (x.product_code = '982-23-204'::varchar(10)) THEN '51285043165'::varchar(11) ELSE NULL END AS ndcupc, d.zip, x.month_ending AS period_end_date, sum(x.trx_cnt) AS trx_cnt, sum(0) AS trx_qty FROM WSMP_ADMIN.dw_presc_plan_rx_m x, (SELECT DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id, min(DEMO_COMBINED.zip) AS zip FROM WSMP_ADMIN.DEMO_COMBINED WHERE (DEMO_COMBINED.sales_force_id = 'TW'::varchar(2)) GROUP BY DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id) d WHERE ((d.ims_id = x.ims_id) AND (x.product_code = '982-23-204'::varchar(10)) AND (x.sales_category = '1'::varchar(2)) AND (x.month_bucket >= 1::numeric(18,0)) AND (x.month_bucket <= 12::numeric(18,0))) GROUP BY '4416451422'::varchar(10), CASE WHEN (x.product_code = '982-23-204'::varchar(10)) THEN 'QUARTETTE'::varchar(9) ELSE NULL END, CASE WHEN (x.product_code = '982-23-204'::varchar(10)) THEN '51285043165'::varchar(11) ELSE NULL END, d.zip, x.month_ending) UNION SELECT '4416451422'::varchar(10) AS customerid, CASE WHEN (x.product_code = '600120'::varchar(6)) THEN 'COPAXONE 20mg'::varchar(13) WHEN (x.product_code = '600140'::varchar(6)) THEN 'COPAXONE 40mg'::varchar(13) ELSE NULL END AS brand_name, CASE WHEN (x.product_code = '600120'::varchar(6)) THEN '68546031730'::varchar(11) WHEN (x.product_code = '600140'::varchar(6)) THEN '68546032512'::varchar(11) ELSE NULL END AS ndcupc, d.zip, x.month_ending AS period_end_date, sum(x.trx_cnt) AS trx_cnt, sum(0) AS trx_qty FROM WSMP_ADMIN.dw_presc_plan_rx_m x, (SELECT DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id, min(DEMO_COMBINED.zip) AS zip FROM WSMP_ADMIN.DEMO_COMBINED WHERE (DEMO_COMBINED.sales_force_id = 'TN'::varchar(2)) GROUP BY DEMO_COMBINED.sales_force_id, DEMO_COMBINED.ims_id) d WHERE ((d.ims_id = x.ims_id) AND (x.product_code = ANY (ARRAY['600120'::varchar(6), '600140'::varchar(6)])) AND (x.sales_category = '1'::varchar(2)) AND (x.month_bucket >= 1::numeric(18,0)) AND (x.month_bucket <= 12::numeric(18,0))) GROUP BY '4416451422'::varchar(10), CASE WHEN (x.product_code = '600120'::varchar(6)) THEN 'COPAXONE 20mg'::varchar(13) WHEN (x.product_code = '600140'::varchar(6)) THEN 'COPAXONE 40mg'::varchar(13) ELSE NULL END, CASE WHEN (x.product_code = '600120'::varchar(6)) THEN '68546031730'::varchar(11) WHEN (x.product_code = '600140'::varchar(6)) THEN '68546032512'::varchar(11) ELSE NULL END, d.zip, x.month_ending;

CREATE  VIEW WSMP_ADMIN_ORA.v_veeva_demo AS
SELECT substr(tsf.territory_vod__c, 1, 2) AS sales_force_id, CASE WHEN (rta.NAME = ANY (ARRAY['Hospital_vod'::varchar(12), 'Pharmacy_vod'::varchar(12), 'Practice_vod'::varchar(12), 'ParaGard_TVA'::varchar(12)])) THEN 'ACCT'::varchar(4) WHEN ((rta.NAME = 'Professional_vod'::varchar(16)) AND (acc.ID_VOD__C IS NULL) AND (acc.DESIGNATION_TVA__C = ANY (ARRAY['Nurse'::varchar(5), 'Billing Staff'::varchar(13), 'Office Staff'::varchar(12), 'Other Contact'::varchar(13), 'Pharmacist/Pharm D'::varchar(18), 'Practice Manager'::varchar(16), 'Refill Coordinator'::varchar(18), 'Reimbursement Specialist'::varchar(24)]))) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Staff'::varchar(5)) THEN 'CONT'::varchar(4) WHEN (rta.NAME = 'Professional_vod'::varchar(16)) THEN 'PROF'::varchar(4) ELSE 'UNK'::varchar(3) END AS legacy_demo_type, replace(rta.NAME, '_vod'::varchar(4), ''::varchar) AS veeva_account_type, acc.TYPE AS veeva_business_type, acc.ID AS csf_demo_id, acc.CM_ID_TVA__C AS tvcmid, acc.ID_VOD__C AS ims_id, acc.ACCOUNT_MASTER_ID_TVA__C AS hms_id, substr(btrim(acc.ME__C), 1, 10) AS me_num, acc.NPI_VOD__C AS npi, addr.DEA_VOD__C AS dea_num, addr.DEA_EXPIRATION_DATE_VOD__C AS dea_expir_date, addr.DEA_SCHEDULE_VOD__C AS dea_drug_schedule, tsf.territory_vod__c AS territory_num, tsf.territory_status_tva__c AS territory_status, 'N'::varchar(1) AS house_acct_flag, 'A'::varchar(1) AS src_verification_status, CASE WHEN (rta.NAME = ANY (ARRAY['Hospital_vod'::varchar(12), 'Pharmacy_vod'::varchar(12), 'Practice_vod'::varchar(12), 'ParaGard_TVA'::varchar(12)])) THEN substr(acc.NAME, 1, 60) ELSE acc.LASTNAME END AS last_name, acc.FIRSTNAME AS first_name, acc.MIDDLE_VOD__C AS middle_name, acc.SUFFIX_TVA__C AS suffix_name, acc.CREDENTIALS_VOD__C AS credentials, acc.DESIGNATION_TVA__C AS designation, addr.NAME AS address1, addr.ADDRESS_LINE_2_VOD__C AS address2, addr.ADDRESS_LINE_3_TVA__C AS address3, addr.CITY_VOD__C AS city, addr.STATE_VOD__C AS state, addr.ZIP_VOD__C AS zip, acc.PHONE AS phone, CASE WHEN (addr.INACTIVE_VOD__C = 'false'::varchar(5)) THEN 'Active'::varchar(6) ELSE 'Inactive'::varchar(8) END AS address_status, acc.FAX AS fax, acc.CELL_PHONE_TVA__C AS cell_phone, acc.PERSONEMAIL AS email, CASE WHEN (acc.CML_PROFILED_TVA__C = 'false'::varchar(5)) THEN 'N'::varchar(1) WHEN (acc.CML_PROFILED_TVA__C = 'true'::varchar(4)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS cml_profiled, acc.SPECIALTY_1_VOD__C AS prim_specialty, CASE WHEN (acc.NO_CONTACT_TVA__C = 'false'::varchar(5)) THEN 'N'::varchar(1) WHEN (acc.NO_CONTACT_TVA__C = 'true'::varchar(4)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS no_contact, addr.LICENSE_VOD__C AS state_license_number, addr.STATE_VOD__C AS state_license_state, CASE WHEN (addr.LICENSE_VALID_TO_SAMPLE_VOD__C = 'Valid'::varchar(5)) THEN 'E'::varchar(1) ELSE 'I'::varchar(1) END AS state_license_elig_code, addr.LICENSE_EXPIRATION_DATE_VOD__C AS state_license_expir_date, substr(btrim(CASE WHEN ((btrim(acc.CREDENTIALS_VOD__C) IS NOT NULL) AND (btrim(addr.STATE_VOD__C) IS NOT NULL) AND (btrim(addr.LICENSE_VOD__C) IS NOT NULL)) THEN ((((btrim(acc.CREDENTIALS_VOD__C) || '-'::varchar(1)) || btrim(addr.STATE_VOD__C)) || '-'::varchar(1)) || btrim(addr.LICENSE_VOD__C)) ELSE NULL END), 1, 30) AS state_num, CASE WHEN (acc.NO_SPEND_TVA__C = 'false'::varchar(5)) THEN 'N'::varchar(1) ELSE 'Y'::varchar(1) END AS no_spend, acc.DNC_CNS_TVA__C AS nuvigil_dnc, CASE WHEN (acc.NUVIGIL_APP_TVA__C = 'false'::varchar(5)) THEN 'N'::varchar(1) ELSE 'Y'::varchar(1) END AS nuvigil_app, acc.DNC_PCS_TVA__C AS fentora_dnc, CASE WHEN (acc.FENTORA_APP_TVA__C = 'false'::varchar(5)) THEN 'N'::varchar(1) ELSE 'Y'::varchar(1) END AS fentora_app, acc.TIRF_REMS_TVA__C AS fentora_rems_status, tsf.last_activity_date_vod__c AS sfa_last_call_date, acc.ID AS veeva_account_id, addr.ID AS veeva_address_id, 'Y'::varchar(1) AS ora_viewable_flag, acc.CREATEDDATE AS sfa_create_date, trunc(tsf.createddate, 'DD'::varchar(2)) AS sfa_align_date, (statement_timestamp())::timestamp AS last_build_date, CASE WHEN (NOT regexp_like(acc.EXTERNAL_ID_VOD__C, '[[:digit:]]{9}'::varchar(14), ''::varchar)) THEN acc.EXTERNAL_ID_VOD__C ELSE NULL END AS siebel_contact_row_id, CASE WHEN regexp_like(acc.EXTERNAL_ID_VOD__C, '[[:digit:]]{9}'::varchar(14), ''::varchar) THEN acc.EXTERNAL_ID_VOD__C ELSE NULL END AS bp_code, acc.OUTLET_ID_TVA__C AS ims_outlet_code, acc.PMO_GPO_ACCOUNT_AFFILIATIONS AS pmo_gpo_account_affiliations, tsf.synribo_target_tva__c AS onc_synribo_target, tsf.treanda_sbo_tva__c AS onc_treanda_sbo, tsf.trisenox_sbo_tva__c AS onc_trisenox_sbo, CASE WHEN (tsf.territory_vod__c ~~ 'TO%'::varchar(3)) THEN acc.TREANDA_LQ_TGT_TVA__C ELSE NULL END AS onc_treanda_target, acc.BUSINESS_ASSOCIATE_AGREEMENT AS business_associate_agreement, CASE WHEN (tsf.territory_vod__c ~~ 'TO%'::varchar(3)) THEN acc.TBO_FILGRASTIM_TARGET_TVA__C ELSE NULL END AS granix_indicator, acc.ACCOUNT_DEMO_ID_TVA__C AS acct_demo_id FROM (((((WSMP_ADMIN.VV_ACCOUNT acc JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acc.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acc.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN (SELECT x.id, x.isdeleted, x.name, x.recordtypeid, x.createddate, x.createdbyid, x.lastmodifieddate, x.lastmodifiedbyid, x.systemmodstamp, x.mayedit, x.islocked, x.account_vod__c, x.address_vod__c, x.last_activity_date_vod__c, x.my_target_vod__c, x.route_vod__c, x.mobile_id_vod__c, x.external_id_vod__c, x.territory_vod__c, x.ytd_activity_vod__c, x.preferred_account_vod__c, x.allowed_products_vod__c, x.territory_status_tva__c, x.territory_specialty_tva__c, x.treats_es_osa_tva__c, x.osa_patients_tva__c, x.account_status_tva__c, x.dea_number_tva__c, x.synribo_target_tva__c, x.treanda_sbo_tva__c, x.trisenox_sbo_tva__c, x.appt_index_tva__c, x.merged_mvn__c, x.call_plan_designation_tva__c, x.campaign_tva__c, x.rnk FROM (SELECT x.id, x.isdeleted, x.name, x.recordtypeid, x.createddate, x.createdbyid, x.lastmodifieddate, x.lastmodifiedbyid, x.systemmodstamp, x.mayedit, x.islocked, x.account_vod__c, x.address_vod__c, x.last_activity_date_vod__c, x.my_target_vod__c, x.route_vod__c, x.mobile_id_vod__c, x.external_id_vod__c, x.territory_vod__c, x.ytd_activity_vod__c, x.preferred_account_vod__c, x.allowed_products_vod__c, x.territory_status_tva__c, x.territory_specialty_tva__c, x.treats_es_osa_tva__c, x.osa_patients_tva__c, x.account_status_tva__c, x.dea_number_tva__c, x.synribo_target_tva__c, x.treanda_sbo_tva__c, x.trisenox_sbo_tva__c, x.appt_index_tva__c, x.merged_mvn__c, x.call_plan_designation_tva__c, x.campaign_tva__c, row_number() OVER (PARTITION BY x.account_vod__c, x.territory_vod__c ORDER BY x.createddate, x.lastmodifieddate, x.systemmodstamp, x.address_vod__c) AS rnk FROM WSMP_ADMIN.vv_tsf_vod__c x) x WHERE (x.rnk = 1)) tsf ON (((tsf.account_vod__c = acc.ID) AND (tsf.territory_vod__c = g.DEVELOPERNAME)))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acc.ID) AND (tsf.address_vod__c = addr.ID))));

CREATE  VIEW WSMP_ADMIN_ORA.i_bag_territory_product_terr AS
SELECT bt.TERRITORY_NUM AS territory_num, b.BAG_NAME AS bag_name, bp."POSITION" AS "position", bp.PRODUCT_NAME AS product_name FROM ((WSMP_ADMIN.BAG b JOIN WSMP_ADMIN.BAG_TERRITORY bt ON ((b.BAG_ID = bt.BAG_ID))) JOIN WSMP_ADMIN.BAG_PRODUCT bp ON ((b.BAG_ID = bp.BAG_ID))) WHERE ((b.VALID_FOR_TODAY = 'Y'::varchar(1)) AND (bt.VALID_FOR_TODAY = 'Y'::varchar(1)));

CREATE  VIEW WSMP_ADMIN_ORA.i_bag_territory_product_mgr AS
SELECT m.territory_num, (m.sales_force_id || 'MGR'::varchar(3)) AS bag_name, row_number() OVER (PARTITION BY m.territory_num ORDER BY p.product_name) AS "position", p.product_name FROM ((SELECT substr(i_bag_territory_product_terr.territory_num, 1, 2) AS sales_force_id, i_bag_territory_product_terr.product_name FROM WSMP_ADMIN.i_bag_territory_product_terr GROUP BY substr(i_bag_territory_product_terr.territory_num, 1, 2), i_bag_territory_product_terr.product_name) p JOIN (SELECT substr(i_bag_territory_product_terr.territory_num, 1, 2) AS sales_force_id, (substr(i_bag_territory_product_terr.territory_num, 1, 6) || '00'::varchar(2)) AS territory_num FROM WSMP_ADMIN.i_bag_territory_product_terr GROUP BY substr(i_bag_territory_product_terr.territory_num, 1, 2), (substr(i_bag_territory_product_terr.territory_num, 1, 6) || '00'::varchar(2))) m ON ((p.sales_force_id = m.sales_force_id)));

CREATE  VIEW WSMP_ADMIN_ORA.i_bag_territory_product AS
SELECT i_bag_territory_product_terr.territory_num, i_bag_territory_product_terr.bag_name, i_bag_territory_product_terr."position", i_bag_territory_product_terr.product_name FROM WSMP_ADMIN.i_bag_territory_product_terr UNION SELECT i_bag_territory_product_mgr.territory_num, i_bag_territory_product_mgr.bag_name, i_bag_territory_product_mgr."position", i_bag_territory_product_mgr.product_name FROM WSMP_ADMIN.i_bag_territory_product_mgr;

CREATE  VIEW WSMP_ADMIN_ORA.Syneos_Cinqair_dddmd AS
 SELECT ca.sales_force_id,
        ca.territory_number,
        dddmd.onc_account_demo_id,
        dddmd.outlet_name,
        demo.outlet_address,
        demo.outlet_city,
        demo.outlet_state,
        demo.outlet_zip,
        dddmd.outlet_code,
        dddmd.tvcmid,
        dddmd.subcategory_code,
        dddmd.basket_name,
        dddmd.data_date,
        dddmd.date,
        dddmd.rollup_month,
        dddmd.quantity,
        dddmd.dollars,
        dddmd.rollup_week
 FROM datamart.ddd_md dddmd, datamart.dddmd_demographics demo, datamart.current_alignment ca
 WHERE ((demo.outlet_zip = ca.zip_code) AND (dddmd.outlet_code = demo.outlet_code) AND (ca.territory_number = ANY (ARRAY['TSATCZ48'::varchar(8), 'TSATNZ43'::varchar(8), 'TSATGZ45'::varchar(8), 'TSATGZ47'::varchar(8), 'TSATGZ50'::varchar(8), 'TSATNZ44'::varchar(8), 'TSATNZ49'::varchar(8), 'TSATCZ43'::varchar(8), 'TSATWZ49'::varchar(8), 'TSATNZ41'::varchar(8), 'TSATSZ42'::varchar(8), 'TSATSZ48'::varchar(8)])) AND (dddmd.basket_name ~~* '%CINQ%'::varchar(6)) AND (dddmd.rollup_month > '2019-12-31'::date))
 GROUP BY ca.sales_force_id,
          ca.territory_number,
          dddmd.onc_account_demo_id,
          dddmd.outlet_name,
          demo.outlet_address,
          demo.outlet_city,
          demo.outlet_state,
          demo.outlet_zip,
          dddmd.outlet_code,
          dddmd.tvcmid,
          dddmd.subcategory_code,
          dddmd.basket_name,
          dddmd.data_date,
          dddmd.date,
          dddmd.rollup_month,
          dddmd.quantity,
          dddmd.dollars,
          dddmd.rollup_week;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_roster AS
SELECT r.TERRITORY_NUM AS territory_num, r.LAST_NAME AS last_name, r.FIRST_NAME AS first_name, r.SHIP_ADDRESS_LINE1 AS ship_address_line1, r.SHIP_ADDRESS_LINE2 AS ship_address_line2, r.SHIP_CITY AS ship_city, r.SHIP_STATE AS ship_state, r.SHIP_ZIP AS ship_zip, coalesce(r.BUSINESS_PHONE, r.CELL_PHONE, r.HOME_PHONE) AS phone, r.EMAIL AS email, CASE WHEN (r.REP_TYPE = 'REP'::varchar(3)) THEN p.m_territory_num WHEN (r.REP_TYPE = 'RM'::varchar(2)) THEN r.TERRITORY_NUM ELSE NULL END AS district, CASE WHEN (r.REP_TYPE = 'REP'::varchar(3)) THEN p.d_territory_num WHEN (r.REP_TYPE = 'RM'::varchar(2)) THEN r.PARENT_TERRITORY_NUM WHEN (r.REP_TYPE = 'AD'::varchar(2)) THEN r.TERRITORY_NUM ELSE NULL END AS region FROM (WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA r LEFT JOIN WSMP_ADMIN.v_roster_teva_rep_mgr_dir p ON (((r.TERRITORY_NUM = p.rep_territory_num) AND (r.EMPLOYEE_ID = p.rep_emp_id)))) WHERE ((r.SALES_FORCE_ID = ANY (ARRAY['TO'::varchar(2), 'TN'::varchar(2)])) AND (r.LAST_NAME <> 'Vacant'::varchar(6)) AND (r.REP_TYPE = ANY (ARRAY['REP'::varchar(3), 'RM'::varchar(2), 'AD'::varchar(2)])));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_sharepoint_tw AS
((SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS title, dim_csf_sales_roster_teva.TERRITORY_NUM AS territory FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (dim_csf_sales_roster_teva.SALES_FORCE_ID = 'TW'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.d_username) AS title, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) AS territory FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TW'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.d_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TW'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TW'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_sharepoint_tr AS
((SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS title, dim_csf_sales_roster_teva.TERRITORY_NUM AS territory FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (dim_csf_sales_roster_teva.SALES_FORCE_ID = 'TR'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.d_username) AS title, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) AS territory FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TR'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.d_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TR'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TR'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_sharepoint_tc_tn_tp AS
((SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS title, dim_csf_sales_roster_teva.TERRITORY_NUM AS territory FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (dim_csf_sales_roster_teva.SALES_FORCE_ID = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)]))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.d_username) AS title, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) AS territory FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)]))) GROUP BY lower(v_roster_teva_rep_mgr_dir.d_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)]))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = ANY (ARRAY['TC'::varchar(2), 'TN'::varchar(2), 'TP'::varchar(2)]))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_sharepoint_tb AS
((SELECT lower(dim_csf_sales_roster_teva.USERNAME) AS title, dim_csf_sales_roster_teva.TERRITORY_NUM AS territory FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.USERNAME IS NOT NULL) AND (dim_csf_sales_roster_teva.SALES_FORCE_ID = 'TB'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.d_username) AS title, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) AS territory FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TB'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.d_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TB'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.m_territory_num, 1, 6) || '_I'::varchar(2))) UNION SELECT lower(v_roster_teva_rep_mgr_dir.h_username) AS lower, (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2)) FROM WSMP_ADMIN.v_roster_teva_rep_mgr_dir WHERE ((v_roster_teva_rep_mgr_dir.rep_username IS NOT NULL) AND (v_roster_teva_rep_mgr_dir.sales_force_id = 'TB'::varchar(2))) GROUP BY lower(v_roster_teva_rep_mgr_dir.h_username), (substr(v_roster_teva_rep_mgr_dir.d_territory_num, 1, 6) || '_I'::varchar(2));

CREATE  VIEW WSMP_ADMIN_ORA.v_adasuve_survey AS
SELECT t.ACCOUNT_VOD__C AS veeva_account_id, demo.last_name AS account_name, demo.npi, acc.ACCOUNT_DEA_TVA__C AS dea, acc.IMS_ORG_ID_TVA__C AS ims_org_id, acc.ADASUVE_ACCOUNT_INDICATOR AS adasuve_account_indicator, demo.address1, demo.address2, demo.address3, demo.city, demo.state, demo.zip, q.LASTMODIFIEDDATE AS updated_date, s.NAME AS survey, q.ORDER_VOD__C AS question_order, q.QUESTION_TEXT_VOD__C AS question, CASE ty.NAME WHEN NULLSEQUAL 'date_vod'::varchar(8) THEN to_char(q.DATE_VOD__C, 'yyyy-mm-dd'::varchar(10)) WHEN NULLSEQUAL 'text_vod'::varchar(8) THEN q.TEXT_VOD__C ELSE q.RESPONSE_VOD__C END AS answer, rep.LAST_NAME AS rep_last_name, rep.FIRST_NAME AS rep_first_name, hier.rep_territory_name, hier.m_territory_num AS region_territory_num, hier.m_territory_name AS region_territory_name, hier.d_territory_num AS area_territory_num, hier.d_territory_name AS area_territory_name FROM (((((((WSMP_ADMIN.VV_SURVEY_VOD__C s JOIN WSMP_ADMIN.VV_SURVEY_TARGET_VOD__C t ON ((s.ID = t.SURVEY_VOD__C))) JOIN WSMP_ADMIN.VV_QUESTION_RESPONSE_VOD__C q ON ((t.ID = q.SURVEY_TARGET_VOD__C))) JOIN WSMP_ADMIN.VV_RECORDTYPE ty ON ((q.TYPE_VOD__C = ty.ID))) JOIN WSMP_ADMIN.VV_ACCOUNT acc ON ((t.ACCOUNT_VOD__C = acc.ID))) JOIN WSMP_ADMIN.v_veeva_demo demo ON ((t.ACCOUNT_VOD__C = demo.veeva_account_id))) LEFT JOIN (SELECT dim_csf_sales_roster_teva.EMPLOYEE_ID, dim_csf_sales_roster_teva.TERRITORY_NUM, dim_csf_sales_roster_teva.TERRITORY_NAME, dim_csf_sales_roster_teva.SALES_FORCE_ID, dim_csf_sales_roster_teva.FULL_NAME, dim_csf_sales_roster_teva.LAST_NAME, dim_csf_sales_roster_teva.FIRST_NAME, dim_csf_sales_roster_teva.MIDDLE_NAME, dim_csf_sales_roster_teva.ADDRESS_LINE1, dim_csf_sales_roster_teva.ADDRESS_LINE2, dim_csf_sales_roster_teva.CITY, dim_csf_sales_roster_teva.STATE, dim_csf_sales_roster_teva.ZIP, dim_csf_sales_roster_teva.BUS_ADDRESS_LINE1, dim_csf_sales_roster_teva.BUS_ADDRESS_LINE2, dim_csf_sales_roster_teva.BUS_CITY, dim_csf_sales_roster_teva.BUS_STATE, dim_csf_sales_roster_teva.BUS_ZIP, dim_csf_sales_roster_teva.SHIP_ADDRESS_LINE1, dim_csf_sales_roster_teva.SHIP_ADDRESS_LINE2, dim_csf_sales_roster_teva.SHIP_CITY, dim_csf_sales_roster_teva.SHIP_STATE, dim_csf_sales_roster_teva.SHIP_ZIP, dim_csf_sales_roster_teva.BUSINESS_PHONE, dim_csf_sales_roster_teva.HOME_PHONE, dim_csf_sales_roster_teva.CELL_PHONE, dim_csf_sales_roster_teva.FAX, dim_csf_sales_roster_teva.VOICE_MAIL_EXT, dim_csf_sales_roster_teva.EMAIL, dim_csf_sales_roster_teva.HIRE_DATE, dim_csf_sales_roster_teva.BIRTHDAY, dim_csf_sales_roster_teva.TITLE, dim_csf_sales_roster_teva.REP_TYPE, dim_csf_sales_roster_teva.AREA_TRAINER, dim_csf_sales_roster_teva.USERNAME, dim_csf_sales_roster_teva.OUT_OF_TERRITORY, dim_csf_sales_roster_teva.PARENT_TERRITORY_NUM, dim_csf_sales_roster_teva.LAST_BUILD_DATE, dim_csf_sales_roster_teva.COMPANY_CD, dim_csf_sales_roster_teva.ORIG_HIRE_DATE FROM WSMP_ADMIN.DIM_CSF_SALES_ROSTER_TEVA WHERE ((dim_csf_sales_roster_teva.SALES_FORCE_ID = 'TB'::varchar(2)) AND (dim_csf_sales_roster_teva.REP_TYPE = 'REP'::varchar(3)))) rep ON ((demo.territory_num = rep.TERRITORY_NUM))) LEFT JOIN (SELECT v_territory_rep_mgr_dir.sales_force_id, v_territory_rep_mgr_dir.rep_territory_num, v_territory_rep_mgr_dir.rep_territory_name, v_territory_rep_mgr_dir.m_territory_num, v_territory_rep_mgr_dir.m_territory_name, v_territory_rep_mgr_dir.d_territory_num, v_territory_rep_mgr_dir.d_territory_name, v_territory_rep_mgr_dir.h_territory_num, v_territory_rep_mgr_dir.h_territory_name FROM WSMP_ADMIN.v_territory_rep_mgr_dir WHERE (v_territory_rep_mgr_dir.sales_force_id = 'TB'::varchar(2))) hier ON ((demo.territory_num = hier.rep_territory_num))) WHERE ((s.NAME = ANY (ARRAY['Profiling and Developing Product Champions'::varchar(42), 'REMS Enrollment and Formulary'::varchar(29)])) AND (demo.sales_force_id = 'TB'::varchar(2))) ORDER BY t.ACCOUNT_VOD__C, s.NAME, q.QUESTION_TEXT_VOD__C;

CREATE  VIEW WSMP_ADMIN_ORA.ext_asi_copay_detail_wkly AS
( SELECT EXT_ASI_COPAY_DETAIL_WKLY.TRANS_TYPE,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY.ORIG_ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY.RX_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.RX_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY.DATE_WRITTEN,
        EXT_ASI_COPAY_DETAIL_WKLY.DAYS_SUPPLY,
        EXT_ASI_COPAY_DETAIL_WKLY.NDC_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY.DAW,
        EXT_ASI_COPAY_DETAIL_WKLY.DRUG_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY.DRUG_DESC,
        EXT_ASI_COPAY_DETAIL_WKLY.NEW_REFILL,
        EXT_ASI_COPAY_DETAIL_WKLY.QUANTITY,
        EXT_ASI_COPAY_DETAIL_WKLY.REFILLS,
        EXT_ASI_COPAY_DETAIL_WKLY.OTHER_COVERAGE_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY.GROUP_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.COUPON_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.SEX,
        EXT_ASI_COPAY_DETAIL_WKLY.AGE_AT_REDEMPTION,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_PROCESS_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_CHAIN_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.NABP,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_CHAIN,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_ADDRESS,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_PHONE,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_NPI_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.PRINCIPLE_PHYS_DEA_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY.PHYS_NPI,
        EXT_ASI_COPAY_DETAIL_WKLY.PHYSICIAN_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ADDRESS1,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY.ASI_PHYS_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY.REBATE_AMOUNT,
        EXT_ASI_COPAY_DETAIL_WKLY.MEMBER_CASH_EXPENSE,
        EXT_ASI_COPAY_DETAIL_WKLY.SUBMITTED_COST,
        EXT_ASI_COPAY_DETAIL_WKLY.PHARMACY_FEE,
        EXT_ASI_COPAY_DETAIL_WKLY.TOTAL_AMOUNT_DUE,
        EXT_ASI_COPAY_DETAIL_WKLY.CALC_AWP,
        EXT_ASI_COPAY_DETAIL_WKLY.CREATE_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY.OCC_PAYMENT_TYPE
 FROM teva_ingestion.EXT_ASI_COPAY_DETAIL_WKLY UNION ALL  SELECT EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.TRANS_TYPE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ORIG_ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.RX_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.RX_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.DATE_WRITTEN,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.DAYS_SUPPLY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.NDC_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.DAW,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.DRUG_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.DRUG_DESC,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.NEW_REFILL,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.QUANTITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.REFILLS,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.OTHER_COVERAGE_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.GROUP_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.COUPON_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.SEX,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.AGE_AT_REDEMPTION,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_PROCESS_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_CHAIN_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.NABP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_CHAIN,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_ADDRESS,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_PHONE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_NPI_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PRINCIPLE_PHYS_DEA_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHYS_NPI,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHYSICIAN_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_PHYS_ADDRESS1,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_PHYS_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_PHYS_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_PHYS_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.ASI_PHYS_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.REBATE_AMOUNT,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.MEMBER_CASH_EXPENSE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.SUBMITTED_COST,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.PHARMACY_FEE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.TOTAL_AMOUNT_DUE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.CALC_AWP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.CREATE_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2.OCC_PAYMENT_TYPE
 FROM teva_ingestion.EXT_ASI_COPAY_DETAIL_WKLY_COMBO_2) UNION ALL  SELECT EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.TRANS_TYPE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ORIG_ASI_TXN_ID,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.RX_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.RX_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.DATE_WRITTEN,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.DAYS_SUPPLY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.NDC_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.DAW,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.DRUG_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.DRUG_DESC,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.NEW_REFILL,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.QUANTITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.REFILLS,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.OTHER_COVERAGE_CODE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.GROUP_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.COUPON_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.SEX,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.AGE_AT_REDEMPTION,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_PROCESS_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_CHAIN_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.NABP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_CHAIN,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_ADDRESS,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_PHONE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_NPI_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PRINCIPLE_PHYS_DEA_NUM,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHYS_NPI,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHYSICIAN_NAME,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_PHYS_ADDRESS1,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_PHYS_ADDRESS2,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_PHYS_CITY,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_PHYS_STATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.ASI_PHYS_ZIP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.REBATE_AMOUNT,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.MEMBER_CASH_EXPENSE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.SUBMITTED_COST,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.PHARMACY_FEE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.TOTAL_AMOUNT_DUE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.CALC_AWP,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.CREATE_DATE,
        EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3.OCC_PAYMENT_TYPE
 FROM teva_ingestion.EXT_ASI_COPAY_DETAIL_WKLY_COMBO_3;

CREATE  VIEW WSMP_ADMIN_ORA.ims_pdrp AS
 SELECT d.IMS_PRESCRIBER_ID AS ims_id,
        d.LAST_NAME AS last_name,
        d.FIRST_NAME AS first_name,
        d.MIDDLE_NAME AS middle_name,
        d.SUFFIX AS suffix,
        f.EFFECTIVE_DATE AS pdrp_date
 FROM (teva_ingestion.C_BO_IMS_FLAG f JOIN teva_ingestion.C_BO_HCP_DETAIL d ON ((f.HCP_DETAIL_ID = d.ROWID_OBJECT)))
 WHERE ((f.FLAG_TYPE = 'PDRP'::varchar(4)) AND (f.FLAG_VALUE = 'Y'::varchar(1)) AND (d.HUB_STATE_IND = 1) AND (d.CONSOLIDATION_IND = 2));

CREATE  VIEW WSMP_ADMIN_ORA.ims_ama_no_contact AS
 SELECT d.IMS_PRESCRIBER_ID AS ims_id,
        d.LAST_NAME AS last_name,
        d.FIRST_NAME AS first_name,
        d.MIDDLE_NAME AS middle_name,
        d.SUFFIX AS suffix,
        f.EFFECTIVE_DATE AS effective_date
 FROM (teva_ingestion.C_BO_IMS_FLAG f JOIN teva_ingestion.C_BO_HCP_DETAIL d ON ((f.HCP_DETAIL_ID = d.ROWID_OBJECT)))
 WHERE ((f.FLAG_TYPE = 'AMADNC'::varchar(6)) AND (f.FLAG_VALUE = 'Y'::varchar(1)) AND (d.HUB_STATE_IND = 1) AND (d.CONSOLIDATION_IND = 2));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_cmop_product AS
SELECT v.VA_PRODUCT AS va_product, v.WK_PROD_CODE AS prod_code, upper(v.CEPH_PROD_DESC) AS prod_name, coalesce(p.brand_code, v.WK_PROD_CODE) AS brand_code, coalesce(p.brand_name, upper(v.CEPH_PROD_DESC)) AS brand_name, coalesce(p.market_code, v.WK_PROD_CODE) AS market_code, CASE WHEN (v.WK_PROD_CODE = 'TR0900'::varchar(6)) THEN 'RESPIRATORY'::varchar(11) ELSE CASE WHEN (v.WK_PROD_CODE = 'TW0900'::varchar(6)) THEN 'WOMENS HEALTH'::varchar(13) ELSE p.market_name END END AS market_name FROM (CUSTOMER.DIM_VA_PRODUCT_XREF v LEFT JOIN CUSTOMER.dim_product p ON ((v.WK_PROD_CODE = p.product_code))) WHERE (v.WK_PROD_CODE <> ALL (ARRAY['200102'::varchar(6), '200104'::varchar(6), '200112'::varchar(6), '200116'::varchar(6), 'V00100'::varchar(6)]));

CREATE  VIEW WSMP_ADMIN_ORA.ext_asi_voucher_detail_wkly AS
 SELECT EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.TRANS_TYPE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_TXN_ID,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ORIG_ASI_TXN_ID,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.RX_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.RX_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.DATE_WRITTEN,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.DAYS_SUPPLY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.NDC_CODE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.DAW,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.DRUG_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.DRUG_DESC,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.NEW_REFILL,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.QUANTITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.REFILLS,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.OTHER_COVERAGE_CODE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.GROUP_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.COUPON_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.SEX,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.AGE_AT_REDEMPTION,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_PROCESS_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_CHAIN_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.NABP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_CHAIN,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_ADDRESS,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_ADDRESS2,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_CITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_STATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_ZIP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_PHONE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_NPI_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PRINCIPLE_PHYS_DEA_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHYS_NPI,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHYSICIAN_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_PHYS_ADDRESS1,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_PHYS_ADDRESS2,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_PHYS_CITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_PHYS_STATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.ASI_PHYS_ZIP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.REBATE_AMOUNT,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.MEMBER_CASH_EXPENSE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.SUBMITTED_COST,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.PHARMACY_FEE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.TOTAL_AMOUNT_DUE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.CALC_AWP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.CREATE_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER.OCC_PAYMENT_TYPE
 FROM teva_ingestion.EXT_ASI_VOUCHER_DETAIL_WKLY_VOUCHER UNION ALL  SELECT EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.TRANS_TYPE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_TXN_ID,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ORIG_ASI_TXN_ID,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.RX_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.RX_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.DATE_WRITTEN,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.DAYS_SUPPLY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.NDC_CODE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.DAW,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.DRUG_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.DRUG_DESC,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.NEW_REFILL,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.QUANTITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.REFILLS,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.OTHER_COVERAGE_CODE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.GROUP_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.COUPON_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.SEX,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.AGE_AT_REDEMPTION,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_PROCESS_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_CHAIN_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.NABP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_CHAIN,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_ADDRESS,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_ADDRESS2,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_CITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_STATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_ZIP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_PHONE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_NPI_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PRINCIPLE_PHYS_DEA_NUM,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHYS_NPI,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHYSICIAN_NAME,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_PHYS_ADDRESS1,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_PHYS_ADDRESS2,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_PHYS_CITY,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_PHYS_STATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.ASI_PHYS_ZIP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.REBATE_AMOUNT,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.MEMBER_CASH_EXPENSE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.SUBMITTED_COST,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.PHARMACY_FEE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.TOTAL_AMOUNT_DUE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.CALC_AWP,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.CREATE_DATE,
        EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1.OCC_PAYMENT_TYPE
 FROM teva_ingestion.EXT_ASI_VOUCHER_DETAIL_WKLY_COMBO_1;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_mm_ram_to_rsm AS
SELECT x.MM_RAM, x.RSM FROM (SELECT a.MM_RAM, (substr(b.TERRITORY_NUM, 1, 6) || '00'::varchar(2)) AS RSM FROM (teva_ingestion.EXT_MM_RAM_TO_STATE a JOIN WSMP_ADMIN.KC_ZIP_TO_TERRITORY b ON ((a.STATE = b.STATE))) WHERE ((substr(b.TERRITORY_NUM, 5, 2) <> 'ZZ'::varchar(2)) AND (b.TERRITORY_NAME IS NOT NULL)) GROUP BY a.MM_RAM, (substr(b.TERRITORY_NUM, 1, 6) || '00'::varchar(2))) x;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_rems_account_backup AS
SELECT stg.ASI_ACCOUNT_ID AS HCP_ID, align.TERRITORY_NUM AS territory_num, stg.SITE_NAME AS ACCOUNT_NAME, stg.ADDRESS_1 AS ADDRESS1, stg.ADDRESS_2 AS ADDRESS2, NULL AS ADDRESS3, stg.CITY, stg.STATE, stg.ZIP_CODE AS ZIP, 'Y'::varchar(1) AS PRIMARY_ADDRESS, stg.PHONE_NUMBER, fact.IMS_ORG_ID AS EXTERNAL_ID, 'HOSPITAL'::varchar(8) AS CUSTOMER_TYPE, NULL AS BPNUMBER, NULL AS SUBTYPE FROM ((WSMP_ADMIN.STG_REMS_FACILITY stg LEFT JOIN (SELECT ext_kc_zip_to_territory.ZIP, ext_kc_zip_to_territory.CITY, ext_kc_zip_to_territory.STATE, ext_kc_zip_to_territory.TERRITORY_NUM, ext_kc_zip_to_territory.TERRITORY_NAME, ext_kc_zip_to_territory.AREA_NAME, ext_kc_zip_to_territory.REGION_NAME, ext_kc_zip_to_territory.SALES_FORCE_ID, ext_kc_zip_to_territory.ORGANIZATION_CODE, ext_kc_zip_to_territory.INACTIVE_FLAG, ext_kc_zip_to_territory.COMMENTS, ext_kc_zip_to_territory.MIRROR_FLAG, ext_kc_zip_to_territory.MIRROR_TERRITORY_NUM, ext_kc_zip_to_territory.batch_id, ext_kc_zip_to_territory.row_id, ext_kc_zip_to_territory.update_ts FROM teva_ingestion.ext_kc_zip_to_territory WHERE (ext_kc_zip_to_territory.SALES_FORCE_ID = 'TB'::varchar(2))) align ON ((substr(stg.ZIP_CODE, 1, 5) = align.ZIP))) LEFT JOIN WSMP_ADMIN.HCOS_IDENTIFIER_FACT fact ON (((fact.IDENTIFIER_ID = 15::numeric(18,0)) AND (fact.IDENTIFIER = stg.NPI)))) WHERE (stg.VEEVA_ACCOUNT_ID IS NULL);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Fentora_Market AS
SELECT rx.payer_plan_num AS plan_num, rx.product_code, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.month_bucket WHEN 24::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.month_bucket WHEN 23::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.month_bucket WHEN 22::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.month_bucket WHEN 21::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.month_bucket WHEN 20::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.month_bucket WHEN 19::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.month_bucket WHEN 18::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.month_bucket WHEN 17::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.month_bucket WHEN 16::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.month_bucket WHEN 15::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.month_bucket WHEN 14::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.month_bucket WHEN 13::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.month_bucket WHEN 12::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.month_bucket WHEN 11::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.month_bucket WHEN 10::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.month_bucket WHEN 9::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.month_bucket WHEN 8::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.month_bucket WHEN 7::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.month_bucket WHEN 6::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.month_bucket WHEN 5::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.month_bucket WHEN 4::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.month_bucket WHEN 3::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.month_bucket WHEN 2::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.trx_cnt ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.month_bucket WHEN 1::numeric(18,0) THEN rx.nrx_cnt ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.dw_presc_plan_rx_m rx, CUSTOMER.dim_product p WHERE ((rx.product_code = ANY (ARRAY['300500'::varchar(6), '300100'::varchar(6), '300180'::varchar(6), '300170'::varchar(6), '300130'::varchar(6), '300140'::varchar(6), '300110'::varchar(6)])) AND (rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (rx.product_code = p.product_code)) GROUP BY rx.payer_plan_num, rx.product_code;

CREATE  VIEW WSMP_ADMIN_ORA.stg_ims_npi AS
SELECT y.ims_id, y.npi FROM (SELECT x.ims_id, x.npi, row_number() OVER (PARTITION BY x.ims_id ORDER BY x.rnk, x.npi) AS rnk FROM (SELECT x1.ID_NUM AS ims_id, x2.ID_NUM AS npi, 1 AS rnk FROM (teva_ingestion.tvcmid_xref x1 JOIN teva_ingestion.tvcmid_xref x2 ON ((x1.TVCMID = x2.TVCMID))) WHERE ((x1.ID_TYPE = 'IMS_ID'::varchar(6)) AND (x2.ID_TYPE = 'NPI'::varchar(3))) UNION SELECT hcos_professional.IMS_ID AS ims_id, hcos_professional.NPI AS npi, 2 AS rnk FROM WSMP_ADMIN.HCOS_PROFESSIONAL WHERE ((hcos_professional.IMS_ID IS NOT NULL) AND (hcos_professional.NPI IS NOT NULL))) x) y WHERE (y.rnk = 1);

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_do_not_promote_with_veevaid AS
(((SELECT d.SALES_FORCE_ID AS sales_force_id, acct.ID AS veeva_id, sln.state_license_number, dea.dea_num, d.PRODUCT_NAME AS product_name, d.SPECIALTY_GROUP AS specialty_group, 'N'::varchar(1) AS app, CASE WHEN (d.DEBARRED = 'Y'::varchar(1)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS DNP FROM (((WSMP_ADMIN.DIM_DNC d JOIN WSMP_ADMIN.stg_ims_dea dea ON ((d.IMS_ID = dea.ims_id))) LEFT JOIN (SELECT substr(g.DEVELOPERNAME, 1, 2) AS sales_force_id, acct.ID_VOD__C AS ims_id, addr.LICENSE_VOD__C AS state_license_number FROM ((((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acct.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acct.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON ((addr.ACCOUNT_VOD__C = acct.ID))) WHERE ((addr.LICENSE_VOD__C IS NOT NULL) AND (acct.ID_VOD__C IS NOT NULL)) GROUP BY substr(g.DEVELOPERNAME, 1, 2), acct.ID_VOD__C, addr.LICENSE_VOD__C) sln ON (((d.IMS_ID = sln.ims_id) AND (d.SALES_FORCE_ID = sln.sales_force_id)))) LEFT JOIN WSMP_ADMIN.VV_ACCOUNT acct ON ((d.IMS_ID = acct.ID_VOD__C))) UNION SELECT 'TC'::varchar(2), acct.ID AS veeva_id, sln.state_license_number, dea.dea_num, 'NUVIGIL'::varchar(7), d.SPECIALTY_PRIMARY_CODE AS specialty_primary_code, 'N'::varchar(1) AS APP, 'Y'::varchar(1) AS DNP FROM (((WSMP_ADMIN.DEBARRED d JOIN WSMP_ADMIN.stg_ims_dea dea ON ((d.IMS_ID = dea.ims_id))) LEFT JOIN (SELECT substr(g.DEVELOPERNAME, 1, 2) AS sales_force_id, acct.ID_VOD__C AS ims_id, addr.LICENSE_VOD__C AS state_license_number FROM ((((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acct.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acct.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON ((addr.ACCOUNT_VOD__C = acct.ID))) WHERE ((addr.LICENSE_VOD__C IS NOT NULL) AND (acct.ID_VOD__C IS NOT NULL)) GROUP BY substr(g.DEVELOPERNAME, 1, 2), acct.ID_VOD__C, addr.LICENSE_VOD__C) sln ON (((d.IMS_ID = sln.ims_id) AND (sln.sales_force_id = 'TC'::varchar(2))))) LEFT JOIN WSMP_ADMIN.VV_ACCOUNT acct ON ((d.IMS_ID = acct.ID_VOD__C))) WHERE (d.CURRENT_IND = 'Y'::varchar(1)) GROUP BY 'TC'::varchar(2), acct.ID, sln.state_license_number, dea.dea_num, 'NUVIGIL'::varchar(7), d.SPECIALTY_PRIMARY_CODE, 'N'::varchar(1), 'Y'::varchar(1)) UNION SELECT 'TP'::varchar(2), acct.ID AS veeva_id, sln.state_license_number, dea.dea_num, 'FENTORA'::varchar(7), d.SPECIALTY_PRIMARY_CODE AS specialty_primary_code, 'N'::varchar(1) AS APP, 'Y'::varchar(1) AS DNP FROM (((WSMP_ADMIN.DEBARRED d JOIN WSMP_ADMIN.stg_ims_dea dea ON ((d.IMS_ID = dea.ims_id))) LEFT JOIN (SELECT substr(g.DEVELOPERNAME, 1, 2) AS sales_force_id, acct.ID_VOD__C AS ims_id, addr.LICENSE_VOD__C AS state_license_number FROM ((((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.VV_RECORDTYPE rta ON ((acct.RECORDTYPEID = rta.ID))) JOIN WSMP_ADMIN.VV_ACCOUNTSHARE acctshr ON (((acct.ID = acctshr.ACCOUNTID) AND (acctshr.ROWCAUSE = 'TerritoryManual'::varchar(15))))) JOIN WSMP_ADMIN.VV_GROUP g ON ((acctshr.USERORGROUPID = g.ID))) JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON ((addr.ACCOUNT_VOD__C = acct.ID))) WHERE ((addr.LICENSE_VOD__C IS NOT NULL) AND (acct.ID_VOD__C IS NOT NULL)) GROUP BY substr(g.DEVELOPERNAME, 1, 2), acct.ID_VOD__C, addr.LICENSE_VOD__C) sln ON (((d.IMS_ID = sln.ims_id) AND (sln.sales_force_id = 'TP'::varchar(2))))) LEFT JOIN WSMP_ADMIN.VV_ACCOUNT acct ON ((d.IMS_ID = acct.ID_VOD__C))) WHERE (d.CURRENT_IND = 'Y'::varchar(1)) GROUP BY 'TP'::varchar(2), acct.ID, sln.state_license_number, dea.dea_num, 'FENTORA'::varchar(7), d.SPECIALTY_PRIMARY_CODE, 'N'::varchar(1), 'Y'::varchar(1)) UNION SELECT 'TC'::varchar(2) AS sales_force_id, acct.ID AS veeva_id, addr.LICENSE_VOD__C AS state_license_number, dea.dea_num, 'NUVIGIL'::varchar(7) AS product_name, ssx.SPECIALTY_CODE AS specialty_code, 'Y'::varchar(1) AS app, 'N'::varchar(1) AS DNP FROM (((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.stg_ims_dea dea ON ((acct.ID_VOD__C = dea.ims_id))) LEFT JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acct.ID) AND (addr.LICENSE_VOD__C IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.SIEBEL_SPECIALTY_XREF ssx ON ((acct.SPECIALTY_1_VOD__C = ssx.SPECIALTY_DESCRIPTION))) WHERE (acct.NUVIGIL_APP_TVA__C = 'true'::varchar(4))) UNION SELECT 'TP'::varchar(2) AS sales_force_id, acct.ID AS veeva_id, addr.LICENSE_VOD__C AS state_license_number, dea.dea_num, 'FENTORA'::varchar(7) AS product_name, SSX.SPECIALTY_CODE AS specialty_code, 'Y'::varchar(1) AS app, 'N'::varchar(1) AS DNP FROM (((WSMP_ADMIN.VV_ACCOUNT acct JOIN WSMP_ADMIN.stg_ims_dea dea ON ((acct.ID_VOD__C = dea.ims_id))) LEFT JOIN WSMP_ADMIN.VV_ADDRESS_VOD__C addr ON (((addr.ACCOUNT_VOD__C = acct.ID) AND (addr.LICENSE_VOD__C IS NOT NULL)))) LEFT JOIN WSMP_ADMIN.SIEBEL_SPECIALTY_XREF SSX ON ((acct.SPECIALTY_1_VOD__C = SSX.SPECIALTY_DESCRIPTION))) WHERE (acct.FENTORA_APP_TVA__C = 'true'::varchar(4));

CREATE  VIEW WSMP_ADMIN_ORA.v_asi_pbm_lookup AS
 SELECT EXT_IMS_PBM_XREF.PAYER_PLAN_NUM AS payer_plan_num,
        EXT_IMS_PBM_XREF.PBM_NAME AS pbm_name
 FROM teva_ingestion.ext_ims_pbm_xref
 ORDER BY EXT_IMS_PBM_XREF.PAYER_PLAN_NUM;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_dmd_product AS
SELECT lpad(dim_product_ims_ddd.ims_product_code, 8, '0'::varchar(1)) AS ims_product_code, 'GCSF'::varchar(4) AS market_name, dim_product_ims_ddd.brand_name, dim_product_ims_ddd.ims_product_name AS product_name FROM CUSTOMER.dim_product_ims_ddd WHERE ((dim_product_ims_ddd.brand_name = ANY (ARRAY['NEUPOGEN'::varchar(8), 'GRANIX'::varchar(6), 'LEUKINE'::varchar(7)])) AND (dim_product_ims_ddd.market_name = 'ONCOLOGY'::varchar(8)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Fentora_Product_Totals AS
SELECT rx.PRODUCT_CODE AS product_code, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 24::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt24, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 23::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt23, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 22::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt22, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 21::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt21, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 20::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt20, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 19::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt19, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 18::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt18, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 17::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt17, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 16::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt16, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 15::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt15, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 14::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt14, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 13::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt13, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 12::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt12, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 11::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt11, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 10::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt10, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 9::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt9, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 8::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt8, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 7::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt7, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 6::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt6, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 5::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt5, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 4::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt4, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 3::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt3, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 2::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt2, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.TRX_CNT ELSE 0::numeric(18,0) END) AS trx_cnt1, sum(CASE rx.MONTH_BUCKET WHEN 1::numeric(18,0) THEN rx.NRX_CNT ELSE 0::numeric(18,0) END) AS nrx_cnt1 FROM WSMP_ADMIN.DW_PRESC_PLAN_RX_M rx, CUSTOMER.dim_product p WHERE ((rx.PRODUCT_CODE = ANY (ARRAY['300500'::varchar(6), '300100'::varchar(6), '300180'::varchar(6), '300170'::varchar(6), '300130'::varchar(6), '300140'::varchar(6), '300110'::varchar(6)])) AND (rx.MONTH_BUCKET >= 1::numeric(18,0)) AND (rx.MONTH_BUCKET <= 24::numeric(18,0)) AND (rx.PRODUCT_CODE = p.product_code)) GROUP BY rx.PRODUCT_CODE;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_tr_launch_analytics_rx AS
SELECT rx.ims_id, px.MODEL AS model, mpm.PAYMENT_METHOD AS method_of_payment, rx.payer_plan_num, p.product_name, rx.product_code, to_char(rx.month_ending, ' YYYY-MM-DD'::varchar(11)) AS month_ending, rx.month_bucket, to_char(rx.week_ending, ' YYYY-MM-DD'::varchar(11)) AS week_ending, rx.week_bucket, rx.nrx_cnt, rx.trx_cnt, rx.sales_category FROM (((WSMP_ADMIN.dw_presc_plan_rx_w rx JOIN CUSTOMER.dim_product p ON ((rx.product_code = p.product_code))) LEFT JOIN WSMP_ADMIN.TFC_IMS_PLAN_XREF px ON ((rx.payer_plan_num = px.PAYER_PLAN_NUM))) LEFT JOIN WSMP_ADMIN.DIM_IMS_MODEL_PAYMENT_METHOD mpm ON ((px.MODEL = mpm.MODEL))) WHERE ((rx.product_code ~~ '330-14%'::varchar(7)) AND (rx.product_code NOT IN (SELECT drm45_rollup.ROLLUP_WK_PRODUCT_CODE AS rollup_wk_product_code FROM WSMP_ADMIN.DRM45_ROLLUP GROUP BY drm45_rollup.ROLLUP_WK_PRODUCT_CODE)) AND (rx.week_bucket >= 1::numeric(18,0)) AND (rx.week_bucket <= 52::numeric(18,0)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Nuvigil_Monthly_Rx AS
SELECT x.IMS_ID AS ims_id, x.PRODUCT_CODE AS product_code, p.product_name, x.MONTH_ENDING AS month_ending, sum(x.NRX_QTY) AS nrx_qty, sum(x.TRX_QTY) AS trx_qty, sum(x.UNNORMALIZED_NRX_CNT) AS nrx_cnt, sum(x.UNNORMALIZED_TRX_CNT) AS trx_cnt FROM WSMP_ADMIN.DW_PRESC_RX_M x, CUSTOMER.dim_product p WHERE ((x.MONTH_BUCKET >= 1::numeric(18,0)) AND (x.MONTH_BUCKET <= 24::numeric(18,0)) AND (x.PRODUCT_CODE = ANY (ARRAY['100N05'::varchar(6), '100N15'::varchar(6), '100N25'::varchar(6), '100101'::varchar(6), '100102'::varchar(6), '100120'::varchar(6)])) AND (x.PRODUCT_CODE = p.product_code)) GROUP BY x.IMS_ID, x.PRODUCT_CODE, p.product_name, x.MONTH_ENDING ORDER BY x.IMS_ID, x.PRODUCT_CODE, p.product_name, x.MONTH_ENDING;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_gcsf_dmd AS
SELECT coalesce(z.TO_TERRITORY_NUM_1, 'TOHZHZ99'::varchar(8)) AS TERRITORY_NUM, s.IMS_OUTLET_CODE, s.SUBCATEGORY_CODE, s.CATEGORY_CODE, s.IMS_PRODUCT_CODE, p.product_code AS PRODUCT_CODE, to_char(s.DATA_DATE, 'YYYYMM'::varchar(6)) AS MTH_YYYYMM, s.DOL_MTH01, s.DOL_MTH02, s.DOL_MTH03, s.DOL_MTH04, s.DOL_MTH05, s.DOL_MTH06, s.DOL_MTH07, s.DOL_MTH08, s.DOL_MTH09, s.DOL_MTH10, s.DOL_MTH11, s.DOL_MTH12, s.DOL_MTH13, s.DOL_MTH14, s.DOL_MTH15, s.DOL_MTH16, s.DOL_MTH17, s.DOL_MTH18, s.DOL_MTH19, s.DOL_MTH20, s.DOL_MTH21, s.DOL_MTH22, s.DOL_MTH23, s.DOL_MTH24, s.OUTLET_NAME, s.OUTLET_ADDRESS, s.OUTLET_CITY, s.OUTLET_STATE, s.OUTLET_ZIP FROM ((WSMP_ADMIN.STG_ONC_DMD_MONTHLY_DOLLARS s JOIN CUSTOMER.dim_product_ims_ddd p ON ((s.IMS_PRODUCT_CODE = p.ims_product_code))) LEFT JOIN WSMP_ADMIN.TFC_CURRENT_ZIP_ALIGNMENT z ON ((s.OUTLET_ZIP = z.ZIP))) WHERE (p.brand_name = ANY (ARRAY['NEUPOGEN'::varchar(8), 'GRANIX'::varchar(6), 'LEUKINE'::varchar(7)]));

CREATE  VIEW WSMP_ADMIN_ORA.v_ims_dea AS
 SELECT x1.ID_NUM AS ims_id,
        x2.ID_NUM AS dea_num,
        x2.STATE AS state,
        x2.EXPIRATION_DATE AS expiration_date
 FROM (teva_ingestion.tvcmid_xref x1 JOIN teva_ingestion.tvcmid_xref x2 ON ((x1.TVCMID = x2.TVCMID)))
 WHERE ((x1.ID_TYPE = 'IMS_ID'::varchar(6)) AND (x2.ID_TYPE = 'DEA_NUM'::varchar(7)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ims_npi AS
SELECT x1.ID_NUM AS ims_id, x2.ID_NUM AS npi FROM (teva_ingestion.tvcmid_xref x1 JOIN teva_ingestion.tvcmid_xref x2 ON ((x1.TVCMID = x2.TVCMID))) WHERE ((x1.ID_TYPE = 'IMS_ID'::varchar(6)) AND (x2.ID_TYPE = 'NPI'::varchar(3))) UNION SELECT hcos_professional.IMS_ID AS ims_id, hcos_professional.NPI AS npi FROM WSMP_ADMIN.HCOS_PROFESSIONAL;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_create_mm_ram_to_rsm_test AS
SELECT x.MM_RAM, x.RSM FROM (SELECT a.MM_RAM, (substr(b.TERRITORY_NUM, 1, 6) || '00'::varchar(2)) AS RSM FROM (teva_ingestion.EXT_MM_RAM_TO_STATE a JOIN WSMP_ADMIN.KC_ZIP_TO_TERRITORY b ON ((a.STATE = b.STATE))) WHERE ((substr(b.TERRITORY_NUM, 5, 2) <> 'ZZ'::varchar(2)) AND (b.TERRITORY_NAME IS NOT NULL)) GROUP BY a.MM_RAM, (substr(b.TERRITORY_NUM, 1, 6) || '00'::varchar(2))) x ORDER BY x.MM_RAM, x.RSM LIMIT 1000000;

CREATE  VIEW WSMP_ADMIN_ORA.stg_ims_dea AS
 SELECT x1.ID_NUM AS ims_id,
        x2.ID_NUM AS dea_num,
        x2.STATE AS dea_state,
        x2.EXPIRATION_DATE AS dea_expir_date
 FROM (teva_ingestion.tvcmid_xref x1 JOIN teva_ingestion.tvcmid_xref x2 ON ((x1.TVCMID = x2.TVCMID)))
 WHERE ((x1.ID_TYPE = 'IMS_ID'::varchar(6)) AND (x2.ID_TYPE = 'DEA_NUM'::varchar(7)));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_agile_mktg_copay_redemptions AS
SELECT CASE mod(npi.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((npi.tvcmid)::int)::varchar ELSE rtrim((npi.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, npi.ims_id, cd.VEEVA_ACCOUNT_ID AS veeva_account_id, p.ASI_PROGRAM_NUM AS asi_program_num, p.PROGRAM_DESC AS program_desc, cd.COPAY_CARD_NUM AS copay_card_num, coalesce(cd.ASI_PHYS_ZIP, cd.PHARMACY_ZIP) AS zip_code, to_char(cd.FILL_DATE, 'YYYY-MM-DD'::varchar(10)) AS fill_date, cd.BRAND_NAME AS brand_name, cd.DRUG_DESC AS drug_desc, (cd.QTY)::int AS qty FROM WSMP_ADMIN.TFC_ASI_COPAY_DETAIL_WKLY cd, WSMP_ADMIN.DIM_ASI_PROGRAM p, (SELECT tvcmid_hcp_demo.TVCMID AS tvcmid, tvcmid_hcp_demo.NPI AS npi, tvcmid_hcp_demo.IMS_ID AS ims_id FROM teva_ingestion.tvcmid_hcp_demo WHERE (tvcmid_hcp_demo.NPI IS NOT NULL) GROUP BY tvcmid_hcp_demo.TVCMID, tvcmid_hcp_demo.NPI, tvcmid_hcp_demo.IMS_ID) npi WHERE ((cd.IMS_ID = npi.ims_id) AND (cd.BRAND_NAME = 'NUVIGIL'::varchar(7)) AND (cd.PROGRAM_NUM = p.ASI_PROGRAM_NUM) AND (cd.FILL_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (cd.FILL_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))) AND (cd.REDEMPTION_TYPE = p.REDEMPTION_TYPE));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_Agile_Mktg_Mix_Voucher_Redemptions AS
SELECT CASE mod(v.tvcmid, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((v.tvcmid)::int)::varchar ELSE rtrim((v.tvcmid)::varchar, '0'::varchar(1)) END AS tvcmid, x.ims_id, x.veeva_account_id, v.asi_program_num, v.program_desc, v.voucher_num, v.zip_code, to_char(v.fill_date, 'YYYY-MM-DD'::varchar(10)) AS fill_date, v.product_name, v.drug_desc, CASE mod(v.qty, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN ((v.qty)::int)::varchar ELSE rtrim((v.qty)::varchar, '0'::varchar(1)) END AS qty FROM ((SELECT v.tvcmid, v.ims_id, v.asi_program_num, v.program_desc, v.voucher_num, v.zip_code, v.fill_date, v.product_name, v.drug_desc, v.qty FROM (SELECT npi.tvcmid, npi.ims_id, p.ASI_PROGRAM_NUM AS asi_program_num, p.PROGRAM_DESC AS program_desc, vd.VOUCHER_NUM AS voucher_num, coalesce(vd.PROVIDER_ZIP, vd.PHARMACY_ZIP) AS zip_code, vd.FILL_DATE AS fill_date, vd.PRODUCT_NAME AS product_name, vd.DRUG_DESC AS drug_desc, vd.QTY AS qty FROM ((WSMP_ADMIN.TFC_ASI_REDEMPTION_DETAIL_WKLY vd JOIN WSMP_ADMIN.DIM_ASI_PROGRAM p ON (((vd.PROGRAM_NUM = p.ASI_PROGRAM_NUM) AND (vd.REDEMPTION_TYPE = p.REDEMPTION_TYPE)))) LEFT JOIN (SELECT tvcmid_hcp_demo.TVCMID AS tvcmid, tvcmid_hcp_demo.NPI AS npi, tvcmid_hcp_demo.IMS_ID AS ims_id FROM teva_ingestion.tvcmid_hcp_demo WHERE (tvcmid_hcp_demo.NPI IS NOT NULL) GROUP BY tvcmid_hcp_demo.TVCMID, tvcmid_hcp_demo.NPI, tvcmid_hcp_demo.IMS_ID) npi ON ((vd.NPI = npi.npi))) WHERE ((vd.PRODUCT_NAME = 'NUVIGIL'::varchar(7)) AND (vd.FILL_DATE >= (last_day(add_months((statement_timestamp())::timestamp, (-25))) + 1)) AND (vd.FILL_DATE <= last_day(add_months((statement_timestamp())::timestamp, (-1)))))) v) v LEFT JOIN (SELECT demo_combined.ims_id, demo_combined.veeva_account_id FROM WSMP_ADMIN.demo_combined WHERE ((demo_combined.sales_force_id = 'TC'::varchar(2)) AND (demo_combined.veeva_account_id IS NOT NULL)) GROUP BY demo_combined.ims_id, demo_combined.veeva_account_id) x ON ((v.ims_id = x.ims_id)));

CREATE  VIEW WSMP_ADMIN_ORA.v_tmp_ms AS
SELECT rx.ims_client_num, 2 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, rx.sales_category, rx.rx_type, rx.ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024, 'stg_ims_mhj_qty_m'::varchar(17) AS row_source FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'MULTIPLE SCLEROSIS'::varchar(18)) UNION ALL SELECT rx.ims_client_num, rx.ims_report_num, rx.sra_1, rx.sra_2, rx.sra_3, rx.sra_4, rx.sales_category, rx.rx_type, rx.ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.mid_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.filler_02, CASE WHEN (rx.payer_plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.payer_plan_name) || '"'::varchar(1)) ELSE rx.payer_plan_name END AS plan_name, rx.data_month, 48 AS bucket_count, rx.nrx_01, rx.nrx_02, rx.nrx_03, rx.nrx_04, rx.nrx_05, rx.nrx_06, rx.nrx_07, rx.nrx_08, rx.nrx_09, rx.nrx_10, rx.nrx_11, rx.nrx_12, rx.nrx_13, rx.nrx_14, rx.nrx_15, rx.nrx_16, rx.nrx_17, rx.nrx_18, rx.nrx_19, rx.nrx_20, rx.nrx_21, rx.nrx_22, rx.nrx_23, rx.nrx_24, rx.trx_01, rx.trx_02, rx.trx_03, rx.trx_04, rx.trx_05, rx.trx_06, rx.trx_07, rx.trx_08, rx.trx_09, rx.trx_10, rx.trx_11, rx.trx_12, rx.trx_13, rx.trx_14, rx.trx_15, rx.trx_16, rx.trx_17, rx.trx_18, rx.trx_19, rx.trx_20, rx.trx_21, rx.trx_22, rx.trx_23, rx.trx_24, 'stg_asi_ms_rx_cnt'::varchar(17) AS row_source FROM WSMP_ADMIN.stg_asi_ms_rx_cnt rx;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_ims_obm_wake AS
SELECT rx.ims_client_num, 71 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'WAKE'::varchar(4)) UNION ALL SELECT rx.ims_client_num, 71 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, rx.nrx_001, rx.nrx_002, rx.nrx_003, rx.nrx_004, rx.nrx_005, rx.nrx_006, rx.nrx_007, rx.nrx_008, rx.nrx_009, rx.nrx_010, rx.nrx_011, rx.nrx_012, rx.nrx_013, rx.nrx_014, rx.nrx_015, rx.nrx_016, rx.nrx_017, rx.nrx_018, rx.nrx_019, rx.nrx_020, rx.nrx_021, rx.nrx_022, rx.nrx_023, rx.nrx_024, rx.trx_001, rx.trx_002, rx.trx_003, rx.trx_004, rx.trx_005, rx.trx_006, rx.trx_007, rx.trx_008, rx.trx_009, rx.trx_010, rx.trx_011, rx.trx_012, rx.trx_013, rx.trx_014, rx.trx_015, rx.trx_016, rx.trx_017, rx.trx_018, rx.trx_019, rx.trx_020, rx.trx_021, rx.trx_022, rx.trx_023, rx.trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_CNT_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE ((p.MARKET_NAME = 'WAKE'::varchar(4)) AND (nf.PRODUCT_CODE IS NULL));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_ims_obm_smr AS
SELECT rx.ims_client_num, 81 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'SMR'::varchar(3)) UNION ALL SELECT rx.ims_client_num, 81 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, rx.nrx_001, rx.nrx_002, rx.nrx_003, rx.nrx_004, rx.nrx_005, rx.nrx_006, rx.nrx_007, rx.nrx_008, rx.nrx_009, rx.nrx_010, rx.nrx_011, rx.nrx_012, rx.nrx_013, rx.nrx_014, rx.nrx_015, rx.nrx_016, rx.nrx_017, rx.nrx_018, rx.nrx_019, rx.nrx_020, rx.nrx_021, rx.nrx_022, rx.nrx_023, rx.nrx_024, rx.trx_001, rx.trx_002, rx.trx_003, rx.trx_004, rx.trx_005, rx.trx_006, rx.trx_007, rx.trx_008, rx.trx_009, rx.trx_010, rx.trx_011, rx.trx_012, rx.trx_013, rx.trx_014, rx.trx_015, rx.trx_016, rx.trx_017, rx.trx_018, rx.trx_019, rx.trx_020, rx.trx_021, rx.trx_022, rx.trx_023, rx.trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_CNT_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE ((p.MARKET_NAME = 'SMR'::varchar(3)) AND (nf.PRODUCT_CODE IS NULL));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_ims_obm_pd AS
(SELECT rx.ims_client_num, 6 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'ANTI-PARKINSON'::varchar(14)) UNION ALL SELECT rx.ims_client_num, 6 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, rx.nrx_001, rx.nrx_002, rx.nrx_003, rx.nrx_004, rx.nrx_005, rx.nrx_006, rx.nrx_007, rx.nrx_008, rx.nrx_009, rx.nrx_010, rx.nrx_011, rx.nrx_012, rx.nrx_013, rx.nrx_014, rx.nrx_015, rx.nrx_016, rx.nrx_017, rx.nrx_018, rx.nrx_019, rx.nrx_020, rx.nrx_021, rx.nrx_022, rx.nrx_023, rx.nrx_024, rx.trx_001, rx.trx_002, rx.trx_003, rx.trx_004, rx.trx_005, rx.trx_006, rx.trx_007, rx.trx_008, rx.trx_009, rx.trx_010, rx.trx_011, rx.trx_012, rx.trx_013, rx.trx_014, rx.trx_015, rx.trx_016, rx.trx_017, rx.trx_018, rx.trx_019, rx.trx_020, rx.trx_021, rx.trx_022, rx.trx_023, rx.trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_CNT_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE ((p.MARKET_NAME = 'ANTI-PARKINSON'::varchar(14)) AND (nf.PRODUCT_CODE IS NULL))) UNION ALL SELECT rx.ims_client_num, 6 AS ims_report_num, rx.sra_1, rx.sra_2, rx.sra_3, rx.sra_4, to_char(rx.sales_category, '00'::varchar(2)) AS sales_category, rx.rx_type, to_char(rx.ims_product_group_num, '000000000'::varchar(9)) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.mid_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.filler_02, CASE WHEN (rx.payer_plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.payer_plan_name) || '"'::varchar(1)) ELSE rx.payer_plan_name END AS plan_name, rx.data_month, 48 AS bucket_count, rx.nrx_01, rx.nrx_02, rx.nrx_03, rx.nrx_04, rx.nrx_05, rx.nrx_06, rx.nrx_07, rx.nrx_08, rx.nrx_09, rx.nrx_10, rx.nrx_11, rx.nrx_12, rx.nrx_13, rx.nrx_14, rx.nrx_15, rx.nrx_16, rx.nrx_17, rx.nrx_18, rx.nrx_19, rx.nrx_20, rx.nrx_21, rx.nrx_22, rx.nrx_23, rx.nrx_24, rx.trx_01, rx.trx_02, rx.trx_03, rx.trx_04, rx.trx_05, rx.trx_06, rx.trx_07, rx.trx_08, rx.trx_09, rx.trx_10, rx.trx_11, rx.trx_12, rx.trx_13, rx.trx_14, rx.trx_15, rx.trx_16, rx.trx_17, rx.trx_18, rx.trx_19, rx.trx_20, rx.trx_21, rx.trx_22, rx.trx_23, rx.trx_24 FROM WSMP_ADMIN.stg_asi_pd_rx_cnt rx;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_ims_obm_ms AS
(SELECT rx.ims_client_num, 2 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'MULTIPLE SCLEROSIS'::varchar(18)) UNION ALL SELECT rx.ims_client_num, 2 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, rx.nrx_001, rx.nrx_002, rx.nrx_003, rx.nrx_004, rx.nrx_005, rx.nrx_006, rx.nrx_007, rx.nrx_008, rx.nrx_009, rx.nrx_010, rx.nrx_011, rx.nrx_012, rx.nrx_013, rx.nrx_014, rx.nrx_015, rx.nrx_016, rx.nrx_017, rx.nrx_018, rx.nrx_019, rx.nrx_020, rx.nrx_021, rx.nrx_022, rx.nrx_023, rx.nrx_024, rx.trx_001, rx.trx_002, rx.trx_003, rx.trx_004, rx.trx_005, rx.trx_006, rx.trx_007, rx.trx_008, rx.trx_009, rx.trx_010, rx.trx_011, rx.trx_012, rx.trx_013, rx.trx_014, rx.trx_015, rx.trx_016, rx.trx_017, rx.trx_018, rx.trx_019, rx.trx_020, rx.trx_021, rx.trx_022, rx.trx_023, rx.trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_CNT_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE ((p.MARKET_NAME = 'MULTIPLE SCLEROSIS'::varchar(18)) AND (nf.PRODUCT_CODE IS NULL))) UNION ALL SELECT rx.ims_client_num, 2 AS ims_report_num, rx.sra_1, rx.sra_2, rx.sra_3, rx.sra_4, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.mid_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.filler_02, CASE WHEN (rx.payer_plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.payer_plan_name) || '"'::varchar(1)) ELSE rx.payer_plan_name END AS plan_name, rx.data_month, 48 AS bucket_count, rx.nrx_01, rx.nrx_02, rx.nrx_03, rx.nrx_04, rx.nrx_05, rx.nrx_06, rx.nrx_07, rx.nrx_08, rx.nrx_09, rx.nrx_10, rx.nrx_11, rx.nrx_12, rx.nrx_13, rx.nrx_14, rx.nrx_15, rx.nrx_16, rx.nrx_17, rx.nrx_18, rx.nrx_19, rx.nrx_20, rx.nrx_21, rx.nrx_22, rx.nrx_23, rx.nrx_24, rx.trx_01, rx.trx_02, rx.trx_03, rx.trx_04, rx.trx_05, rx.trx_06, rx.trx_07, rx.trx_08, rx.trx_09, rx.trx_10, rx.trx_11, rx.trx_12, rx.trx_13, rx.trx_14, rx.trx_15, rx.trx_16, rx.trx_17, rx.trx_18, rx.trx_19, rx.trx_20, rx.trx_21, rx.trx_22, rx.trx_23, rx.trx_24 FROM WSMP_ADMIN.stg_asi_ms_rx_cnt rx;

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_asi_ims_obm_pain AS
SELECT rx.ims_client_num, 74 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, (((rx.nrx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_001, (((rx.nrx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_002, (((rx.nrx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_003, (((rx.nrx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_004, (((rx.nrx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_005, (((rx.nrx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_006, (((rx.nrx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_007, (((rx.nrx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_008, (((rx.nrx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_009, (((rx.nrx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_010, (((rx.nrx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_011, (((rx.nrx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_012, (((rx.nrx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_013, (((rx.nrx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_014, (((rx.nrx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_015, (((rx.nrx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_016, (((rx.nrx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_017, (((rx.nrx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_018, (((rx.nrx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_019, (((rx.nrx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_020, (((rx.nrx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_021, (((rx.nrx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_022, (((rx.nrx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_023, (((rx.nrx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS nrx_024, (((rx.trx_001 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_001, (((rx.trx_002 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_002, (((rx.trx_003 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_003, (((rx.trx_004 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_004, (((rx.trx_005 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_005, (((rx.trx_006 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_006, (((rx.trx_007 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_007, (((rx.trx_008 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_008, (((rx.trx_009 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_009, (((rx.trx_010 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_010, (((rx.trx_011 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_011, (((rx.trx_012 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_012, (((rx.trx_013 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_013, (((rx.trx_014 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_014, (((rx.trx_015 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_015, (((rx.trx_016 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_016, (((rx.trx_017 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_017, (((rx.trx_018 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_018, (((rx.trx_019 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_019, (((rx.trx_020 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_020, (((rx.trx_021 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_021, (((rx.trx_022 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_022, (((rx.trx_023 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_023, (((rx.trx_024 / nf.DIVISOR) * nf.MULTIPLIER))::numeric(9,3) AS trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_QTY_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_QTY) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE (p.MARKET_NAME = 'PAIN'::varchar(4)) UNION ALL SELECT rx.ims_client_num, 74 AS ims_report_num, rx.zip_other, rx.ims_id, rx.specialty, rx.plan_id, btrim(to_char(rx.sales_category, '00'::varchar(2))) AS sales_category, rx.rx_type, btrim(to_char(rx.ims_product_group_num, '000000000'::varchar(9))) AS ims_product_group_num, rx.filler_01, rx.me_num, rx.last_name, rx.first_name, rx.middle_name, CASE WHEN (rx.address ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.address) || '"'::varchar(1)) ELSE rx.address END AS address, rx.city, rx.state, rx.zip, rx.supplemental_data, CASE WHEN (rx.plan_name ~~ '%,%'::varchar(3)) THEN (('"'::varchar(1) || rx.plan_name) || '"'::varchar(1)) ELSE rx.plan_name END AS plan_name, rx.data_date, rx.bucket_count, rx.nrx_001, rx.nrx_002, rx.nrx_003, rx.nrx_004, rx.nrx_005, rx.nrx_006, rx.nrx_007, rx.nrx_008, rx.nrx_009, rx.nrx_010, rx.nrx_011, rx.nrx_012, rx.nrx_013, rx.nrx_014, rx.nrx_015, rx.nrx_016, rx.nrx_017, rx.nrx_018, rx.nrx_019, rx.nrx_020, rx.nrx_021, rx.nrx_022, rx.nrx_023, rx.nrx_024, rx.trx_001, rx.trx_002, rx.trx_003, rx.trx_004, rx.trx_005, rx.trx_006, rx.trx_007, rx.trx_008, rx.trx_009, rx.trx_010, rx.trx_011, rx.trx_012, rx.trx_013, rx.trx_014, rx.trx_015, rx.trx_016, rx.trx_017, rx.trx_018, rx.trx_019, rx.trx_020, rx.trx_021, rx.trx_022, rx.trx_023, rx.trx_024 FROM ((teva_ingestion.EXT_IMS_MHJ_CNT_M rx JOIN WSMP_ADMIN.DRM45_PRODUCT_2014 p ON (((rx.ims_client_num = p.IMS_CLIENT_NUM_M) AND (rx.ims_report_num = p.IMS_REPORT_NUM_M_CNT) AND (rx.ims_product_group_num = p.IMS_PRODUCT_GROUP_NUM)))) LEFT JOIN WSMP_ADMIN.DIM_IMS_NORMALIZATION_FACTOR nf ON ((p.PRODUCT_CODE = nf.PRODUCT_CODE))) WHERE ((p.MARKET_NAME = 'PAIN'::varchar(4)) AND (nf.PRODUCT_CODE IS NULL));

CREATE  VIEW WSMP_ADMIN_ORA.v_ob_FTF_IMS_Monthly_Market_OBM_slow AS
((((SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'WAKE'::varchar(4)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending UNION SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'ICS'::varchar(3)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending) UNION SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'SABA'::varchar(4)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending) UNION SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'BDP NASAL'::varchar(9)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending) UNION SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'ANTI-PARKINSON'::varchar(14)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending) UNION SELECT xref.PLAN_NUM AS "PLAN ID", xref.PLAN_NAME AS "PLAN NAME", xref.PAYER_NUM AS "PAYER ID", xref.PAYER_NAME AS "PAYER NAME", drm.market_name AS "MARKET NAME", drm.product_name AS "PRODUCT NAME", rx.zip AS ZIP, to_char(rx.month_ending, 'YYYY-MM-DD'::varchar(10)) AS DATE, sum(rx.trx_cnt) AS TRx, sum(rx.nrx_cnt) AS NRx FROM WSMP_ADMIN.dw_zip_plan_rx_ims rx, WSMP_ADMIN.TFC_IMS_PLAN_XREF xref, CUSTOMER.dim_product drm WHERE ((rx.month_bucket >= 1::numeric(18,0)) AND (rx.month_bucket <= 24::numeric(18,0)) AND (xref.PAYER_PLAN_NUM = rx.payer_plan_num) AND (rx.market_name = 'MULTIPLE SCLEROSIS'::varchar(18)) AND (drm.product_code = rx.product_code) AND (drm.market_name = rx.market_name)) GROUP BY xref.PLAN_NUM, xref.PLAN_NAME, xref.PAYER_NUM, xref.PAYER_NAME, drm.market_name, drm.product_name, rx.zip, rx.month_ending;