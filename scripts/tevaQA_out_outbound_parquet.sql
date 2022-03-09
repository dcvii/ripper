EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/zs_monitor_sales_force_product') AS SELECT * FROM outbound.zs_monitor_sales_force_product;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/tmp_rep_status') AS SELECT * FROM outbound.tmp_rep_status;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/oncology_adjusted_sales_final') AS SELECT * FROM outbound.oncology_adjusted_sales_final;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/asi_ims_presc_demo') AS SELECT * FROM outbound.asi_ims_presc_demo;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/asi_xponent_demographics') AS SELECT * FROM outbound.asi_xponent_demographics;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA/outbound/market_presc_zip_divisor') AS SELECT * FROM outbound.market_presc_zip_divisor;
