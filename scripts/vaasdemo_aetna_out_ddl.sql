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