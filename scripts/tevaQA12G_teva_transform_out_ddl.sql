CREATE SCHEMA teva_transform;

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