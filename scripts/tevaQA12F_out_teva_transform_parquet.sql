EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transform_step_log') AS SELECT * FROM teva_transform.teva_transform_step_log;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transform_lock') AS SELECT * FROM teva_transform.teva_transform_lock;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transforms') AS SELECT * FROM teva_transform.teva_transforms;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transform_steps') AS SELECT * FROM teva_transform.teva_transform_steps;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transform_control') AS SELECT * FROM teva_transform.teva_transform_control;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12F/teva_transform/teva_transform_log') AS SELECT * FROM teva_transform.teva_transform_log;
