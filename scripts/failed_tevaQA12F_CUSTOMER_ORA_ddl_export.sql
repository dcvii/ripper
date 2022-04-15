


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