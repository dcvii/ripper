COPY datamart.prescriber_rx_qty_base_adhoc FROM 's3://demo-data.full360.com/tevaQA/datamart/prescriber_rx_qty_base_adhoc/*' ;
COPY public.jhc_rx_mth FROM 's3://demo-data.full360.com/tevaQA/public/jhc_rx_mth/*' ;
COPY reporting.temp_payer_prescriber_summary FROM 's3://demo-data.full360.com/tevaQA/reporting/temp_payer_prescriber_summary/*' ;
COPY sandbox.sessions FROM 's3://demo-data.full360.com/tevaQA/sandbox/sessions/*' ;
COPY sandbox.comparison_ftf_health_plan_fid FROM 's3://demo-data.full360.com/tevaQA/sandbox/comparison_ftf_health_plan_fid/*' ;
COPY sandbox.comparison_payer_spine_detailed_kcf FROM 's3://demo-data.full360.com/tevaQA/sandbox/comparison_payer_spine_detailed_kcf/*' ;
COPY sandbox.comparison_iqvia_fid_plans FROM 's3://demo-data.full360.com/tevaQA/sandbox/comparison_iqvia_fid_plans/*' ;
COPY teva_transform.teva_transforms FROM 's3://demo-data.full360.com/tevaQA/teva_transform/teva_transforms/*' ;
