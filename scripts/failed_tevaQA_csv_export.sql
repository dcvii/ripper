EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/datamart/prescriber_rx_qty_base_adhoc') AS SELECT * FROM datamart.prescriber_rx_qty_base_adhoc;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/public/jhc_rx_mth') AS SELECT * FROM public.jhc_rx_mth;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/reporting/temp_payer_prescriber_summary') AS SELECT * FROM reporting.temp_payer_prescriber_summary;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/sandbox/sessions') AS SELECT * FROM sandbox.sessions;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/sandbox/comparison_ftf_health_plan_fid') AS SELECT * FROM sandbox.comparison_ftf_health_plan_fid;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/sandbox/comparison_payer_spine_detailed_kcf') AS SELECT * FROM sandbox.comparison_payer_spine_detailed_kcf;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/sandbox/comparison_iqvia_fid_plans') AS SELECT * FROM sandbox.comparison_iqvia_fid_plans;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transforms') AS SELECT * FROM teva_transform.teva_transforms;