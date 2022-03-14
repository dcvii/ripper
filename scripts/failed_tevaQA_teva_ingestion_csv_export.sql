
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_MHJ_QTY_M_src') AS SELECT * FROM teva_ingestion.EXT_IMS_MHJ_QTY_M_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/MDM_PROFESSIONAL_src') AS SELECT * FROM teva_ingestion.MDM_PROFESSIONAL_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_MHJ_QTY_W_src') AS SELECT * FROM teva_ingestion.EXT_IMS_MHJ_QTY_W_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_MHJ_CNT_M_src') AS SELECT * FROM teva_ingestion.EXT_IMS_MHJ_CNT_M_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_DOUBLECLICK_DS_ADS_src') AS SELECT * FROM teva_ingestion.EXT_DOUBLECLICK_DS_ADS_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/XPD_CORE_METRICS_src') AS SELECT * FROM teva_ingestion.XPD_CORE_METRICS_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/MDM_SPECIALTY_src') AS SELECT * FROM teva_ingestion.MDM_SPECIALTY_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_MHJ_CNT_W_src') AS SELECT * FROM teva_ingestion.EXT_IMS_MHJ_CNT_W_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_FIA_FACT_src') AS SELECT * FROM teva_ingestion.EXT_IMS_FIA_FACT_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/MDM_ADDRESS_src') AS SELECT * FROM teva_ingestion.MDM_ADDRESS_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/MDM_ALTERNATE_ID_src') AS SELECT * FROM teva_ingestion.MDM_ALTERNATE_ID_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_INTEGRAL_AD_SCIENCE_src') AS SELECT * FROM teva_ingestion.EXT_INTEGRAL_AD_SCIENCE_src;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/teva_ingestion/EXT_IMS_FIA_FACT_V2_src') AS SELECT * FROM teva_ingestion.EXT_IMS_FIA_FACT_V2_src;