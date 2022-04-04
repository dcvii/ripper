CREATE SCHEMA CUSTOMER_ORA;

CREATE SEQUENCE CUSTOMER_ORA.market_seq ;
CREATE SEQUENCE CUSTOMER_ORA.market_product_seq ;
CREATE SEQUENCE CUSTOMER_ORA.product_seq ;
CREATE SEQUENCE CUSTOMER_ORA.product_ndc_seq ;
CREATE SEQUENCE CUSTOMER_ORA.product_price_seq ;
CREATE SEQUENCE CUSTOMER_ORA.vendor_seq ;

CREATE TEMPORARY TABLE CUSTOMER_ORA.TMP_ADDRESS_INSERTS
(
    SOURCE_ID numeric(38,0),
    SOURCE_PROCESS_CD char(1),
    SOURCE_ADDR_ID numeric(38,0),
    EXTERNAL_ADDR_ID varchar(255),
    STD_ADDR1 varchar(255),
    STD_CITY varchar(75),
    STD_STATE char(2),
    STD_ZIP_5 char(5),
    STD_ZIP_4 char(4),
    DPV_CONFIRM char(1),
    CERTIFIED char(1),
    CERT_DT date,
    ZP4_ERRORS varchar(75)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.TMP_SOURCE_ADDR_UPDATES
(
    SOURCE_ID numeric(38,0),
    SOURCE_PROCESS_CD char(1),
    SOURCE_ADDR_ID numeric(38,0),
    EXTERNAL_ADDR_ID varchar(255),
    ADDR_LAST_UPD_DT date,
    ORG_NAME varchar(75),
    ADDR1 varchar(75),
    ADDR2 varchar(75),
    ADDR3 varchar(75),
    CITY varchar(75),
    STATE char(2),
    ZIP_5 char(5),
    STD_ADDR1 varchar(255),
    STD_CITY varchar(75),
    STD_STATE char(2),
    STD_ZIP_5 char(5),
    STD_ZIP_4 char(4),
    DPV_CONFIRM char(1),
    CERTIFIED char(1),
    CERT_DT date,
    ZP4_ERRORS varchar(75)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_veeva_xref
(
    tvcmid int,
    veeva_account_id varchar(255)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_globals
(
    d_data_month date,
    d_data_date date,
    d_start_month date,
    g_default_end_date varchar(10),
    max_rollup_month date
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_product_model_all
(
    source_product_code varchar(100),
    source_product_name varchar(300),
    basket_id int,
    teva_product_code varchar(100),
    price_type varchar(10),
    first_valid_date date,
    last_valid_date date,
    unit_price float,
    teva_product varchar(1),
    price_basket_id int
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_oncology_adjusted_sales
(
    acct_demo_id int,
    outlet_name varchar(100),
    outlet_zip varchar(10),
    basket_id int,
    basket_name varchar(300),
    date date,
    rollup_week date,
    rollup_month date,
    rollup_445_month date,
    source_quantity float,
    source_dollars float,
    adjustment_quantity float,
    adjustment_dollars float,
    reported_quantity float,
    reported_dollars float,
    data_date date,
    file_id int,
    record_id int,
    reported_trx_strength_units float,
    report_frequency varchar(20),
    tvcmid int,
    sales_force_id varchar(2)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_merge
(
    acct_demo_id int,
    outlet_name varchar(100),
    adjustment_month date,
    data_date date,
    basket_id int,
    basket_name varchar(50),
    adjustment_quantity float,
    adjustment_dollars float,
    tvcmid int,
    sales_force_id varchar(2)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TABLE CUSTOMER_ORA.tmp_missing_cnt
(
    ims_id varchar(10),
    ims_client_number varchar(64),
    ims_report_number varchar(64)
);


CREATE TABLE CUSTOMER_ORA.tmp_associates
(
    teva_id varchar(7),
    hire_date date,
    term_date date,
    person_sys_id varchar(64),
    territory_id varchar(15)
);


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_territory
(
    teva_id varchar(7),
    territory_id varchar(15),
    start_date date,
    hire_date date,
    orig_hire_date date,
    term_date date,
    end_date date
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_ims_ids_step_a
(
    ims_client_number varchar(64),
    ims_report_number varchar(64),
    ims_id varchar(10)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_ims_ids_step_b
(
    sales_force_id varchar(5),
    ims_id varchar(10),
    row_source varchar(50)
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TABLE CUSTOMER_ORA.DIM_VA_PRODUCT_XREF
(
    VA_PRODUCT varchar(255),
    CEPH_PROD_DESC varchar(75),
    WK_PROD_CODE varchar(255),
    IMS_PRODUCT_GROUP_NUM varchar(9)
);


CREATE TABLE CUSTOMER_ORA.DATE_DIM
(
    DATE_KEY int,
    CALENDAR_DATE timestamp,
    CURRENT_DAY varchar(1) DEFAULT 'N',
    DAY_NUM_OF_WEEK int,
    DAY_NUM_OF_MONTH int,
    DAY_NUM_OF_QUARTER int,
    DAY_NUM_OF_YEAR int,
    DAY_OF_WEEK_NAME varchar(10),
    DAY_OF_WEEK_ABBREVIATION varchar(3),
    WEEKDAY varchar(1),
    LAST_DAY_OF_WEEK varchar(1) DEFAULT 'N',
    LAST_DAY_OF_MONTH varchar(1) DEFAULT 'N',
    LAST_DAY_OF_QUARTER varchar(1) DEFAULT 'N',
    LAST_DAY_OF_YEAR varchar(1) DEFAULT 'N',
    WEEK_OF_YEAR_BEGIN_DATE timestamp,
    WEEK_OF_YEAR_BEGIN_DATE_KEY int,
    WEEK_OF_YEAR_END_DATE timestamp,
    WEEK_OF_YEAR_END_DATE_KEY int,
    WEEK_OF_MONTH_BEGIN_DATE timestamp,
    WEEK_OF_MONTH_BEGIN_DATE_KEY int,
    WEEK_OF_MONTH_END_DATE timestamp,
    WEEK_OF_MONTH_END_DATE_KEY int,
    WEEK_OF_QUARTER_BEGIN_DATE timestamp,
    WEEK_OF_QUARTER_BEGIN_DATE_KEY int,
    WEEK_OF_QUARTER_END_DATE timestamp,
    WEEK_OF_QUARTER_END_DATE_KEY int,
    WEEK_NUM_OF_MONTH int,
    WEEK_NUM_OF_QUARTER int,
    WEEK_NUM_OF_YEAR int,
    MONTH_NUM_OF_YEAR int,
    MONTH_NAME varchar(10),
    MONTH_NAME_ABBREVIATION varchar(3),
    MONTH_BEGIN_DATE timestamp,
    MONTH_BEGIN_DATE_KEY int,
    MONTH_END_DATE timestamp,
    MONTH_END_DATE_KEY int,
    QUARTER_NUM_OF_YEAR int,
    QUARTER_BEGIN_DATE timestamp,
    QUARTER_BEGIN_DATE_KEY int,
    QUARTER_END_DATE timestamp,
    QUARTER_END_DATE_KEY int,
    QUARTER_TIME_PERIOD varchar(7),
    SEMESTER_BEGIN_DATE timestamp,
    SEMESTER_BEGIN_DATE_KEY int,
    SEMESTER_END_DATE timestamp,
    SEMESTER_END_DATE_KEY int,
    SEMESTER_TIME_PERIOD varchar(9),
    YEAR_NUM int,
    YEAR_BEGIN_DATE timestamp,
    YEAR_BEGIN_DATE_KEY int,
    YEAR_END_DATE timestamp,
    YEAR_END_DATE_KEY int,
    FRIDAY_WEEK_END_DATE timestamp,
    FRIDAY_WEEK_END_DATE_KEY int
);


CREATE TABLE CUSTOMER_ORA.MARKET
(
    MARKET_ID int DEFAULT nextval('customer', 'market_seq'),
    NAME varchar(75),
    VENDOR_ID int,
    MARKET_CODE varchar(10),
    MARKET_TYPE varchar(10),
    CREATE_USER varchar(30),
    CREATE_DATE date DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE date,
    ACTIVE char(1) DEFAULT 'Y'
);


CREATE TABLE CUSTOMER_ORA.MARKET_PRODUCT
(
    MARKET_PRODUCT_ID int DEFAULT nextval('customer', 'market_product_seq'),
    MARKET_ID int,
    PRODUCT_ID int,
    PARENT_PRODUCT_ID int,
    FIRST_VALID_DATE timestamp DEFAULT "sysdate"(),
    LAST_VALID_DATE timestamp DEFAULT to_date('12312050', 'MMDDYYYY'),
    DATA_PERIOD_START timestamp DEFAULT "sysdate"(),
    DATA_PERIOD_END timestamp DEFAULT to_date('12312050', 'MMDDYYYY'),
    PRODUCT_DETAIL_TYPE varchar(10),
    CALCULATED_BY varchar(10),
    DISPLAY_SEQ int DEFAULT 0,
    DISPLAY_TEXT varchar(1000),
    CREATE_USER varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE timestamp,
    ACTIVE char(1) DEFAULT 'Y'
);


CREATE TABLE CUSTOMER_ORA.PRODUCT
(
    PRODUCT_ID int DEFAULT nextval('customer', 'product_seq'),
    PARENT_PRODUCT_ID int,
    PRODUCT_CODE varchar(10),
    NAME varchar(75),
    DESCRIPTION varchar(100),
    LAUNCH_DATE timestamp,
    ACTIVE char(1) DEFAULT 'Y',
    CEPHALON_PRODUCT char(1) DEFAULT 'N',
    PARENT_PRODUCT_IND char(1) DEFAULT 'N',
    DISPLAY_ORDER int DEFAULT 0,
    CREATE_USER varchar(30),
    CREATE_DATE timestamp DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE timestamp,
    PROMOTED_PRODUCT char(1) DEFAULT 'N',
    THERAPEUTIC_AREA varchar(10),
    PREV_PRODUCT_CODE varchar(6),
    NOTES varchar(250)
);


CREATE TABLE CUSTOMER_ORA.PRODUCT_NDC
(
    PRODUCT_NDC_ID int DEFAULT nextval('customer', 'product_ndc_seq'),
    PRODUCT_ID int,
    NDC_CODE varchar(11),
    ACTIVE char(1) DEFAULT 'Y',
    CREATE_USER varchar(30),
    CREATE_DATE date DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE date
);


CREATE TABLE CUSTOMER_ORA.PRODUCT_PRICE
(
    PRODUCT_PRICE_ID int DEFAULT nextval('customer', 'product_price_seq'),
    PRODUCT_ID int,
    PRICE_TYPE varchar(10),
    FIRST_VALID_DATE date DEFAULT "sysdate"(),
    LAST_VALID_DATE date DEFAULT "sysdate"(),
    UNIT_PRICE numeric(8,4),
    CREATE_USER varchar(30),
    CREATE_DATE date DEFAULT "sysdate"(),
    UPDATE_USER varchar(30),
    UPDATE_DATE date
);


CREATE TABLE CUSTOMER_ORA.VENDOR
(
    VENDOR_ID int DEFAULT nextval('customer', 'vendor_seq'),
    VENDOR_CODE varchar(10),
    NAME varchar(75),
    ACTIVE char(1),
    CREATE_USER varchar(30),
    CREATE_DATE date,
    UPDATE_USER varchar(30),
    UPDATE_DATE date
);


CREATE TABLE CUSTOMER_ORA.VENDOR_PRODUCT
(
    VENDOR_ID int,
    PRODUCT_ID int,
    VENDOR_PRODUCT_CODE varchar(255),
    VENDOR_PRODUCT_NAME varchar(75),
    CREATE_USER varchar(30),
    CREATE_DATE date,
    UPDATE_USER varchar(30),
    UPDATE_DATE date,
    SUMMARY_PRODUCT_IND char(1)
);


CREATE TABLE CUSTOMER_ORA.IMS_PRODID_XREF
(
    PRODUCT_ID int,
    PRODUCT_CODE varchar(10),
    NAME varchar(75),
    ACTIVE char(1),
    VENDOR_PRODUCT_CODE varchar(255),
    VENDOR_PRODUCT_NAME varchar(75)
);


CREATE TEMPORARY TABLE CUSTOMER_ORA.tmp_acute_rx_decile
(
    ims_id varchar(10),
    rx float,
    decile float
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE PROJECTION CUSTOMER_ORA.TMP_ADDRESS_INSERTS_b0 /*+basename(TMP_ADDRESS_INSERTS),createtype(A)*/ 
(
 SOURCE_ID,
 SOURCE_PROCESS_CD,
 SOURCE_ADDR_ID,
 EXTERNAL_ADDR_ID,
 STD_ADDR1,
 STD_CITY,
 STD_STATE,
 STD_ZIP_5,
 STD_ZIP_4,
 DPV_CONFIRM,
 CERTIFIED,
 CERT_DT,
 ZP4_ERRORS
)
AS
 SELECT TMP_ADDRESS_INSERTS.SOURCE_ID,
        TMP_ADDRESS_INSERTS.SOURCE_PROCESS_CD,
        TMP_ADDRESS_INSERTS.SOURCE_ADDR_ID,
        TMP_ADDRESS_INSERTS.EXTERNAL_ADDR_ID,
        TMP_ADDRESS_INSERTS.STD_ADDR1,
        TMP_ADDRESS_INSERTS.STD_CITY,
        TMP_ADDRESS_INSERTS.STD_STATE,
        TMP_ADDRESS_INSERTS.STD_ZIP_5,
        TMP_ADDRESS_INSERTS.STD_ZIP_4,
        TMP_ADDRESS_INSERTS.DPV_CONFIRM,
        TMP_ADDRESS_INSERTS.CERTIFIED,
        TMP_ADDRESS_INSERTS.CERT_DT,
        TMP_ADDRESS_INSERTS.ZP4_ERRORS
 FROM CUSTOMER_ORA.TMP_ADDRESS_INSERTS
 ORDER BY TMP_ADDRESS_INSERTS.SOURCE_ID,
          TMP_ADDRESS_INSERTS.SOURCE_PROCESS_CD,
          TMP_ADDRESS_INSERTS.SOURCE_ADDR_ID,
          TMP_ADDRESS_INSERTS.EXTERNAL_ADDR_ID,
          TMP_ADDRESS_INSERTS.STD_ADDR1,
          TMP_ADDRESS_INSERTS.STD_CITY,
          TMP_ADDRESS_INSERTS.STD_STATE,
          TMP_ADDRESS_INSERTS.STD_ZIP_5,
          TMP_ADDRESS_INSERTS.STD_ZIP_4,
          TMP_ADDRESS_INSERTS.DPV_CONFIRM,
          TMP_ADDRESS_INSERTS.CERTIFIED,
          TMP_ADDRESS_INSERTS.CERT_DT,
          TMP_ADDRESS_INSERTS.ZP4_ERRORS
SEGMENTED BY hash(TMP_ADDRESS_INSERTS.SOURCE_PROCESS_CD, TMP_ADDRESS_INSERTS.STD_STATE, TMP_ADDRESS_INSERTS.STD_ZIP_5, TMP_ADDRESS_INSERTS.STD_ZIP_4, TMP_ADDRESS_INSERTS.DPV_CONFIRM, TMP_ADDRESS_INSERTS.CERTIFIED, TMP_ADDRESS_INSERTS.CERT_DT, TMP_ADDRESS_INSERTS.SOURCE_ID, TMP_ADDRESS_INSERTS.SOURCE_ADDR_ID, TMP_ADDRESS_INSERTS.STD_CITY, TMP_ADDRESS_INSERTS.ZP4_ERRORS, TMP_ADDRESS_INSERTS.EXTERNAL_ADDR_ID, TMP_ADDRESS_INSERTS.STD_ADDR1) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.TMP_SOURCE_ADDR_UPDATES_b0 /*+basename(TMP_SOURCE_ADDR_UPDATES),createtype(A)*/ 
(
 SOURCE_ID,
 SOURCE_PROCESS_CD,
 SOURCE_ADDR_ID,
 EXTERNAL_ADDR_ID,
 ADDR_LAST_UPD_DT,
 ORG_NAME,
 ADDR1,
 ADDR2,
 ADDR3,
 CITY,
 STATE,
 ZIP_5,
 STD_ADDR1,
 STD_CITY,
 STD_STATE,
 STD_ZIP_5,
 STD_ZIP_4,
 DPV_CONFIRM,
 CERTIFIED,
 CERT_DT,
 ZP4_ERRORS
)
AS
 SELECT TMP_SOURCE_ADDR_UPDATES.SOURCE_ID,
        TMP_SOURCE_ADDR_UPDATES.SOURCE_PROCESS_CD,
        TMP_SOURCE_ADDR_UPDATES.SOURCE_ADDR_ID,
        TMP_SOURCE_ADDR_UPDATES.EXTERNAL_ADDR_ID,
        TMP_SOURCE_ADDR_UPDATES.ADDR_LAST_UPD_DT,
        TMP_SOURCE_ADDR_UPDATES.ORG_NAME,
        TMP_SOURCE_ADDR_UPDATES.ADDR1,
        TMP_SOURCE_ADDR_UPDATES.ADDR2,
        TMP_SOURCE_ADDR_UPDATES.ADDR3,
        TMP_SOURCE_ADDR_UPDATES.CITY,
        TMP_SOURCE_ADDR_UPDATES.STATE,
        TMP_SOURCE_ADDR_UPDATES.ZIP_5,
        TMP_SOURCE_ADDR_UPDATES.STD_ADDR1,
        TMP_SOURCE_ADDR_UPDATES.STD_CITY,
        TMP_SOURCE_ADDR_UPDATES.STD_STATE,
        TMP_SOURCE_ADDR_UPDATES.STD_ZIP_5,
        TMP_SOURCE_ADDR_UPDATES.STD_ZIP_4,
        TMP_SOURCE_ADDR_UPDATES.DPV_CONFIRM,
        TMP_SOURCE_ADDR_UPDATES.CERTIFIED,
        TMP_SOURCE_ADDR_UPDATES.CERT_DT,
        TMP_SOURCE_ADDR_UPDATES.ZP4_ERRORS
 FROM CUSTOMER_ORA.TMP_SOURCE_ADDR_UPDATES
 ORDER BY TMP_SOURCE_ADDR_UPDATES.SOURCE_ID,
          TMP_SOURCE_ADDR_UPDATES.SOURCE_PROCESS_CD,
          TMP_SOURCE_ADDR_UPDATES.SOURCE_ADDR_ID,
          TMP_SOURCE_ADDR_UPDATES.EXTERNAL_ADDR_ID,
          TMP_SOURCE_ADDR_UPDATES.ADDR_LAST_UPD_DT,
          TMP_SOURCE_ADDR_UPDATES.ORG_NAME,
          TMP_SOURCE_ADDR_UPDATES.ADDR1,
          TMP_SOURCE_ADDR_UPDATES.ADDR2,
          TMP_SOURCE_ADDR_UPDATES.ADDR3,
          TMP_SOURCE_ADDR_UPDATES.CITY,
          TMP_SOURCE_ADDR_UPDATES.STATE,
          TMP_SOURCE_ADDR_UPDATES.ZIP_5,
          TMP_SOURCE_ADDR_UPDATES.STD_ADDR1,
          TMP_SOURCE_ADDR_UPDATES.STD_CITY,
          TMP_SOURCE_ADDR_UPDATES.STD_STATE,
          TMP_SOURCE_ADDR_UPDATES.STD_ZIP_5,
          TMP_SOURCE_ADDR_UPDATES.STD_ZIP_4,
          TMP_SOURCE_ADDR_UPDATES.DPV_CONFIRM,
          TMP_SOURCE_ADDR_UPDATES.CERTIFIED,
          TMP_SOURCE_ADDR_UPDATES.CERT_DT,
          TMP_SOURCE_ADDR_UPDATES.ZP4_ERRORS
SEGMENTED BY hash(TMP_SOURCE_ADDR_UPDATES.SOURCE_PROCESS_CD, TMP_SOURCE_ADDR_UPDATES.ADDR_LAST_UPD_DT, TMP_SOURCE_ADDR_UPDATES.STATE, TMP_SOURCE_ADDR_UPDATES.ZIP_5, TMP_SOURCE_ADDR_UPDATES.STD_STATE, TMP_SOURCE_ADDR_UPDATES.STD_ZIP_5, TMP_SOURCE_ADDR_UPDATES.STD_ZIP_4, TMP_SOURCE_ADDR_UPDATES.DPV_CONFIRM, TMP_SOURCE_ADDR_UPDATES.CERTIFIED, TMP_SOURCE_ADDR_UPDATES.CERT_DT, TMP_SOURCE_ADDR_UPDATES.SOURCE_ID, TMP_SOURCE_ADDR_UPDATES.SOURCE_ADDR_ID, TMP_SOURCE_ADDR_UPDATES.ORG_NAME, TMP_SOURCE_ADDR_UPDATES.ADDR1, TMP_SOURCE_ADDR_UPDATES.ADDR2, TMP_SOURCE_ADDR_UPDATES.ADDR3, TMP_SOURCE_ADDR_UPDATES.CITY, TMP_SOURCE_ADDR_UPDATES.STD_CITY, TMP_SOURCE_ADDR_UPDATES.ZP4_ERRORS, TMP_SOURCE_ADDR_UPDATES.EXTERNAL_ADDR_ID, TMP_SOURCE_ADDR_UPDATES.STD_ADDR1) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.DIM_VA_PRODUCT_XREF_b0 /*+basename(DIM_VA_PRODUCT_XREF),createtype(L)*/ 
(
 VA_PRODUCT,
 CEPH_PROD_DESC,
 WK_PROD_CODE,
 IMS_PRODUCT_GROUP_NUM
)
AS
 SELECT DIM_VA_PRODUCT_XREF.VA_PRODUCT,
        DIM_VA_PRODUCT_XREF.CEPH_PROD_DESC,
        DIM_VA_PRODUCT_XREF.WK_PROD_CODE,
        DIM_VA_PRODUCT_XREF.IMS_PRODUCT_GROUP_NUM
 FROM CUSTOMER_ORA.DIM_VA_PRODUCT_XREF
 ORDER BY DIM_VA_PRODUCT_XREF.VA_PRODUCT,
          DIM_VA_PRODUCT_XREF.CEPH_PROD_DESC,
          DIM_VA_PRODUCT_XREF.WK_PROD_CODE,
          DIM_VA_PRODUCT_XREF.IMS_PRODUCT_GROUP_NUM
SEGMENTED BY hash(DIM_VA_PRODUCT_XREF.IMS_PRODUCT_GROUP_NUM, DIM_VA_PRODUCT_XREF.CEPH_PROD_DESC, DIM_VA_PRODUCT_XREF.VA_PRODUCT, DIM_VA_PRODUCT_XREF.WK_PROD_CODE) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_veeva_xref_b0 /*+basename(tmp_veeva_xref),createtype(A)*/ 
(
 tvcmid,
 veeva_account_id
)
AS
 SELECT tmp_veeva_xref.tvcmid,
        tmp_veeva_xref.veeva_account_id
 FROM CUSTOMER_ORA.tmp_veeva_xref
 ORDER BY tmp_veeva_xref.tvcmid,
          tmp_veeva_xref.veeva_account_id
SEGMENTED BY hash(tmp_veeva_xref.tvcmid) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_globals_b0 /*+basename(tmp_globals),createtype(A)*/ 
(
 d_data_month,
 d_data_date,
 d_start_month,
 g_default_end_date,
 max_rollup_month
)
AS
 SELECT tmp_globals.d_data_month,
        tmp_globals.d_data_date,
        tmp_globals.d_start_month,
        tmp_globals.g_default_end_date,
        tmp_globals.max_rollup_month
 FROM CUSTOMER_ORA.tmp_globals
 ORDER BY tmp_globals.d_data_month,
          tmp_globals.d_data_date,
          tmp_globals.d_start_month,
          tmp_globals.g_default_end_date,
          tmp_globals.max_rollup_month
SEGMENTED BY hash(tmp_globals.d_data_month, tmp_globals.d_data_date, tmp_globals.d_start_month, tmp_globals.max_rollup_month, tmp_globals.g_default_end_date) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_product_model_all_b0 /*+basename(tmp_product_model_all),createtype(A)*/ 
(
 source_product_code,
 source_product_name,
 basket_id,
 teva_product_code,
 price_type,
 first_valid_date,
 last_valid_date,
 unit_price,
 teva_product,
 price_basket_id
)
AS
 SELECT tmp_product_model_all.source_product_code,
        tmp_product_model_all.source_product_name,
        tmp_product_model_all.basket_id,
        tmp_product_model_all.teva_product_code,
        tmp_product_model_all.price_type,
        tmp_product_model_all.first_valid_date,
        tmp_product_model_all.last_valid_date,
        tmp_product_model_all.unit_price,
        tmp_product_model_all.teva_product,
        tmp_product_model_all.price_basket_id
 FROM CUSTOMER_ORA.tmp_product_model_all
 ORDER BY tmp_product_model_all.source_product_name,
          tmp_product_model_all.first_valid_date
SEGMENTED BY hash(tmp_product_model_all.source_product_code, tmp_product_model_all.source_product_name, tmp_product_model_all.basket_id, tmp_product_model_all.teva_product_code, tmp_product_model_all.price_type, tmp_product_model_all.first_valid_date, tmp_product_model_all.last_valid_date, tmp_product_model_all.unit_price, tmp_product_model_all.teva_product, tmp_product_model_all.price_basket_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_oncology_adjusted_sales_b0 /*+basename(tmp_oncology_adjusted_sales),createtype(A)*/ 
(
 acct_demo_id,
 outlet_name,
 outlet_zip,
 basket_id,
 basket_name,
 date,
 rollup_week,
 rollup_month,
 rollup_445_month,
 source_quantity,
 source_dollars,
 adjustment_quantity,
 adjustment_dollars,
 reported_quantity,
 reported_dollars,
 data_date,
 file_id,
 record_id,
 reported_trx_strength_units,
 report_frequency,
 tvcmid,
 sales_force_id
)
AS
 SELECT tmp_oncology_adjusted_sales.acct_demo_id,
        tmp_oncology_adjusted_sales.outlet_name,
        tmp_oncology_adjusted_sales.outlet_zip,
        tmp_oncology_adjusted_sales.basket_id,
        tmp_oncology_adjusted_sales.basket_name,
        tmp_oncology_adjusted_sales.date,
        tmp_oncology_adjusted_sales.rollup_week,
        tmp_oncology_adjusted_sales.rollup_month,
        tmp_oncology_adjusted_sales.rollup_445_month,
        tmp_oncology_adjusted_sales.source_quantity,
        tmp_oncology_adjusted_sales.source_dollars,
        tmp_oncology_adjusted_sales.adjustment_quantity,
        tmp_oncology_adjusted_sales.adjustment_dollars,
        tmp_oncology_adjusted_sales.reported_quantity,
        tmp_oncology_adjusted_sales.reported_dollars,
        tmp_oncology_adjusted_sales.data_date,
        tmp_oncology_adjusted_sales.file_id,
        tmp_oncology_adjusted_sales.record_id,
        tmp_oncology_adjusted_sales.reported_trx_strength_units,
        tmp_oncology_adjusted_sales.report_frequency,
        tmp_oncology_adjusted_sales.tvcmid,
        tmp_oncology_adjusted_sales.sales_force_id
 FROM CUSTOMER_ORA.tmp_oncology_adjusted_sales
 ORDER BY tmp_oncology_adjusted_sales.acct_demo_id,
          tmp_oncology_adjusted_sales.outlet_name,
          tmp_oncology_adjusted_sales.outlet_zip,
          tmp_oncology_adjusted_sales.basket_id,
          tmp_oncology_adjusted_sales.basket_name,
          tmp_oncology_adjusted_sales.date,
          tmp_oncology_adjusted_sales.rollup_week,
          tmp_oncology_adjusted_sales.rollup_month,
          tmp_oncology_adjusted_sales.rollup_445_month,
          tmp_oncology_adjusted_sales.source_quantity,
          tmp_oncology_adjusted_sales.source_dollars,
          tmp_oncology_adjusted_sales.adjustment_quantity,
          tmp_oncology_adjusted_sales.adjustment_dollars,
          tmp_oncology_adjusted_sales.reported_quantity,
          tmp_oncology_adjusted_sales.reported_dollars,
          tmp_oncology_adjusted_sales.data_date,
          tmp_oncology_adjusted_sales.file_id,
          tmp_oncology_adjusted_sales.record_id,
          tmp_oncology_adjusted_sales.reported_trx_strength_units,
          tmp_oncology_adjusted_sales.report_frequency,
          tmp_oncology_adjusted_sales.tvcmid,
          tmp_oncology_adjusted_sales.sales_force_id
SEGMENTED BY hash(tmp_oncology_adjusted_sales.record_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_merge_b0 /*+basename(tmp_merge),createtype(A)*/ 
(
 acct_demo_id,
 outlet_name,
 adjustment_month,
 data_date,
 basket_id,
 basket_name,
 adjustment_quantity,
 adjustment_dollars,
 tvcmid,
 sales_force_id
)
AS
 SELECT tmp_merge.acct_demo_id,
        tmp_merge.outlet_name,
        tmp_merge.adjustment_month,
        tmp_merge.data_date,
        tmp_merge.basket_id,
        tmp_merge.basket_name,
        tmp_merge.adjustment_quantity,
        tmp_merge.adjustment_dollars,
        tmp_merge.tvcmid,
        tmp_merge.sales_force_id
 FROM CUSTOMER_ORA.tmp_merge
 ORDER BY tmp_merge.acct_demo_id,
          tmp_merge.adjustment_month,
          tmp_merge.data_date,
          tmp_merge.basket_id,
          tmp_merge.tvcmid
SEGMENTED BY hash(tmp_merge.acct_demo_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.DATE_DIM_b0 /*+basename(DATE_DIM),createtype(L)*/ 
(
 DATE_KEY,
 CALENDAR_DATE,
 CURRENT_DAY,
 DAY_NUM_OF_WEEK,
 DAY_NUM_OF_MONTH,
 DAY_NUM_OF_QUARTER,
 DAY_NUM_OF_YEAR,
 DAY_OF_WEEK_NAME,
 DAY_OF_WEEK_ABBREVIATION,
 WEEKDAY,
 LAST_DAY_OF_WEEK,
 LAST_DAY_OF_MONTH,
 LAST_DAY_OF_QUARTER,
 LAST_DAY_OF_YEAR,
 WEEK_OF_YEAR_BEGIN_DATE,
 WEEK_OF_YEAR_BEGIN_DATE_KEY,
 WEEK_OF_YEAR_END_DATE,
 WEEK_OF_YEAR_END_DATE_KEY,
 WEEK_OF_MONTH_BEGIN_DATE,
 WEEK_OF_MONTH_BEGIN_DATE_KEY,
 WEEK_OF_MONTH_END_DATE,
 WEEK_OF_MONTH_END_DATE_KEY,
 WEEK_OF_QUARTER_BEGIN_DATE,
 WEEK_OF_QUARTER_BEGIN_DATE_KEY,
 WEEK_OF_QUARTER_END_DATE,
 WEEK_OF_QUARTER_END_DATE_KEY,
 WEEK_NUM_OF_MONTH,
 WEEK_NUM_OF_QUARTER,
 WEEK_NUM_OF_YEAR,
 MONTH_NUM_OF_YEAR,
 MONTH_NAME,
 MONTH_NAME_ABBREVIATION,
 MONTH_BEGIN_DATE,
 MONTH_BEGIN_DATE_KEY,
 MONTH_END_DATE,
 MONTH_END_DATE_KEY,
 QUARTER_NUM_OF_YEAR,
 QUARTER_BEGIN_DATE,
 QUARTER_BEGIN_DATE_KEY,
 QUARTER_END_DATE,
 QUARTER_END_DATE_KEY,
 QUARTER_TIME_PERIOD,
 SEMESTER_BEGIN_DATE,
 SEMESTER_BEGIN_DATE_KEY,
 SEMESTER_END_DATE,
 SEMESTER_END_DATE_KEY,
 SEMESTER_TIME_PERIOD,
 YEAR_NUM,
 YEAR_BEGIN_DATE,
 YEAR_BEGIN_DATE_KEY,
 YEAR_END_DATE,
 YEAR_END_DATE_KEY,
 FRIDAY_WEEK_END_DATE,
 FRIDAY_WEEK_END_DATE_KEY
)
AS
 SELECT DATE_DIM.DATE_KEY,
        DATE_DIM.CALENDAR_DATE,
        DATE_DIM.CURRENT_DAY,
        DATE_DIM.DAY_NUM_OF_WEEK,
        DATE_DIM.DAY_NUM_OF_MONTH,
        DATE_DIM.DAY_NUM_OF_QUARTER,
        DATE_DIM.DAY_NUM_OF_YEAR,
        DATE_DIM.DAY_OF_WEEK_NAME,
        DATE_DIM.DAY_OF_WEEK_ABBREVIATION,
        DATE_DIM.WEEKDAY,
        DATE_DIM.LAST_DAY_OF_WEEK,
        DATE_DIM.LAST_DAY_OF_MONTH,
        DATE_DIM.LAST_DAY_OF_QUARTER,
        DATE_DIM.LAST_DAY_OF_YEAR,
        DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE,
        DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE_KEY,
        DATE_DIM.WEEK_OF_YEAR_END_DATE,
        DATE_DIM.WEEK_OF_YEAR_END_DATE_KEY,
        DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE,
        DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE_KEY,
        DATE_DIM.WEEK_OF_MONTH_END_DATE,
        DATE_DIM.WEEK_OF_MONTH_END_DATE_KEY,
        DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE,
        DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE_KEY,
        DATE_DIM.WEEK_OF_QUARTER_END_DATE,
        DATE_DIM.WEEK_OF_QUARTER_END_DATE_KEY,
        DATE_DIM.WEEK_NUM_OF_MONTH,
        DATE_DIM.WEEK_NUM_OF_QUARTER,
        DATE_DIM.WEEK_NUM_OF_YEAR,
        DATE_DIM.MONTH_NUM_OF_YEAR,
        DATE_DIM.MONTH_NAME,
        DATE_DIM.MONTH_NAME_ABBREVIATION,
        DATE_DIM.MONTH_BEGIN_DATE,
        DATE_DIM.MONTH_BEGIN_DATE_KEY,
        DATE_DIM.MONTH_END_DATE,
        DATE_DIM.MONTH_END_DATE_KEY,
        DATE_DIM.QUARTER_NUM_OF_YEAR,
        DATE_DIM.QUARTER_BEGIN_DATE,
        DATE_DIM.QUARTER_BEGIN_DATE_KEY,
        DATE_DIM.QUARTER_END_DATE,
        DATE_DIM.QUARTER_END_DATE_KEY,
        DATE_DIM.QUARTER_TIME_PERIOD,
        DATE_DIM.SEMESTER_BEGIN_DATE,
        DATE_DIM.SEMESTER_BEGIN_DATE_KEY,
        DATE_DIM.SEMESTER_END_DATE,
        DATE_DIM.SEMESTER_END_DATE_KEY,
        DATE_DIM.SEMESTER_TIME_PERIOD,
        DATE_DIM.YEAR_NUM,
        DATE_DIM.YEAR_BEGIN_DATE,
        DATE_DIM.YEAR_BEGIN_DATE_KEY,
        DATE_DIM.YEAR_END_DATE,
        DATE_DIM.YEAR_END_DATE_KEY,
        DATE_DIM.FRIDAY_WEEK_END_DATE,
        DATE_DIM.FRIDAY_WEEK_END_DATE_KEY
 FROM CUSTOMER_ORA.DATE_DIM
 ORDER BY DATE_DIM.DATE_KEY,
          DATE_DIM.CALENDAR_DATE,
          DATE_DIM.CURRENT_DAY,
          DATE_DIM.DAY_NUM_OF_WEEK,
          DATE_DIM.DAY_NUM_OF_MONTH,
          DATE_DIM.DAY_NUM_OF_QUARTER,
          DATE_DIM.DAY_NUM_OF_YEAR,
          DATE_DIM.DAY_OF_WEEK_NAME,
          DATE_DIM.DAY_OF_WEEK_ABBREVIATION,
          DATE_DIM.WEEKDAY,
          DATE_DIM.LAST_DAY_OF_WEEK,
          DATE_DIM.LAST_DAY_OF_MONTH,
          DATE_DIM.LAST_DAY_OF_QUARTER,
          DATE_DIM.LAST_DAY_OF_YEAR,
          DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE,
          DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE_KEY,
          DATE_DIM.WEEK_OF_YEAR_END_DATE,
          DATE_DIM.WEEK_OF_YEAR_END_DATE_KEY,
          DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE,
          DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE_KEY,
          DATE_DIM.WEEK_OF_MONTH_END_DATE,
          DATE_DIM.WEEK_OF_MONTH_END_DATE_KEY,
          DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE,
          DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE_KEY,
          DATE_DIM.WEEK_OF_QUARTER_END_DATE,
          DATE_DIM.WEEK_OF_QUARTER_END_DATE_KEY,
          DATE_DIM.WEEK_NUM_OF_MONTH,
          DATE_DIM.WEEK_NUM_OF_QUARTER,
          DATE_DIM.WEEK_NUM_OF_YEAR,
          DATE_DIM.MONTH_NUM_OF_YEAR,
          DATE_DIM.MONTH_NAME,
          DATE_DIM.MONTH_NAME_ABBREVIATION,
          DATE_DIM.MONTH_BEGIN_DATE,
          DATE_DIM.MONTH_BEGIN_DATE_KEY,
          DATE_DIM.MONTH_END_DATE,
          DATE_DIM.MONTH_END_DATE_KEY,
          DATE_DIM.QUARTER_NUM_OF_YEAR,
          DATE_DIM.QUARTER_BEGIN_DATE,
          DATE_DIM.QUARTER_BEGIN_DATE_KEY,
          DATE_DIM.QUARTER_END_DATE,
          DATE_DIM.QUARTER_END_DATE_KEY,
          DATE_DIM.QUARTER_TIME_PERIOD,
          DATE_DIM.SEMESTER_BEGIN_DATE,
          DATE_DIM.SEMESTER_BEGIN_DATE_KEY,
          DATE_DIM.SEMESTER_END_DATE,
          DATE_DIM.SEMESTER_END_DATE_KEY,
          DATE_DIM.SEMESTER_TIME_PERIOD,
          DATE_DIM.YEAR_NUM,
          DATE_DIM.YEAR_BEGIN_DATE,
          DATE_DIM.YEAR_BEGIN_DATE_KEY,
          DATE_DIM.YEAR_END_DATE,
          DATE_DIM.YEAR_END_DATE_KEY,
          DATE_DIM.FRIDAY_WEEK_END_DATE,
          DATE_DIM.FRIDAY_WEEK_END_DATE_KEY
SEGMENTED BY hash(DATE_DIM.DATE_KEY, DATE_DIM.CALENDAR_DATE, DATE_DIM.CURRENT_DAY, DATE_DIM.DAY_NUM_OF_WEEK, DATE_DIM.DAY_NUM_OF_MONTH, DATE_DIM.DAY_NUM_OF_QUARTER, DATE_DIM.DAY_NUM_OF_YEAR, DATE_DIM.DAY_OF_WEEK_ABBREVIATION, DATE_DIM.WEEKDAY, DATE_DIM.LAST_DAY_OF_WEEK, DATE_DIM.LAST_DAY_OF_MONTH, DATE_DIM.LAST_DAY_OF_QUARTER, DATE_DIM.LAST_DAY_OF_YEAR, DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE, DATE_DIM.WEEK_OF_YEAR_BEGIN_DATE_KEY, DATE_DIM.WEEK_OF_YEAR_END_DATE, DATE_DIM.WEEK_OF_YEAR_END_DATE_KEY, DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE, DATE_DIM.WEEK_OF_MONTH_BEGIN_DATE_KEY, DATE_DIM.WEEK_OF_MONTH_END_DATE, DATE_DIM.WEEK_OF_MONTH_END_DATE_KEY, DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE, DATE_DIM.WEEK_OF_QUARTER_BEGIN_DATE_KEY, DATE_DIM.WEEK_OF_QUARTER_END_DATE, DATE_DIM.WEEK_OF_QUARTER_END_DATE_KEY, DATE_DIM.WEEK_NUM_OF_MONTH, DATE_DIM.WEEK_NUM_OF_QUARTER, DATE_DIM.WEEK_NUM_OF_YEAR, DATE_DIM.MONTH_NUM_OF_YEAR, DATE_DIM.MONTH_NAME_ABBREVIATION, DATE_DIM.MONTH_BEGIN_DATE, DATE_DIM.MONTH_BEGIN_DATE_KEY) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.MARKET_b0 /*+basename(MARKET),createtype(L)*/ 
(
 MARKET_ID,
 NAME,
 VENDOR_ID,
 MARKET_CODE,
 MARKET_TYPE,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE,
 ACTIVE
)
AS
 SELECT MARKET.MARKET_ID,
        MARKET.NAME,
        MARKET.VENDOR_ID,
        MARKET.MARKET_CODE,
        MARKET.MARKET_TYPE,
        MARKET.CREATE_USER,
        MARKET.CREATE_DATE,
        MARKET.UPDATE_USER,
        MARKET.UPDATE_DATE,
        MARKET.ACTIVE
 FROM CUSTOMER_ORA.MARKET
 ORDER BY MARKET.MARKET_ID,
          MARKET.NAME,
          MARKET.VENDOR_ID,
          MARKET.MARKET_CODE,
          MARKET.MARKET_TYPE,
          MARKET.CREATE_USER,
          MARKET.CREATE_DATE,
          MARKET.UPDATE_USER,
          MARKET.UPDATE_DATE,
          MARKET.ACTIVE
SEGMENTED BY hash(MARKET.MARKET_ID, MARKET.VENDOR_ID, MARKET.CREATE_DATE, MARKET.UPDATE_DATE, MARKET.ACTIVE, MARKET.MARKET_CODE, MARKET.MARKET_TYPE, MARKET.CREATE_USER, MARKET.UPDATE_USER, MARKET.NAME) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.MARKET_PRODUCT_b0 /*+basename(MARKET_PRODUCT),createtype(L)*/ 
(
 MARKET_PRODUCT_ID,
 MARKET_ID,
 PRODUCT_ID,
 PARENT_PRODUCT_ID,
 FIRST_VALID_DATE,
 LAST_VALID_DATE,
 DATA_PERIOD_START,
 DATA_PERIOD_END,
 PRODUCT_DETAIL_TYPE,
 CALCULATED_BY,
 DISPLAY_SEQ,
 DISPLAY_TEXT,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE,
 ACTIVE
)
AS
 SELECT MARKET_PRODUCT.MARKET_PRODUCT_ID,
        MARKET_PRODUCT.MARKET_ID,
        MARKET_PRODUCT.PRODUCT_ID,
        MARKET_PRODUCT.PARENT_PRODUCT_ID,
        MARKET_PRODUCT.FIRST_VALID_DATE,
        MARKET_PRODUCT.LAST_VALID_DATE,
        MARKET_PRODUCT.DATA_PERIOD_START,
        MARKET_PRODUCT.DATA_PERIOD_END,
        MARKET_PRODUCT.PRODUCT_DETAIL_TYPE,
        MARKET_PRODUCT.CALCULATED_BY,
        MARKET_PRODUCT.DISPLAY_SEQ,
        MARKET_PRODUCT.DISPLAY_TEXT,
        MARKET_PRODUCT.CREATE_USER,
        MARKET_PRODUCT.CREATE_DATE,
        MARKET_PRODUCT.UPDATE_USER,
        MARKET_PRODUCT.UPDATE_DATE,
        MARKET_PRODUCT.ACTIVE
 FROM CUSTOMER_ORA.MARKET_PRODUCT
 ORDER BY MARKET_PRODUCT.MARKET_PRODUCT_ID,
          MARKET_PRODUCT.MARKET_ID,
          MARKET_PRODUCT.PRODUCT_ID,
          MARKET_PRODUCT.PARENT_PRODUCT_ID,
          MARKET_PRODUCT.FIRST_VALID_DATE,
          MARKET_PRODUCT.LAST_VALID_DATE,
          MARKET_PRODUCT.DATA_PERIOD_START,
          MARKET_PRODUCT.DATA_PERIOD_END,
          MARKET_PRODUCT.PRODUCT_DETAIL_TYPE,
          MARKET_PRODUCT.CALCULATED_BY,
          MARKET_PRODUCT.DISPLAY_SEQ,
          MARKET_PRODUCT.DISPLAY_TEXT,
          MARKET_PRODUCT.CREATE_USER,
          MARKET_PRODUCT.CREATE_DATE,
          MARKET_PRODUCT.UPDATE_USER,
          MARKET_PRODUCT.UPDATE_DATE,
          MARKET_PRODUCT.ACTIVE
SEGMENTED BY hash(MARKET_PRODUCT.MARKET_PRODUCT_ID, MARKET_PRODUCT.MARKET_ID, MARKET_PRODUCT.PRODUCT_ID, MARKET_PRODUCT.PARENT_PRODUCT_ID, MARKET_PRODUCT.FIRST_VALID_DATE, MARKET_PRODUCT.LAST_VALID_DATE, MARKET_PRODUCT.DATA_PERIOD_START, MARKET_PRODUCT.DATA_PERIOD_END, MARKET_PRODUCT.DISPLAY_SEQ, MARKET_PRODUCT.CREATE_DATE, MARKET_PRODUCT.UPDATE_DATE, MARKET_PRODUCT.ACTIVE, MARKET_PRODUCT.PRODUCT_DETAIL_TYPE, MARKET_PRODUCT.CALCULATED_BY, MARKET_PRODUCT.CREATE_USER, MARKET_PRODUCT.UPDATE_USER, MARKET_PRODUCT.DISPLAY_TEXT) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.PRODUCT_b0 /*+basename(PRODUCT),createtype(L)*/ 
(
 PRODUCT_ID,
 PARENT_PRODUCT_ID,
 PRODUCT_CODE,
 NAME,
 DESCRIPTION,
 LAUNCH_DATE,
 ACTIVE,
 CEPHALON_PRODUCT,
 PARENT_PRODUCT_IND,
 DISPLAY_ORDER,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE,
 PROMOTED_PRODUCT,
 THERAPEUTIC_AREA,
 PREV_PRODUCT_CODE,
 NOTES
)
AS
 SELECT PRODUCT.PRODUCT_ID,
        PRODUCT.PARENT_PRODUCT_ID,
        PRODUCT.PRODUCT_CODE,
        PRODUCT.NAME,
        PRODUCT.DESCRIPTION,
        PRODUCT.LAUNCH_DATE,
        PRODUCT.ACTIVE,
        PRODUCT.CEPHALON_PRODUCT,
        PRODUCT.PARENT_PRODUCT_IND,
        PRODUCT.DISPLAY_ORDER,
        PRODUCT.CREATE_USER,
        PRODUCT.CREATE_DATE,
        PRODUCT.UPDATE_USER,
        PRODUCT.UPDATE_DATE,
        PRODUCT.PROMOTED_PRODUCT,
        PRODUCT.THERAPEUTIC_AREA,
        PRODUCT.PREV_PRODUCT_CODE,
        PRODUCT.NOTES
 FROM CUSTOMER_ORA.PRODUCT
 ORDER BY PRODUCT.PRODUCT_ID,
          PRODUCT.PARENT_PRODUCT_ID,
          PRODUCT.PRODUCT_CODE,
          PRODUCT.NAME,
          PRODUCT.DESCRIPTION,
          PRODUCT.LAUNCH_DATE,
          PRODUCT.ACTIVE,
          PRODUCT.CEPHALON_PRODUCT,
          PRODUCT.PARENT_PRODUCT_IND,
          PRODUCT.DISPLAY_ORDER,
          PRODUCT.CREATE_USER,
          PRODUCT.CREATE_DATE,
          PRODUCT.UPDATE_USER,
          PRODUCT.UPDATE_DATE,
          PRODUCT.PROMOTED_PRODUCT,
          PRODUCT.THERAPEUTIC_AREA,
          PRODUCT.PREV_PRODUCT_CODE,
          PRODUCT.NOTES
SEGMENTED BY hash(PRODUCT.PRODUCT_ID, PRODUCT.PARENT_PRODUCT_ID, PRODUCT.LAUNCH_DATE, PRODUCT.ACTIVE, PRODUCT.CEPHALON_PRODUCT, PRODUCT.PARENT_PRODUCT_IND, PRODUCT.DISPLAY_ORDER, PRODUCT.CREATE_DATE, PRODUCT.UPDATE_DATE, PRODUCT.PROMOTED_PRODUCT, PRODUCT.PREV_PRODUCT_CODE, PRODUCT.PRODUCT_CODE, PRODUCT.THERAPEUTIC_AREA, PRODUCT.CREATE_USER, PRODUCT.UPDATE_USER, PRODUCT.NAME, PRODUCT.DESCRIPTION, PRODUCT.NOTES) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.PRODUCT_NDC_b0 /*+basename(PRODUCT_NDC),createtype(L)*/ 
(
 PRODUCT_NDC_ID,
 PRODUCT_ID,
 NDC_CODE,
 ACTIVE,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE
)
AS
 SELECT PRODUCT_NDC.PRODUCT_NDC_ID,
        PRODUCT_NDC.PRODUCT_ID,
        PRODUCT_NDC.NDC_CODE,
        PRODUCT_NDC.ACTIVE,
        PRODUCT_NDC.CREATE_USER,
        PRODUCT_NDC.CREATE_DATE,
        PRODUCT_NDC.UPDATE_USER,
        PRODUCT_NDC.UPDATE_DATE
 FROM CUSTOMER_ORA.PRODUCT_NDC
 ORDER BY PRODUCT_NDC.PRODUCT_NDC_ID,
          PRODUCT_NDC.PRODUCT_ID,
          PRODUCT_NDC.NDC_CODE,
          PRODUCT_NDC.ACTIVE,
          PRODUCT_NDC.CREATE_USER,
          PRODUCT_NDC.CREATE_DATE,
          PRODUCT_NDC.UPDATE_USER,
          PRODUCT_NDC.UPDATE_DATE
SEGMENTED BY hash(PRODUCT_NDC.PRODUCT_NDC_ID, PRODUCT_NDC.PRODUCT_ID, PRODUCT_NDC.ACTIVE, PRODUCT_NDC.CREATE_DATE, PRODUCT_NDC.UPDATE_DATE, PRODUCT_NDC.NDC_CODE, PRODUCT_NDC.CREATE_USER, PRODUCT_NDC.UPDATE_USER) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.PRODUCT_PRICE_b0 /*+basename(PRODUCT_PRICE),createtype(L)*/ 
(
 PRODUCT_PRICE_ID,
 PRODUCT_ID,
 PRICE_TYPE,
 FIRST_VALID_DATE,
 LAST_VALID_DATE,
 UNIT_PRICE,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE
)
AS
 SELECT PRODUCT_PRICE.PRODUCT_PRICE_ID,
        PRODUCT_PRICE.PRODUCT_ID,
        PRODUCT_PRICE.PRICE_TYPE,
        PRODUCT_PRICE.FIRST_VALID_DATE,
        PRODUCT_PRICE.LAST_VALID_DATE,
        PRODUCT_PRICE.UNIT_PRICE,
        PRODUCT_PRICE.CREATE_USER,
        PRODUCT_PRICE.CREATE_DATE,
        PRODUCT_PRICE.UPDATE_USER,
        PRODUCT_PRICE.UPDATE_DATE
 FROM CUSTOMER_ORA.PRODUCT_PRICE
 ORDER BY PRODUCT_PRICE.PRODUCT_PRICE_ID,
          PRODUCT_PRICE.PRODUCT_ID,
          PRODUCT_PRICE.PRICE_TYPE,
          PRODUCT_PRICE.FIRST_VALID_DATE,
          PRODUCT_PRICE.LAST_VALID_DATE,
          PRODUCT_PRICE.UNIT_PRICE,
          PRODUCT_PRICE.CREATE_USER,
          PRODUCT_PRICE.CREATE_DATE,
          PRODUCT_PRICE.UPDATE_USER,
          PRODUCT_PRICE.UPDATE_DATE
SEGMENTED BY hash(PRODUCT_PRICE.PRODUCT_PRICE_ID, PRODUCT_PRICE.PRODUCT_ID, PRODUCT_PRICE.FIRST_VALID_DATE, PRODUCT_PRICE.LAST_VALID_DATE, PRODUCT_PRICE.UNIT_PRICE, PRODUCT_PRICE.CREATE_DATE, PRODUCT_PRICE.UPDATE_DATE, PRODUCT_PRICE.PRICE_TYPE, PRODUCT_PRICE.CREATE_USER, PRODUCT_PRICE.UPDATE_USER) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.VENDOR_b0 /*+basename(VENDOR),createtype(L)*/ 
(
 VENDOR_ID,
 VENDOR_CODE,
 NAME,
 ACTIVE,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE
)
AS
 SELECT VENDOR.VENDOR_ID,
        VENDOR.VENDOR_CODE,
        VENDOR.NAME,
        VENDOR.ACTIVE,
        VENDOR.CREATE_USER,
        VENDOR.CREATE_DATE,
        VENDOR.UPDATE_USER,
        VENDOR.UPDATE_DATE
 FROM CUSTOMER_ORA.VENDOR
 ORDER BY VENDOR.VENDOR_ID,
          VENDOR.VENDOR_CODE,
          VENDOR.NAME,
          VENDOR.ACTIVE,
          VENDOR.CREATE_USER,
          VENDOR.CREATE_DATE,
          VENDOR.UPDATE_USER,
          VENDOR.UPDATE_DATE
SEGMENTED BY hash(VENDOR.VENDOR_ID, VENDOR.ACTIVE, VENDOR.CREATE_DATE, VENDOR.UPDATE_DATE, VENDOR.VENDOR_CODE, VENDOR.CREATE_USER, VENDOR.UPDATE_USER, VENDOR.NAME) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.VENDOR_PRODUCT_b0 /*+basename(VENDOR_PRODUCT),createtype(L)*/ 
(
 VENDOR_ID,
 PRODUCT_ID,
 VENDOR_PRODUCT_CODE,
 VENDOR_PRODUCT_NAME,
 CREATE_USER,
 CREATE_DATE,
 UPDATE_USER,
 UPDATE_DATE,
 SUMMARY_PRODUCT_IND
)
AS
 SELECT VENDOR_PRODUCT.VENDOR_ID,
        VENDOR_PRODUCT.PRODUCT_ID,
        VENDOR_PRODUCT.VENDOR_PRODUCT_CODE,
        VENDOR_PRODUCT.VENDOR_PRODUCT_NAME,
        VENDOR_PRODUCT.CREATE_USER,
        VENDOR_PRODUCT.CREATE_DATE,
        VENDOR_PRODUCT.UPDATE_USER,
        VENDOR_PRODUCT.UPDATE_DATE,
        VENDOR_PRODUCT.SUMMARY_PRODUCT_IND
 FROM CUSTOMER_ORA.VENDOR_PRODUCT
 ORDER BY VENDOR_PRODUCT.VENDOR_ID,
          VENDOR_PRODUCT.PRODUCT_ID,
          VENDOR_PRODUCT.VENDOR_PRODUCT_CODE,
          VENDOR_PRODUCT.VENDOR_PRODUCT_NAME,
          VENDOR_PRODUCT.CREATE_USER,
          VENDOR_PRODUCT.CREATE_DATE,
          VENDOR_PRODUCT.UPDATE_USER,
          VENDOR_PRODUCT.UPDATE_DATE,
          VENDOR_PRODUCT.SUMMARY_PRODUCT_IND
SEGMENTED BY hash(VENDOR_PRODUCT.VENDOR_ID, VENDOR_PRODUCT.PRODUCT_ID, VENDOR_PRODUCT.CREATE_DATE, VENDOR_PRODUCT.UPDATE_DATE, VENDOR_PRODUCT.SUMMARY_PRODUCT_IND, VENDOR_PRODUCT.CREATE_USER, VENDOR_PRODUCT.UPDATE_USER, VENDOR_PRODUCT.VENDOR_PRODUCT_NAME, VENDOR_PRODUCT.VENDOR_PRODUCT_CODE) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.IMS_PRODID_XREF_b0 /*+basename(IMS_PRODID_XREF),createtype(L)*/ 
(
 PRODUCT_ID,
 PRODUCT_CODE,
 NAME,
 ACTIVE,
 VENDOR_PRODUCT_CODE,
 VENDOR_PRODUCT_NAME
)
AS
 SELECT IMS_PRODID_XREF.PRODUCT_ID,
        IMS_PRODID_XREF.PRODUCT_CODE,
        IMS_PRODID_XREF.NAME,
        IMS_PRODID_XREF.ACTIVE,
        IMS_PRODID_XREF.VENDOR_PRODUCT_CODE,
        IMS_PRODID_XREF.VENDOR_PRODUCT_NAME
 FROM CUSTOMER_ORA.IMS_PRODID_XREF
 ORDER BY IMS_PRODID_XREF.PRODUCT_ID,
          IMS_PRODID_XREF.PRODUCT_CODE,
          IMS_PRODID_XREF.NAME,
          IMS_PRODID_XREF.ACTIVE,
          IMS_PRODID_XREF.VENDOR_PRODUCT_CODE,
          IMS_PRODID_XREF.VENDOR_PRODUCT_NAME
SEGMENTED BY hash(IMS_PRODID_XREF.PRODUCT_ID, IMS_PRODID_XREF.ACTIVE, IMS_PRODID_XREF.PRODUCT_CODE, IMS_PRODID_XREF.NAME, IMS_PRODID_XREF.VENDOR_PRODUCT_NAME, IMS_PRODID_XREF.VENDOR_PRODUCT_CODE) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_missing_cnt_b0 /*+basename(tmp_missing_cnt),createtype(A)*/ 
(
 ims_id,
 ims_client_number,
 ims_report_number
)
AS
 SELECT tmp_missing_cnt.ims_id,
        tmp_missing_cnt.ims_client_number,
        tmp_missing_cnt.ims_report_number
 FROM CUSTOMER_ORA.tmp_missing_cnt
 ORDER BY tmp_missing_cnt.ims_id,
          tmp_missing_cnt.ims_client_number,
          tmp_missing_cnt.ims_report_number
SEGMENTED BY hash(tmp_missing_cnt.ims_id, tmp_missing_cnt.ims_client_number, tmp_missing_cnt.ims_report_number) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_associates_b0 /*+basename(tmp_associates),createtype(A)*/ 
(
 teva_id,
 hire_date,
 term_date,
 person_sys_id,
 territory_id
)
AS
 SELECT tmp_associates.teva_id,
        tmp_associates.hire_date,
        tmp_associates.term_date,
        tmp_associates.person_sys_id,
        tmp_associates.territory_id
 FROM CUSTOMER_ORA.tmp_associates
 ORDER BY tmp_associates.teva_id,
          tmp_associates.hire_date,
          tmp_associates.term_date,
          tmp_associates.person_sys_id,
          tmp_associates.territory_id
SEGMENTED BY hash(tmp_associates.teva_id, tmp_associates.hire_date, tmp_associates.term_date, tmp_associates.territory_id, tmp_associates.person_sys_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_territory_b0 /*+basename(tmp_territory),createtype(A)*/ 
(
 teva_id,
 territory_id,
 start_date,
 hire_date,
 orig_hire_date,
 term_date,
 end_date
)
AS
 SELECT tmp_territory.teva_id,
        tmp_territory.territory_id,
        tmp_territory.start_date,
        tmp_territory.hire_date,
        tmp_territory.orig_hire_date,
        tmp_territory.term_date,
        tmp_territory.end_date
 FROM CUSTOMER_ORA.tmp_territory
 ORDER BY tmp_territory.teva_id,
          tmp_territory.territory_id
SEGMENTED BY hash(tmp_territory.teva_id, tmp_territory.territory_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_ims_ids_step_a_b0 /*+basename(tmp_ims_ids_step_a),createtype(A)*/ 
(
 ims_client_number,
 ims_report_number,
 ims_id
)
AS
 SELECT tmp_ims_ids_step_a.ims_client_number,
        tmp_ims_ids_step_a.ims_report_number,
        tmp_ims_ids_step_a.ims_id
 FROM CUSTOMER_ORA.tmp_ims_ids_step_a
 ORDER BY tmp_ims_ids_step_a.ims_client_number,
          tmp_ims_ids_step_a.ims_report_number,
          tmp_ims_ids_step_a.ims_id
SEGMENTED BY hash(tmp_ims_ids_step_a.ims_client_number, tmp_ims_ids_step_a.ims_report_number, tmp_ims_ids_step_a.ims_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_ims_ids_step_b_b0 /*+basename(tmp_ims_ids_step_b),createtype(A)*/ 
(
 sales_force_id,
 ims_id,
 row_source
)
AS
 SELECT tmp_ims_ids_step_b.sales_force_id,
        tmp_ims_ids_step_b.ims_id,
        tmp_ims_ids_step_b.row_source
 FROM CUSTOMER_ORA.tmp_ims_ids_step_b
 ORDER BY tmp_ims_ids_step_b.sales_force_id,
          tmp_ims_ids_step_b.ims_id
SEGMENTED BY hash(tmp_ims_ids_step_b.sales_force_id, tmp_ims_ids_step_b.ims_id) ALL NODES;

CREATE PROJECTION CUSTOMER_ORA.tmp_acute_rx_decile_b0 /*+basename(tmp_acute_rx_decile),createtype(A)*/ 
(
 ims_id,
 rx,
 decile
)
AS
 SELECT tmp_acute_rx_decile.ims_id,
        tmp_acute_rx_decile.rx,
        tmp_acute_rx_decile.decile
 FROM CUSTOMER_ORA.tmp_acute_rx_decile
 ORDER BY tmp_acute_rx_decile.ims_id
SEGMENTED BY hash(tmp_acute_rx_decile.rx, tmp_acute_rx_decile.decile, tmp_acute_rx_decile.ims_id) ALL NODES;


CREATE  VIEW CUSTOMER_ORA.dim_product_price_mfg AS
SELECT p.PRODUCT_ID AS product_id, pr.FIRST_VALID_DATE AS first_valid_date, pr.LAST_VALID_DATE AS last_valid_date, p.PRODUCT_CODE AS product_code, (vp.VENDOR_PRODUCT_CODE)::varchar(9) AS ims_product_code, p.NAME AS product_name, pr.UNIT_PRICE AS product_price, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS brand_code, pr.CREATE_DATE AS create_date, pr.CREATE_USER AS create_user, pr.UPDATE_DATE AS update_date, pr.UPDATE_USER AS update_user FROM (((CUSTOMER.PRODUCT p JOIN CUSTOMER.PRODUCT_PRICE pr ON ((pr.PRODUCT_ID = p.PRODUCT_ID))) LEFT JOIN CUSTOMER.PRODUCT pp ON ((pp.PRODUCT_ID = p.PARENT_PRODUCT_ID))) LEFT JOIN CUSTOMER.VENDOR_PRODUCT vp ON (((vp.PRODUCT_ID = p.PRODUCT_ID) AND (vp.VENDOR_ID = 2::numeric(18,0))))) WHERE ((p.CEPHALON_PRODUCT = 'Y'::char(1)) AND (pr.PRICE_TYPE = 'MFGWAC'::varchar(6)));

CREATE  VIEW CUSTOMER_ORA.dim_product_price_comp AS
SELECT p.PRODUCT_ID AS product_id, pr.FIRST_VALID_DATE AS first_valid_date, pr.LAST_VALID_DATE AS last_valid_date, p.PRODUCT_CODE AS product_code, (vp.VENDOR_PRODUCT_CODE)::varchar(9) AS ims_product_code, p.NAME AS product_name, pr.UNIT_PRICE AS product_price, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS brand_code, pr.CREATE_DATE AS create_date, pr.CREATE_USER AS create_user, pr.UPDATE_DATE AS update_date, pr.UPDATE_USER AS update_user FROM (((CUSTOMER.PRODUCT p JOIN CUSTOMER.PRODUCT_PRICE pr ON ((pr.PRODUCT_ID = p.PRODUCT_ID))) LEFT JOIN CUSTOMER.PRODUCT pp ON ((pp.PRODUCT_ID = p.PARENT_PRODUCT_ID))) LEFT JOIN CUSTOMER.VENDOR_PRODUCT vp ON (((vp.PRODUCT_ID = p.PRODUCT_ID) AND (vp.VENDOR_ID = 2::numeric(18,0))))) WHERE (pr.PRICE_TYPE = 'COMPWAC'::varchar(7));

CREATE  VIEW CUSTOMER_ORA.dim_product_price AS
SELECT p.PRODUCT_CODE AS product_code, (vp.VENDOR_PRODUCT_CODE)::varchar(9) AS ims_product_code, p.NAME AS product_name, pr.UNIT_PRICE AS product_price, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS brand_code, pr.CREATE_DATE AS create_date, pr.CREATE_USER AS create_user, pr.UPDATE_DATE AS update_date, pr.UPDATE_USER AS update_user FROM (((CUSTOMER.PRODUCT p JOIN CUSTOMER.PRODUCT_PRICE pr ON ((pr.PRODUCT_ID = p.PRODUCT_ID))) LEFT JOIN CUSTOMER.PRODUCT pp ON ((pp.PRODUCT_ID = p.PARENT_PRODUCT_ID))) LEFT JOIN CUSTOMER.VENDOR_PRODUCT vp ON (((vp.PRODUCT_ID = p.PRODUCT_ID) AND (vp.VENDOR_ID = 2::numeric(18,0))))) WHERE ((p.CEPHALON_PRODUCT = 'Y'::char(1)) AND (pr.PRICE_TYPE = 'COMPWAC'::varchar(7)) AND ((statement_timestamp())::timestamp >= pr.FIRST_VALID_DATE) AND ((statement_timestamp())::timestamp <= pr.LAST_VALID_DATE));

CREATE  VIEW CUSTOMER_ORA.dim_product_ims_ddd AS
SELECT p.PRODUCT_ID AS product_id, (vp.VENDOR_PRODUCT_CODE)::varchar(9) AS ims_product_code, p.PRODUCT_CODE AS product_code, vp.VENDOR_PRODUCT_NAME AS ims_product_name, p.CEPHALON_PRODUCT AS cephalon_product, p.THERAPEUTIC_AREA AS therapeutic_area, p.ACTIVE AS active, vp.SUMMARY_PRODUCT_IND AS summary_product_ind, CASE pp.PRODUCT_ID WHEN NULLSEQUAL NULL::numeric(1,0) THEN p.PRODUCT_ID ELSE pp.PRODUCT_ID END AS parent_product_id, CASE pp.PRODUCT_CODE WHEN NULLSEQUAL NULL THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS parent_product, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_ID ELSE pp.PRODUCT_ID END AS brand_id, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS brand_code, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.NAME ELSE pp.NAME END AS brand_name, m.MARKET_CODE AS market_code, m.NAME AS market_name FROM ((((CUSTOMER.PRODUCT p JOIN CUSTOMER.VENDOR_PRODUCT vp ON ((vp.PRODUCT_ID = p.PRODUCT_ID))) LEFT JOIN CUSTOMER.PRODUCT pp ON ((pp.PRODUCT_ID = p.PARENT_PRODUCT_ID))) LEFT JOIN CUSTOMER.MARKET_PRODUCT mp ON (((mp.PRODUCT_ID = p.PRODUCT_ID) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) >= trunc(mp.FIRST_VALID_DATE, 'DD'::varchar(2))) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) <= trunc(mp.LAST_VALID_DATE, 'DD'::varchar(2)))))) LEFT JOIN CUSTOMER.MARKET m ON (((m.MARKET_ID = mp.MARKET_ID) AND (m.VENDOR_ID = ANY (ARRAY[1::numeric(18,0), 4::numeric(18,0)])) AND (m.ACTIVE = 'Y'::char(1))))) WHERE ((vp.VENDOR_ID = 2::numeric(18,0)) AND (p.ACTIVE = 'Y'::char(1)));

CREATE  VIEW CUSTOMER_ORA.dim_product_brand AS
SELECT p.PRODUCT_CODE AS brand_code, p.PRODUCT_ID AS brand_id, p.NAME AS brand_name, m.MARKET_CODE AS market_code, p.PROMOTED_PRODUCT AS promoted_product, p.THERAPEUTIC_AREA AS therapeutic_area, p.CREATE_DATE AS create_date, p.CREATE_USER AS create_user, p.UPDATE_DATE AS update_date, p.UPDATE_USER AS update_user FROM ((CUSTOMER.PRODUCT p LEFT JOIN CUSTOMER.MARKET_PRODUCT mp ON (((mp.PRODUCT_ID = p.PRODUCT_ID) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) >= trunc(mp.FIRST_VALID_DATE, 'DD'::varchar(2))) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) <= trunc(mp.LAST_VALID_DATE, 'DD'::varchar(2)))))) LEFT JOIN CUSTOMER.MARKET m ON (((m.MARKET_ID = mp.MARKET_ID) AND (m.VENDOR_ID = 1::numeric(18,0))))) WHERE ((p.ACTIVE = 'Y'::char(1)) AND (p.PARENT_PRODUCT_IND = 'Y'::char(1)));

CREATE  VIEW CUSTOMER_ORA.dim_product AS
SELECT p.PRODUCT_ID AS product_id, p.PRODUCT_CODE AS product_code, p.NAME AS product_name, m.MARKET_CODE AS market_code, m.NAME AS market_name, p.ACTIVE AS active, p.CEPHALON_PRODUCT AS ceph_prod_flag, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_ID ELSE pp.PRODUCT_ID END AS brand_id, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.PRODUCT_CODE ELSE pp.PRODUCT_CODE END AS brand_code, CASE WHEN (coalesce(p.PARENT_PRODUCT_IND, 'N'::char(1)) = 'Y'::char(1)) THEN p.NAME ELSE pp.NAME END AS brand_name, p.THERAPEUTIC_AREA AS therapeutic_area, p.CREATE_DATE AS create_date, p.CREATE_USER AS create_user, p.UPDATE_DATE AS update_date, p.UPDATE_USER AS update_user FROM (((CUSTOMER.PRODUCT p LEFT JOIN CUSTOMER.PRODUCT pp ON ((pp.PRODUCT_ID = p.PARENT_PRODUCT_ID))) LEFT JOIN CUSTOMER.MARKET_PRODUCT mp ON (((mp.PRODUCT_ID = p.PRODUCT_ID) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) >= trunc(mp.FIRST_VALID_DATE, 'DD'::varchar(2))) AND (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) <= trunc(mp.LAST_VALID_DATE, 'DD'::varchar(2)))))) LEFT JOIN CUSTOMER.MARKET m ON (((m.MARKET_ID = mp.MARKET_ID) AND (m.VENDOR_ID = ANY (ARRAY[1::numeric(18,0), 4::numeric(18,0)])) AND (m.ACTIVE = 'Y'::char(1)))));

SELECT MARK_DESIGN_KSAFE(1);

