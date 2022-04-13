CREATE SCHEMA aetna;


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


CREATE PROJECTION aetna.provider_specialty_sql_src_super /*+basename(provider_specialty_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD
)
AS
 SELECT provider_specialty_sql_src.PRVDR_ID,
        provider_specialty_sql_src.TAX_ID_NO,
        provider_specialty_sql_src.PRVDR_CERT_YEAR,
        provider_specialty_sql_src.SPEC_NM,
        provider_specialty_sql_src.BOARD_STS_CD
 FROM aetna.provider_specialty_sql_src
 ORDER BY provider_specialty_sql_src.PRVDR_ID,
          provider_specialty_sql_src.TAX_ID_NO,
          provider_specialty_sql_src.PRVDR_CERT_YEAR,
          provider_specialty_sql_src.SPEC_NM,
          provider_specialty_sql_src.BOARD_STS_CD
SEGMENTED BY hash(provider_specialty_sql_src.PRVDR_ID, provider_specialty_sql_src.TAX_ID_NO, provider_specialty_sql_src.PRVDR_CERT_YEAR, provider_specialty_sql_src.BOARD_STS_CD, provider_specialty_sql_src.SPEC_NM) ALL NODES;

CREATE PROJECTION aetna.provider_base_dup_super /*+basename(provider_base_dup),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 MASKED_TAX_ID,
 STATE_CD,
 EXCLUDE_TIN_POIN_FLAG,
 MAILING_DT,
 MAILING_CYCLE,
 PRINT_DIR_FLAG,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 base_RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD,
 MODIFIED_DT,
 MODIFIED_USER_ID
)
AS
 SELECT provider_base_dup.PRVDR_ID,
        provider_base_dup.TAX_ID_NO,
        provider_base_dup.TAXID_FORMAT_CD,
        provider_base_dup.MASKED_TAX_ID,
        provider_base_dup.STATE_CD,
        provider_base_dup.EXCLUDE_TIN_POIN_FLAG,
        provider_base_dup.MAILING_DT,
        provider_base_dup.MAILING_CYCLE,
        provider_base_dup.PRINT_DIR_FLAG,
        provider_base_dup.FIRST_NM,
        provider_base_dup.MIDDLE_NM,
        provider_base_dup.LAST_NM,
        provider_base_dup.SALUTATION_TXT,
        provider_base_dup.base_RANK,
        provider_base_dup.BUSINESS_UNIT_CD,
        provider_base_dup.CATEGORY,
        provider_base_dup.PRVDR_TYPE_CD,
        provider_base_dup.PRVDR_TYPE_DESC,
        provider_base_dup.DEGREE_CD,
        provider_base_dup.ACCEPT_PATIENTS_IND,
        provider_base_dup.LOCATION_STATUS_CD,
        provider_base_dup.SOURCE_TYPE_CD,
        provider_base_dup.CRED_STATUS_CD,
        provider_base_dup.MODIFIED_DT,
        provider_base_dup.MODIFIED_USER_ID
 FROM aetna.provider_base_dup
 ORDER BY provider_base_dup.PRVDR_ID,
          provider_base_dup.TAX_ID_NO,
          provider_base_dup.TAXID_FORMAT_CD,
          provider_base_dup.MASKED_TAX_ID,
          provider_base_dup.STATE_CD,
          provider_base_dup.EXCLUDE_TIN_POIN_FLAG,
          provider_base_dup.MAILING_DT,
          provider_base_dup.MAILING_CYCLE
SEGMENTED BY hash(provider_base_dup.PRVDR_ID, provider_base_dup.TAXID_FORMAT_CD, provider_base_dup.STATE_CD, provider_base_dup.EXCLUDE_TIN_POIN_FLAG, provider_base_dup.MAILING_DT, provider_base_dup.MAILING_CYCLE, provider_base_dup.PRINT_DIR_FLAG, provider_base_dup.SALUTATION_TXT) ALL NODES;

CREATE PROJECTION aetna.provider_base_src_super /*+basename(provider_base_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 MASKED_TAX_ID,
 STATE_CD,
 EXCLUDE_TIN_POIN_FLAG,
 MAILING_DT,
 MAILING_CYCLE,
 PRINT_DIR_FLAG,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 base_RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD,
 MODIFIED_DT,
 MODIFIED_USER_ID
)
AS
 SELECT provider_base_src.PRVDR_ID,
        provider_base_src.TAX_ID_NO,
        provider_base_src.TAXID_FORMAT_CD,
        provider_base_src.MASKED_TAX_ID,
        provider_base_src.STATE_CD,
        provider_base_src.EXCLUDE_TIN_POIN_FLAG,
        provider_base_src.MAILING_DT,
        provider_base_src.MAILING_CYCLE,
        provider_base_src.PRINT_DIR_FLAG,
        provider_base_src.FIRST_NM,
        provider_base_src.MIDDLE_NM,
        provider_base_src.LAST_NM,
        provider_base_src.SALUTATION_TXT,
        provider_base_src.base_RANK,
        provider_base_src.BUSINESS_UNIT_CD,
        provider_base_src.CATEGORY,
        provider_base_src.PRVDR_TYPE_CD,
        provider_base_src.PRVDR_TYPE_DESC,
        provider_base_src.DEGREE_CD,
        provider_base_src.ACCEPT_PATIENTS_IND,
        provider_base_src.LOCATION_STATUS_CD,
        provider_base_src.SOURCE_TYPE_CD,
        provider_base_src.CRED_STATUS_CD,
        provider_base_src.MODIFIED_DT,
        provider_base_src.MODIFIED_USER_ID
 FROM aetna.provider_base_src
 ORDER BY provider_base_src.PRVDR_ID,
          provider_base_src.TAX_ID_NO,
          provider_base_src.TAXID_FORMAT_CD,
          provider_base_src.MASKED_TAX_ID,
          provider_base_src.STATE_CD,
          provider_base_src.EXCLUDE_TIN_POIN_FLAG,
          provider_base_src.MAILING_DT,
          provider_base_src.MAILING_CYCLE
SEGMENTED BY hash(provider_base_src.PRVDR_ID, provider_base_src.TAXID_FORMAT_CD, provider_base_src.STATE_CD, provider_base_src.EXCLUDE_TIN_POIN_FLAG, provider_base_src.MAILING_DT, provider_base_src.MAILING_CYCLE, provider_base_src.PRINT_DIR_FLAG, provider_base_src.SALUTATION_TXT) ALL NODES;

CREATE PROJECTION aetna.specialty_int_super /*+basename(specialty_int),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD,
 MAILING_CYCLE,
 MODIFIED_DT,
 MODIFIED_USER_ID,
 MAILING_DT,
 update_flag
)
AS
 SELECT specialty_int.PRVDR_ID,
        specialty_int.TAX_ID_NO,
        specialty_int.PRVDR_CERT_YEAR,
        specialty_int.SPEC_NM,
        specialty_int.BOARD_STS_CD,
        specialty_int.MAILING_CYCLE,
        specialty_int.MODIFIED_DT,
        specialty_int.MODIFIED_USER_ID,
        specialty_int.MAILING_DT,
        specialty_int.update_flag
 FROM aetna.specialty_int
 ORDER BY specialty_int.PRVDR_ID,
          specialty_int.TAX_ID_NO
SEGMENTED BY hash(specialty_int.PRVDR_ID, specialty_int.PRVDR_CERT_YEAR, specialty_int.BOARD_STS_CD, specialty_int.MAILING_CYCLE, specialty_int.MODIFIED_DT, specialty_int.MODIFIED_USER_ID, specialty_int.MAILING_DT, specialty_int.update_flag) ALL NODES;

CREATE PROJECTION aetna.provider_base_sql_src_super /*+basename(provider_base_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 TAXID_FORMAT_CD,
 STATE_CD,
 FIRST_NM,
 MIDDLE_NM,
 LAST_NM,
 SALUTATION_TXT,
 RANK,
 BUSINESS_UNIT_CD,
 CATEGORY,
 PRVDR_TYPE_CD,
 PRVDR_TYPE_DESC,
 DEGREE_CD,
 ACCEPT_PATIENTS_IND,
 LOCATION_STATUS_CD,
 SOURCE_TYPE_CD,
 CRED_STATUS_CD
)
AS
 SELECT provider_base_sql_src.PRVDR_ID,
        provider_base_sql_src.TAX_ID_NO,
        provider_base_sql_src.TAXID_FORMAT_CD,
        provider_base_sql_src.STATE_CD,
        provider_base_sql_src.FIRST_NM,
        provider_base_sql_src.MIDDLE_NM,
        provider_base_sql_src.LAST_NM,
        provider_base_sql_src.SALUTATION_TXT,
        provider_base_sql_src.RANK,
        provider_base_sql_src.BUSINESS_UNIT_CD,
        provider_base_sql_src.CATEGORY,
        provider_base_sql_src.PRVDR_TYPE_CD,
        provider_base_sql_src.PRVDR_TYPE_DESC,
        provider_base_sql_src.DEGREE_CD,
        provider_base_sql_src.ACCEPT_PATIENTS_IND,
        provider_base_sql_src.LOCATION_STATUS_CD,
        provider_base_sql_src.SOURCE_TYPE_CD,
        provider_base_sql_src.CRED_STATUS_CD
 FROM aetna.provider_base_sql_src
 ORDER BY provider_base_sql_src.PRVDR_ID,
          provider_base_sql_src.TAX_ID_NO,
          provider_base_sql_src.TAXID_FORMAT_CD,
          provider_base_sql_src.STATE_CD,
          provider_base_sql_src.FIRST_NM,
          provider_base_sql_src.MIDDLE_NM,
          provider_base_sql_src.LAST_NM,
          provider_base_sql_src.SALUTATION_TXT
SEGMENTED BY hash(provider_base_sql_src.PRVDR_ID, provider_base_sql_src.TAX_ID_NO, provider_base_sql_src.CATEGORY, provider_base_sql_src.TAXID_FORMAT_CD, provider_base_sql_src.STATE_CD, provider_base_sql_src.FIRST_NM, provider_base_sql_src.MIDDLE_NM, provider_base_sql_src.LAST_NM) ALL NODES;

CREATE PROJECTION aetna.provider_loc_sql_src_super /*+basename(provider_loc_sql_src),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 ADDR_NO,
 MAILING_CYCLE,
 ACCEPT_PATIENTS_IND,
 LOC_STS_CD,
 STRADD1_TXT,
 STRADDR2_TXT,
 CITY_NM,
 STATE_CD,
 ZIP_CD,
 PHONE_NO,
 FAX_NO
)
AS
 SELECT provider_loc_sql_src.PRVDR_ID,
        provider_loc_sql_src.TAX_ID_NO,
        provider_loc_sql_src.ADDR_NO,
        provider_loc_sql_src.MAILING_CYCLE,
        provider_loc_sql_src.ACCEPT_PATIENTS_IND,
        provider_loc_sql_src.LOC_STS_CD,
        provider_loc_sql_src.STRADD1_TXT,
        provider_loc_sql_src.STRADDR2_TXT,
        provider_loc_sql_src.CITY_NM,
        provider_loc_sql_src.STATE_CD,
        provider_loc_sql_src.ZIP_CD,
        provider_loc_sql_src.PHONE_NO,
        provider_loc_sql_src.FAX_NO
 FROM aetna.provider_loc_sql_src
 ORDER BY provider_loc_sql_src.PRVDR_ID,
          provider_loc_sql_src.TAX_ID_NO,
          provider_loc_sql_src.ADDR_NO,
          provider_loc_sql_src.MAILING_CYCLE,
          provider_loc_sql_src.ACCEPT_PATIENTS_IND,
          provider_loc_sql_src.LOC_STS_CD,
          provider_loc_sql_src.STRADD1_TXT,
          provider_loc_sql_src.STRADDR2_TXT
SEGMENTED BY hash(provider_loc_sql_src.PRVDR_ID, provider_loc_sql_src.TAX_ID_NO, provider_loc_sql_src.ADDR_NO, provider_loc_sql_src.MAILING_CYCLE, provider_loc_sql_src.ZIP_CD, provider_loc_sql_src.PHONE_NO, provider_loc_sql_src.FAX_NO, provider_loc_sql_src.ACCEPT_PATIENTS_IND) ALL NODES;

CREATE PROJECTION aetna.provider_specialty_db2_src_super /*+basename(provider_specialty_db2_src),createtype(L)*/ 
(
 PRVDR_ID_NO,
 RPRVSPC_CRTFCTN_YR,
 SPCLT_NM,
 RPNP_PRCTC_ROLE_NM,
 NTWK_ID_NO
)
AS
 SELECT provider_specialty_db2_src.PRVDR_ID_NO,
        provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR,
        provider_specialty_db2_src.SPCLT_NM,
        provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM,
        provider_specialty_db2_src.NTWK_ID_NO
 FROM aetna.provider_specialty_db2_src
 ORDER BY provider_specialty_db2_src.PRVDR_ID_NO,
          provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR,
          provider_specialty_db2_src.SPCLT_NM,
          provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM,
          provider_specialty_db2_src.NTWK_ID_NO
SEGMENTED BY hash(provider_specialty_db2_src.PRVDR_ID_NO, provider_specialty_db2_src.RPRVSPC_CRTFCTN_YR, provider_specialty_db2_src.NTWK_ID_NO, provider_specialty_db2_src.RPNP_PRCTC_ROLE_NM, provider_specialty_db2_src.SPCLT_NM) ALL NODES;

CREATE PROJECTION aetna.specialty_super /*+basename(specialty),createtype(L)*/ 
(
 PRVDR_ID,
 TAX_ID_NO,
 PRVDR_CERT_YEAR,
 SPEC_NM,
 BOARD_STS_CD,
 MAILING_CYCLE,
 MODIFIED_DT,
 MODIFIED_USER_ID,
 MAILING_DT
)
AS
 SELECT specialty.PRVDR_ID,
        specialty.TAX_ID_NO,
        specialty.PRVDR_CERT_YEAR,
        specialty.SPEC_NM,
        specialty.BOARD_STS_CD,
        specialty.MAILING_CYCLE,
        specialty.MODIFIED_DT,
        specialty.MODIFIED_USER_ID,
        specialty.MAILING_DT
 FROM aetna.specialty
 ORDER BY specialty.PRVDR_ID,
          specialty.TAX_ID_NO
SEGMENTED BY hash(specialty.PRVDR_ID, specialty.PRVDR_CERT_YEAR, specialty.MAILING_CYCLE, specialty.MODIFIED_DT, specialty.MODIFIED_USER_ID, specialty.MAILING_DT, specialty.TAX_ID_NO, specialty.BOARD_STS_CD) ALL NODES;

CREATE PROJECTION aetna.provider_base_db2_src_super /*+basename(provider_base_db2_src),createtype(L)*/ 
(
 PRVDR_ID_NO,
 NTWK_ID_NO,
 INPD_FIRST_NM,
 INPD_MIDDLE_NM,
 INPD_LAST_NM,
 INPD_RANK_ABR,
 INPD_SALTN_ABR,
 RIP_PRVDR_TYPE_CD,
 RIP_PTYP_DSCRP_TXT,
 MNT_BY_BUS_UNIT_CD,
 DGRE_CD,
 ADDR_NO,
 RMBRCP_TXIDFRMT_CD,
 RMBRCP_TAXID_NO,
 MASKED_TAXID_NO,
 RPNSL_ACPT_PTNT_CD,
 NTLOC_STS_CD,
 ADDRD_STRA1LN_TXT,
 ADDRD_STRA2LN_TXT,
 ADDRD_STRACITY_NM,
 ADDRD_STRASTSH_ABR,
 RPSL_STRAZIP_CD,
 PRVSL_PRMRYPHNE_NO,
 PRVSL_FAX_NO,
 CRDSRC_TY_CD,
 PRVCRD_STS_CD
)
AS
 SELECT provider_base_db2_src.PRVDR_ID_NO,
        provider_base_db2_src.NTWK_ID_NO,
        provider_base_db2_src.INPD_FIRST_NM,
        provider_base_db2_src.INPD_MIDDLE_NM,
        provider_base_db2_src.INPD_LAST_NM,
        provider_base_db2_src.INPD_RANK_ABR,
        provider_base_db2_src.INPD_SALTN_ABR,
        provider_base_db2_src.RIP_PRVDR_TYPE_CD,
        provider_base_db2_src.RIP_PTYP_DSCRP_TXT,
        provider_base_db2_src.MNT_BY_BUS_UNIT_CD,
        provider_base_db2_src.DGRE_CD,
        provider_base_db2_src.ADDR_NO,
        provider_base_db2_src.RMBRCP_TXIDFRMT_CD,
        provider_base_db2_src.RMBRCP_TAXID_NO,
        provider_base_db2_src.MASKED_TAXID_NO,
        provider_base_db2_src.RPNSL_ACPT_PTNT_CD,
        provider_base_db2_src.NTLOC_STS_CD,
        provider_base_db2_src.ADDRD_STRA1LN_TXT,
        provider_base_db2_src.ADDRD_STRA2LN_TXT,
        provider_base_db2_src.ADDRD_STRACITY_NM,
        provider_base_db2_src.ADDRD_STRASTSH_ABR,
        provider_base_db2_src.RPSL_STRAZIP_CD,
        provider_base_db2_src.PRVSL_PRMRYPHNE_NO,
        provider_base_db2_src.PRVSL_FAX_NO,
        provider_base_db2_src.CRDSRC_TY_CD,
        provider_base_db2_src.PRVCRD_STS_CD
 FROM aetna.provider_base_db2_src
 ORDER BY provider_base_db2_src.PRVDR_ID_NO,
          provider_base_db2_src.NTWK_ID_NO,
          provider_base_db2_src.INPD_FIRST_NM,
          provider_base_db2_src.INPD_MIDDLE_NM,
          provider_base_db2_src.INPD_LAST_NM,
          provider_base_db2_src.INPD_RANK_ABR,
          provider_base_db2_src.INPD_SALTN_ABR,
          provider_base_db2_src.RIP_PRVDR_TYPE_CD
SEGMENTED BY hash(provider_base_db2_src.PRVDR_ID_NO, provider_base_db2_src.NTWK_ID_NO, provider_base_db2_src.ADDR_NO, provider_base_db2_src.RMBRCP_TAXID_NO, provider_base_db2_src.RPSL_STRAZIP_CD, provider_base_db2_src.PRVSL_PRMRYPHNE_NO, provider_base_db2_src.PRVSL_FAX_NO, provider_base_db2_src.INPD_FIRST_NM) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

