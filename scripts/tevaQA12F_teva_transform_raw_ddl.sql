CREATE SCHEMA teva_transform;

CREATE SEQUENCE teva_transform.transform_lock_id  CACHE      1 ;
CREATE SEQUENCE teva_transform.teva_transform_log_id  CACHE      1 ;

CREATE TABLE teva_transform.teva_transforms
(
    transform_name varchar(255) NOT NULL,
    sql_repository varchar(255),
    sql_repository_branch varchar(255),
    is_active boolean,
    use_time_window boolean,
    window_from_time_utc timetz,
    window_to_time_utc timetz,
    notify_on_success boolean,
    notify_on_non_precondition_failure boolean,
    notify_on_precondition_failure boolean,
    updated_ts timestamp,
    CONSTRAINT teva_transform_teva_transforms_pk PRIMARY KEY (transform_name) DISABLED
);


CREATE TABLE teva_transform.teva_transform_steps
(
    transform_name varchar(255) NOT NULL,
    transform_step int NOT NULL,
    sql_file_path_in_repo varchar(1024),
    is_active boolean,
    updated_ts timestamp,
    is_precondition boolean,
    CONSTRAINT teva_transform_teva_transform_steps_pk PRIMARY KEY (transform_name, transform_step) DISABLED
);


CREATE TABLE teva_transform.teva_transform_control
(
    transform_name varchar(255),
    file_class_name varchar(255),
    batch_id int,
    updated_ts timestamp
);


CREATE TABLE teva_transform.teva_transform_log
(
    transform_name varchar(255),
    transform_step int,
    transform_statement int,
    all_steps_complete boolean,
    failed_in_precondition boolean,
    transform_start_time timestamp,
    transform_end_time timestamp,
    message varchar(65000),
    transform_run_id int,
    transform_lock_id int
);


CREATE TABLE teva_transform.teva_transform_step_log
(
    transform_name varchar(255) NOT NULL,
    transform_step int,
    script_name varchar(255) NOT NULL,
    log_time timestamp,
    log_entry varchar(255) NOT NULL
);


CREATE TABLE teva_transform.teva_transform_lock
(
    transform_lock_id int,
    transform_name varchar(255),
    transform_lock_time timestamp
);


CREATE TABLE teva_transform.teva_run_it_now
(
    transform_name varchar(255),
    updated_ts timestamp DEFAULT "sysdate"(),
    updated_by varchar(255) DEFAULT username()
);


CREATE PROJECTION teva_transform.teva_transforms_b0 /*+basename(teva_transforms),createtype(L)*/ 
(
 transform_name,
 sql_repository,
 sql_repository_branch,
 is_active,
 use_time_window,
 window_from_time_utc,
 window_to_time_utc,
 notify_on_success,
 notify_on_non_precondition_failure,
 notify_on_precondition_failure,
 updated_ts
)
AS
 SELECT teva_transforms.transform_name,
        teva_transforms.sql_repository,
        teva_transforms.sql_repository_branch,
        teva_transforms.is_active,
        teva_transforms.use_time_window,
        teva_transforms.window_from_time_utc,
        teva_transforms.window_to_time_utc,
        teva_transforms.notify_on_success,
        teva_transforms.notify_on_non_precondition_failure,
        teva_transforms.notify_on_precondition_failure,
        teva_transforms.updated_ts
 FROM teva_transform.teva_transforms
 ORDER BY teva_transforms.transform_name
SEGMENTED BY hash(teva_transforms.transform_name) ALL NODES;

CREATE PROJECTION teva_transform.teva_transform_steps_b0 /*+basename(teva_transform_steps),createtype(L)*/ 
(
 transform_name,
 transform_step,
 sql_file_path_in_repo,
 is_active,
 updated_ts,
 is_precondition
)
AS
 SELECT teva_transform_steps.transform_name,
        teva_transform_steps.transform_step,
        teva_transform_steps.sql_file_path_in_repo,
        teva_transform_steps.is_active,
        teva_transform_steps.updated_ts,
        teva_transform_steps.is_precondition
 FROM teva_transform.teva_transform_steps
 ORDER BY teva_transform_steps.transform_name,
          teva_transform_steps.transform_step
SEGMENTED BY hash(teva_transform_steps.transform_name, teva_transform_steps.transform_step) ALL NODES;

CREATE PROJECTION teva_transform.teva_transform_step_log_b0 /*+basename(teva_transform_step_log),createtype(L)*/ 
(
 transform_name,
 transform_step,
 script_name,
 log_time,
 log_entry
)
AS
 SELECT teva_transform_step_log.transform_name,
        teva_transform_step_log.transform_step,
        teva_transform_step_log.script_name,
        teva_transform_step_log.log_time,
        teva_transform_step_log.log_entry
 FROM teva_transform.teva_transform_step_log
 ORDER BY teva_transform_step_log.transform_name,
          teva_transform_step_log.transform_step,
          teva_transform_step_log.script_name,
          teva_transform_step_log.log_time,
          teva_transform_step_log.log_entry
SEGMENTED BY hash(teva_transform_step_log.transform_step, teva_transform_step_log.log_time, teva_transform_step_log.transform_name, teva_transform_step_log.script_name, teva_transform_step_log.log_entry) ALL NODES;

CREATE PROJECTION teva_transform.teva_transform_lock_b0 /*+basename(teva_transform_lock),createtype(L)*/ 
(
 transform_lock_id,
 transform_name,
 transform_lock_time
)
AS
 SELECT teva_transform_lock.transform_lock_id,
        teva_transform_lock.transform_name,
        teva_transform_lock.transform_lock_time
 FROM teva_transform.teva_transform_lock
 ORDER BY teva_transform_lock.transform_name
SEGMENTED BY hash(teva_transform_lock.transform_name) ALL NODES;

CREATE PROJECTION teva_transform.teva_transform_control_b0 /*+basename(teva_transform_control),createtype(L)*/ 
(
 transform_name,
 file_class_name,
 batch_id,
 updated_ts
)
AS
 SELECT teva_transform_control.transform_name,
        teva_transform_control.file_class_name,
        teva_transform_control.batch_id,
        teva_transform_control.updated_ts
 FROM teva_transform.teva_transform_control
 ORDER BY teva_transform_control.transform_name,
          teva_transform_control.file_class_name,
          teva_transform_control.batch_id,
          teva_transform_control.updated_ts
SEGMENTED BY hash(teva_transform_control.batch_id, teva_transform_control.updated_ts, teva_transform_control.transform_name, teva_transform_control.file_class_name) ALL NODES;

CREATE PROJECTION teva_transform.teva_transform_log_b0 /*+basename(teva_transform_log),createtype(L)*/ 
(
 transform_name,
 transform_step,
 transform_statement,
 all_steps_complete,
 failed_in_precondition,
 transform_start_time,
 transform_end_time,
 message,
 transform_run_id,
 transform_lock_id
)
AS
 SELECT teva_transform_log.transform_name,
        teva_transform_log.transform_step,
        teva_transform_log.transform_statement,
        teva_transform_log.all_steps_complete,
        teva_transform_log.failed_in_precondition,
        teva_transform_log.transform_start_time,
        teva_transform_log.transform_end_time,
        teva_transform_log.message,
        teva_transform_log.transform_run_id,
        teva_transform_log.transform_lock_id
 FROM teva_transform.teva_transform_log
 ORDER BY teva_transform_log.transform_name,
          teva_transform_log.transform_step,
          teva_transform_log.transform_statement,
          teva_transform_log.all_steps_complete,
          teva_transform_log.failed_in_precondition,
          teva_transform_log.transform_start_time,
          teva_transform_log.transform_end_time
SEGMENTED BY hash(teva_transform_log.transform_step, teva_transform_log.transform_statement, teva_transform_log.all_steps_complete, teva_transform_log.failed_in_precondition, teva_transform_log.transform_start_time, teva_transform_log.transform_end_time, teva_transform_log.transform_name) ALL NODES;

CREATE PROJECTION teva_transform.teva_run_it_now_b0 /*+basename(teva_run_it_now),createtype(L)*/ 
(
 transform_name,
 updated_ts,
 updated_by
)
AS
 SELECT teva_run_it_now.transform_name,
        teva_run_it_now.updated_ts,
        teva_run_it_now.updated_by
 FROM teva_transform.teva_run_it_now
 ORDER BY teva_run_it_now.transform_name,
          teva_run_it_now.updated_ts,
          teva_run_it_now.updated_by
SEGMENTED BY hash(teva_run_it_now.updated_ts, teva_run_it_now.transform_name, teva_run_it_now.updated_by) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

