CREATE SCHEMA teva_staging;

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