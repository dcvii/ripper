COPY teva_transform.teva_transform_step_log FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transform_step_log/*' PARQUET;
COPY teva_transform.teva_transform_lock FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transform_lock/*' PARQUET;
COPY teva_transform.teva_transforms FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transforms/*' PARQUET;
COPY teva_transform.teva_transform_steps FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transform_steps/*' PARQUET;
COPY teva_transform.teva_transform_control FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transform_control/*' PARQUET;
COPY teva_transform.teva_transform_log FROM 's3://teva-export-buckt/tevaQA12H/teva_transform/teva_transform_log/*' PARQUET;
