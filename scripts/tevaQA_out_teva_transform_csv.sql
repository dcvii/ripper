EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transform_step_log') AS SELECT * FROM teva_transform.teva_transform_step_log;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transform_lock') AS SELECT * FROM teva_transform.teva_transform_lock;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transforms') AS SELECT * FROM teva_transform.teva_transforms;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transform_steps') AS SELECT * FROM teva_transform.teva_transform_steps;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transform_control') AS SELECT * FROM teva_transform.teva_transform_control;
EXPORT TO CSV (directory='s3://teva-export-buckt/tevaQA/teva_transform/teva_transform_log') AS SELECT * FROM teva_transform.teva_transform_log;
