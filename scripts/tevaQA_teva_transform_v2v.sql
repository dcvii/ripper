CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY teva_transform.teva_transform_step_log FROM VERTICA teva.teva_transform.teva_transform_step_log;
COPY teva_transform.teva_transform_lock FROM VERTICA teva.teva_transform.teva_transform_lock;
COPY teva_transform.teva_transforms FROM VERTICA teva.teva_transform.teva_transforms;
COPY teva_transform.teva_transform_steps FROM VERTICA teva.teva_transform.teva_transform_steps;
COPY teva_transform.teva_transform_control FROM VERTICA teva.teva_transform.teva_transform_control;
COPY teva_transform.teva_transform_log FROM VERTICA teva.teva_transform.teva_transform_log;
DISCONNECT teva;
