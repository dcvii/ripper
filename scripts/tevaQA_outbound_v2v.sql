CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*4*/ outbound.zs_monitor_sales_force_product FROM VERTICA teva.outbound.zs_monitor_sales_force_product;
COPY /*2170*/ outbound.tmp_rep_status FROM VERTICA teva.outbound.tmp_rep_status;
COPY /*961954*/ outbound.oncology_adjusted_sales_final FROM VERTICA teva.outbound.oncology_adjusted_sales_final;
COPY /*6589335*/ outbound.asi_ims_presc_demo FROM VERTICA teva.outbound.asi_ims_presc_demo;
COPY /*121355032*/ outbound.asi_xponent_demographics FROM VERTICA teva.outbound.asi_xponent_demographics;
COPY /*125793030*/ outbound.market_presc_zip_divisor FROM VERTICA teva.outbound.market_presc_zip_divisor;
DISCONNECT teva;
