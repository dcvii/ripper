CREATE SCHEMA teva_staging;

CREATE SEQUENCE teva_staging.ext_call_goals_kc_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.addresses_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.tvcmid_xref_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.tvcmid_hcp_demo_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.ext_knipper_samples_shipped_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.C_BO_HCP_DETAIL_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.C_BO_IMS_FLAG_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.job_title_defs_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.XX_SALES_LOA_MV_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.C_BO_TEVA_FLAG_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.ext_kc_zip_to_territory_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.people_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.phones_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.people_addresses_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.territories_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.ext_ims_sln_xref_kc_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.XX_SALES_MV_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.ext_time_off_territory_kc_veev_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.tvcmid_merges_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.tvcmid_hco_demo_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.aud_associates_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.associates_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.people_phones_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.c_bo_teva_sample_elig_row_id  CACHE      10000 ;
CREATE SEQUENCE teva_staging.c_bo_hce_alt_identifier_row_id  CACHE      10000 ;

CREATE TABLE teva_staging.associates
(
    TEVA_ID varchar(7),
    HR_ID varchar(15),
    CRT_USER varchar(30),
    CRT_DT date,
    UPD_USER varchar(30),
    UPD_DT date,
    HIRE_DT date,
    LOGON_ID varchar(15),
    REPORTS_TO varchar(7),
    STAT_CD varchar(2),
    TYPE_CD varchar(1),
    FULL_TIME varchar(1),
    EEO_CAT varchar(10),
    EXEMPT varchar(1),
    EXPENSE_COST_CTR varchar(10),
    HRS_PER_WK numeric(5,2),
    MARITAL_STAT varchar(1),
    RACE varchar(50),
    SSN varchar(9),
    EMAIL varchar(255),
    BIRTH_DT date,
    COUNTRY_ID varchar(3),
    DFLT_CURR_ID varchar(50),
    TERR_ID varchar(15),
    OFFICE varchar(6),
    PRSN_SYS_ID numeric(38,0),
    LANGUAGE varchar(2),
    "POSITION" varchar(50),
    TERM_DT date,
    LAST_WRK_DT date,
    AUTH_LIMIT numeric(12,2),
    VEHICLE varchar(11),
    VACATION_DAYS numeric(6,3),
    CHK_REQ_LIMIT numeric(12,2),
    EXPENSE_REPORT_APPROVER varchar(7),
    LOC_CD varchar(10),
    PAY_CD varchar(3),
    ED_CD varchar(2),
    ED_CD_DT date,
    JOB_CD varchar(6),
    CNTRY_CITIZENSHIP varchar(3),
    DISABLED varchar(1),
    VIETNAM_VET varchar(1),
    EMERGENCY_CONTACT_NAME varchar(50),
    EMERGENCY_CONTACT_RELATIONSHIP varchar(20),
    EMERGENCY_CONTACT_PHONE varchar(50),
    ADP_DEPT_NUM varchar(10),
    VACATION_YR numeric(4,0),
    FIN_AUTH_COMMENTS varchar(255),
    EEO_CAT_HR_UPDT varchar(10),
    EXPENSE_REPORTING varchar(1),
    COMPANY_ID varchar(10),
    CHECK_REQUEST_APPROVER varchar(7),
    INVOICE_APPROVER varchar(7),
    PHANTOM_IND varchar(1),
    PAYROLL_COST_CTR varchar(30),
    SAMPLE_AUTH varchar(1),
    ORACLE_STRING varchar(25)
);


CREATE TABLE teva_staging.aud_associates
(
    TEVA_ID varchar(7),
    HR_ID varchar(15),
    CRT_USER varchar(30),
    CRT_DT date,
    UPD_USER varchar(30),
    UPD_DT date,
    HIRE_DT date,
    LOGON_ID varchar(15),
    REPORTS_TO varchar(7),
    STAT_CD varchar(2),
    TYPE_CD varchar(1),
    FULL_TIME varchar(1),
    EEO_CAT varchar(10),
    EXEMPT varchar(1),
    EXPENSE_COST_CTR varchar(10),
    HRS_PER_WK numeric(5,2),
    MARITAL_STAT varchar(1),
    RACE varchar(50),
    SSN varchar(9),
    EMAIL varchar(255),
    BIRTH_DT date,
    COUNTRY_ID varchar(3),
    DFLT_CURR_ID varchar(50),
    TERR_ID varchar(15),
    OFFICE varchar(6),
    PRSN_SYS_ID numeric(38,0),
    LANGUAGE varchar(2),
    "POSITION" varchar(50),
    TERM_DT date,
    LAST_WRK_DT date,
    AUTH_LIMIT numeric(12,2),
    VEHICLE varchar(11),
    VACATION_DAYS numeric(6,3),
    "TIMESTAMP" date,
    ACTION varchar(20),
    CHK_REQ_LIMIT numeric(12,2),
    EXPENSE_REPORT_APPROVER varchar(7),
    LOC_CD varchar(10),
    PAY_CD varchar(3),
    ED_CD varchar(2),
    ED_CD_DT date,
    JOB_CD varchar(6),
    CNTRY_CITIZENSHIP varchar(3),
    DISABLED varchar(1),
    VIETNAM_VET varchar(1),
    EMERGENCY_CONTACT_NAME varchar(50),
    EMERGENCY_CONTACT_RELATIONSHIP varchar(20),
    EMERGENCY_CONTACT_PHONE varchar(50),
    ADP_DEPT_NUM varchar(10),
    EEO_CAT_HR_UPDT varchar(10),
    COMPANY_ID varchar(10),
    EXPENSE_REPORTING varchar(1),
    PHANTOM_IND varchar(1),
    CHECK_REQUEST_APPROVER varchar(7),
    INVOICE_APPROVER varchar(7),
    VACATION_YR numeric(4,0),
    FIN_AUTH_COMMENTS varchar(255),
    PAYROLL_COST_CTR varchar(30),
    SAMPLE_AUTH varchar(1),
    ORACLE_STRING varchar(25)
);


CREATE TABLE teva_staging.people
(
    SYS_ID numeric(38,0),
    CRT_DT date,
    CRT_USER varchar(30),
    UPD_DT date,
    UPD_USER varchar(30),
    LAST_NAME varchar(50),
    FIRST_NAME varchar(50),
    STAT_CD varchar(2),
    GENDER varchar(1),
    MID_NAME varchar(50),
    NAME_SUFFIX varchar(15),
    PRSN_TITLE varchar(15),
    PROF_TITLE varchar(15),
    EMAIL varchar(255),
    PREF_NAME varchar(50),
    PREV_LAST_NAME varchar(50)
);


CREATE TABLE teva_staging.people_addresses
(
    PRSN_SYS_ID numeric(38,0),
    ADDR_ID numeric(38,0),
    ATD_CD varchar(2),
    PRIORITY numeric(38,0),
    MAIL_STOP varchar(10),
    EFF_DT date,
    END_DT date
);


CREATE TABLE teva_staging.people_phones
(
    PRSN_SYS_ID numeric(38,0),
    PHN_ID numeric(38,0),
    PTD_CD varchar(2),
    PRIORITY numeric(38,0),
    EXT numeric(38,0),
    VMAIL numeric(38,0),
    ADDR_ID numeric(38,0),
    PRVDR_CD varchar(2)
);


CREATE TABLE teva_staging.phones
(
    PHN_ID numeric(38,0),
    CNTRY_DIAL_CD numeric(3,0),
    AREA_CD varchar(5),
    PHN_NUMBER numeric(20,0),
    CRT_USER varchar(30),
    CRT_DT date,
    UPD_USER varchar(30),
    UPD_DT date
);


CREATE TABLE teva_staging.territories
(
    TERR_ID varchar(225),
    NAME varchar(255),
    DESC_TEXT varchar(255),
    COMPANY_CD varchar(10),
    TERR_TYPE varchar(20),
    TEAM varchar(50),
    SAMPLE_DIST varchar(1),
    COMMENTS varchar(200),
    FLEET_ELIG varchar(1),
    REP_TYPE varchar(8)
);


CREATE TABLE teva_staging.job_title_defs
(
    JOB_CD varchar(5),
    CD_DESC varchar(50),
    ADP_JOB_CD varchar(8),
    CRT_DT date,
    CRT_USER varchar(30),
    UPD_DT date,
    UPD_USER varchar(30),
    DISPLAY_SEQ numeric(4,0),
    COMPANY_ID varchar(10),
    EFF_DT date,
    EXP_DT date
);


CREATE TABLE teva_staging.XX_SALES_MV
(
    FILE_NBR varchar(6),
    NAME varchar(40),
    JOB_TITLE varchar(30),
    COST_CENTER_NAME varchar(35),
    DEPARTMENT varchar(30),
    JOB_ENTRY_DT varchar(10),
    MANAGER_LEVEL varchar(30),
    EE_STATUS varchar(30),
    WORK_LOCATION varchar(5),
    WORK_LOCATION_NAME varchar(30),
    ORIG_HIRE_DT varchar(10),
    SERVICE_DT varchar(10),
    REHIRE_DT varchar(10),
    TERMINATION_DT varchar(10),
    DIRECT_MANAGER varchar(40),
    HOME_ADDRESS_LINE1 varchar(40),
    HOME_ADDRESS_LINE2 varchar(40),
    HOME_CITY varchar(30),
    HOME_STATE varchar(2),
    HOME_POSTAL_CODE varchar(10),
    HOME_PHONE varchar(15),
    CELL_PHONE varchar(15),
    EMAIL_ADDRESS varchar(70)
);


CREATE TABLE teva_staging.XX_SALES_LOA_MV
(
    FILE_NBR varchar(6),
    NAME varchar(40),
    JOB_TITLE varchar(30),
    COST_CENTER_NAME varchar(35),
    DEPARTMENT varchar(30),
    EE_STATUS varchar(30),
    LEAVE_DT varchar(10),
    RETURN_DT varchar(10),
    LEAVE_DAYS numeric(38,0)
);


CREATE TABLE teva_staging.c_bo_teva_sample_elig
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp,
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp,
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp,
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    TVCMID char(14),
    CERTIFICATION_DESC varchar(100),
    SLN varchar(18),
    SLN_STATE varchar(2),
    SLN_EXPIRATION_DATE date,
    SLN_STATUS_CODE varchar(5),
    SLN_STATUS_DESC varchar(40),
    TEVA_SAMPLE_ELIG_FLAG varchar(1),
    TEVA_SCHED_IV_ELIG_FLAG varchar(1),
    TEVA_SCHED_V_ELIG_FLAG varchar(1),
    PROFESSION_SHORT_DESC varchar(5),
    TEVA_SPECIALTY_CODE varchar(5),
    CERTIFICATION_CODE varchar(5)
);


CREATE TABLE teva_staging.c_bo_hce_alt_identifier
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp,
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp,
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp,
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    TVCMID char(14),
    ALTERNATE_ID_VALUE varchar(18),
    ALTERNATE_ID_TYPE varchar(10),
    SOURCE_DEACT_REASON_CODE char(1),
    SOURCE_DEACT_REASON_DESC varchar(50),
    IDENTIFIER_CAT varchar(25),
    STATUS varchar(10),
    STATE varchar(2)
);


CREATE TABLE teva_staging.tvcmid_merges
(
    PREVIOUS_TVCMID numeric(38,0),
    CURRENT_TVCMID numeric(38,0),
    MERGE_CYCLE char(1)
);


CREATE TABLE teva_staging.tvcmid_hco_demo
(
    TVCMID numeric(38,0),
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


CREATE TABLE teva_staging.tvcmid_hcp_demo
(
    TVCMID numeric(38,0),
    IMS_HCE_ID numeric(38,0),
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
    LEGACY_ADDRESS_ID numeric(38,0),
    BUSINESS_PHONE varchar(100),
    BUSINESS_EMAIL varchar(100),
    HCE_STATUS_DESC varchar(50),
    NP_PA_FLAG varchar(1)
);


CREATE TABLE teva_staging.C_BO_TEVA_FLAG
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp(6),
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp(6),
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp(6),
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    FLAG_TYPE varchar(10),
    FLAG_VALUE varchar(50),
    EFFECTIVE_DATE date,
    HCP_DETAIL_ID char(14)
);


CREATE TABLE teva_staging.EXT_DRM45_PRODUCT_WITH_NDC
(
    IMS_CLIENT_NUM varchar(3),
    IMS_REPORT_NUM varchar(2),
    IMS_PRODUCT_GROUP_NUM varchar(8),
    MFG_NUM varchar(5),
    MFG_SUFFIX varchar(1),
    CMF varchar(10),
    STATUS varchar(4),
    PRODUCT_DESCRIPTION varchar(52),
    MFG_NAME varchar(20),
    ACTIVITY_DATE varchar(5),
    USC varchar(5),
    NDC varchar(12)
);


CREATE TABLE teva_staging.ext_ims_sln_xref_kc
(
    IMS_ID varchar(10),
    STATE_LICENSE_NUMBER varchar(20),
    STATE_LICENSE_STATE varchar(2)
);


CREATE TABLE teva_staging.ext_kc_zip_to_territory
(
    ZIP varchar(5),
    CITY varchar(50),
    STATE varchar(2),
    TERRITORY_NUM varchar(8),
    TERRITORY_NAME varchar(50),
    AREA_NAME varchar(50),
    REGION_NAME varchar(50),
    SALES_FORCE_ID varchar(5),
    ORGANIZATION_CODE varchar(200),
    INACTIVE_FLAG numeric(1,0),
    COMMENTS varchar(255),
    MIRROR_FLAG numeric(1,0),
    MIRROR_TERRITORY_NUM varchar(8)
);


CREATE TABLE teva_staging.ext_knipper_samples_shipped
(
    CLIENT_PRAC_ID varchar(32),
    TERR_CODE varchar(8),
    SAMPLE_PROD_CODE varchar(15),
    SAMPLE_DATE varchar(10),
    SAMPLE_QTY numeric(38,0),
    REQUEST_DATE varchar(10),
    REQUEST_QTY numeric(38,0)
);


CREATE TABLE teva_staging.C_BO_HCP_DETAIL
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp(6),
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp(6),
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp(6),
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    TVCMID char(14),
    IMS_PRESCRIBER_ID varchar(7),
    PREFIX varchar(10),
    FIRST_NAME varchar(40),
    LAST_NAME varchar(40),
    MIDDLE_NAME varchar(40),
    SUFFIX varchar(10),
    HEALTHCARE_PROF_STATUS_CD varchar(10),
    YEAR_OF_BIRTH date,
    DATE_OF_DEATH date,
    GENDER_CODE varchar(5),
    TEVA_SPECIALTY_CODE varchar(5)
);


CREATE TABLE teva_staging.jhc_cnt
(
    table_name varchar(100),
    staging_cnt int,
    ingestion_cnt int
);


CREATE TABLE teva_staging.XX_TERR_ID_CHANGE_V
(
    EE_NBR varchar(24),
    EE_NAME varchar(40),
    TERR_ID_FROM varchar(8),
    TERR_ID_TO varchar(8),
    TERR_MOVE_DT date
);


CREATE TABLE teva_staging.ext_anda_sales
(
    TRANSACTION_ID varchar(100),
    INVOICE_DATE varchar(10),
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
    DEP_DEA_NUM varchar(20)
);


CREATE TABLE teva_staging.ext_tw_biologics_sales
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
    TRANSFER_DESTINATION varchar(50),
    DISCHARGE_REASON varchar(50)
);


CREATE TABLE teva_staging.EXT_JHC_CMOP_NDC
(
    NDC_11 varchar(20),
    VA_PRODUCT varchar(70)
);


CREATE TABLE teva_staging.addresses
(
    ADDR_ID numeric(38,0),
    LINE_1 varchar(50),
    LINE_2 varchar(50),
    LINE_3 varchar(50),
    CITY varchar(50),
    ST_ABBR varchar(2),
    POSTAL_CD varchar(20),
    CNTRY_ISO_ABBR varchar(2),
    CRT_USER varchar(30),
    CRT_DT date,
    UPD_USER varchar(30),
    UPD_DT date
);


CREATE TABLE teva_staging.tvcmid_xref
(
    TVCMID numeric(38,0),
    ID_NUM varchar(255),
    ID_TYPE varchar(14),
    STATE varchar(2),
    EXPIRATION_DATE date
);


CREATE TABLE teva_staging.ext_call_goals_kc
(
    ID numeric(38,0),
    SFA_ID varchar(18),
    IMS_ID varchar(7),
    TERRITORY_NUM varchar(8),
    PRIORITY numeric(3,0),
    PRODUCT varchar(20),
    GOAL numeric(3,0),
    ACTUAL numeric(3,0),
    MARKETING_SEGMENT varchar(20),
    EFFECTIVE_DATE varchar(23),
    SALES_FORCE_ID varchar(2)
);


CREATE TABLE teva_staging.batch_history
(
    message varchar(255),
    updated_ts timestamp
);


CREATE TABLE teva_staging.C_BO_IMS_FLAG
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp(6),
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp(6),
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp(6),
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    FLAG_TYPE varchar(10),
    FLAG_VALUE char(1),
    EFFECTIVE_DATE date,
    HCP_DETAIL_ID char(14)
);


CREATE TABLE teva_staging.C_BO_HCE_RAW_DEA
(
    ROWID_OBJECT char(14),
    CREATOR varchar(50),
    CREATE_DATE timestamp(6),
    UPDATED_BY varchar(50),
    LAST_UPDATE_DATE timestamp(6),
    CONSOLIDATION_IND int,
    DELETED_IND int,
    DELETED_BY varchar(50),
    DELETED_DATE timestamp(6),
    LAST_ROWID_SYSTEM char(14),
    DIRTY_IND int,
    INTERACTION_ID int,
    HUB_STATE_IND int,
    CM_DIRTY_IND int,
    TVCMID char(14),
    IMS_ID varchar(7),
    DEA_NUMBER varchar(9),
    NAME varchar(40),
    ADDITIONAL_COMPANY_INFO varchar(40),
    ADDRESS_LINE1 varchar(40),
    ADDRESS_LINE2 varchar(40),
    CITY varchar(33),
    STATE varchar(2),
    ZIP varchar(5),
    BUSINESS_ACTIVITY_CODE char(1),
    DRUG_SCHEDULES varchar(16),
    EXPIRATION_DATE date,
    BUSINESS_ACTIVITY_SUB_CODE char(1)
);


CREATE TABLE teva_staging.ext_time_off_territory_kc_veev
(
    ID numeric(38,0),
    EVENT_ROW_ID varchar(18),
    REP_ROW_ID varchar(18),
    TERRITORY_NUM varchar(8),
    TIME_OFF_DATE timestamp,
    TIME_ON_DATE timestamp,
    DESCRIPTION varchar(100),
    COMMENTS varchar(100),
    DURATION_IN_MINUTES numeric(38,0),
    DURATION_IN_HOURS numeric(38,0),
    DURATION_IN_DAYS numeric(10,3),
    COMPANY numeric(38,0)
);


CREATE PROJECTION teva_staging.tvcmid_xref_b0 /*+basename(tvcmid_xref),createtype(L)*/ 
(
 TVCMID,
 ID_NUM,
 ID_TYPE,
 STATE,
 EXPIRATION_DATE
)
AS
 SELECT tvcmid_xref.TVCMID,
        tvcmid_xref.ID_NUM,
        tvcmid_xref.ID_TYPE,
        tvcmid_xref.STATE,
        tvcmid_xref.EXPIRATION_DATE
 FROM teva_staging.tvcmid_xref
 ORDER BY tvcmid_xref.TVCMID,
          tvcmid_xref.ID_NUM,
          tvcmid_xref.ID_TYPE,
          tvcmid_xref.STATE,
          tvcmid_xref.EXPIRATION_DATE
SEGMENTED BY hash(tvcmid_xref.STATE, tvcmid_xref.EXPIRATION_DATE, tvcmid_xref.ID_TYPE, tvcmid_xref.TVCMID, tvcmid_xref.ID_NUM) ALL NODES;

CREATE PROJECTION teva_staging.batch_history_b0 /*+basename(batch_history),createtype(L)*/ 
(
 message,
 updated_ts
)
AS
 SELECT batch_history.message,
        batch_history.updated_ts
 FROM teva_staging.batch_history
 ORDER BY batch_history.message,
          batch_history.updated_ts
SEGMENTED BY hash(batch_history.updated_ts, batch_history.message) ALL NODES;

CREATE PROJECTION teva_staging.C_BO_IMS_FLAG_b0 /*+basename(C_BO_IMS_FLAG),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 FLAG_TYPE,
 FLAG_VALUE,
 EFFECTIVE_DATE,
 HCP_DETAIL_ID
)
AS
 SELECT C_BO_IMS_FLAG.ROWID_OBJECT,
        C_BO_IMS_FLAG.CREATOR,
        C_BO_IMS_FLAG.CREATE_DATE,
        C_BO_IMS_FLAG.UPDATED_BY,
        C_BO_IMS_FLAG.LAST_UPDATE_DATE,
        C_BO_IMS_FLAG.CONSOLIDATION_IND,
        C_BO_IMS_FLAG.DELETED_IND,
        C_BO_IMS_FLAG.DELETED_BY,
        C_BO_IMS_FLAG.DELETED_DATE,
        C_BO_IMS_FLAG.LAST_ROWID_SYSTEM,
        C_BO_IMS_FLAG.DIRTY_IND,
        C_BO_IMS_FLAG.INTERACTION_ID,
        C_BO_IMS_FLAG.HUB_STATE_IND,
        C_BO_IMS_FLAG.CM_DIRTY_IND,
        C_BO_IMS_FLAG.FLAG_TYPE,
        C_BO_IMS_FLAG.FLAG_VALUE,
        C_BO_IMS_FLAG.EFFECTIVE_DATE,
        C_BO_IMS_FLAG.HCP_DETAIL_ID
 FROM teva_staging.C_BO_IMS_FLAG
 ORDER BY C_BO_IMS_FLAG.ROWID_OBJECT,
          C_BO_IMS_FLAG.CREATOR,
          C_BO_IMS_FLAG.CREATE_DATE,
          C_BO_IMS_FLAG.UPDATED_BY,
          C_BO_IMS_FLAG.LAST_UPDATE_DATE,
          C_BO_IMS_FLAG.CONSOLIDATION_IND,
          C_BO_IMS_FLAG.DELETED_IND,
          C_BO_IMS_FLAG.DELETED_BY,
          C_BO_IMS_FLAG.DELETED_DATE,
          C_BO_IMS_FLAG.LAST_ROWID_SYSTEM,
          C_BO_IMS_FLAG.DIRTY_IND,
          C_BO_IMS_FLAG.INTERACTION_ID,
          C_BO_IMS_FLAG.HUB_STATE_IND,
          C_BO_IMS_FLAG.CM_DIRTY_IND,
          C_BO_IMS_FLAG.FLAG_TYPE,
          C_BO_IMS_FLAG.FLAG_VALUE,
          C_BO_IMS_FLAG.EFFECTIVE_DATE,
          C_BO_IMS_FLAG.HCP_DETAIL_ID
SEGMENTED BY hash(C_BO_IMS_FLAG.CREATE_DATE, C_BO_IMS_FLAG.LAST_UPDATE_DATE, C_BO_IMS_FLAG.CONSOLIDATION_IND, C_BO_IMS_FLAG.DELETED_IND, C_BO_IMS_FLAG.DELETED_DATE, C_BO_IMS_FLAG.DIRTY_IND, C_BO_IMS_FLAG.INTERACTION_ID, C_BO_IMS_FLAG.HUB_STATE_IND, C_BO_IMS_FLAG.CM_DIRTY_IND, C_BO_IMS_FLAG.FLAG_VALUE, C_BO_IMS_FLAG.EFFECTIVE_DATE, C_BO_IMS_FLAG.FLAG_TYPE, C_BO_IMS_FLAG.ROWID_OBJECT, C_BO_IMS_FLAG.LAST_ROWID_SYSTEM, C_BO_IMS_FLAG.HCP_DETAIL_ID, C_BO_IMS_FLAG.CREATOR, C_BO_IMS_FLAG.UPDATED_BY, C_BO_IMS_FLAG.DELETED_BY) ALL NODES;

CREATE PROJECTION teva_staging.C_BO_HCE_RAW_DEA_b0 /*+basename(C_BO_HCE_RAW_DEA),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 TVCMID,
 IMS_ID,
 DEA_NUMBER,
 NAME,
 ADDITIONAL_COMPANY_INFO,
 ADDRESS_LINE1,
 ADDRESS_LINE2,
 CITY,
 STATE,
 ZIP,
 BUSINESS_ACTIVITY_CODE,
 DRUG_SCHEDULES,
 EXPIRATION_DATE,
 BUSINESS_ACTIVITY_SUB_CODE
)
AS
 SELECT C_BO_HCE_RAW_DEA.ROWID_OBJECT,
        C_BO_HCE_RAW_DEA.CREATOR,
        C_BO_HCE_RAW_DEA.CREATE_DATE,
        C_BO_HCE_RAW_DEA.UPDATED_BY,
        C_BO_HCE_RAW_DEA.LAST_UPDATE_DATE,
        C_BO_HCE_RAW_DEA.CONSOLIDATION_IND,
        C_BO_HCE_RAW_DEA.DELETED_IND,
        C_BO_HCE_RAW_DEA.DELETED_BY,
        C_BO_HCE_RAW_DEA.DELETED_DATE,
        C_BO_HCE_RAW_DEA.LAST_ROWID_SYSTEM,
        C_BO_HCE_RAW_DEA.DIRTY_IND,
        C_BO_HCE_RAW_DEA.INTERACTION_ID,
        C_BO_HCE_RAW_DEA.HUB_STATE_IND,
        C_BO_HCE_RAW_DEA.CM_DIRTY_IND,
        C_BO_HCE_RAW_DEA.TVCMID,
        C_BO_HCE_RAW_DEA.IMS_ID,
        C_BO_HCE_RAW_DEA.DEA_NUMBER,
        C_BO_HCE_RAW_DEA.NAME,
        C_BO_HCE_RAW_DEA.ADDITIONAL_COMPANY_INFO,
        C_BO_HCE_RAW_DEA.ADDRESS_LINE1,
        C_BO_HCE_RAW_DEA.ADDRESS_LINE2,
        C_BO_HCE_RAW_DEA.CITY,
        C_BO_HCE_RAW_DEA.STATE,
        C_BO_HCE_RAW_DEA.ZIP,
        C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_CODE,
        C_BO_HCE_RAW_DEA.DRUG_SCHEDULES,
        C_BO_HCE_RAW_DEA.EXPIRATION_DATE,
        C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_SUB_CODE
 FROM teva_staging.C_BO_HCE_RAW_DEA
 ORDER BY C_BO_HCE_RAW_DEA.ROWID_OBJECT,
          C_BO_HCE_RAW_DEA.CREATOR,
          C_BO_HCE_RAW_DEA.CREATE_DATE,
          C_BO_HCE_RAW_DEA.UPDATED_BY,
          C_BO_HCE_RAW_DEA.LAST_UPDATE_DATE,
          C_BO_HCE_RAW_DEA.CONSOLIDATION_IND,
          C_BO_HCE_RAW_DEA.DELETED_IND,
          C_BO_HCE_RAW_DEA.DELETED_BY,
          C_BO_HCE_RAW_DEA.DELETED_DATE,
          C_BO_HCE_RAW_DEA.LAST_ROWID_SYSTEM,
          C_BO_HCE_RAW_DEA.DIRTY_IND,
          C_BO_HCE_RAW_DEA.INTERACTION_ID,
          C_BO_HCE_RAW_DEA.HUB_STATE_IND,
          C_BO_HCE_RAW_DEA.CM_DIRTY_IND,
          C_BO_HCE_RAW_DEA.TVCMID,
          C_BO_HCE_RAW_DEA.IMS_ID,
          C_BO_HCE_RAW_DEA.DEA_NUMBER,
          C_BO_HCE_RAW_DEA.NAME,
          C_BO_HCE_RAW_DEA.ADDITIONAL_COMPANY_INFO,
          C_BO_HCE_RAW_DEA.ADDRESS_LINE1,
          C_BO_HCE_RAW_DEA.ADDRESS_LINE2,
          C_BO_HCE_RAW_DEA.CITY,
          C_BO_HCE_RAW_DEA.STATE,
          C_BO_HCE_RAW_DEA.ZIP,
          C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_CODE,
          C_BO_HCE_RAW_DEA.DRUG_SCHEDULES,
          C_BO_HCE_RAW_DEA.EXPIRATION_DATE,
          C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_SUB_CODE
SEGMENTED BY hash(C_BO_HCE_RAW_DEA.CREATE_DATE, C_BO_HCE_RAW_DEA.LAST_UPDATE_DATE, C_BO_HCE_RAW_DEA.CONSOLIDATION_IND, C_BO_HCE_RAW_DEA.DELETED_IND, C_BO_HCE_RAW_DEA.DELETED_DATE, C_BO_HCE_RAW_DEA.DIRTY_IND, C_BO_HCE_RAW_DEA.INTERACTION_ID, C_BO_HCE_RAW_DEA.HUB_STATE_IND, C_BO_HCE_RAW_DEA.CM_DIRTY_IND, C_BO_HCE_RAW_DEA.IMS_ID, C_BO_HCE_RAW_DEA.STATE, C_BO_HCE_RAW_DEA.ZIP, C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_CODE, C_BO_HCE_RAW_DEA.EXPIRATION_DATE, C_BO_HCE_RAW_DEA.BUSINESS_ACTIVITY_SUB_CODE, C_BO_HCE_RAW_DEA.DEA_NUMBER, C_BO_HCE_RAW_DEA.ROWID_OBJECT, C_BO_HCE_RAW_DEA.LAST_ROWID_SYSTEM, C_BO_HCE_RAW_DEA.TVCMID, C_BO_HCE_RAW_DEA.DRUG_SCHEDULES, C_BO_HCE_RAW_DEA.CITY, C_BO_HCE_RAW_DEA.NAME, C_BO_HCE_RAW_DEA.ADDITIONAL_COMPANY_INFO, C_BO_HCE_RAW_DEA.ADDRESS_LINE1, C_BO_HCE_RAW_DEA.ADDRESS_LINE2, C_BO_HCE_RAW_DEA.CREATOR, C_BO_HCE_RAW_DEA.UPDATED_BY, C_BO_HCE_RAW_DEA.DELETED_BY) ALL NODES;

CREATE PROJECTION teva_staging.c_bo_teva_sample_elig_b0 /*+basename(c_bo_teva_sample_elig),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 TVCMID,
 CERTIFICATION_DESC,
 SLN,
 SLN_STATE,
 SLN_EXPIRATION_DATE,
 SLN_STATUS_CODE,
 SLN_STATUS_DESC,
 TEVA_SAMPLE_ELIG_FLAG,
 TEVA_SCHED_IV_ELIG_FLAG,
 TEVA_SCHED_V_ELIG_FLAG,
 PROFESSION_SHORT_DESC,
 TEVA_SPECIALTY_CODE,
 CERTIFICATION_CODE
)
AS
 SELECT c_bo_teva_sample_elig.ROWID_OBJECT,
        c_bo_teva_sample_elig.CREATOR,
        c_bo_teva_sample_elig.CREATE_DATE,
        c_bo_teva_sample_elig.UPDATED_BY,
        c_bo_teva_sample_elig.LAST_UPDATE_DATE,
        c_bo_teva_sample_elig.CONSOLIDATION_IND,
        c_bo_teva_sample_elig.DELETED_IND,
        c_bo_teva_sample_elig.DELETED_BY,
        c_bo_teva_sample_elig.DELETED_DATE,
        c_bo_teva_sample_elig.LAST_ROWID_SYSTEM,
        c_bo_teva_sample_elig.DIRTY_IND,
        c_bo_teva_sample_elig.INTERACTION_ID,
        c_bo_teva_sample_elig.HUB_STATE_IND,
        c_bo_teva_sample_elig.CM_DIRTY_IND,
        c_bo_teva_sample_elig.TVCMID,
        c_bo_teva_sample_elig.CERTIFICATION_DESC,
        c_bo_teva_sample_elig.SLN,
        c_bo_teva_sample_elig.SLN_STATE,
        c_bo_teva_sample_elig.SLN_EXPIRATION_DATE,
        c_bo_teva_sample_elig.SLN_STATUS_CODE,
        c_bo_teva_sample_elig.SLN_STATUS_DESC,
        c_bo_teva_sample_elig.TEVA_SAMPLE_ELIG_FLAG,
        c_bo_teva_sample_elig.TEVA_SCHED_IV_ELIG_FLAG,
        c_bo_teva_sample_elig.TEVA_SCHED_V_ELIG_FLAG,
        c_bo_teva_sample_elig.PROFESSION_SHORT_DESC,
        c_bo_teva_sample_elig.TEVA_SPECIALTY_CODE,
        c_bo_teva_sample_elig.CERTIFICATION_CODE
 FROM teva_staging.c_bo_teva_sample_elig
 ORDER BY c_bo_teva_sample_elig.ROWID_OBJECT,
          c_bo_teva_sample_elig.CREATOR,
          c_bo_teva_sample_elig.CREATE_DATE,
          c_bo_teva_sample_elig.UPDATED_BY,
          c_bo_teva_sample_elig.LAST_UPDATE_DATE,
          c_bo_teva_sample_elig.CONSOLIDATION_IND,
          c_bo_teva_sample_elig.DELETED_IND,
          c_bo_teva_sample_elig.DELETED_BY,
          c_bo_teva_sample_elig.DELETED_DATE,
          c_bo_teva_sample_elig.LAST_ROWID_SYSTEM,
          c_bo_teva_sample_elig.DIRTY_IND,
          c_bo_teva_sample_elig.INTERACTION_ID,
          c_bo_teva_sample_elig.HUB_STATE_IND,
          c_bo_teva_sample_elig.CM_DIRTY_IND,
          c_bo_teva_sample_elig.TVCMID,
          c_bo_teva_sample_elig.CERTIFICATION_DESC,
          c_bo_teva_sample_elig.SLN,
          c_bo_teva_sample_elig.SLN_STATE,
          c_bo_teva_sample_elig.SLN_EXPIRATION_DATE,
          c_bo_teva_sample_elig.SLN_STATUS_CODE,
          c_bo_teva_sample_elig.SLN_STATUS_DESC,
          c_bo_teva_sample_elig.TEVA_SAMPLE_ELIG_FLAG,
          c_bo_teva_sample_elig.TEVA_SCHED_IV_ELIG_FLAG,
          c_bo_teva_sample_elig.TEVA_SCHED_V_ELIG_FLAG,
          c_bo_teva_sample_elig.PROFESSION_SHORT_DESC,
          c_bo_teva_sample_elig.TEVA_SPECIALTY_CODE,
          c_bo_teva_sample_elig.CERTIFICATION_CODE
SEGMENTED BY hash(c_bo_teva_sample_elig.CREATE_DATE, c_bo_teva_sample_elig.LAST_UPDATE_DATE, c_bo_teva_sample_elig.CONSOLIDATION_IND, c_bo_teva_sample_elig.DELETED_IND, c_bo_teva_sample_elig.DELETED_DATE, c_bo_teva_sample_elig.DIRTY_IND, c_bo_teva_sample_elig.INTERACTION_ID, c_bo_teva_sample_elig.HUB_STATE_IND, c_bo_teva_sample_elig.CM_DIRTY_IND, c_bo_teva_sample_elig.SLN_STATE, c_bo_teva_sample_elig.SLN_EXPIRATION_DATE, c_bo_teva_sample_elig.SLN_STATUS_CODE, c_bo_teva_sample_elig.TEVA_SAMPLE_ELIG_FLAG, c_bo_teva_sample_elig.TEVA_SCHED_IV_ELIG_FLAG, c_bo_teva_sample_elig.TEVA_SCHED_V_ELIG_FLAG, c_bo_teva_sample_elig.PROFESSION_SHORT_DESC, c_bo_teva_sample_elig.TEVA_SPECIALTY_CODE, c_bo_teva_sample_elig.CERTIFICATION_CODE, c_bo_teva_sample_elig.ROWID_OBJECT, c_bo_teva_sample_elig.LAST_ROWID_SYSTEM, c_bo_teva_sample_elig.TVCMID, c_bo_teva_sample_elig.SLN, c_bo_teva_sample_elig.SLN_STATUS_DESC, c_bo_teva_sample_elig.CREATOR, c_bo_teva_sample_elig.UPDATED_BY, c_bo_teva_sample_elig.DELETED_BY, c_bo_teva_sample_elig.CERTIFICATION_DESC) ALL NODES;

CREATE PROJECTION teva_staging.jhc_cnt_b0 /*+basename(jhc_cnt),createtype(L)*/ 
(
 table_name,
 staging_cnt,
 ingestion_cnt
)
AS
 SELECT jhc_cnt.table_name,
        jhc_cnt.staging_cnt,
        jhc_cnt.ingestion_cnt
 FROM teva_staging.jhc_cnt
 ORDER BY jhc_cnt.table_name,
          jhc_cnt.staging_cnt,
          jhc_cnt.ingestion_cnt
SEGMENTED BY hash(jhc_cnt.staging_cnt, jhc_cnt.ingestion_cnt, jhc_cnt.table_name) ALL NODES;

CREATE PROJECTION teva_staging.ext_knipper_samples_shipped_b0 /*+basename(ext_knipper_samples_shipped),createtype(L)*/ 
(
 CLIENT_PRAC_ID,
 TERR_CODE,
 SAMPLE_PROD_CODE,
 SAMPLE_DATE,
 SAMPLE_QTY,
 REQUEST_DATE,
 REQUEST_QTY
)
AS
 SELECT ext_knipper_samples_shipped.CLIENT_PRAC_ID,
        ext_knipper_samples_shipped.TERR_CODE,
        ext_knipper_samples_shipped.SAMPLE_PROD_CODE,
        ext_knipper_samples_shipped.SAMPLE_DATE,
        ext_knipper_samples_shipped.SAMPLE_QTY,
        ext_knipper_samples_shipped.REQUEST_DATE,
        ext_knipper_samples_shipped.REQUEST_QTY
 FROM teva_staging.ext_knipper_samples_shipped
 ORDER BY ext_knipper_samples_shipped.CLIENT_PRAC_ID,
          ext_knipper_samples_shipped.TERR_CODE,
          ext_knipper_samples_shipped.SAMPLE_PROD_CODE,
          ext_knipper_samples_shipped.SAMPLE_DATE,
          ext_knipper_samples_shipped.SAMPLE_QTY,
          ext_knipper_samples_shipped.REQUEST_DATE,
          ext_knipper_samples_shipped.REQUEST_QTY
SEGMENTED BY hash(ext_knipper_samples_shipped.TERR_CODE, ext_knipper_samples_shipped.SAMPLE_DATE, ext_knipper_samples_shipped.REQUEST_DATE, ext_knipper_samples_shipped.SAMPLE_PROD_CODE, ext_knipper_samples_shipped.SAMPLE_QTY, ext_knipper_samples_shipped.REQUEST_QTY, ext_knipper_samples_shipped.CLIENT_PRAC_ID) ALL NODES;

CREATE PROJECTION teva_staging.C_BO_TEVA_FLAG_b0 /*+basename(C_BO_TEVA_FLAG),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 FLAG_TYPE,
 FLAG_VALUE,
 EFFECTIVE_DATE,
 HCP_DETAIL_ID
)
AS
 SELECT C_BO_TEVA_FLAG.ROWID_OBJECT,
        C_BO_TEVA_FLAG.CREATOR,
        C_BO_TEVA_FLAG.CREATE_DATE,
        C_BO_TEVA_FLAG.UPDATED_BY,
        C_BO_TEVA_FLAG.LAST_UPDATE_DATE,
        C_BO_TEVA_FLAG.CONSOLIDATION_IND,
        C_BO_TEVA_FLAG.DELETED_IND,
        C_BO_TEVA_FLAG.DELETED_BY,
        C_BO_TEVA_FLAG.DELETED_DATE,
        C_BO_TEVA_FLAG.LAST_ROWID_SYSTEM,
        C_BO_TEVA_FLAG.DIRTY_IND,
        C_BO_TEVA_FLAG.INTERACTION_ID,
        C_BO_TEVA_FLAG.HUB_STATE_IND,
        C_BO_TEVA_FLAG.CM_DIRTY_IND,
        C_BO_TEVA_FLAG.FLAG_TYPE,
        C_BO_TEVA_FLAG.FLAG_VALUE,
        C_BO_TEVA_FLAG.EFFECTIVE_DATE,
        C_BO_TEVA_FLAG.HCP_DETAIL_ID
 FROM teva_staging.C_BO_TEVA_FLAG
 ORDER BY C_BO_TEVA_FLAG.ROWID_OBJECT,
          C_BO_TEVA_FLAG.CREATOR,
          C_BO_TEVA_FLAG.CREATE_DATE,
          C_BO_TEVA_FLAG.UPDATED_BY,
          C_BO_TEVA_FLAG.LAST_UPDATE_DATE,
          C_BO_TEVA_FLAG.CONSOLIDATION_IND,
          C_BO_TEVA_FLAG.DELETED_IND,
          C_BO_TEVA_FLAG.DELETED_BY,
          C_BO_TEVA_FLAG.DELETED_DATE,
          C_BO_TEVA_FLAG.LAST_ROWID_SYSTEM,
          C_BO_TEVA_FLAG.DIRTY_IND,
          C_BO_TEVA_FLAG.INTERACTION_ID,
          C_BO_TEVA_FLAG.HUB_STATE_IND,
          C_BO_TEVA_FLAG.CM_DIRTY_IND,
          C_BO_TEVA_FLAG.FLAG_TYPE,
          C_BO_TEVA_FLAG.FLAG_VALUE,
          C_BO_TEVA_FLAG.EFFECTIVE_DATE,
          C_BO_TEVA_FLAG.HCP_DETAIL_ID
SEGMENTED BY hash(C_BO_TEVA_FLAG.CREATE_DATE, C_BO_TEVA_FLAG.LAST_UPDATE_DATE, C_BO_TEVA_FLAG.CONSOLIDATION_IND, C_BO_TEVA_FLAG.DELETED_IND, C_BO_TEVA_FLAG.DELETED_DATE, C_BO_TEVA_FLAG.DIRTY_IND, C_BO_TEVA_FLAG.INTERACTION_ID, C_BO_TEVA_FLAG.HUB_STATE_IND, C_BO_TEVA_FLAG.CM_DIRTY_IND, C_BO_TEVA_FLAG.EFFECTIVE_DATE, C_BO_TEVA_FLAG.FLAG_TYPE, C_BO_TEVA_FLAG.ROWID_OBJECT, C_BO_TEVA_FLAG.LAST_ROWID_SYSTEM, C_BO_TEVA_FLAG.HCP_DETAIL_ID, C_BO_TEVA_FLAG.CREATOR, C_BO_TEVA_FLAG.UPDATED_BY, C_BO_TEVA_FLAG.DELETED_BY, C_BO_TEVA_FLAG.FLAG_VALUE) ALL NODES;

CREATE PROJECTION teva_staging.XX_TERR_ID_CHANGE_V_b0 /*+basename(XX_TERR_ID_CHANGE_V),createtype(L)*/ 
(
 EE_NBR,
 EE_NAME,
 TERR_ID_FROM,
 TERR_ID_TO,
 TERR_MOVE_DT
)
AS
 SELECT XX_TERR_ID_CHANGE_V.EE_NBR,
        XX_TERR_ID_CHANGE_V.EE_NAME,
        XX_TERR_ID_CHANGE_V.TERR_ID_FROM,
        XX_TERR_ID_CHANGE_V.TERR_ID_TO,
        XX_TERR_ID_CHANGE_V.TERR_MOVE_DT
 FROM teva_staging.XX_TERR_ID_CHANGE_V
 ORDER BY XX_TERR_ID_CHANGE_V.EE_NBR,
          XX_TERR_ID_CHANGE_V.EE_NAME,
          XX_TERR_ID_CHANGE_V.TERR_ID_FROM,
          XX_TERR_ID_CHANGE_V.TERR_ID_TO,
          XX_TERR_ID_CHANGE_V.TERR_MOVE_DT
SEGMENTED BY hash(XX_TERR_ID_CHANGE_V.TERR_ID_FROM, XX_TERR_ID_CHANGE_V.TERR_ID_TO, XX_TERR_ID_CHANGE_V.TERR_MOVE_DT, XX_TERR_ID_CHANGE_V.EE_NBR, XX_TERR_ID_CHANGE_V.EE_NAME) ALL NODES;

CREATE PROJECTION teva_staging.ext_anda_sales_b0 /*+basename(ext_anda_sales),createtype(A)*/ 
(
 TRANSACTION_ID,
 INVOICE_DATE,
 PRODUCT_BRAND,
 PRODUCT_NDC,
 PRODUCT_DESC,
 INVOICE_QTY,
 INVOICE_UNITS,
 INVOICE_COST,
 INVOICE_PACK_COST,
 INVOICE_UNIT_COST,
 CONTRACT_PACK_COST,
 CONTRACT_PURCHASES,
 CONTRACT_NUMBER,
 DISPENSING_LOCATION,
 DL_ADDRESS_1,
 DL_ADDRESS_2,
 DL_CITY,
 DL_STATE,
 DL_ZIP,
 DL_DEA_NUM,
 DEPOT_LOCATION,
 DEP_ADDRESS_1,
 DEP_ADDRESS_2,
 DEP_CITY,
 DEP_STATE,
 DEP_ZIP,
 DEP_DEA_NUM
)
AS
 SELECT ext_anda_sales.TRANSACTION_ID,
        ext_anda_sales.INVOICE_DATE,
        ext_anda_sales.PRODUCT_BRAND,
        ext_anda_sales.PRODUCT_NDC,
        ext_anda_sales.PRODUCT_DESC,
        ext_anda_sales.INVOICE_QTY,
        ext_anda_sales.INVOICE_UNITS,
        ext_anda_sales.INVOICE_COST,
        ext_anda_sales.INVOICE_PACK_COST,
        ext_anda_sales.INVOICE_UNIT_COST,
        ext_anda_sales.CONTRACT_PACK_COST,
        ext_anda_sales.CONTRACT_PURCHASES,
        ext_anda_sales.CONTRACT_NUMBER,
        ext_anda_sales.DISPENSING_LOCATION,
        ext_anda_sales.DL_ADDRESS_1,
        ext_anda_sales.DL_ADDRESS_2,
        ext_anda_sales.DL_CITY,
        ext_anda_sales.DL_STATE,
        ext_anda_sales.DL_ZIP,
        ext_anda_sales.DL_DEA_NUM,
        ext_anda_sales.DEPOT_LOCATION,
        ext_anda_sales.DEP_ADDRESS_1,
        ext_anda_sales.DEP_ADDRESS_2,
        ext_anda_sales.DEP_CITY,
        ext_anda_sales.DEP_STATE,
        ext_anda_sales.DEP_ZIP,
        ext_anda_sales.DEP_DEA_NUM
 FROM teva_staging.ext_anda_sales
 ORDER BY ext_anda_sales.TRANSACTION_ID,
          ext_anda_sales.INVOICE_DATE,
          ext_anda_sales.PRODUCT_BRAND,
          ext_anda_sales.PRODUCT_NDC,
          ext_anda_sales.PRODUCT_DESC,
          ext_anda_sales.INVOICE_QTY,
          ext_anda_sales.INVOICE_UNITS,
          ext_anda_sales.INVOICE_COST,
          ext_anda_sales.INVOICE_PACK_COST,
          ext_anda_sales.INVOICE_UNIT_COST,
          ext_anda_sales.CONTRACT_PACK_COST,
          ext_anda_sales.CONTRACT_PURCHASES,
          ext_anda_sales.CONTRACT_NUMBER,
          ext_anda_sales.DISPENSING_LOCATION,
          ext_anda_sales.DL_ADDRESS_1,
          ext_anda_sales.DL_ADDRESS_2,
          ext_anda_sales.DL_CITY,
          ext_anda_sales.DL_STATE,
          ext_anda_sales.DL_ZIP,
          ext_anda_sales.DL_DEA_NUM,
          ext_anda_sales.DEPOT_LOCATION,
          ext_anda_sales.DEP_ADDRESS_1,
          ext_anda_sales.DEP_ADDRESS_2,
          ext_anda_sales.DEP_CITY,
          ext_anda_sales.DEP_STATE,
          ext_anda_sales.DEP_ZIP,
          ext_anda_sales.DEP_DEA_NUM
SEGMENTED BY hash(ext_anda_sales.DL_STATE, ext_anda_sales.DL_ZIP, ext_anda_sales.DEP_STATE, ext_anda_sales.DEP_ZIP, ext_anda_sales.INVOICE_DATE, ext_anda_sales.INVOICE_QTY, ext_anda_sales.INVOICE_UNITS, ext_anda_sales.INVOICE_COST, ext_anda_sales.INVOICE_PACK_COST, ext_anda_sales.INVOICE_UNIT_COST, ext_anda_sales.CONTRACT_PACK_COST, ext_anda_sales.CONTRACT_PURCHASES, ext_anda_sales.PRODUCT_NDC, ext_anda_sales.DL_DEA_NUM, ext_anda_sales.DEP_DEA_NUM, ext_anda_sales.PRODUCT_BRAND, ext_anda_sales.DL_CITY, ext_anda_sales.DEP_CITY, ext_anda_sales.TRANSACTION_ID, ext_anda_sales.PRODUCT_DESC, ext_anda_sales.CONTRACT_NUMBER, ext_anda_sales.DISPENSING_LOCATION, ext_anda_sales.DL_ADDRESS_1, ext_anda_sales.DL_ADDRESS_2, ext_anda_sales.DEPOT_LOCATION, ext_anda_sales.DEP_ADDRESS_1, ext_anda_sales.DEP_ADDRESS_2) ALL NODES;

CREATE PROJECTION teva_staging.ext_tw_biologics_sales_b0 /*+basename(ext_tw_biologics_sales),createtype(A)*/ 
(
 MRN,
 ORDER_NO,
 REFERRAL_DATE,
 REFERRAL_SOURCE,
 REFERRAL_METHOD,
 REFERRAL_TYPE,
 PATIENT_AUTH,
 STATUS,
 PLACEMENT_DATE,
 BILLING_METHOD,
 ICD_9,
 PHY_FIRST_NAME,
 PHY_LAST_NAME,
 PRACTICE_NAME,
 NPI,
 TAX_ID,
 PHY_NETWORK_STATUS,
 PHY_STREET,
 PHY_CITY,
 PHY_STATE,
 PHY_ZIP,
 PHY_PHONE,
 PHY_FAX,
 PAYOR,
 PAYOR_TYPE,
 PAYOR_PHONE,
 PAYOR_CONTACT,
 PAYOR_REFERENCE,
 BENEFIT_TYPE,
 PAYOR_RANK,
 EFFECTIVE_DATE,
 DEDUCTIBLE,
 DEDUCTIBLE_MET,
 AMOUNT_MET,
 OOP_MAX,
 OOP_MET,
 LIFETIME_MAX,
 ANNUAL_BENEFIT_CAP,
 LIMITATIONS_RESTRICTIONS,
 ASSIGNMENT_ALLOWED,
 CO_INSURANCE,
 COPAY,
 OFFICE_VISIT_COPAY,
 FOLLOW_UP_COVERAGE,
 FOLLOW_UP_COPAY,
 J7300_COVERAGE_STATUS,
 J7300_COVERAGE_TYPE,
 "58300_COVERAGE_STATUS",
 "58300_COVERAGE_TYPE",
 PA_REQUIRED,
 PA_TYPE,
 PA_CONTACT,
 PA_PHONE,
 PA_FAX,
 PA_TAT,
 J7300_REIMBURSEMENT,
 "58300_INSERTION",
 PBM,
 PBM_PHONE,
 PREFERRED_PHARMACY,
 PHARMACY_PHONE,
 PHARMACY_FAX,
 SP_COPAY,
 SP_NAME,
 TRIAGE_DATE,
 INVOICE_NUMBER,
 SP_SHIP_DATE,
 SHIP_TO_NAME,
 SHIP_TO_ADDRESS_1,
 SHIP_TO_ADDRESS_2,
 SHIP_TO_CITY,
 SHIP_TO_STATE,
 SHIP_TO_ZIP,
 CALL_DATE_1,
 PT_REACHED_1,
 WHO_WAS_REACHED_1,
 CALL_DATE_2,
 PT_REACHED_2,
 WHO_WAS_REACHED_2,
 CALL_DATE_3,
 PT_REACHED_3,
 WHO_WAS_REACHED_3,
 KEEPING_APPT,
 ALTERNATE_METHOD,
 ADDITIONAL_QUESTIONS,
 TRANSFERRED,
 TRANSFER_DESTINATION,
 DISCHARGE_REASON
)
AS
 SELECT ext_tw_biologics_sales.MRN,
        ext_tw_biologics_sales.ORDER_NO,
        ext_tw_biologics_sales.REFERRAL_DATE,
        ext_tw_biologics_sales.REFERRAL_SOURCE,
        ext_tw_biologics_sales.REFERRAL_METHOD,
        ext_tw_biologics_sales.REFERRAL_TYPE,
        ext_tw_biologics_sales.PATIENT_AUTH,
        ext_tw_biologics_sales.STATUS,
        ext_tw_biologics_sales.PLACEMENT_DATE,
        ext_tw_biologics_sales.BILLING_METHOD,
        ext_tw_biologics_sales.ICD_9,
        ext_tw_biologics_sales.PHY_FIRST_NAME,
        ext_tw_biologics_sales.PHY_LAST_NAME,
        ext_tw_biologics_sales.PRACTICE_NAME,
        ext_tw_biologics_sales.NPI,
        ext_tw_biologics_sales.TAX_ID,
        ext_tw_biologics_sales.PHY_NETWORK_STATUS,
        ext_tw_biologics_sales.PHY_STREET,
        ext_tw_biologics_sales.PHY_CITY,
        ext_tw_biologics_sales.PHY_STATE,
        ext_tw_biologics_sales.PHY_ZIP,
        ext_tw_biologics_sales.PHY_PHONE,
        ext_tw_biologics_sales.PHY_FAX,
        ext_tw_biologics_sales.PAYOR,
        ext_tw_biologics_sales.PAYOR_TYPE,
        ext_tw_biologics_sales.PAYOR_PHONE,
        ext_tw_biologics_sales.PAYOR_CONTACT,
        ext_tw_biologics_sales.PAYOR_REFERENCE,
        ext_tw_biologics_sales.BENEFIT_TYPE,
        ext_tw_biologics_sales.PAYOR_RANK,
        ext_tw_biologics_sales.EFFECTIVE_DATE,
        ext_tw_biologics_sales.DEDUCTIBLE,
        ext_tw_biologics_sales.DEDUCTIBLE_MET,
        ext_tw_biologics_sales.AMOUNT_MET,
        ext_tw_biologics_sales.OOP_MAX,
        ext_tw_biologics_sales.OOP_MET,
        ext_tw_biologics_sales.LIFETIME_MAX,
        ext_tw_biologics_sales.ANNUAL_BENEFIT_CAP,
        ext_tw_biologics_sales.LIMITATIONS_RESTRICTIONS,
        ext_tw_biologics_sales.ASSIGNMENT_ALLOWED,
        ext_tw_biologics_sales.CO_INSURANCE,
        ext_tw_biologics_sales.COPAY,
        ext_tw_biologics_sales.OFFICE_VISIT_COPAY,
        ext_tw_biologics_sales.FOLLOW_UP_COVERAGE,
        ext_tw_biologics_sales.FOLLOW_UP_COPAY,
        ext_tw_biologics_sales.J7300_COVERAGE_STATUS,
        ext_tw_biologics_sales.J7300_COVERAGE_TYPE,
        ext_tw_biologics_sales."58300_COVERAGE_STATUS",
        ext_tw_biologics_sales."58300_COVERAGE_TYPE",
        ext_tw_biologics_sales.PA_REQUIRED,
        ext_tw_biologics_sales.PA_TYPE,
        ext_tw_biologics_sales.PA_CONTACT,
        ext_tw_biologics_sales.PA_PHONE,
        ext_tw_biologics_sales.PA_FAX,
        ext_tw_biologics_sales.PA_TAT,
        ext_tw_biologics_sales.J7300_REIMBURSEMENT,
        ext_tw_biologics_sales."58300_INSERTION",
        ext_tw_biologics_sales.PBM,
        ext_tw_biologics_sales.PBM_PHONE,
        ext_tw_biologics_sales.PREFERRED_PHARMACY,
        ext_tw_biologics_sales.PHARMACY_PHONE,
        ext_tw_biologics_sales.PHARMACY_FAX,
        ext_tw_biologics_sales.SP_COPAY,
        ext_tw_biologics_sales.SP_NAME,
        ext_tw_biologics_sales.TRIAGE_DATE,
        ext_tw_biologics_sales.INVOICE_NUMBER,
        ext_tw_biologics_sales.SP_SHIP_DATE,
        ext_tw_biologics_sales.SHIP_TO_NAME,
        ext_tw_biologics_sales.SHIP_TO_ADDRESS_1,
        ext_tw_biologics_sales.SHIP_TO_ADDRESS_2,
        ext_tw_biologics_sales.SHIP_TO_CITY,
        ext_tw_biologics_sales.SHIP_TO_STATE,
        ext_tw_biologics_sales.SHIP_TO_ZIP,
        ext_tw_biologics_sales.CALL_DATE_1,
        ext_tw_biologics_sales.PT_REACHED_1,
        ext_tw_biologics_sales.WHO_WAS_REACHED_1,
        ext_tw_biologics_sales.CALL_DATE_2,
        ext_tw_biologics_sales.PT_REACHED_2,
        ext_tw_biologics_sales.WHO_WAS_REACHED_2,
        ext_tw_biologics_sales.CALL_DATE_3,
        ext_tw_biologics_sales.PT_REACHED_3,
        ext_tw_biologics_sales.WHO_WAS_REACHED_3,
        ext_tw_biologics_sales.KEEPING_APPT,
        ext_tw_biologics_sales.ALTERNATE_METHOD,
        ext_tw_biologics_sales.ADDITIONAL_QUESTIONS,
        ext_tw_biologics_sales.TRANSFERRED,
        ext_tw_biologics_sales.TRANSFER_DESTINATION,
        ext_tw_biologics_sales.DISCHARGE_REASON
 FROM teva_staging.ext_tw_biologics_sales
 ORDER BY ext_tw_biologics_sales.MRN,
          ext_tw_biologics_sales.ORDER_NO,
          ext_tw_biologics_sales.REFERRAL_DATE,
          ext_tw_biologics_sales.REFERRAL_SOURCE,
          ext_tw_biologics_sales.REFERRAL_METHOD,
          ext_tw_biologics_sales.REFERRAL_TYPE,
          ext_tw_biologics_sales.PATIENT_AUTH,
          ext_tw_biologics_sales.STATUS,
          ext_tw_biologics_sales.PLACEMENT_DATE,
          ext_tw_biologics_sales.BILLING_METHOD,
          ext_tw_biologics_sales.ICD_9,
          ext_tw_biologics_sales.PHY_FIRST_NAME,
          ext_tw_biologics_sales.PHY_LAST_NAME,
          ext_tw_biologics_sales.PRACTICE_NAME,
          ext_tw_biologics_sales.NPI,
          ext_tw_biologics_sales.TAX_ID,
          ext_tw_biologics_sales.PHY_NETWORK_STATUS,
          ext_tw_biologics_sales.PHY_STREET,
          ext_tw_biologics_sales.PHY_CITY,
          ext_tw_biologics_sales.PHY_STATE,
          ext_tw_biologics_sales.PHY_ZIP,
          ext_tw_biologics_sales.PHY_PHONE,
          ext_tw_biologics_sales.PHY_FAX,
          ext_tw_biologics_sales.PAYOR,
          ext_tw_biologics_sales.PAYOR_TYPE,
          ext_tw_biologics_sales.PAYOR_PHONE,
          ext_tw_biologics_sales.PAYOR_CONTACT,
          ext_tw_biologics_sales.PAYOR_REFERENCE,
          ext_tw_biologics_sales.BENEFIT_TYPE,
          ext_tw_biologics_sales.PAYOR_RANK,
          ext_tw_biologics_sales.EFFECTIVE_DATE,
          ext_tw_biologics_sales.DEDUCTIBLE,
          ext_tw_biologics_sales.DEDUCTIBLE_MET,
          ext_tw_biologics_sales.AMOUNT_MET,
          ext_tw_biologics_sales.OOP_MAX,
          ext_tw_biologics_sales.OOP_MET,
          ext_tw_biologics_sales.LIFETIME_MAX,
          ext_tw_biologics_sales.ANNUAL_BENEFIT_CAP,
          ext_tw_biologics_sales.LIMITATIONS_RESTRICTIONS,
          ext_tw_biologics_sales.ASSIGNMENT_ALLOWED,
          ext_tw_biologics_sales.CO_INSURANCE,
          ext_tw_biologics_sales.COPAY,
          ext_tw_biologics_sales.OFFICE_VISIT_COPAY,
          ext_tw_biologics_sales.FOLLOW_UP_COVERAGE,
          ext_tw_biologics_sales.FOLLOW_UP_COPAY,
          ext_tw_biologics_sales.J7300_COVERAGE_STATUS,
          ext_tw_biologics_sales.J7300_COVERAGE_TYPE,
          ext_tw_biologics_sales."58300_COVERAGE_STATUS",
          ext_tw_biologics_sales."58300_COVERAGE_TYPE",
          ext_tw_biologics_sales.PA_REQUIRED,
          ext_tw_biologics_sales.PA_TYPE,
          ext_tw_biologics_sales.PA_CONTACT,
          ext_tw_biologics_sales.PA_PHONE,
          ext_tw_biologics_sales.PA_FAX,
          ext_tw_biologics_sales.PA_TAT,
          ext_tw_biologics_sales.J7300_REIMBURSEMENT,
          ext_tw_biologics_sales."58300_INSERTION",
          ext_tw_biologics_sales.PBM,
          ext_tw_biologics_sales.PBM_PHONE,
          ext_tw_biologics_sales.PREFERRED_PHARMACY,
          ext_tw_biologics_sales.PHARMACY_PHONE,
          ext_tw_biologics_sales.PHARMACY_FAX,
          ext_tw_biologics_sales.SP_COPAY,
          ext_tw_biologics_sales.SP_NAME,
          ext_tw_biologics_sales.TRIAGE_DATE,
          ext_tw_biologics_sales.INVOICE_NUMBER,
          ext_tw_biologics_sales.SP_SHIP_DATE,
          ext_tw_biologics_sales.SHIP_TO_NAME,
          ext_tw_biologics_sales.SHIP_TO_ADDRESS_1,
          ext_tw_biologics_sales.SHIP_TO_ADDRESS_2,
          ext_tw_biologics_sales.SHIP_TO_CITY,
          ext_tw_biologics_sales.SHIP_TO_STATE,
          ext_tw_biologics_sales.SHIP_TO_ZIP,
          ext_tw_biologics_sales.CALL_DATE_1,
          ext_tw_biologics_sales.PT_REACHED_1,
          ext_tw_biologics_sales.WHO_WAS_REACHED_1,
          ext_tw_biologics_sales.CALL_DATE_2,
          ext_tw_biologics_sales.PT_REACHED_2,
          ext_tw_biologics_sales.WHO_WAS_REACHED_2,
          ext_tw_biologics_sales.CALL_DATE_3,
          ext_tw_biologics_sales.PT_REACHED_3,
          ext_tw_biologics_sales.WHO_WAS_REACHED_3,
          ext_tw_biologics_sales.KEEPING_APPT,
          ext_tw_biologics_sales.ALTERNATE_METHOD,
          ext_tw_biologics_sales.ADDITIONAL_QUESTIONS,
          ext_tw_biologics_sales.TRANSFERRED,
          ext_tw_biologics_sales.TRANSFER_DESTINATION,
          ext_tw_biologics_sales.DISCHARGE_REASON
SEGMENTED BY hash(ext_tw_biologics_sales.PHY_STATE, ext_tw_biologics_sales.SHIP_TO_STATE, ext_tw_biologics_sales.PATIENT_AUTH, ext_tw_biologics_sales.ICD_9, ext_tw_biologics_sales.PHY_ZIP, ext_tw_biologics_sales.DEDUCTIBLE_MET, ext_tw_biologics_sales.OOP_MET, ext_tw_biologics_sales.LIFETIME_MAX, ext_tw_biologics_sales.ANNUAL_BENEFIT_CAP, ext_tw_biologics_sales.LIMITATIONS_RESTRICTIONS, ext_tw_biologics_sales.ASSIGNMENT_ALLOWED, ext_tw_biologics_sales.PA_REQUIRED, ext_tw_biologics_sales.SHIP_TO_ZIP, ext_tw_biologics_sales.PT_REACHED_1, ext_tw_biologics_sales.PT_REACHED_2, ext_tw_biologics_sales.PT_REACHED_3, ext_tw_biologics_sales.KEEPING_APPT, ext_tw_biologics_sales.ADDITIONAL_QUESTIONS, ext_tw_biologics_sales.TRANSFERRED, ext_tw_biologics_sales.MRN, ext_tw_biologics_sales.ORDER_NO, ext_tw_biologics_sales.REFERRAL_DATE, ext_tw_biologics_sales.PLACEMENT_DATE, ext_tw_biologics_sales.NPI, ext_tw_biologics_sales.TAX_ID, ext_tw_biologics_sales.PHY_PHONE, ext_tw_biologics_sales.PHY_FAX, ext_tw_biologics_sales.PAYOR_PHONE, ext_tw_biologics_sales.PAYOR_RANK, ext_tw_biologics_sales.EFFECTIVE_DATE, ext_tw_biologics_sales.DEDUCTIBLE, ext_tw_biologics_sales.AMOUNT_MET) ALL NODES;

CREATE PROJECTION teva_staging.EXT_DRM45_PRODUCT_WITH_NDC_b0 /*+basename(EXT_DRM45_PRODUCT_WITH_NDC),createtype(L)*/ 
(
 IMS_CLIENT_NUM,
 IMS_REPORT_NUM,
 IMS_PRODUCT_GROUP_NUM,
 MFG_NUM,
 MFG_SUFFIX,
 CMF,
 STATUS,
 PRODUCT_DESCRIPTION,
 MFG_NAME,
 ACTIVITY_DATE,
 USC,
 NDC
)
AS
 SELECT EXT_DRM45_PRODUCT_WITH_NDC.IMS_CLIENT_NUM,
        EXT_DRM45_PRODUCT_WITH_NDC.IMS_REPORT_NUM,
        EXT_DRM45_PRODUCT_WITH_NDC.IMS_PRODUCT_GROUP_NUM,
        EXT_DRM45_PRODUCT_WITH_NDC.MFG_NUM,
        EXT_DRM45_PRODUCT_WITH_NDC.MFG_SUFFIX,
        EXT_DRM45_PRODUCT_WITH_NDC.CMF,
        EXT_DRM45_PRODUCT_WITH_NDC.STATUS,
        EXT_DRM45_PRODUCT_WITH_NDC.PRODUCT_DESCRIPTION,
        EXT_DRM45_PRODUCT_WITH_NDC.MFG_NAME,
        EXT_DRM45_PRODUCT_WITH_NDC.ACTIVITY_DATE,
        EXT_DRM45_PRODUCT_WITH_NDC.USC,
        EXT_DRM45_PRODUCT_WITH_NDC.NDC
 FROM teva_staging.EXT_DRM45_PRODUCT_WITH_NDC
 ORDER BY EXT_DRM45_PRODUCT_WITH_NDC.IMS_CLIENT_NUM,
          EXT_DRM45_PRODUCT_WITH_NDC.IMS_REPORT_NUM,
          EXT_DRM45_PRODUCT_WITH_NDC.IMS_PRODUCT_GROUP_NUM,
          EXT_DRM45_PRODUCT_WITH_NDC.MFG_NUM,
          EXT_DRM45_PRODUCT_WITH_NDC.MFG_SUFFIX,
          EXT_DRM45_PRODUCT_WITH_NDC.CMF,
          EXT_DRM45_PRODUCT_WITH_NDC.STATUS,
          EXT_DRM45_PRODUCT_WITH_NDC.PRODUCT_DESCRIPTION,
          EXT_DRM45_PRODUCT_WITH_NDC.MFG_NAME,
          EXT_DRM45_PRODUCT_WITH_NDC.ACTIVITY_DATE,
          EXT_DRM45_PRODUCT_WITH_NDC.USC,
          EXT_DRM45_PRODUCT_WITH_NDC.NDC
SEGMENTED BY hash(EXT_DRM45_PRODUCT_WITH_NDC.IMS_CLIENT_NUM, EXT_DRM45_PRODUCT_WITH_NDC.IMS_REPORT_NUM, EXT_DRM45_PRODUCT_WITH_NDC.IMS_PRODUCT_GROUP_NUM, EXT_DRM45_PRODUCT_WITH_NDC.MFG_NUM, EXT_DRM45_PRODUCT_WITH_NDC.MFG_SUFFIX, EXT_DRM45_PRODUCT_WITH_NDC.STATUS, EXT_DRM45_PRODUCT_WITH_NDC.ACTIVITY_DATE, EXT_DRM45_PRODUCT_WITH_NDC.USC, EXT_DRM45_PRODUCT_WITH_NDC.CMF, EXT_DRM45_PRODUCT_WITH_NDC.NDC, EXT_DRM45_PRODUCT_WITH_NDC.MFG_NAME, EXT_DRM45_PRODUCT_WITH_NDC.PRODUCT_DESCRIPTION) ALL NODES;

CREATE PROJECTION teva_staging.addresses_b0 /*+basename(addresses),createtype(L)*/ 
(
 ADDR_ID,
 LINE_1,
 LINE_2,
 LINE_3,
 CITY,
 ST_ABBR,
 POSTAL_CD,
 CNTRY_ISO_ABBR,
 CRT_USER,
 CRT_DT,
 UPD_USER,
 UPD_DT
)
AS
 SELECT addresses.ADDR_ID,
        addresses.LINE_1,
        addresses.LINE_2,
        addresses.LINE_3,
        addresses.CITY,
        addresses.ST_ABBR,
        addresses.POSTAL_CD,
        addresses.CNTRY_ISO_ABBR,
        addresses.CRT_USER,
        addresses.CRT_DT,
        addresses.UPD_USER,
        addresses.UPD_DT
 FROM teva_staging.addresses
 ORDER BY addresses.ADDR_ID,
          addresses.LINE_1,
          addresses.LINE_2,
          addresses.LINE_3,
          addresses.CITY,
          addresses.ST_ABBR,
          addresses.POSTAL_CD,
          addresses.CNTRY_ISO_ABBR,
          addresses.CRT_USER,
          addresses.CRT_DT,
          addresses.UPD_USER,
          addresses.UPD_DT
SEGMENTED BY hash(addresses.ST_ABBR, addresses.CNTRY_ISO_ABBR, addresses.CRT_DT, addresses.UPD_DT, addresses.POSTAL_CD, addresses.ADDR_ID, addresses.CRT_USER, addresses.UPD_USER, addresses.LINE_1, addresses.LINE_2, addresses.LINE_3, addresses.CITY) ALL NODES;

CREATE PROJECTION teva_staging.associates_b0 /*+basename(associates),createtype(L)*/ 
(
 TEVA_ID,
 HR_ID,
 CRT_USER,
 CRT_DT,
 UPD_USER,
 UPD_DT,
 HIRE_DT,
 LOGON_ID,
 REPORTS_TO,
 STAT_CD,
 TYPE_CD,
 FULL_TIME,
 EEO_CAT,
 EXEMPT,
 EXPENSE_COST_CTR,
 HRS_PER_WK,
 MARITAL_STAT,
 RACE,
 SSN,
 EMAIL,
 BIRTH_DT,
 COUNTRY_ID,
 DFLT_CURR_ID,
 TERR_ID,
 OFFICE,
 PRSN_SYS_ID,
 LANGUAGE,
 "POSITION",
 TERM_DT,
 LAST_WRK_DT,
 AUTH_LIMIT,
 VEHICLE,
 VACATION_DAYS,
 CHK_REQ_LIMIT,
 EXPENSE_REPORT_APPROVER,
 LOC_CD,
 PAY_CD,
 ED_CD,
 ED_CD_DT,
 JOB_CD,
 CNTRY_CITIZENSHIP,
 DISABLED,
 VIETNAM_VET,
 EMERGENCY_CONTACT_NAME,
 EMERGENCY_CONTACT_RELATIONSHIP,
 EMERGENCY_CONTACT_PHONE,
 ADP_DEPT_NUM,
 VACATION_YR,
 FIN_AUTH_COMMENTS,
 EEO_CAT_HR_UPDT,
 EXPENSE_REPORTING,
 COMPANY_ID,
 CHECK_REQUEST_APPROVER,
 INVOICE_APPROVER,
 PHANTOM_IND,
 PAYROLL_COST_CTR,
 SAMPLE_AUTH,
 ORACLE_STRING
)
AS
 SELECT associates.TEVA_ID,
        associates.HR_ID,
        associates.CRT_USER,
        associates.CRT_DT,
        associates.UPD_USER,
        associates.UPD_DT,
        associates.HIRE_DT,
        associates.LOGON_ID,
        associates.REPORTS_TO,
        associates.STAT_CD,
        associates.TYPE_CD,
        associates.FULL_TIME,
        associates.EEO_CAT,
        associates.EXEMPT,
        associates.EXPENSE_COST_CTR,
        associates.HRS_PER_WK,
        associates.MARITAL_STAT,
        associates.RACE,
        associates.SSN,
        associates.EMAIL,
        associates.BIRTH_DT,
        associates.COUNTRY_ID,
        associates.DFLT_CURR_ID,
        associates.TERR_ID,
        associates.OFFICE,
        associates.PRSN_SYS_ID,
        associates.LANGUAGE,
        associates."POSITION",
        associates.TERM_DT,
        associates.LAST_WRK_DT,
        associates.AUTH_LIMIT,
        associates.VEHICLE,
        associates.VACATION_DAYS,
        associates.CHK_REQ_LIMIT,
        associates.EXPENSE_REPORT_APPROVER,
        associates.LOC_CD,
        associates.PAY_CD,
        associates.ED_CD,
        associates.ED_CD_DT,
        associates.JOB_CD,
        associates.CNTRY_CITIZENSHIP,
        associates.DISABLED,
        associates.VIETNAM_VET,
        associates.EMERGENCY_CONTACT_NAME,
        associates.EMERGENCY_CONTACT_RELATIONSHIP,
        associates.EMERGENCY_CONTACT_PHONE,
        associates.ADP_DEPT_NUM,
        associates.VACATION_YR,
        associates.FIN_AUTH_COMMENTS,
        associates.EEO_CAT_HR_UPDT,
        associates.EXPENSE_REPORTING,
        associates.COMPANY_ID,
        associates.CHECK_REQUEST_APPROVER,
        associates.INVOICE_APPROVER,
        associates.PHANTOM_IND,
        associates.PAYROLL_COST_CTR,
        associates.SAMPLE_AUTH,
        associates.ORACLE_STRING
 FROM teva_staging.associates
 ORDER BY associates.TEVA_ID,
          associates.HR_ID,
          associates.CRT_USER,
          associates.CRT_DT,
          associates.UPD_USER,
          associates.UPD_DT,
          associates.HIRE_DT,
          associates.LOGON_ID,
          associates.REPORTS_TO,
          associates.STAT_CD,
          associates.TYPE_CD,
          associates.FULL_TIME,
          associates.EEO_CAT,
          associates.EXEMPT,
          associates.EXPENSE_COST_CTR,
          associates.HRS_PER_WK,
          associates.MARITAL_STAT,
          associates.RACE,
          associates.SSN,
          associates.EMAIL,
          associates.BIRTH_DT,
          associates.COUNTRY_ID,
          associates.DFLT_CURR_ID,
          associates.TERR_ID,
          associates.OFFICE,
          associates.PRSN_SYS_ID,
          associates.LANGUAGE,
          associates."POSITION",
          associates.TERM_DT,
          associates.LAST_WRK_DT,
          associates.AUTH_LIMIT,
          associates.VEHICLE,
          associates.VACATION_DAYS,
          associates.CHK_REQ_LIMIT,
          associates.EXPENSE_REPORT_APPROVER,
          associates.LOC_CD,
          associates.PAY_CD,
          associates.ED_CD,
          associates.ED_CD_DT,
          associates.JOB_CD,
          associates.CNTRY_CITIZENSHIP,
          associates.DISABLED,
          associates.VIETNAM_VET,
          associates.EMERGENCY_CONTACT_NAME,
          associates.EMERGENCY_CONTACT_RELATIONSHIP,
          associates.EMERGENCY_CONTACT_PHONE,
          associates.ADP_DEPT_NUM,
          associates.VACATION_YR,
          associates.FIN_AUTH_COMMENTS,
          associates.EEO_CAT_HR_UPDT,
          associates.EXPENSE_REPORTING,
          associates.COMPANY_ID,
          associates.CHECK_REQUEST_APPROVER,
          associates.INVOICE_APPROVER,
          associates.PHANTOM_IND,
          associates.PAYROLL_COST_CTR,
          associates.SAMPLE_AUTH,
          associates.ORACLE_STRING
SEGMENTED BY hash(associates.TEVA_ID, associates.CRT_DT, associates.UPD_DT, associates.HIRE_DT, associates.REPORTS_TO, associates.STAT_CD, associates.TYPE_CD, associates.FULL_TIME, associates.EXEMPT, associates.HRS_PER_WK, associates.MARITAL_STAT, associates.BIRTH_DT, associates.COUNTRY_ID, associates.OFFICE, associates.LANGUAGE, associates.TERM_DT, associates.LAST_WRK_DT, associates.AUTH_LIMIT, associates.VACATION_DAYS, associates.CHK_REQ_LIMIT, associates.EXPENSE_REPORT_APPROVER, associates.PAY_CD, associates.ED_CD, associates.ED_CD_DT, associates.JOB_CD, associates.CNTRY_CITIZENSHIP, associates.DISABLED, associates.VIETNAM_VET, associates.VACATION_YR, associates.EXPENSE_REPORTING, associates.CHECK_REQUEST_APPROVER, associates.INVOICE_APPROVER) ALL NODES;

CREATE PROJECTION teva_staging.aud_associates_b0 /*+basename(aud_associates),createtype(L)*/ 
(
 TEVA_ID,
 HR_ID,
 CRT_USER,
 CRT_DT,
 UPD_USER,
 UPD_DT,
 HIRE_DT,
 LOGON_ID,
 REPORTS_TO,
 STAT_CD,
 TYPE_CD,
 FULL_TIME,
 EEO_CAT,
 EXEMPT,
 EXPENSE_COST_CTR,
 HRS_PER_WK,
 MARITAL_STAT,
 RACE,
 SSN,
 EMAIL,
 BIRTH_DT,
 COUNTRY_ID,
 DFLT_CURR_ID,
 TERR_ID,
 OFFICE,
 PRSN_SYS_ID,
 LANGUAGE,
 "POSITION",
 TERM_DT,
 LAST_WRK_DT,
 AUTH_LIMIT,
 VEHICLE,
 VACATION_DAYS,
 "TIMESTAMP",
 ACTION,
 CHK_REQ_LIMIT,
 EXPENSE_REPORT_APPROVER,
 LOC_CD,
 PAY_CD,
 ED_CD,
 ED_CD_DT,
 JOB_CD,
 CNTRY_CITIZENSHIP,
 DISABLED,
 VIETNAM_VET,
 EMERGENCY_CONTACT_NAME,
 EMERGENCY_CONTACT_RELATIONSHIP,
 EMERGENCY_CONTACT_PHONE,
 ADP_DEPT_NUM,
 EEO_CAT_HR_UPDT,
 COMPANY_ID,
 EXPENSE_REPORTING,
 PHANTOM_IND,
 CHECK_REQUEST_APPROVER,
 INVOICE_APPROVER,
 VACATION_YR,
 FIN_AUTH_COMMENTS,
 PAYROLL_COST_CTR,
 SAMPLE_AUTH,
 ORACLE_STRING
)
AS
 SELECT aud_associates.TEVA_ID,
        aud_associates.HR_ID,
        aud_associates.CRT_USER,
        aud_associates.CRT_DT,
        aud_associates.UPD_USER,
        aud_associates.UPD_DT,
        aud_associates.HIRE_DT,
        aud_associates.LOGON_ID,
        aud_associates.REPORTS_TO,
        aud_associates.STAT_CD,
        aud_associates.TYPE_CD,
        aud_associates.FULL_TIME,
        aud_associates.EEO_CAT,
        aud_associates.EXEMPT,
        aud_associates.EXPENSE_COST_CTR,
        aud_associates.HRS_PER_WK,
        aud_associates.MARITAL_STAT,
        aud_associates.RACE,
        aud_associates.SSN,
        aud_associates.EMAIL,
        aud_associates.BIRTH_DT,
        aud_associates.COUNTRY_ID,
        aud_associates.DFLT_CURR_ID,
        aud_associates.TERR_ID,
        aud_associates.OFFICE,
        aud_associates.PRSN_SYS_ID,
        aud_associates.LANGUAGE,
        aud_associates."POSITION",
        aud_associates.TERM_DT,
        aud_associates.LAST_WRK_DT,
        aud_associates.AUTH_LIMIT,
        aud_associates.VEHICLE,
        aud_associates.VACATION_DAYS,
        aud_associates."TIMESTAMP",
        aud_associates.ACTION,
        aud_associates.CHK_REQ_LIMIT,
        aud_associates.EXPENSE_REPORT_APPROVER,
        aud_associates.LOC_CD,
        aud_associates.PAY_CD,
        aud_associates.ED_CD,
        aud_associates.ED_CD_DT,
        aud_associates.JOB_CD,
        aud_associates.CNTRY_CITIZENSHIP,
        aud_associates.DISABLED,
        aud_associates.VIETNAM_VET,
        aud_associates.EMERGENCY_CONTACT_NAME,
        aud_associates.EMERGENCY_CONTACT_RELATIONSHIP,
        aud_associates.EMERGENCY_CONTACT_PHONE,
        aud_associates.ADP_DEPT_NUM,
        aud_associates.EEO_CAT_HR_UPDT,
        aud_associates.COMPANY_ID,
        aud_associates.EXPENSE_REPORTING,
        aud_associates.PHANTOM_IND,
        aud_associates.CHECK_REQUEST_APPROVER,
        aud_associates.INVOICE_APPROVER,
        aud_associates.VACATION_YR,
        aud_associates.FIN_AUTH_COMMENTS,
        aud_associates.PAYROLL_COST_CTR,
        aud_associates.SAMPLE_AUTH,
        aud_associates.ORACLE_STRING
 FROM teva_staging.aud_associates
 ORDER BY aud_associates.TEVA_ID,
          aud_associates.HR_ID,
          aud_associates.CRT_USER,
          aud_associates.CRT_DT,
          aud_associates.UPD_USER,
          aud_associates.UPD_DT,
          aud_associates.HIRE_DT,
          aud_associates.LOGON_ID,
          aud_associates.REPORTS_TO,
          aud_associates.STAT_CD,
          aud_associates.TYPE_CD,
          aud_associates.FULL_TIME,
          aud_associates.EEO_CAT,
          aud_associates.EXEMPT,
          aud_associates.EXPENSE_COST_CTR,
          aud_associates.HRS_PER_WK,
          aud_associates.MARITAL_STAT,
          aud_associates.RACE,
          aud_associates.SSN,
          aud_associates.EMAIL,
          aud_associates.BIRTH_DT,
          aud_associates.COUNTRY_ID,
          aud_associates.DFLT_CURR_ID,
          aud_associates.TERR_ID,
          aud_associates.OFFICE,
          aud_associates.PRSN_SYS_ID,
          aud_associates.LANGUAGE,
          aud_associates."POSITION",
          aud_associates.TERM_DT,
          aud_associates.LAST_WRK_DT,
          aud_associates.AUTH_LIMIT,
          aud_associates.VEHICLE,
          aud_associates.VACATION_DAYS,
          aud_associates."TIMESTAMP",
          aud_associates.ACTION,
          aud_associates.CHK_REQ_LIMIT,
          aud_associates.EXPENSE_REPORT_APPROVER,
          aud_associates.LOC_CD,
          aud_associates.PAY_CD,
          aud_associates.ED_CD,
          aud_associates.ED_CD_DT,
          aud_associates.JOB_CD,
          aud_associates.CNTRY_CITIZENSHIP,
          aud_associates.DISABLED,
          aud_associates.VIETNAM_VET,
          aud_associates.EMERGENCY_CONTACT_NAME,
          aud_associates.EMERGENCY_CONTACT_RELATIONSHIP,
          aud_associates.EMERGENCY_CONTACT_PHONE,
          aud_associates.ADP_DEPT_NUM,
          aud_associates.EEO_CAT_HR_UPDT,
          aud_associates.COMPANY_ID,
          aud_associates.EXPENSE_REPORTING,
          aud_associates.PHANTOM_IND,
          aud_associates.CHECK_REQUEST_APPROVER,
          aud_associates.INVOICE_APPROVER,
          aud_associates.VACATION_YR,
          aud_associates.FIN_AUTH_COMMENTS,
          aud_associates.PAYROLL_COST_CTR,
          aud_associates.SAMPLE_AUTH,
          aud_associates.ORACLE_STRING
SEGMENTED BY hash(aud_associates.TEVA_ID, aud_associates.CRT_DT, aud_associates.UPD_DT, aud_associates.HIRE_DT, aud_associates.REPORTS_TO, aud_associates.STAT_CD, aud_associates.TYPE_CD, aud_associates.FULL_TIME, aud_associates.EXEMPT, aud_associates.HRS_PER_WK, aud_associates.MARITAL_STAT, aud_associates.BIRTH_DT, aud_associates.COUNTRY_ID, aud_associates.OFFICE, aud_associates.LANGUAGE, aud_associates.TERM_DT, aud_associates.LAST_WRK_DT, aud_associates.AUTH_LIMIT, aud_associates.VACATION_DAYS, aud_associates."TIMESTAMP", aud_associates.CHK_REQ_LIMIT, aud_associates.EXPENSE_REPORT_APPROVER, aud_associates.PAY_CD, aud_associates.ED_CD, aud_associates.ED_CD_DT, aud_associates.JOB_CD, aud_associates.CNTRY_CITIZENSHIP, aud_associates.DISABLED, aud_associates.VIETNAM_VET, aud_associates.EXPENSE_REPORTING, aud_associates.PHANTOM_IND, aud_associates.CHECK_REQUEST_APPROVER) ALL NODES;

CREATE PROJECTION teva_staging.people_b0 /*+basename(people),createtype(L)*/ 
(
 SYS_ID,
 CRT_DT,
 CRT_USER,
 UPD_DT,
 UPD_USER,
 LAST_NAME,
 FIRST_NAME,
 STAT_CD,
 GENDER,
 MID_NAME,
 NAME_SUFFIX,
 PRSN_TITLE,
 PROF_TITLE,
 EMAIL,
 PREF_NAME,
 PREV_LAST_NAME
)
AS
 SELECT people.SYS_ID,
        people.CRT_DT,
        people.CRT_USER,
        people.UPD_DT,
        people.UPD_USER,
        people.LAST_NAME,
        people.FIRST_NAME,
        people.STAT_CD,
        people.GENDER,
        people.MID_NAME,
        people.NAME_SUFFIX,
        people.PRSN_TITLE,
        people.PROF_TITLE,
        people.EMAIL,
        people.PREF_NAME,
        people.PREV_LAST_NAME
 FROM teva_staging.people
 ORDER BY people.SYS_ID,
          people.CRT_DT,
          people.CRT_USER,
          people.UPD_DT,
          people.UPD_USER,
          people.LAST_NAME,
          people.FIRST_NAME,
          people.STAT_CD,
          people.GENDER,
          people.MID_NAME,
          people.NAME_SUFFIX,
          people.PRSN_TITLE,
          people.PROF_TITLE,
          people.EMAIL,
          people.PREF_NAME,
          people.PREV_LAST_NAME
SEGMENTED BY hash(people.CRT_DT, people.UPD_DT, people.STAT_CD, people.GENDER, people.NAME_SUFFIX, people.PRSN_TITLE, people.PROF_TITLE, people.SYS_ID, people.CRT_USER, people.UPD_USER, people.LAST_NAME, people.FIRST_NAME, people.MID_NAME, people.PREF_NAME, people.PREV_LAST_NAME, people.EMAIL) ALL NODES;

CREATE PROJECTION teva_staging.people_addresses_b0 /*+basename(people_addresses),createtype(L)*/ 
(
 PRSN_SYS_ID,
 ADDR_ID,
 ATD_CD,
 PRIORITY,
 MAIL_STOP,
 EFF_DT,
 END_DT
)
AS
 SELECT people_addresses.PRSN_SYS_ID,
        people_addresses.ADDR_ID,
        people_addresses.ATD_CD,
        people_addresses.PRIORITY,
        people_addresses.MAIL_STOP,
        people_addresses.EFF_DT,
        people_addresses.END_DT
 FROM teva_staging.people_addresses
 ORDER BY people_addresses.PRSN_SYS_ID,
          people_addresses.ADDR_ID,
          people_addresses.ATD_CD,
          people_addresses.PRIORITY,
          people_addresses.MAIL_STOP,
          people_addresses.EFF_DT,
          people_addresses.END_DT
SEGMENTED BY hash(people_addresses.ATD_CD, people_addresses.EFF_DT, people_addresses.END_DT, people_addresses.MAIL_STOP, people_addresses.PRSN_SYS_ID, people_addresses.ADDR_ID, people_addresses.PRIORITY) ALL NODES;

CREATE PROJECTION teva_staging.people_phones_b0 /*+basename(people_phones),createtype(L)*/ 
(
 PRSN_SYS_ID,
 PHN_ID,
 PTD_CD,
 PRIORITY,
 EXT,
 VMAIL,
 ADDR_ID,
 PRVDR_CD
)
AS
 SELECT people_phones.PRSN_SYS_ID,
        people_phones.PHN_ID,
        people_phones.PTD_CD,
        people_phones.PRIORITY,
        people_phones.EXT,
        people_phones.VMAIL,
        people_phones.ADDR_ID,
        people_phones.PRVDR_CD
 FROM teva_staging.people_phones
 ORDER BY people_phones.PRSN_SYS_ID,
          people_phones.PHN_ID,
          people_phones.PTD_CD,
          people_phones.PRIORITY,
          people_phones.EXT,
          people_phones.VMAIL,
          people_phones.ADDR_ID,
          people_phones.PRVDR_CD
SEGMENTED BY hash(people_phones.PTD_CD, people_phones.PRVDR_CD, people_phones.PRSN_SYS_ID, people_phones.PHN_ID, people_phones.PRIORITY, people_phones.EXT, people_phones.VMAIL, people_phones.ADDR_ID) ALL NODES;

CREATE PROJECTION teva_staging.phones_b0 /*+basename(phones),createtype(L)*/ 
(
 PHN_ID,
 CNTRY_DIAL_CD,
 AREA_CD,
 PHN_NUMBER,
 CRT_USER,
 CRT_DT,
 UPD_USER,
 UPD_DT
)
AS
 SELECT phones.PHN_ID,
        phones.CNTRY_DIAL_CD,
        phones.AREA_CD,
        phones.PHN_NUMBER,
        phones.CRT_USER,
        phones.CRT_DT,
        phones.UPD_USER,
        phones.UPD_DT
 FROM teva_staging.phones
 ORDER BY phones.PHN_ID,
          phones.CNTRY_DIAL_CD,
          phones.AREA_CD,
          phones.PHN_NUMBER,
          phones.CRT_USER,
          phones.CRT_DT,
          phones.UPD_USER,
          phones.UPD_DT
SEGMENTED BY hash(phones.CNTRY_DIAL_CD, phones.AREA_CD, phones.CRT_DT, phones.UPD_DT, phones.PHN_NUMBER, phones.PHN_ID, phones.CRT_USER, phones.UPD_USER) ALL NODES;

CREATE PROJECTION teva_staging.territories_b0 /*+basename(territories),createtype(L)*/ 
(
 TERR_ID,
 NAME,
 DESC_TEXT,
 COMPANY_CD,
 TERR_TYPE,
 TEAM,
 SAMPLE_DIST,
 COMMENTS,
 FLEET_ELIG,
 REP_TYPE
)
AS
 SELECT territories.TERR_ID,
        territories.NAME,
        territories.DESC_TEXT,
        territories.COMPANY_CD,
        territories.TERR_TYPE,
        territories.TEAM,
        territories.SAMPLE_DIST,
        territories.COMMENTS,
        territories.FLEET_ELIG,
        territories.REP_TYPE
 FROM teva_staging.territories
 ORDER BY territories.TERR_ID,
          territories.NAME,
          territories.DESC_TEXT,
          territories.COMPANY_CD,
          territories.TERR_TYPE,
          territories.TEAM,
          territories.SAMPLE_DIST,
          territories.COMMENTS,
          territories.FLEET_ELIG,
          territories.REP_TYPE
SEGMENTED BY hash(territories.SAMPLE_DIST, territories.FLEET_ELIG, territories.REP_TYPE, territories.COMPANY_CD, territories.TERR_TYPE, territories.TEAM, territories.COMMENTS, territories.TERR_ID, territories.NAME, territories.DESC_TEXT) ALL NODES;

CREATE PROJECTION teva_staging.job_title_defs_b0 /*+basename(job_title_defs),createtype(L)*/ 
(
 JOB_CD,
 CD_DESC,
 ADP_JOB_CD,
 CRT_DT,
 CRT_USER,
 UPD_DT,
 UPD_USER,
 DISPLAY_SEQ,
 COMPANY_ID,
 EFF_DT,
 EXP_DT
)
AS
 SELECT job_title_defs.JOB_CD,
        job_title_defs.CD_DESC,
        job_title_defs.ADP_JOB_CD,
        job_title_defs.CRT_DT,
        job_title_defs.CRT_USER,
        job_title_defs.UPD_DT,
        job_title_defs.UPD_USER,
        job_title_defs.DISPLAY_SEQ,
        job_title_defs.COMPANY_ID,
        job_title_defs.EFF_DT,
        job_title_defs.EXP_DT
 FROM teva_staging.job_title_defs
 ORDER BY job_title_defs.JOB_CD,
          job_title_defs.CD_DESC,
          job_title_defs.ADP_JOB_CD,
          job_title_defs.CRT_DT,
          job_title_defs.CRT_USER,
          job_title_defs.UPD_DT,
          job_title_defs.UPD_USER,
          job_title_defs.DISPLAY_SEQ,
          job_title_defs.COMPANY_ID,
          job_title_defs.EFF_DT,
          job_title_defs.EXP_DT
SEGMENTED BY hash(job_title_defs.JOB_CD, job_title_defs.ADP_JOB_CD, job_title_defs.CRT_DT, job_title_defs.UPD_DT, job_title_defs.DISPLAY_SEQ, job_title_defs.EFF_DT, job_title_defs.EXP_DT, job_title_defs.COMPANY_ID, job_title_defs.CRT_USER, job_title_defs.UPD_USER, job_title_defs.CD_DESC) ALL NODES;

CREATE PROJECTION teva_staging.XX_SALES_MV_b0 /*+basename(XX_SALES_MV),createtype(L)*/ 
(
 FILE_NBR,
 NAME,
 JOB_TITLE,
 COST_CENTER_NAME,
 DEPARTMENT,
 JOB_ENTRY_DT,
 MANAGER_LEVEL,
 EE_STATUS,
 WORK_LOCATION,
 WORK_LOCATION_NAME,
 ORIG_HIRE_DT,
 SERVICE_DT,
 REHIRE_DT,
 TERMINATION_DT,
 DIRECT_MANAGER,
 HOME_ADDRESS_LINE1,
 HOME_ADDRESS_LINE2,
 HOME_CITY,
 HOME_STATE,
 HOME_POSTAL_CODE,
 HOME_PHONE,
 CELL_PHONE,
 EMAIL_ADDRESS
)
AS
 SELECT XX_SALES_MV.FILE_NBR,
        XX_SALES_MV.NAME,
        XX_SALES_MV.JOB_TITLE,
        XX_SALES_MV.COST_CENTER_NAME,
        XX_SALES_MV.DEPARTMENT,
        XX_SALES_MV.JOB_ENTRY_DT,
        XX_SALES_MV.MANAGER_LEVEL,
        XX_SALES_MV.EE_STATUS,
        XX_SALES_MV.WORK_LOCATION,
        XX_SALES_MV.WORK_LOCATION_NAME,
        XX_SALES_MV.ORIG_HIRE_DT,
        XX_SALES_MV.SERVICE_DT,
        XX_SALES_MV.REHIRE_DT,
        XX_SALES_MV.TERMINATION_DT,
        XX_SALES_MV.DIRECT_MANAGER,
        XX_SALES_MV.HOME_ADDRESS_LINE1,
        XX_SALES_MV.HOME_ADDRESS_LINE2,
        XX_SALES_MV.HOME_CITY,
        XX_SALES_MV.HOME_STATE,
        XX_SALES_MV.HOME_POSTAL_CODE,
        XX_SALES_MV.HOME_PHONE,
        XX_SALES_MV.CELL_PHONE,
        XX_SALES_MV.EMAIL_ADDRESS
 FROM teva_staging.XX_SALES_MV
 ORDER BY XX_SALES_MV.FILE_NBR,
          XX_SALES_MV.NAME,
          XX_SALES_MV.JOB_TITLE,
          XX_SALES_MV.COST_CENTER_NAME,
          XX_SALES_MV.DEPARTMENT,
          XX_SALES_MV.JOB_ENTRY_DT,
          XX_SALES_MV.MANAGER_LEVEL,
          XX_SALES_MV.EE_STATUS,
          XX_SALES_MV.WORK_LOCATION,
          XX_SALES_MV.WORK_LOCATION_NAME,
          XX_SALES_MV.ORIG_HIRE_DT,
          XX_SALES_MV.SERVICE_DT,
          XX_SALES_MV.REHIRE_DT,
          XX_SALES_MV.TERMINATION_DT,
          XX_SALES_MV.DIRECT_MANAGER,
          XX_SALES_MV.HOME_ADDRESS_LINE1,
          XX_SALES_MV.HOME_ADDRESS_LINE2,
          XX_SALES_MV.HOME_CITY,
          XX_SALES_MV.HOME_STATE,
          XX_SALES_MV.HOME_POSTAL_CODE,
          XX_SALES_MV.HOME_PHONE,
          XX_SALES_MV.CELL_PHONE,
          XX_SALES_MV.EMAIL_ADDRESS
SEGMENTED BY hash(XX_SALES_MV.FILE_NBR, XX_SALES_MV.WORK_LOCATION, XX_SALES_MV.HOME_STATE, XX_SALES_MV.JOB_ENTRY_DT, XX_SALES_MV.ORIG_HIRE_DT, XX_SALES_MV.SERVICE_DT, XX_SALES_MV.REHIRE_DT, XX_SALES_MV.TERMINATION_DT, XX_SALES_MV.HOME_POSTAL_CODE, XX_SALES_MV.HOME_PHONE, XX_SALES_MV.CELL_PHONE, XX_SALES_MV.JOB_TITLE, XX_SALES_MV.DEPARTMENT, XX_SALES_MV.MANAGER_LEVEL, XX_SALES_MV.EE_STATUS, XX_SALES_MV.WORK_LOCATION_NAME, XX_SALES_MV.HOME_CITY, XX_SALES_MV.COST_CENTER_NAME, XX_SALES_MV.NAME, XX_SALES_MV.DIRECT_MANAGER, XX_SALES_MV.HOME_ADDRESS_LINE1, XX_SALES_MV.HOME_ADDRESS_LINE2, XX_SALES_MV.EMAIL_ADDRESS) ALL NODES;

CREATE PROJECTION teva_staging.XX_SALES_LOA_MV_b0 /*+basename(XX_SALES_LOA_MV),createtype(L)*/ 
(
 FILE_NBR,
 NAME,
 JOB_TITLE,
 COST_CENTER_NAME,
 DEPARTMENT,
 EE_STATUS,
 LEAVE_DT,
 RETURN_DT,
 LEAVE_DAYS
)
AS
 SELECT XX_SALES_LOA_MV.FILE_NBR,
        XX_SALES_LOA_MV.NAME,
        XX_SALES_LOA_MV.JOB_TITLE,
        XX_SALES_LOA_MV.COST_CENTER_NAME,
        XX_SALES_LOA_MV.DEPARTMENT,
        XX_SALES_LOA_MV.EE_STATUS,
        XX_SALES_LOA_MV.LEAVE_DT,
        XX_SALES_LOA_MV.RETURN_DT,
        XX_SALES_LOA_MV.LEAVE_DAYS
 FROM teva_staging.XX_SALES_LOA_MV
 ORDER BY XX_SALES_LOA_MV.FILE_NBR,
          XX_SALES_LOA_MV.NAME,
          XX_SALES_LOA_MV.JOB_TITLE,
          XX_SALES_LOA_MV.COST_CENTER_NAME,
          XX_SALES_LOA_MV.DEPARTMENT,
          XX_SALES_LOA_MV.EE_STATUS,
          XX_SALES_LOA_MV.LEAVE_DT,
          XX_SALES_LOA_MV.RETURN_DT,
          XX_SALES_LOA_MV.LEAVE_DAYS
SEGMENTED BY hash(XX_SALES_LOA_MV.FILE_NBR, XX_SALES_LOA_MV.LEAVE_DT, XX_SALES_LOA_MV.RETURN_DT, XX_SALES_LOA_MV.LEAVE_DAYS, XX_SALES_LOA_MV.JOB_TITLE, XX_SALES_LOA_MV.DEPARTMENT, XX_SALES_LOA_MV.EE_STATUS, XX_SALES_LOA_MV.COST_CENTER_NAME, XX_SALES_LOA_MV.NAME) ALL NODES;

CREATE PROJECTION teva_staging.tvcmid_merges_b0 /*+basename(tvcmid_merges),createtype(L)*/ 
(
 PREVIOUS_TVCMID,
 CURRENT_TVCMID,
 MERGE_CYCLE
)
AS
 SELECT tvcmid_merges.PREVIOUS_TVCMID,
        tvcmid_merges.CURRENT_TVCMID,
        tvcmid_merges.MERGE_CYCLE
 FROM teva_staging.tvcmid_merges
 ORDER BY tvcmid_merges.PREVIOUS_TVCMID,
          tvcmid_merges.CURRENT_TVCMID,
          tvcmid_merges.MERGE_CYCLE
SEGMENTED BY hash(tvcmid_merges.MERGE_CYCLE, tvcmid_merges.PREVIOUS_TVCMID, tvcmid_merges.CURRENT_TVCMID) ALL NODES;

CREATE PROJECTION teva_staging.tvcmid_hco_demo_b0 /*+basename(tvcmid_hco_demo),createtype(L)*/ 
(
 TVCMID,
 IMS_ORG_ID,
 NPI,
 HIN,
 IMS_OUTLET_CODE,
 BUSINESS_NAME,
 ADDRESS_LINE1,
 ADDRESS_LINE2,
 CITY,
 STATE,
 ZIP,
 C_BO_HCE_ADDRESS__ADDRESS_ID,
 COT_CLASSIFICATION,
 COT_FACILITY_TYPE,
 COT_SPECIALTY
)
AS
 SELECT tvcmid_hco_demo.TVCMID,
        tvcmid_hco_demo.IMS_ORG_ID,
        tvcmid_hco_demo.NPI,
        tvcmid_hco_demo.HIN,
        tvcmid_hco_demo.IMS_OUTLET_CODE,
        tvcmid_hco_demo.BUSINESS_NAME,
        tvcmid_hco_demo.ADDRESS_LINE1,
        tvcmid_hco_demo.ADDRESS_LINE2,
        tvcmid_hco_demo.CITY,
        tvcmid_hco_demo.STATE,
        tvcmid_hco_demo.ZIP,
        tvcmid_hco_demo.C_BO_HCE_ADDRESS__ADDRESS_ID,
        tvcmid_hco_demo.COT_CLASSIFICATION,
        tvcmid_hco_demo.COT_FACILITY_TYPE,
        tvcmid_hco_demo.COT_SPECIALTY
 FROM teva_staging.tvcmid_hco_demo
 ORDER BY tvcmid_hco_demo.TVCMID,
          tvcmid_hco_demo.IMS_ORG_ID,
          tvcmid_hco_demo.NPI,
          tvcmid_hco_demo.HIN,
          tvcmid_hco_demo.IMS_OUTLET_CODE,
          tvcmid_hco_demo.BUSINESS_NAME,
          tvcmid_hco_demo.ADDRESS_LINE1,
          tvcmid_hco_demo.ADDRESS_LINE2,
          tvcmid_hco_demo.CITY,
          tvcmid_hco_demo.STATE,
          tvcmid_hco_demo.ZIP,
          tvcmid_hco_demo.C_BO_HCE_ADDRESS__ADDRESS_ID,
          tvcmid_hco_demo.COT_CLASSIFICATION,
          tvcmid_hco_demo.COT_FACILITY_TYPE,
          tvcmid_hco_demo.COT_SPECIALTY
SEGMENTED BY hash(tvcmid_hco_demo.STATE, tvcmid_hco_demo.ZIP, tvcmid_hco_demo.IMS_ORG_ID, tvcmid_hco_demo.C_BO_HCE_ADDRESS__ADDRESS_ID, tvcmid_hco_demo.NPI, tvcmid_hco_demo.HIN, tvcmid_hco_demo.IMS_OUTLET_CODE, tvcmid_hco_demo.TVCMID, tvcmid_hco_demo.CITY, tvcmid_hco_demo.COT_CLASSIFICATION, tvcmid_hco_demo.COT_FACILITY_TYPE, tvcmid_hco_demo.COT_SPECIALTY, tvcmid_hco_demo.BUSINESS_NAME, tvcmid_hco_demo.ADDRESS_LINE1, tvcmid_hco_demo.ADDRESS_LINE2) ALL NODES;

CREATE PROJECTION teva_staging.tvcmid_hcp_demo_b0 /*+basename(tvcmid_hcp_demo),createtype(L)*/ 
(
 TVCMID,
 IMS_HCE_ID,
 IMS_ID,
 NPI,
 LAST_NAME,
 FIRST_NAME,
 MIDDLE_NAME,
 PERSONAL_SUFFIX,
 MEDICAL_SUFFIX,
 PRIMARY_SPECIALTY,
 ADDRESS_LINE1,
 ADDRESS_LINE2,
 CITY,
 STATE,
 ZIP,
 C_BO_HCE_ADDRESS__ADDRESS_ID,
 LEGACY_ADDRESS_ID,
 BUSINESS_PHONE,
 BUSINESS_EMAIL,
 HCE_STATUS_DESC,
 NP_PA_FLAG
)
AS
 SELECT tvcmid_hcp_demo.TVCMID,
        tvcmid_hcp_demo.IMS_HCE_ID,
        tvcmid_hcp_demo.IMS_ID,
        tvcmid_hcp_demo.NPI,
        tvcmid_hcp_demo.LAST_NAME,
        tvcmid_hcp_demo.FIRST_NAME,
        tvcmid_hcp_demo.MIDDLE_NAME,
        tvcmid_hcp_demo.PERSONAL_SUFFIX,
        tvcmid_hcp_demo.MEDICAL_SUFFIX,
        tvcmid_hcp_demo.PRIMARY_SPECIALTY,
        tvcmid_hcp_demo.ADDRESS_LINE1,
        tvcmid_hcp_demo.ADDRESS_LINE2,
        tvcmid_hcp_demo.CITY,
        tvcmid_hcp_demo.STATE,
        tvcmid_hcp_demo.ZIP,
        tvcmid_hcp_demo.C_BO_HCE_ADDRESS__ADDRESS_ID,
        tvcmid_hcp_demo.LEGACY_ADDRESS_ID,
        tvcmid_hcp_demo.BUSINESS_PHONE,
        tvcmid_hcp_demo.BUSINESS_EMAIL,
        tvcmid_hcp_demo.HCE_STATUS_DESC,
        tvcmid_hcp_demo.NP_PA_FLAG
 FROM teva_staging.tvcmid_hcp_demo
 ORDER BY tvcmid_hcp_demo.TVCMID,
          tvcmid_hcp_demo.IMS_HCE_ID,
          tvcmid_hcp_demo.IMS_ID,
          tvcmid_hcp_demo.NPI,
          tvcmid_hcp_demo.LAST_NAME,
          tvcmid_hcp_demo.FIRST_NAME,
          tvcmid_hcp_demo.MIDDLE_NAME,
          tvcmid_hcp_demo.PERSONAL_SUFFIX,
          tvcmid_hcp_demo.MEDICAL_SUFFIX,
          tvcmid_hcp_demo.PRIMARY_SPECIALTY,
          tvcmid_hcp_demo.ADDRESS_LINE1,
          tvcmid_hcp_demo.ADDRESS_LINE2,
          tvcmid_hcp_demo.CITY,
          tvcmid_hcp_demo.STATE,
          tvcmid_hcp_demo.ZIP,
          tvcmid_hcp_demo.C_BO_HCE_ADDRESS__ADDRESS_ID,
          tvcmid_hcp_demo.LEGACY_ADDRESS_ID,
          tvcmid_hcp_demo.BUSINESS_PHONE,
          tvcmid_hcp_demo.BUSINESS_EMAIL,
          tvcmid_hcp_demo.HCE_STATUS_DESC
SEGMENTED BY hash(tvcmid_hcp_demo.IMS_ID, tvcmid_hcp_demo.PRIMARY_SPECIALTY, tvcmid_hcp_demo.STATE, tvcmid_hcp_demo.ZIP, tvcmid_hcp_demo.PERSONAL_SUFFIX, tvcmid_hcp_demo.MEDICAL_SUFFIX, tvcmid_hcp_demo.C_BO_HCE_ADDRESS__ADDRESS_ID, tvcmid_hcp_demo.NPI, tvcmid_hcp_demo.TVCMID, tvcmid_hcp_demo.IMS_HCE_ID, tvcmid_hcp_demo.LEGACY_ADDRESS_ID, tvcmid_hcp_demo.LAST_NAME, tvcmid_hcp_demo.FIRST_NAME, tvcmid_hcp_demo.MIDDLE_NAME, tvcmid_hcp_demo.CITY, tvcmid_hcp_demo.HCE_STATUS_DESC, tvcmid_hcp_demo.ADDRESS_LINE1, tvcmid_hcp_demo.ADDRESS_LINE2, tvcmid_hcp_demo.BUSINESS_PHONE, tvcmid_hcp_demo.BUSINESS_EMAIL) ALL NODES;

CREATE PROJECTION teva_staging.c_bo_hce_alt_identifier_b0 /*+basename(c_bo_hce_alt_identifier),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 TVCMID,
 ALTERNATE_ID_VALUE,
 ALTERNATE_ID_TYPE,
 SOURCE_DEACT_REASON_CODE,
 SOURCE_DEACT_REASON_DESC,
 IDENTIFIER_CAT,
 STATUS,
 STATE
)
AS
 SELECT c_bo_hce_alt_identifier.ROWID_OBJECT,
        c_bo_hce_alt_identifier.CREATOR,
        c_bo_hce_alt_identifier.CREATE_DATE,
        c_bo_hce_alt_identifier.UPDATED_BY,
        c_bo_hce_alt_identifier.LAST_UPDATE_DATE,
        c_bo_hce_alt_identifier.CONSOLIDATION_IND,
        c_bo_hce_alt_identifier.DELETED_IND,
        c_bo_hce_alt_identifier.DELETED_BY,
        c_bo_hce_alt_identifier.DELETED_DATE,
        c_bo_hce_alt_identifier.LAST_ROWID_SYSTEM,
        c_bo_hce_alt_identifier.DIRTY_IND,
        c_bo_hce_alt_identifier.INTERACTION_ID,
        c_bo_hce_alt_identifier.HUB_STATE_IND,
        c_bo_hce_alt_identifier.CM_DIRTY_IND,
        c_bo_hce_alt_identifier.TVCMID,
        c_bo_hce_alt_identifier.ALTERNATE_ID_VALUE,
        c_bo_hce_alt_identifier.ALTERNATE_ID_TYPE,
        c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_CODE,
        c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_DESC,
        c_bo_hce_alt_identifier.IDENTIFIER_CAT,
        c_bo_hce_alt_identifier.STATUS,
        c_bo_hce_alt_identifier.STATE
 FROM teva_staging.c_bo_hce_alt_identifier
 ORDER BY c_bo_hce_alt_identifier.ROWID_OBJECT,
          c_bo_hce_alt_identifier.CREATOR,
          c_bo_hce_alt_identifier.CREATE_DATE,
          c_bo_hce_alt_identifier.UPDATED_BY,
          c_bo_hce_alt_identifier.LAST_UPDATE_DATE,
          c_bo_hce_alt_identifier.CONSOLIDATION_IND,
          c_bo_hce_alt_identifier.DELETED_IND,
          c_bo_hce_alt_identifier.DELETED_BY,
          c_bo_hce_alt_identifier.DELETED_DATE,
          c_bo_hce_alt_identifier.LAST_ROWID_SYSTEM,
          c_bo_hce_alt_identifier.DIRTY_IND,
          c_bo_hce_alt_identifier.INTERACTION_ID,
          c_bo_hce_alt_identifier.HUB_STATE_IND,
          c_bo_hce_alt_identifier.CM_DIRTY_IND,
          c_bo_hce_alt_identifier.TVCMID,
          c_bo_hce_alt_identifier.ALTERNATE_ID_VALUE,
          c_bo_hce_alt_identifier.ALTERNATE_ID_TYPE,
          c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_CODE,
          c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_DESC,
          c_bo_hce_alt_identifier.IDENTIFIER_CAT,
          c_bo_hce_alt_identifier.STATUS,
          c_bo_hce_alt_identifier.STATE
SEGMENTED BY hash(c_bo_hce_alt_identifier.CREATE_DATE, c_bo_hce_alt_identifier.LAST_UPDATE_DATE, c_bo_hce_alt_identifier.CONSOLIDATION_IND, c_bo_hce_alt_identifier.DELETED_IND, c_bo_hce_alt_identifier.DELETED_DATE, c_bo_hce_alt_identifier.DIRTY_IND, c_bo_hce_alt_identifier.INTERACTION_ID, c_bo_hce_alt_identifier.HUB_STATE_IND, c_bo_hce_alt_identifier.CM_DIRTY_IND, c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_CODE, c_bo_hce_alt_identifier.STATE, c_bo_hce_alt_identifier.ALTERNATE_ID_TYPE, c_bo_hce_alt_identifier.STATUS, c_bo_hce_alt_identifier.ROWID_OBJECT, c_bo_hce_alt_identifier.LAST_ROWID_SYSTEM, c_bo_hce_alt_identifier.TVCMID, c_bo_hce_alt_identifier.ALTERNATE_ID_VALUE, c_bo_hce_alt_identifier.IDENTIFIER_CAT, c_bo_hce_alt_identifier.CREATOR, c_bo_hce_alt_identifier.UPDATED_BY, c_bo_hce_alt_identifier.DELETED_BY, c_bo_hce_alt_identifier.SOURCE_DEACT_REASON_DESC) ALL NODES;

CREATE PROJECTION teva_staging.ext_kc_zip_to_territory_b0 /*+basename(ext_kc_zip_to_territory),createtype(L)*/ 
(
 ZIP,
 CITY,
 STATE,
 TERRITORY_NUM,
 TERRITORY_NAME,
 AREA_NAME,
 REGION_NAME,
 SALES_FORCE_ID,
 ORGANIZATION_CODE,
 INACTIVE_FLAG,
 COMMENTS,
 MIRROR_FLAG,
 MIRROR_TERRITORY_NUM
)
AS
 SELECT ext_kc_zip_to_territory.ZIP,
        ext_kc_zip_to_territory.CITY,
        ext_kc_zip_to_territory.STATE,
        ext_kc_zip_to_territory.TERRITORY_NUM,
        ext_kc_zip_to_territory.TERRITORY_NAME,
        ext_kc_zip_to_territory.AREA_NAME,
        ext_kc_zip_to_territory.REGION_NAME,
        ext_kc_zip_to_territory.SALES_FORCE_ID,
        ext_kc_zip_to_territory.ORGANIZATION_CODE,
        ext_kc_zip_to_territory.INACTIVE_FLAG,
        ext_kc_zip_to_territory.COMMENTS,
        ext_kc_zip_to_territory.MIRROR_FLAG,
        ext_kc_zip_to_territory.MIRROR_TERRITORY_NUM
 FROM teva_staging.ext_kc_zip_to_territory
 ORDER BY ext_kc_zip_to_territory.ZIP,
          ext_kc_zip_to_territory.CITY,
          ext_kc_zip_to_territory.STATE,
          ext_kc_zip_to_territory.TERRITORY_NUM,
          ext_kc_zip_to_territory.TERRITORY_NAME,
          ext_kc_zip_to_territory.AREA_NAME,
          ext_kc_zip_to_territory.REGION_NAME,
          ext_kc_zip_to_territory.SALES_FORCE_ID,
          ext_kc_zip_to_territory.ORGANIZATION_CODE,
          ext_kc_zip_to_territory.INACTIVE_FLAG,
          ext_kc_zip_to_territory.COMMENTS,
          ext_kc_zip_to_territory.MIRROR_FLAG,
          ext_kc_zip_to_territory.MIRROR_TERRITORY_NUM
SEGMENTED BY hash(ext_kc_zip_to_territory.ZIP, ext_kc_zip_to_territory.STATE, ext_kc_zip_to_territory.TERRITORY_NUM, ext_kc_zip_to_territory.SALES_FORCE_ID, ext_kc_zip_to_territory.INACTIVE_FLAG, ext_kc_zip_to_territory.MIRROR_FLAG, ext_kc_zip_to_territory.MIRROR_TERRITORY_NUM, ext_kc_zip_to_territory.CITY, ext_kc_zip_to_territory.TERRITORY_NAME, ext_kc_zip_to_territory.AREA_NAME, ext_kc_zip_to_territory.REGION_NAME, ext_kc_zip_to_territory.ORGANIZATION_CODE, ext_kc_zip_to_territory.COMMENTS) ALL NODES;

CREATE PROJECTION teva_staging.ext_ims_sln_xref_kc_b0 /*+basename(ext_ims_sln_xref_kc),createtype(L)*/ 
(
 IMS_ID,
 STATE_LICENSE_NUMBER,
 STATE_LICENSE_STATE
)
AS
 SELECT ext_ims_sln_xref_kc.IMS_ID,
        ext_ims_sln_xref_kc.STATE_LICENSE_NUMBER,
        ext_ims_sln_xref_kc.STATE_LICENSE_STATE
 FROM teva_staging.ext_ims_sln_xref_kc
 ORDER BY ext_ims_sln_xref_kc.IMS_ID,
          ext_ims_sln_xref_kc.STATE_LICENSE_NUMBER,
          ext_ims_sln_xref_kc.STATE_LICENSE_STATE
SEGMENTED BY hash(ext_ims_sln_xref_kc.STATE_LICENSE_STATE, ext_ims_sln_xref_kc.IMS_ID, ext_ims_sln_xref_kc.STATE_LICENSE_NUMBER) ALL NODES;

CREATE PROJECTION teva_staging.ext_call_goals_kc_b0 /*+basename(ext_call_goals_kc),createtype(L)*/ 
(
 ID,
 SFA_ID,
 IMS_ID,
 TERRITORY_NUM,
 PRIORITY,
 PRODUCT,
 GOAL,
 ACTUAL,
 MARKETING_SEGMENT,
 EFFECTIVE_DATE,
 SALES_FORCE_ID
)
AS
 SELECT ext_call_goals_kc.ID,
        ext_call_goals_kc.SFA_ID,
        ext_call_goals_kc.IMS_ID,
        ext_call_goals_kc.TERRITORY_NUM,
        ext_call_goals_kc.PRIORITY,
        ext_call_goals_kc.PRODUCT,
        ext_call_goals_kc.GOAL,
        ext_call_goals_kc.ACTUAL,
        ext_call_goals_kc.MARKETING_SEGMENT,
        ext_call_goals_kc.EFFECTIVE_DATE,
        ext_call_goals_kc.SALES_FORCE_ID
 FROM teva_staging.ext_call_goals_kc
 ORDER BY ext_call_goals_kc.ID,
          ext_call_goals_kc.SFA_ID,
          ext_call_goals_kc.IMS_ID,
          ext_call_goals_kc.TERRITORY_NUM,
          ext_call_goals_kc.PRIORITY,
          ext_call_goals_kc.PRODUCT,
          ext_call_goals_kc.GOAL,
          ext_call_goals_kc.ACTUAL,
          ext_call_goals_kc.MARKETING_SEGMENT,
          ext_call_goals_kc.EFFECTIVE_DATE,
          ext_call_goals_kc.SALES_FORCE_ID
SEGMENTED BY hash(ext_call_goals_kc.IMS_ID, ext_call_goals_kc.TERRITORY_NUM, ext_call_goals_kc.PRIORITY, ext_call_goals_kc.GOAL, ext_call_goals_kc.ACTUAL, ext_call_goals_kc.SALES_FORCE_ID, ext_call_goals_kc.SFA_ID, ext_call_goals_kc.PRODUCT, ext_call_goals_kc.MARKETING_SEGMENT, ext_call_goals_kc.EFFECTIVE_DATE, ext_call_goals_kc.ID) ALL NODES;

CREATE PROJECTION teva_staging.C_BO_HCP_DETAIL_b0 /*+basename(C_BO_HCP_DETAIL),createtype(L)*/ 
(
 ROWID_OBJECT,
 CREATOR,
 CREATE_DATE,
 UPDATED_BY,
 LAST_UPDATE_DATE,
 CONSOLIDATION_IND,
 DELETED_IND,
 DELETED_BY,
 DELETED_DATE,
 LAST_ROWID_SYSTEM,
 DIRTY_IND,
 INTERACTION_ID,
 HUB_STATE_IND,
 CM_DIRTY_IND,
 TVCMID,
 IMS_PRESCRIBER_ID,
 PREFIX,
 FIRST_NAME,
 LAST_NAME,
 MIDDLE_NAME,
 SUFFIX,
 HEALTHCARE_PROF_STATUS_CD,
 YEAR_OF_BIRTH,
 DATE_OF_DEATH,
 GENDER_CODE,
 TEVA_SPECIALTY_CODE
)
AS
 SELECT C_BO_HCP_DETAIL.ROWID_OBJECT,
        C_BO_HCP_DETAIL.CREATOR,
        C_BO_HCP_DETAIL.CREATE_DATE,
        C_BO_HCP_DETAIL.UPDATED_BY,
        C_BO_HCP_DETAIL.LAST_UPDATE_DATE,
        C_BO_HCP_DETAIL.CONSOLIDATION_IND,
        C_BO_HCP_DETAIL.DELETED_IND,
        C_BO_HCP_DETAIL.DELETED_BY,
        C_BO_HCP_DETAIL.DELETED_DATE,
        C_BO_HCP_DETAIL.LAST_ROWID_SYSTEM,
        C_BO_HCP_DETAIL.DIRTY_IND,
        C_BO_HCP_DETAIL.INTERACTION_ID,
        C_BO_HCP_DETAIL.HUB_STATE_IND,
        C_BO_HCP_DETAIL.CM_DIRTY_IND,
        C_BO_HCP_DETAIL.TVCMID,
        C_BO_HCP_DETAIL.IMS_PRESCRIBER_ID,
        C_BO_HCP_DETAIL.PREFIX,
        C_BO_HCP_DETAIL.FIRST_NAME,
        C_BO_HCP_DETAIL.LAST_NAME,
        C_BO_HCP_DETAIL.MIDDLE_NAME,
        C_BO_HCP_DETAIL.SUFFIX,
        C_BO_HCP_DETAIL.HEALTHCARE_PROF_STATUS_CD,
        C_BO_HCP_DETAIL.YEAR_OF_BIRTH,
        C_BO_HCP_DETAIL.DATE_OF_DEATH,
        C_BO_HCP_DETAIL.GENDER_CODE,
        C_BO_HCP_DETAIL.TEVA_SPECIALTY_CODE
 FROM teva_staging.C_BO_HCP_DETAIL
 ORDER BY C_BO_HCP_DETAIL.ROWID_OBJECT,
          C_BO_HCP_DETAIL.CREATOR,
          C_BO_HCP_DETAIL.CREATE_DATE,
          C_BO_HCP_DETAIL.UPDATED_BY,
          C_BO_HCP_DETAIL.LAST_UPDATE_DATE,
          C_BO_HCP_DETAIL.CONSOLIDATION_IND,
          C_BO_HCP_DETAIL.DELETED_IND,
          C_BO_HCP_DETAIL.DELETED_BY,
          C_BO_HCP_DETAIL.DELETED_DATE,
          C_BO_HCP_DETAIL.LAST_ROWID_SYSTEM,
          C_BO_HCP_DETAIL.DIRTY_IND,
          C_BO_HCP_DETAIL.INTERACTION_ID,
          C_BO_HCP_DETAIL.HUB_STATE_IND,
          C_BO_HCP_DETAIL.CM_DIRTY_IND,
          C_BO_HCP_DETAIL.TVCMID,
          C_BO_HCP_DETAIL.IMS_PRESCRIBER_ID,
          C_BO_HCP_DETAIL.PREFIX,
          C_BO_HCP_DETAIL.FIRST_NAME,
          C_BO_HCP_DETAIL.LAST_NAME,
          C_BO_HCP_DETAIL.MIDDLE_NAME,
          C_BO_HCP_DETAIL.SUFFIX,
          C_BO_HCP_DETAIL.HEALTHCARE_PROF_STATUS_CD,
          C_BO_HCP_DETAIL.YEAR_OF_BIRTH,
          C_BO_HCP_DETAIL.DATE_OF_DEATH,
          C_BO_HCP_DETAIL.GENDER_CODE,
          C_BO_HCP_DETAIL.TEVA_SPECIALTY_CODE
SEGMENTED BY hash(C_BO_HCP_DETAIL.CREATE_DATE, C_BO_HCP_DETAIL.LAST_UPDATE_DATE, C_BO_HCP_DETAIL.CONSOLIDATION_IND, C_BO_HCP_DETAIL.DELETED_IND, C_BO_HCP_DETAIL.DELETED_DATE, C_BO_HCP_DETAIL.DIRTY_IND, C_BO_HCP_DETAIL.INTERACTION_ID, C_BO_HCP_DETAIL.HUB_STATE_IND, C_BO_HCP_DETAIL.CM_DIRTY_IND, C_BO_HCP_DETAIL.IMS_PRESCRIBER_ID, C_BO_HCP_DETAIL.YEAR_OF_BIRTH, C_BO_HCP_DETAIL.DATE_OF_DEATH, C_BO_HCP_DETAIL.GENDER_CODE, C_BO_HCP_DETAIL.TEVA_SPECIALTY_CODE, C_BO_HCP_DETAIL.PREFIX, C_BO_HCP_DETAIL.SUFFIX, C_BO_HCP_DETAIL.HEALTHCARE_PROF_STATUS_CD, C_BO_HCP_DETAIL.ROWID_OBJECT, C_BO_HCP_DETAIL.LAST_ROWID_SYSTEM, C_BO_HCP_DETAIL.TVCMID, C_BO_HCP_DETAIL.FIRST_NAME, C_BO_HCP_DETAIL.LAST_NAME, C_BO_HCP_DETAIL.MIDDLE_NAME, C_BO_HCP_DETAIL.CREATOR, C_BO_HCP_DETAIL.UPDATED_BY, C_BO_HCP_DETAIL.DELETED_BY) ALL NODES;

CREATE PROJECTION teva_staging.ext_time_off_territory_kc_veev_b0 /*+basename(ext_time_off_territory_kc_veev),createtype(L)*/ 
(
 ID,
 EVENT_ROW_ID,
 REP_ROW_ID,
 TERRITORY_NUM,
 TIME_OFF_DATE,
 TIME_ON_DATE,
 DESCRIPTION,
 COMMENTS,
 DURATION_IN_MINUTES,
 DURATION_IN_HOURS,
 DURATION_IN_DAYS,
 COMPANY
)
AS
 SELECT ext_time_off_territory_kc_veev.ID,
        ext_time_off_territory_kc_veev.EVENT_ROW_ID,
        ext_time_off_territory_kc_veev.REP_ROW_ID,
        ext_time_off_territory_kc_veev.TERRITORY_NUM,
        ext_time_off_territory_kc_veev.TIME_OFF_DATE,
        ext_time_off_territory_kc_veev.TIME_ON_DATE,
        ext_time_off_territory_kc_veev.DESCRIPTION,
        ext_time_off_territory_kc_veev.COMMENTS,
        ext_time_off_territory_kc_veev.DURATION_IN_MINUTES,
        ext_time_off_territory_kc_veev.DURATION_IN_HOURS,
        ext_time_off_territory_kc_veev.DURATION_IN_DAYS,
        ext_time_off_territory_kc_veev.COMPANY
 FROM teva_staging.ext_time_off_territory_kc_veev
 ORDER BY ext_time_off_territory_kc_veev.ID,
          ext_time_off_territory_kc_veev.EVENT_ROW_ID,
          ext_time_off_territory_kc_veev.REP_ROW_ID,
          ext_time_off_territory_kc_veev.TERRITORY_NUM,
          ext_time_off_territory_kc_veev.TIME_OFF_DATE,
          ext_time_off_territory_kc_veev.TIME_ON_DATE,
          ext_time_off_territory_kc_veev.DESCRIPTION,
          ext_time_off_territory_kc_veev.COMMENTS,
          ext_time_off_territory_kc_veev.DURATION_IN_MINUTES,
          ext_time_off_territory_kc_veev.DURATION_IN_HOURS,
          ext_time_off_territory_kc_veev.DURATION_IN_DAYS,
          ext_time_off_territory_kc_veev.COMPANY
SEGMENTED BY hash(ext_time_off_territory_kc_veev.TERRITORY_NUM, ext_time_off_territory_kc_veev.TIME_OFF_DATE, ext_time_off_territory_kc_veev.TIME_ON_DATE, ext_time_off_territory_kc_veev.DURATION_IN_DAYS, ext_time_off_territory_kc_veev.EVENT_ROW_ID, ext_time_off_territory_kc_veev.REP_ROW_ID, ext_time_off_territory_kc_veev.ID, ext_time_off_territory_kc_veev.DURATION_IN_MINUTES, ext_time_off_territory_kc_veev.DURATION_IN_HOURS, ext_time_off_territory_kc_veev.COMPANY, ext_time_off_territory_kc_veev.DESCRIPTION, ext_time_off_territory_kc_veev.COMMENTS) ALL NODES;

CREATE PROJECTION teva_staging.EXT_JHC_CMOP_NDC_b0 /*+basename(EXT_JHC_CMOP_NDC),createtype(L)*/ 
(
 NDC_11,
 VA_PRODUCT
)
AS
 SELECT EXT_JHC_CMOP_NDC.NDC_11,
        EXT_JHC_CMOP_NDC.VA_PRODUCT
 FROM teva_staging.EXT_JHC_CMOP_NDC
 ORDER BY EXT_JHC_CMOP_NDC.NDC_11,
          EXT_JHC_CMOP_NDC.VA_PRODUCT
SEGMENTED BY hash(EXT_JHC_CMOP_NDC.NDC_11, EXT_JHC_CMOP_NDC.VA_PRODUCT) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

