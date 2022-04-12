CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*2*/ teva_transform.teva_transform_step_log FROM VERTICA teva.teva_transform.teva_transform_step_log;
COPY /*223*/ teva_transform.teva_transform_lock FROM VERTICA teva.teva_transform.teva_transform_lock;
COPY /*227*/ teva_transform.teva_transforms FROM VERTICA teva.teva_transform.teva_transforms;
COPY /*2058*/ teva_transform.teva_transform_steps FROM VERTICA teva.teva_transform.teva_transform_steps;
COPY /*23465*/ teva_transform.teva_transform_control FROM VERTICA teva.teva_transform.teva_transform_control;
COPY /*17095820*/ teva_transform.teva_transform_log FROM VERTICA teva.teva_transform.teva_transform_log;
DISCONNECT teva;
