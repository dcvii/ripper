COPY outbound.zs_monitor_sales_force_product FROM 's3://teva-export-buckt/tevaQA12F/outbound/zs_monitor_sales_force_product/*' PARQUET;
COPY outbound.tmp_rep_status FROM 's3://teva-export-buckt/tevaQA12F/outbound/tmp_rep_status/*' PARQUET;
COPY outbound.oncology_adjusted_sales_final FROM 's3://teva-export-buckt/tevaQA12F/outbound/oncology_adjusted_sales_final/*' PARQUET;
COPY outbound.asi_ims_presc_demo FROM 's3://teva-export-buckt/tevaQA12F/outbound/asi_ims_presc_demo/*' PARQUET;
COPY outbound.asi_xponent_demographics FROM 's3://teva-export-buckt/tevaQA12F/outbound/asi_xponent_demographics/*' PARQUET;
COPY outbound.market_presc_zip_divisor FROM 's3://teva-export-buckt/tevaQA12F/outbound/market_presc_zip_divisor/*' PARQUET;
