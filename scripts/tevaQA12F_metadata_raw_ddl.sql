CREATE SCHEMA metadata;

CREATE SEQUENCE metadata.feed_id_seq  CACHE      1 ;
CREATE SEQUENCE metadata.job_id_sequence ;

CREATE TABLE metadata.validation_data_type_reference
(
    data_type_id int NOT NULL,
    data_type varchar(20) NOT NULL,
    data_group varchar(20) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (data_type_id) DISABLED
);


CREATE TABLE metadata.log_data_validation_errors
(
    file_id int NOT NULL,
    record_id int NOT NULL,
    table_name varchar(255) NOT NULL,
    error_date timestamp NOT NULL,
    validation_rule varchar(255) NOT NULL,
    errored_field_name varchar(255) NOT NULL,
    errored_field_value varchar(255),
    job_id int NOT NULL,
    validation_parameters varchar(80) NOT NULL,
    error_type varchar(255) NOT NULL,
    error_severity varchar(255) NOT NULL,
    error_description varchar(255) NOT NULL
);


CREATE TABLE metadata.data_feed_metadata
(
    feed_id int NOT NULL,
    short_name varchar(255) NOT NULL,
    subject_area varchar(255) NOT NULL,
    source_name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    frequency varchar(255),
    incremental boolean,
    process_cleanse boolean NOT NULL,
    process_intg boolean NOT NULL,
    source_id int
);


CREATE TABLE metadata.log_files_purged
(
    batch_id int,
    feed_id int,
    feed_version int,
    file_id int,
    raw_table varchar(255),
    ti_table varchar(255),
    ti_purged boolean,
    ti_purge_ts timestamp,
    process_cleanse boolean,
    clns_table varchar(255),
    clns_purged boolean,
    clns_purge_ts timestamp,
    process_intg boolean,
    intg_table varchar(255),
    intg_purged boolean,
    intg_purge_ts timestamp,
    row_source varchar(255)
);


CREATE TABLE metadata.data_file_metadata_prepurge
(
    batch_id int,
    file_id int,
    feed_id int,
    feed_version int,
    processed_date timestamp,
    vintage varchar(10),
    raw_table varchar(255),
    cleansed_table varchar(255),
    file_location varchar(255),
    record_count int,
    status int
);


CREATE TABLE metadata.data_file_metadata_postpurge
(
    batch_id int,
    file_id int,
    feed_id int,
    feed_version int,
    processed_date timestamp,
    vintage varchar(10),
    raw_table varchar(255),
    cleansed_table varchar(255),
    file_location varchar(255),
    record_count int,
    status int
);


CREATE TABLE metadata.log_job_events
(
    event_id  IDENTITY ,
    job_id int NOT NULL,
    event_date timestamp NOT NULL,
    event_type int NOT NULL,
    event_description varchar(65000) NOT NULL,
    metric_name varchar(200) NOT NULL,
    metric_count varchar(50) NOT NULL,
    elapsed_time float NOT NULL
);


CREATE TABLE metadata.python_lock
(
    lock_name varchar(100),
    lock_time timestamp DEFAULT now(),
    "uuid" varchar(32),
    ip_address varchar(50)
);


CREATE TABLE metadata.id_lookup
(
    table_schema varchar(128),
    table_name varchar(128),
    lookup_order int,
    lookup_column_name varchar(128),
    result_column_name varchar(128),
    type_of_lookup varchar(128),
    is_active boolean DEFAULT true,
    create_date date DEFAULT "sysdate"(),
    comments varchar(500)
);


CREATE TABLE metadata.purge_list
(
    batch_id int,
    feed_id int,
    feed_version int,
    file_id int,
    raw_table varchar(255),
    ti_table varchar(255),
    ti_purged boolean,
    ti_purge_ts timestamp,
    process_cleanse boolean,
    clns_table varchar(255),
    clns_purged boolean,
    clns_purge_ts timestamp,
    process_intg boolean,
    intg_table varchar(255),
    intg_purged boolean,
    intg_purge_ts timestamp,
    row_source varchar(255)
);


CREATE TABLE metadata.data_file_metadata
(
    batch_id int NOT NULL,
    file_id int NOT NULL,
    feed_id int,
    feed_version int,
    processed_date timestamp,
    vintage varchar(10),
    raw_table varchar(255),
    cleansed_table varchar(255),
    file_location varchar(255),
    record_count int,
    status int,
    CONSTRAINT PK_data_file_metadata PRIMARY KEY (file_id) ENABLED
) INCLUDE SCHEMA PRIVILEGES;


CREATE TABLE metadata.fileclass_feedid_ver_xref
(
    feed_id int NOT NULL,
    feed_version int NOT NULL,
    file_class_name varchar(1024) NOT NULL,
    start_date_utc timestamp,
    end_date_utc timestamp,
    source_table varchar(1024),
    CONSTRAINT hps_feed_master_PK PRIMARY KEY (file_class_name) DISABLED
);


CREATE TABLE metadata.error_code_reference
(
    error_code varchar(255) NOT NULL,
    error_type varchar(255) NOT NULL,
    severity varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (error_code) DISABLED
);


CREATE TABLE metadata.event_type_reference
(
    event_type_id int NOT NULL,
    event_type varchar(50) NOT NULL,
    is_logged boolean NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (event_type_id) DISABLED
);


CREATE TABLE metadata.workflow_steps
(
    pkId  IDENTITY ,
    WorkflowId int NOT NULL,
    StepOrder int NOT NULL,
    StepDescription varchar(50) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (pkId) DISABLED
);


CREATE TABLE metadata.integration_mapping
(
    FEED_ID int,
    FEED_VERSION_ID int,
    CLNS_TABLE varchar(255),
    CLNS_FIELD varchar(255),
    ID_LKP_TABLE varchar(255),
    INPUT_ID_TYPE_LKP varchar(255),
    ID_LKP_ORDER int,
    ID_LKP_COLUMN varchar(255),
    PIVOT_IND varchar(255),
    BUCKET_NO int,
    BUCKET_FREQ varchar(255),
    DATE_COLUMN_NAME varchar(255),
    INTG_TABLE varchar(255),
    INTG_FIELD varchar(255),
    BUCKET_DATE_COLUMN_NAME varchar(255),
    BUCKET_TYPE_COLUMN_NAME varchar(255),
    DATE_FORMAT varchar(10)
);


CREATE TABLE metadata.data_file_metadata_bkp
(
    batch_id int,
    file_id int,
    feed_id int,
    feed_version int,
    processed_date timestamp,
    vintage varchar(10),
    raw_table varchar(255),
    cleansed_table varchar(255),
    file_location varchar(255),
    record_count int,
    status int
);


CREATE TEMPORARY TABLE metadata.tmp_DSC_debug
(
    duplicate_count int,
    priority int,
    min_date date,
    max_date date,
    base_date date,
    unique_file_id int,
    update_ts timestamp,
    file_name varchar(1024),
    report_id varchar(64),
    file_index varchar(16),
    rows_loaded int,
    brand varchar(200),
    date date,
    file_id int,
    row_count int
) ON COMMIT PRESERVE ROWS NO PROJECTION;


CREATE TABLE metadata.valid_values
(
    lov_name varchar(255) NOT NULL,
    valid_value varchar(255) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (lov_name, valid_value) DISABLED
);


CREATE TABLE metadata.file_status_reference
(
    file_status_id int NOT NULL,
    status_description varchar(255),
    CONSTRAINT C_PRIMARY PRIMARY KEY (file_status_id) DISABLED
);


CREATE TABLE metadata.validation_rules_mapping
(
    validation_rule_code varchar(10) NOT NULL,
    rule_description varchar(255) NOT NULL,
    error_code varchar(10) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (validation_rule_code) DISABLED
);


CREATE TABLE metadata.data_feed_version_metadata
(
    feed_id int,
    feed_version_id int,
    version_date timestamp,
    raw_table_name varchar(255),
    cleansed_table_name varchar(255),
    intg_procedure varchar(255),
    retention_type varchar(50),
    number_of_files_to_retain int
);


CREATE TABLE metadata.misc_settings_reference
(
    key varchar(20) NOT NULL,
    value varchar(200) NOT NULL,
    CONSTRAINT C_PRIMARY PRIMARY KEY (key, value) DISABLED
);


CREATE TABLE metadata.data_feed_version_validation_rules
(
    pkId  IDENTITY ,
    feed_id int NOT NULL,
    feed_version_id int NOT NULL,
    field varchar(50) NOT NULL,
    parameters varchar(50) NOT NULL,
    validation_rule_code varchar(4) NOT NULL,
    date_format varchar(20),
    CONSTRAINT C_PRIMARY PRIMARY KEY (pkId) DISABLED
);


CREATE TABLE metadata.log_configuration_validation_errors
(
    pkId  IDENTITY ,
    job_id int NOT NULL,
    error_date timestamp NOT NULL,
    creator varchar(255) NOT NULL,
    error_code varchar(255) NOT NULL,
    error_description varchar(999) NOT NULL
);


CREATE TABLE metadata.workflow_process
(
    process_id int NOT NULL,
    process_name varchar(100) NOT NULL,
    notify_on_success boolean DEFAULT true,
    notify_on_failure boolean DEFAULT true,
    comments varchar(500),
    create_timestamp timestamp DEFAULT now(),
    update_timestamp timestamp DEFAULT now(),
    CONSTRAINT C_PRIMARY PRIMARY KEY (process_id) DISABLED
);


CREATE TABLE metadata.workflow_command
(
    process_id int NOT NULL,
    command_step int NOT NULL,
    type varchar(100) NOT NULL,
    folder varchar(100) NOT NULL,
    file varchar(100) NOT NULL,
    arguments varchar(100),
    search_for_text varchar(100),
    replace_with_text varchar(100),
    comments varchar(500),
    is_active boolean DEFAULT true,
    create_timestamp timestamp DEFAULT now(),
    update_timestamp timestamp DEFAULT now(),
    CONSTRAINT C_PRIMARY PRIMARY KEY (process_id, command_step) DISABLED,
    CONSTRAINT chk_type CHECK ((workflow_command.type = ANY (ARRAY['SQL', 'PYTHON']))) ENABLED
);


CREATE TABLE metadata.workflow_log
(
    log_id  IDENTITY  ( 10 ) ,
    logged_at timestamp DEFAULT now(),
    process_id int NOT NULL,
    command_step int,
    type varchar(100) NOT NULL,
    full_path varchar(200),
    arguments varchar(100),
    message varchar(65000),
    row_count int,
    elapsed_time float,
    lock_uuid varchar(32)
);


CREATE TABLE metadata.wrkflw_cmnd_05132020
(
    process_id int,
    command_step int,
    type varchar(100),
    folder varchar(100),
    file varchar(100),
    arguments varchar(100),
    search_for_text varchar(100),
    replace_with_text varchar(100),
    comments varchar(500),
    is_active boolean,
    create_timestamp timestamp,
    update_timestamp timestamp
);


CREATE TABLE metadata.tmp_data_feed_ver_metadata
(
    feed_id int,
    feed_version_id int,
    version_date timestamp,
    raw_table_name varchar(255),
    cleansed_table_name varchar(255),
    intg_procedure varchar(255),
    retention_type varchar(50),
    number_of_files_to_retain int
);


ALTER TABLE metadata.workflow_command ADD CONSTRAINT C_FOREIGN FOREIGN KEY (process_id) references metadata.workflow_process (process_id);

CREATE PROJECTION metadata.error_code_reference_b0 /*+basename(error_code_reference),createtype(L)*/ 
(
 error_code,
 error_type,
 severity,
 description
)
AS
 SELECT error_code_reference.error_code,
        error_code_reference.error_type,
        error_code_reference.severity,
        error_code_reference.description
 FROM metadata.error_code_reference
 ORDER BY error_code_reference.error_code
SEGMENTED BY hash(error_code_reference.error_code) ALL NODES;

CREATE PROJECTION metadata.validation_data_type_reference_b0 /*+basename(validation_data_type_reference),createtype(L)*/ 
(
 data_type_id,
 data_type,
 data_group
)
AS
 SELECT validation_data_type_reference.data_type_id,
        validation_data_type_reference.data_type,
        validation_data_type_reference.data_group
 FROM metadata.validation_data_type_reference
 ORDER BY validation_data_type_reference.data_type_id
SEGMENTED BY hash(validation_data_type_reference.data_type_id) ALL NODES;

CREATE PROJECTION metadata.errorlog_b0 /*+basename(errorlog),createtype(L)*/ 
(
 file_id,
 record_id,
 table_name,
 error_date,
 validation_rule,
 errored_field_name,
 errored_field_value,
 job_id,
 validation_parameters,
 error_type,
 error_severity,
 error_description
)
AS
 SELECT log_data_validation_errors.file_id,
        log_data_validation_errors.record_id,
        log_data_validation_errors.table_name,
        log_data_validation_errors.error_date,
        log_data_validation_errors.validation_rule,
        log_data_validation_errors.errored_field_name,
        log_data_validation_errors.errored_field_value,
        log_data_validation_errors.job_id,
        log_data_validation_errors.validation_parameters,
        log_data_validation_errors.error_type,
        log_data_validation_errors.error_severity,
        log_data_validation_errors.error_description
 FROM metadata.log_data_validation_errors
 ORDER BY log_data_validation_errors.file_id,
          log_data_validation_errors.record_id,
          log_data_validation_errors.table_name,
          log_data_validation_errors.error_date,
          log_data_validation_errors.validation_rule,
          log_data_validation_errors.errored_field_name
SEGMENTED BY hash(log_data_validation_errors.record_id) ALL NODES;

CREATE PROJECTION metadata.data_feed_metadata_b0 /*+basename(data_feed_metadata),createtype(L)*/ 
(
 feed_id,
 short_name,
 subject_area,
 source_name,
 description,
 frequency,
 incremental,
 process_cleanse,
 process_intg,
 source_id
)
AS
 SELECT data_feed_metadata.feed_id,
        data_feed_metadata.short_name,
        data_feed_metadata.subject_area,
        data_feed_metadata.source_name,
        data_feed_metadata.description,
        data_feed_metadata.frequency,
        data_feed_metadata.incremental,
        data_feed_metadata.process_cleanse,
        data_feed_metadata.process_intg,
        data_feed_metadata.source_id
 FROM metadata.data_feed_metadata
 ORDER BY data_feed_metadata.feed_id,
          data_feed_metadata.short_name,
          data_feed_metadata.subject_area,
          data_feed_metadata.source_name,
          data_feed_metadata.description,
          data_feed_metadata.frequency,
          data_feed_metadata.incremental,
          data_feed_metadata.process_cleanse,
          data_feed_metadata.process_intg
SEGMENTED BY hash(data_feed_metadata.feed_id, data_feed_metadata.incremental, data_feed_metadata.process_cleanse, data_feed_metadata.process_intg, data_feed_metadata.short_name, data_feed_metadata.subject_area, data_feed_metadata.source_name, data_feed_metadata.description, data_feed_metadata.frequency) ALL NODES;

CREATE PROJECTION metadata.log_files_purged_b0 /*+basename(log_files_purged),createtype(A)*/ 
(
 batch_id,
 feed_id,
 feed_version,
 file_id,
 raw_table,
 ti_table,
 ti_purged,
 ti_purge_ts,
 process_cleanse,
 clns_table,
 clns_purged,
 clns_purge_ts,
 process_intg,
 intg_table,
 intg_purged,
 intg_purge_ts,
 row_source
)
AS
 SELECT log_files_purged.batch_id,
        log_files_purged.feed_id,
        log_files_purged.feed_version,
        log_files_purged.file_id,
        log_files_purged.raw_table,
        log_files_purged.ti_table,
        log_files_purged.ti_purged,
        log_files_purged.ti_purge_ts,
        log_files_purged.process_cleanse,
        log_files_purged.clns_table,
        log_files_purged.clns_purged,
        log_files_purged.clns_purge_ts,
        log_files_purged.process_intg,
        log_files_purged.intg_table,
        log_files_purged.intg_purged,
        log_files_purged.intg_purge_ts,
        log_files_purged.row_source
 FROM metadata.log_files_purged
 ORDER BY log_files_purged.raw_table,
          log_files_purged.file_id
SEGMENTED BY hash(log_files_purged.file_id) ALL NODES;

CREATE PROJECTION metadata.data_file_metadata_prepurge_b0 /*+basename(data_file_metadata_prepurge),createtype(A)*/ 
(
 batch_id,
 file_id,
 feed_id,
 feed_version,
 processed_date,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count,
 status
)
AS
 SELECT data_file_metadata_prepurge.batch_id,
        data_file_metadata_prepurge.file_id,
        data_file_metadata_prepurge.feed_id,
        data_file_metadata_prepurge.feed_version,
        data_file_metadata_prepurge.processed_date,
        data_file_metadata_prepurge.vintage,
        data_file_metadata_prepurge.raw_table,
        data_file_metadata_prepurge.cleansed_table,
        data_file_metadata_prepurge.file_location,
        data_file_metadata_prepurge.record_count,
        data_file_metadata_prepurge.status
 FROM metadata.data_file_metadata_prepurge
 ORDER BY data_file_metadata_prepurge.batch_id
SEGMENTED BY hash(data_file_metadata_prepurge.batch_id, data_file_metadata_prepurge.file_id, data_file_metadata_prepurge.feed_id, data_file_metadata_prepurge.feed_version, data_file_metadata_prepurge.processed_date, data_file_metadata_prepurge.record_count, data_file_metadata_prepurge.status, data_file_metadata_prepurge.vintage, data_file_metadata_prepurge.raw_table, data_file_metadata_prepurge.cleansed_table, data_file_metadata_prepurge.file_location) ALL NODES;

CREATE PROJECTION metadata.data_file_metadata_postpurge_b0 /*+basename(data_file_metadata_postpurge),createtype(A)*/ 
(
 batch_id,
 file_id,
 feed_id,
 feed_version,
 processed_date,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count,
 status
)
AS
 SELECT data_file_metadata_postpurge.batch_id,
        data_file_metadata_postpurge.file_id,
        data_file_metadata_postpurge.feed_id,
        data_file_metadata_postpurge.feed_version,
        data_file_metadata_postpurge.processed_date,
        data_file_metadata_postpurge.vintage,
        data_file_metadata_postpurge.raw_table,
        data_file_metadata_postpurge.cleansed_table,
        data_file_metadata_postpurge.file_location,
        data_file_metadata_postpurge.record_count,
        data_file_metadata_postpurge.status
 FROM metadata.data_file_metadata_postpurge
 ORDER BY data_file_metadata_postpurge.batch_id
SEGMENTED BY hash(data_file_metadata_postpurge.batch_id, data_file_metadata_postpurge.file_id, data_file_metadata_postpurge.feed_id, data_file_metadata_postpurge.feed_version, data_file_metadata_postpurge.processed_date, data_file_metadata_postpurge.record_count, data_file_metadata_postpurge.status, data_file_metadata_postpurge.vintage, data_file_metadata_postpurge.raw_table, data_file_metadata_postpurge.cleansed_table, data_file_metadata_postpurge.file_location) ALL NODES;

CREATE PROJECTION metadata.log_job_events_bu_v1_b0 /*+basename(log_job_events_bu_v1),createtype(A)*/ 
(
 event_id,
 job_id,
 event_date,
 event_type,
 event_description,
 metric_name,
 metric_count,
 elapsed_time
)
AS
 SELECT log_job_events.event_id,
        log_job_events.job_id,
        log_job_events.event_date,
        log_job_events.event_type,
        log_job_events.event_description,
        log_job_events.metric_name,
        log_job_events.metric_count,
        log_job_events.elapsed_time
 FROM metadata.log_job_events
 ORDER BY log_job_events.event_id
SEGMENTED BY hash(log_job_events.event_id) ALL NODES;

CREATE PROJECTION metadata.data_file_metadata__primary__v1a17Q3
(
 batch_id ENCODING DELTARANGE_COMP,
 file_id ENCODING COMMONDELTA_COMP,
 feed_id ENCODING COMMONDELTA_COMP,
 feed_version ENCODING RLE,
 processed_date ENCODING DELTARANGE_COMP,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count ENCODING DELTARANGE_COMP,
 status ENCODING COMMONDELTA_COMP
)
AS
 SELECT data_file_metadata.batch_id,
        data_file_metadata.file_id,
        data_file_metadata.feed_id,
        data_file_metadata.feed_version,
        data_file_metadata.processed_date,
        data_file_metadata.vintage,
        data_file_metadata.raw_table,
        data_file_metadata.cleansed_table,
        data_file_metadata.file_location,
        data_file_metadata.record_count,
        data_file_metadata.status
 FROM metadata.data_file_metadata
 ORDER BY data_file_metadata.file_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION metadata.data_file_metadata__super__v1c17Q3_node0001 /*+basename(data_file_metadata__super__v1c17Q3),createtype(D)*/ 
(
 batch_id ENCODING DELTARANGE_COMP,
 file_id ENCODING COMMONDELTA_COMP,
 feed_id ENCODING COMMONDELTA_COMP,
 feed_version ENCODING RLE,
 processed_date ENCODING DELTARANGE_COMP,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count ENCODING DELTARANGE_COMP,
 status ENCODING COMMONDELTA_COMP
)
AS
 SELECT data_file_metadata.batch_id,
        data_file_metadata.file_id,
        data_file_metadata.feed_id,
        data_file_metadata.feed_version,
        data_file_metadata.processed_date,
        data_file_metadata.vintage,
        data_file_metadata.raw_table,
        data_file_metadata.cleansed_table,
        data_file_metadata.file_location,
        data_file_metadata.record_count,
        data_file_metadata.status
 FROM metadata.data_file_metadata
 ORDER BY data_file_metadata.file_id,
          data_file_metadata.feed_version,
          data_file_metadata.vintage,
          data_file_metadata.status,
          data_file_metadata.cleansed_table,
          data_file_metadata.feed_id,
          data_file_metadata.raw_table,
          data_file_metadata.file_location,
          data_file_metadata.record_count,
          data_file_metadata.batch_id,
          data_file_metadata.processed_date
UNSEGMENTED ALL NODES;

CREATE PROJECTION metadata.python_lock_b0 /*+basename(python_lock),createtype(L)*/ 
(
 lock_name,
 lock_time,
 "uuid",
 ip_address
)
AS
 SELECT python_lock.lock_name,
        python_lock.lock_time,
        python_lock."uuid",
        python_lock.ip_address
 FROM metadata.python_lock
 ORDER BY python_lock.lock_name,
          python_lock.lock_time,
          python_lock."uuid",
          python_lock.ip_address
SEGMENTED BY hash(python_lock.lock_time, python_lock."uuid", python_lock.ip_address, python_lock.lock_name) ALL NODES;

CREATE PROJECTION metadata.id_lookup_b0 /*+basename(id_lookup),createtype(L)*/ 
(
 table_schema,
 table_name,
 lookup_order,
 lookup_column_name,
 result_column_name,
 type_of_lookup,
 is_active,
 create_date,
 comments
)
AS
 SELECT id_lookup.table_schema,
        id_lookup.table_name,
        id_lookup.lookup_order,
        id_lookup.lookup_column_name,
        id_lookup.result_column_name,
        id_lookup.type_of_lookup,
        id_lookup.is_active,
        id_lookup.create_date,
        id_lookup.comments
 FROM metadata.id_lookup
 ORDER BY id_lookup.table_schema,
          id_lookup.table_name,
          id_lookup.lookup_order,
          id_lookup.lookup_column_name,
          id_lookup.result_column_name,
          id_lookup.type_of_lookup,
          id_lookup.is_active,
          id_lookup.create_date,
          id_lookup.comments
SEGMENTED BY hash(id_lookup.lookup_order, id_lookup.is_active, id_lookup.create_date, id_lookup.table_schema, id_lookup.table_name, id_lookup.lookup_column_name, id_lookup.result_column_name, id_lookup.type_of_lookup, id_lookup.comments) ALL NODES;

CREATE PROJECTION metadata.workflow_process_b0 /*+basename(workflow_process),createtype(L)*/ 
(
 process_id,
 process_name,
 notify_on_success,
 notify_on_failure,
 comments,
 create_timestamp,
 update_timestamp
)
AS
 SELECT workflow_process.process_id,
        workflow_process.process_name,
        workflow_process.notify_on_success,
        workflow_process.notify_on_failure,
        workflow_process.comments,
        workflow_process.create_timestamp,
        workflow_process.update_timestamp
 FROM metadata.workflow_process
 ORDER BY workflow_process.process_id
SEGMENTED BY hash(workflow_process.process_id) ALL NODES;

CREATE PROJECTION metadata.workflow_command_b0 /*+basename(workflow_command),createtype(L)*/ 
(
 process_id,
 command_step,
 type,
 folder,
 file,
 arguments,
 search_for_text,
 replace_with_text,
 comments,
 is_active,
 create_timestamp,
 update_timestamp
)
AS
 SELECT workflow_command.process_id,
        workflow_command.command_step,
        workflow_command.type,
        workflow_command.folder,
        workflow_command.file,
        workflow_command.arguments,
        workflow_command.search_for_text,
        workflow_command.replace_with_text,
        workflow_command.comments,
        workflow_command.is_active,
        workflow_command.create_timestamp,
        workflow_command.update_timestamp
 FROM metadata.workflow_command
 ORDER BY workflow_command.process_id,
          workflow_command.command_step
SEGMENTED BY hash(workflow_command.process_id, workflow_command.command_step) ALL NODES;

CREATE PROJECTION metadata.data_file_metadata_b0 /*+basename(data_file_metadata),createtype(L)*/ 
(
 batch_id,
 file_id,
 feed_id,
 feed_version,
 processed_date,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count,
 status
)
AS
 SELECT data_file_metadata.batch_id,
        data_file_metadata.file_id,
        data_file_metadata.feed_id,
        data_file_metadata.feed_version,
        data_file_metadata.processed_date,
        data_file_metadata.vintage,
        data_file_metadata.raw_table,
        data_file_metadata.cleansed_table,
        data_file_metadata.file_location,
        data_file_metadata.record_count,
        data_file_metadata.status
 FROM metadata.data_file_metadata
 ORDER BY data_file_metadata.batch_id
SEGMENTED BY hash(data_file_metadata.batch_id, data_file_metadata.file_id, data_file_metadata.feed_id, data_file_metadata.feed_version, data_file_metadata.processed_date, data_file_metadata.record_count, data_file_metadata.status, data_file_metadata.vintage, data_file_metadata.raw_table, data_file_metadata.cleansed_table, data_file_metadata.file_location) ALL NODES;

CREATE PROJECTION metadata.fileclass_feedid_ver_xref_b0 /*+basename(fileclass_feedid_ver_xref),createtype(L)*/ 
(
 feed_id,
 feed_version,
 file_class_name,
 start_date_utc,
 end_date_utc,
 source_table
)
AS
 SELECT fileclass_feedid_ver_xref.feed_id,
        fileclass_feedid_ver_xref.feed_version,
        fileclass_feedid_ver_xref.file_class_name,
        fileclass_feedid_ver_xref.start_date_utc,
        fileclass_feedid_ver_xref.end_date_utc,
        fileclass_feedid_ver_xref.source_table
 FROM metadata.fileclass_feedid_ver_xref
 ORDER BY fileclass_feedid_ver_xref.file_class_name
SEGMENTED BY hash(fileclass_feedid_ver_xref.file_class_name) ALL NODES;

CREATE PROJECTION metadata.status_b0 /*+basename(status),createtype(L)*/ 
(
 file_status_id,
 status_description
)
AS
 SELECT file_status_reference.file_status_id,
        file_status_reference.status_description
 FROM metadata.file_status_reference
 ORDER BY file_status_reference.file_status_id,
          file_status_reference.status_description
SEGMENTED BY hash(file_status_reference.file_status_id, file_status_reference.status_description) ALL NODES;

CREATE PROJECTION metadata.job_event_types_b0 /*+basename(job_event_types),createtype(L)*/ 
(
 event_type_id,
 event_type,
 is_logged
)
AS
 SELECT event_type_reference.event_type_id,
        event_type_reference.event_type,
        event_type_reference.is_logged
 FROM metadata.event_type_reference
 ORDER BY event_type_reference.event_type_id
SEGMENTED BY hash(event_type_reference.event_type_id) ALL NODES;

CREATE PROJECTION metadata.log_errors_configuration_validation_b0 /*+basename(log_errors_configuration_validation),createtype(L)*/ 
(
 pkId,
 job_id,
 error_date,
 creator,
 error_code,
 error_description
)
AS
 SELECT log_configuration_validation_errors.pkId,
        log_configuration_validation_errors.job_id,
        log_configuration_validation_errors.error_date,
        log_configuration_validation_errors.creator,
        log_configuration_validation_errors.error_code,
        log_configuration_validation_errors.error_description
 FROM metadata.log_configuration_validation_errors
 ORDER BY log_configuration_validation_errors.pkId,
          log_configuration_validation_errors.job_id,
          log_configuration_validation_errors.error_date,
          log_configuration_validation_errors.creator,
          log_configuration_validation_errors.error_code,
          log_configuration_validation_errors.error_description
SEGMENTED BY hash(log_configuration_validation_errors.pkId, log_configuration_validation_errors.job_id, log_configuration_validation_errors.error_date, log_configuration_validation_errors.creator, log_configuration_validation_errors.error_code, log_configuration_validation_errors.error_description) ALL NODES;

CREATE PROJECTION metadata.workflow_steps_b0 /*+basename(workflow_steps),createtype(L)*/ 
(
 pkId,
 WorkflowId,
 StepOrder,
 StepDescription
)
AS
 SELECT workflow_steps.pkId,
        workflow_steps.WorkflowId,
        workflow_steps.StepOrder,
        workflow_steps.StepDescription
 FROM metadata.workflow_steps
 ORDER BY workflow_steps.pkId
SEGMENTED BY hash(workflow_steps.pkId) ALL NODES;

CREATE PROJECTION metadata.integration_mapping_b0 /*+basename(integration_mapping),createtype(A)*/ 
(
 FEED_ID,
 FEED_VERSION_ID,
 CLNS_TABLE,
 CLNS_FIELD,
 ID_LKP_TABLE,
 INPUT_ID_TYPE_LKP,
 ID_LKP_ORDER,
 ID_LKP_COLUMN,
 PIVOT_IND,
 BUCKET_NO,
 BUCKET_FREQ,
 DATE_COLUMN_NAME,
 INTG_TABLE,
 INTG_FIELD,
 BUCKET_DATE_COLUMN_NAME,
 BUCKET_TYPE_COLUMN_NAME,
 DATE_FORMAT
)
AS
 SELECT integration_mapping.FEED_ID,
        integration_mapping.FEED_VERSION_ID,
        integration_mapping.CLNS_TABLE,
        integration_mapping.CLNS_FIELD,
        integration_mapping.ID_LKP_TABLE,
        integration_mapping.INPUT_ID_TYPE_LKP,
        integration_mapping.ID_LKP_ORDER,
        integration_mapping.ID_LKP_COLUMN,
        integration_mapping.PIVOT_IND,
        integration_mapping.BUCKET_NO,
        integration_mapping.BUCKET_FREQ,
        integration_mapping.DATE_COLUMN_NAME,
        integration_mapping.INTG_TABLE,
        integration_mapping.INTG_FIELD,
        integration_mapping.BUCKET_DATE_COLUMN_NAME,
        integration_mapping.BUCKET_TYPE_COLUMN_NAME,
        integration_mapping.DATE_FORMAT
 FROM metadata.integration_mapping
 ORDER BY integration_mapping.FEED_ID,
          integration_mapping.FEED_VERSION_ID,
          integration_mapping.CLNS_TABLE,
          integration_mapping.CLNS_FIELD,
          integration_mapping.ID_LKP_TABLE,
          integration_mapping.INPUT_ID_TYPE_LKP,
          integration_mapping.ID_LKP_ORDER,
          integration_mapping.ID_LKP_COLUMN,
          integration_mapping.PIVOT_IND,
          integration_mapping.BUCKET_NO,
          integration_mapping.BUCKET_FREQ,
          integration_mapping.DATE_COLUMN_NAME,
          integration_mapping.INTG_TABLE,
          integration_mapping.INTG_FIELD
SEGMENTED BY hash(integration_mapping.FEED_ID, integration_mapping.FEED_VERSION_ID, integration_mapping.ID_LKP_ORDER, integration_mapping.BUCKET_NO, integration_mapping.CLNS_TABLE, integration_mapping.CLNS_FIELD, integration_mapping.ID_LKP_TABLE, integration_mapping.INPUT_ID_TYPE_LKP, integration_mapping.ID_LKP_COLUMN, integration_mapping.PIVOT_IND, integration_mapping.BUCKET_FREQ, integration_mapping.DATE_COLUMN_NAME, integration_mapping.INTG_TABLE, integration_mapping.INTG_FIELD) ALL NODES;

CREATE PROJECTION metadata.data_file_metadata_bkp_b0 /*+basename(data_file_metadata_bkp),createtype(A)*/ 
(
 batch_id,
 file_id,
 feed_id,
 feed_version,
 processed_date,
 vintage,
 raw_table,
 cleansed_table,
 file_location,
 record_count,
 status
)
AS
 SELECT data_file_metadata_bkp.batch_id,
        data_file_metadata_bkp.file_id,
        data_file_metadata_bkp.feed_id,
        data_file_metadata_bkp.feed_version,
        data_file_metadata_bkp.processed_date,
        data_file_metadata_bkp.vintage,
        data_file_metadata_bkp.raw_table,
        data_file_metadata_bkp.cleansed_table,
        data_file_metadata_bkp.file_location,
        data_file_metadata_bkp.record_count,
        data_file_metadata_bkp.status
 FROM metadata.data_file_metadata_bkp
 ORDER BY data_file_metadata_bkp.batch_id
SEGMENTED BY hash(data_file_metadata_bkp.batch_id, data_file_metadata_bkp.file_id, data_file_metadata_bkp.feed_id, data_file_metadata_bkp.feed_version, data_file_metadata_bkp.processed_date, data_file_metadata_bkp.record_count, data_file_metadata_bkp.status, data_file_metadata_bkp.vintage, data_file_metadata_bkp.raw_table, data_file_metadata_bkp.cleansed_table, data_file_metadata_bkp.file_location) ALL NODES;

CREATE PROJECTION metadata.tmp_DSC_debug_b0 /*+basename(tmp_DSC_debug),createtype(A)*/ 
(
 duplicate_count,
 priority,
 min_date,
 max_date,
 base_date,
 unique_file_id,
 update_ts,
 file_name,
 report_id,
 file_index,
 rows_loaded,
 brand,
 date,
 file_id,
 row_count
)
AS
 SELECT tmp_DSC_debug.duplicate_count,
        tmp_DSC_debug.priority,
        tmp_DSC_debug.min_date,
        tmp_DSC_debug.max_date,
        tmp_DSC_debug.base_date,
        tmp_DSC_debug.unique_file_id,
        tmp_DSC_debug.update_ts,
        tmp_DSC_debug.file_name,
        tmp_DSC_debug.report_id,
        tmp_DSC_debug.file_index,
        tmp_DSC_debug.rows_loaded,
        tmp_DSC_debug.brand,
        tmp_DSC_debug.date,
        tmp_DSC_debug.file_id,
        tmp_DSC_debug.row_count
 FROM metadata.tmp_DSC_debug
 ORDER BY tmp_DSC_debug.duplicate_count,
          tmp_DSC_debug.priority,
          tmp_DSC_debug.min_date,
          tmp_DSC_debug.max_date,
          tmp_DSC_debug.base_date,
          tmp_DSC_debug.unique_file_id,
          tmp_DSC_debug.update_ts,
          tmp_DSC_debug.file_name,
          tmp_DSC_debug.report_id,
          tmp_DSC_debug.file_index,
          tmp_DSC_debug.rows_loaded,
          tmp_DSC_debug.brand,
          tmp_DSC_debug.date,
          tmp_DSC_debug.file_id,
          tmp_DSC_debug.row_count
SEGMENTED BY hash(tmp_DSC_debug.unique_file_id) ALL NODES;

CREATE PROJECTION metadata.valid_values_b0 /*+basename(valid_values),createtype(L)*/ 
(
 lov_name,
 valid_value
)
AS
 SELECT valid_values.lov_name,
        valid_values.valid_value
 FROM metadata.valid_values
 ORDER BY valid_values.lov_name,
          valid_values.valid_value
SEGMENTED BY hash(valid_values.lov_name, valid_values.valid_value) ALL NODES;

CREATE PROJECTION metadata.validation_rules_mapping_b0 /*+basename(validation_rules_mapping),createtype(L)*/ 
(
 validation_rule_code,
 rule_description,
 error_code
)
AS
 SELECT validation_rules_mapping.validation_rule_code,
        validation_rules_mapping.rule_description,
        validation_rules_mapping.error_code
 FROM metadata.validation_rules_mapping
 ORDER BY validation_rules_mapping.error_code,
          validation_rules_mapping.validation_rule_code
SEGMENTED BY hash(validation_rules_mapping.validation_rule_code) ALL NODES;

CREATE PROJECTION metadata.data_feed_version_metadata_b0 /*+basename(data_feed_version_metadata),createtype(A)*/ 
(
 feed_id,
 feed_version_id,
 version_date,
 raw_table_name,
 cleansed_table_name,
 intg_procedure,
 retention_type,
 number_of_files_to_retain
)
AS
 SELECT data_feed_version_metadata.feed_id,
        data_feed_version_metadata.feed_version_id,
        data_feed_version_metadata.version_date,
        data_feed_version_metadata.raw_table_name,
        data_feed_version_metadata.cleansed_table_name,
        data_feed_version_metadata.intg_procedure,
        data_feed_version_metadata.retention_type,
        data_feed_version_metadata.number_of_files_to_retain
 FROM metadata.data_feed_version_metadata
 ORDER BY data_feed_version_metadata.feed_id,
          data_feed_version_metadata.feed_version_id,
          data_feed_version_metadata.version_date,
          data_feed_version_metadata.raw_table_name,
          data_feed_version_metadata.cleansed_table_name,
          data_feed_version_metadata.intg_procedure
SEGMENTED BY hash(data_feed_version_metadata.feed_id, data_feed_version_metadata.feed_version_id, data_feed_version_metadata.version_date, data_feed_version_metadata.raw_table_name, data_feed_version_metadata.cleansed_table_name, data_feed_version_metadata.intg_procedure) ALL NODES;

CREATE PROJECTION metadata.misc_settings_reference_b0 /*+basename(misc_settings_reference),createtype(L)*/ 
(
 key,
 value
)
AS
 SELECT misc_settings_reference.key,
        misc_settings_reference.value
 FROM metadata.misc_settings_reference
 ORDER BY misc_settings_reference.key,
          misc_settings_reference.value
SEGMENTED BY hash(misc_settings_reference.key, misc_settings_reference.value) ALL NODES;

CREATE PROJECTION metadata.data_feed_version_validation_rules_b0 /*+basename(data_feed_version_validation_rules),createtype(L)*/ 
(
 pkId,
 feed_id,
 feed_version_id,
 field,
 parameters,
 validation_rule_code,
 date_format
)
AS
 SELECT data_feed_version_validation_rules.pkId,
        data_feed_version_validation_rules.feed_id,
        data_feed_version_validation_rules.feed_version_id,
        data_feed_version_validation_rules.field,
        data_feed_version_validation_rules.parameters,
        data_feed_version_validation_rules.validation_rule_code,
        data_feed_version_validation_rules.date_format
 FROM metadata.data_feed_version_validation_rules
 ORDER BY data_feed_version_validation_rules.pkId
SEGMENTED BY hash(data_feed_version_validation_rules.pkId) ALL NODES;

CREATE PROJECTION metadata.workflow_log_b0 /*+basename(workflow_log),createtype(L)*/ 
(
 log_id,
 logged_at,
 process_id,
 command_step,
 type,
 full_path,
 arguments,
 message,
 row_count,
 elapsed_time,
 lock_uuid
)
AS
 SELECT workflow_log.log_id,
        workflow_log.logged_at,
        workflow_log.process_id,
        workflow_log.command_step,
        workflow_log.type,
        workflow_log.full_path,
        workflow_log.arguments,
        workflow_log.message,
        workflow_log.row_count,
        workflow_log.elapsed_time,
        workflow_log.lock_uuid
 FROM metadata.workflow_log
 ORDER BY workflow_log.log_id,
          workflow_log.logged_at,
          workflow_log.process_id,
          workflow_log.command_step,
          workflow_log.type,
          workflow_log.full_path,
          workflow_log.arguments,
          workflow_log.message
SEGMENTED BY hash(workflow_log.log_id, workflow_log.logged_at, workflow_log.process_id, workflow_log.command_step, workflow_log.row_count, workflow_log.elapsed_time, workflow_log.lock_uuid, workflow_log.type) ALL NODES;

CREATE PROJECTION metadata.purge_list_b0 /*+basename(purge_list),createtype(L)*/ 
(
 batch_id,
 feed_id,
 feed_version,
 file_id,
 raw_table,
 ti_table,
 ti_purged,
 ti_purge_ts,
 process_cleanse,
 clns_table,
 clns_purged,
 clns_purge_ts,
 process_intg,
 intg_table,
 intg_purged,
 intg_purge_ts,
 row_source
)
AS
 SELECT purge_list.batch_id,
        purge_list.feed_id,
        purge_list.feed_version,
        purge_list.file_id,
        purge_list.raw_table,
        purge_list.ti_table,
        purge_list.ti_purged,
        purge_list.ti_purge_ts,
        purge_list.process_cleanse,
        purge_list.clns_table,
        purge_list.clns_purged,
        purge_list.clns_purge_ts,
        purge_list.process_intg,
        purge_list.intg_table,
        purge_list.intg_purged,
        purge_list.intg_purge_ts,
        purge_list.row_source
 FROM metadata.purge_list
 ORDER BY purge_list.feed_id
SEGMENTED BY hash(purge_list.feed_id) ALL NODES;

CREATE PROJECTION metadata.wrkflw_cmnd_05132020_b0 /*+basename(wrkflw_cmnd_05132020),createtype(A)*/ 
(
 process_id,
 command_step,
 type,
 folder,
 file,
 arguments,
 search_for_text,
 replace_with_text,
 comments,
 is_active,
 create_timestamp,
 update_timestamp
)
AS
 SELECT wrkflw_cmnd_05132020.process_id,
        wrkflw_cmnd_05132020.command_step,
        wrkflw_cmnd_05132020.type,
        wrkflw_cmnd_05132020.folder,
        wrkflw_cmnd_05132020.file,
        wrkflw_cmnd_05132020.arguments,
        wrkflw_cmnd_05132020.search_for_text,
        wrkflw_cmnd_05132020.replace_with_text,
        wrkflw_cmnd_05132020.comments,
        wrkflw_cmnd_05132020.is_active,
        wrkflw_cmnd_05132020.create_timestamp,
        wrkflw_cmnd_05132020.update_timestamp
 FROM metadata.wrkflw_cmnd_05132020
 ORDER BY wrkflw_cmnd_05132020.process_id,
          wrkflw_cmnd_05132020.command_step
SEGMENTED BY hash(wrkflw_cmnd_05132020.process_id, wrkflw_cmnd_05132020.command_step) ALL NODES;

CREATE PROJECTION metadata.tmp_data_feed_ver_metadata_b0 /*+basename(tmp_data_feed_ver_metadata),createtype(A)*/ 
(
 feed_id,
 feed_version_id,
 version_date,
 raw_table_name,
 cleansed_table_name,
 intg_procedure,
 retention_type,
 number_of_files_to_retain
)
AS
 SELECT tmp_data_feed_ver_metadata.feed_id,
        tmp_data_feed_ver_metadata.feed_version_id,
        tmp_data_feed_ver_metadata.version_date,
        tmp_data_feed_ver_metadata.raw_table_name,
        tmp_data_feed_ver_metadata.cleansed_table_name,
        tmp_data_feed_ver_metadata.intg_procedure,
        tmp_data_feed_ver_metadata.retention_type,
        tmp_data_feed_ver_metadata.number_of_files_to_retain
 FROM metadata.tmp_data_feed_ver_metadata
 ORDER BY tmp_data_feed_ver_metadata.feed_id,
          tmp_data_feed_ver_metadata.feed_version_id,
          tmp_data_feed_ver_metadata.version_date,
          tmp_data_feed_ver_metadata.raw_table_name,
          tmp_data_feed_ver_metadata.cleansed_table_name,
          tmp_data_feed_ver_metadata.intg_procedure
SEGMENTED BY hash(tmp_data_feed_ver_metadata.feed_id, tmp_data_feed_ver_metadata.feed_version_id, tmp_data_feed_ver_metadata.version_date, tmp_data_feed_ver_metadata.raw_table_name, tmp_data_feed_ver_metadata.cleansed_table_name, tmp_data_feed_ver_metadata.intg_procedure) ALL NODES;


CREATE  VIEW metadata.integration_table_counts_by_file_id AS
 SELECT A.integration_table,
        A.file_id,
        A.counts
 FROM (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((( SELECT 'integration.call_plan'::varchar(21) AS integration_table,
        call_plan.file_id,
        count(*) AS counts
 FROM integration.call_plan
 GROUP BY 'integration.call_plan'::varchar(21),
          call_plan.file_id UNION ALL  SELECT 'integration.chargebacks'::varchar(23) AS integration_table,
        chargebacks.file_id,
        count(*) AS counts
 FROM integration.chargebacks
 GROUP BY 'integration.chargebacks'::varchar(23),
          chargebacks.file_id) UNION ALL  SELECT 'integration.clozapine_sales'::varchar(27) AS integration_table,
        clozapine_sales.file_id,
        count(*) AS counts
 FROM integration.clozapine_sales
 GROUP BY 'integration.clozapine_sales'::varchar(27),
          clozapine_sales.file_id) UNION ALL  SELECT 'integration.cmop_rx'::varchar(19) AS integration_table,
        cmop_rx.file_id,
        count(*) AS counts
 FROM integration.cmop_rx
 GROUP BY 'integration.cmop_rx'::varchar(19),
          cmop_rx.file_id) UNION ALL  SELECT 'integration.copay_detail_weekly'::varchar(31) AS integration_table,
        copay_detail_weekly.file_id,
        count(*) AS counts
 FROM integration.copay_detail_weekly
 GROUP BY 'integration.copay_detail_weekly'::varchar(31),
          copay_detail_weekly.file_id) UNION ALL  SELECT 'integration.copay_redemptions'::varchar(29) AS integration_table,
        copay_redemptions.file_id,
        count(*) AS counts
 FROM integration.copay_redemptions
 GROUP BY 'integration.copay_redemptions'::varchar(29),
          copay_redemptions.file_id) UNION ALL  SELECT 'integration.copay_weekly'::varchar(24) AS integration_table,
        copay_weekly.file_id,
        count(*) AS counts
 FROM integration.copay_weekly
 GROUP BY 'integration.copay_weekly'::varchar(24),
          copay_weekly.file_id) UNION ALL  SELECT 'integration.ddd'::varchar(15) AS integration_table,
        ddd.file_id,
        count(*) AS counts
 FROM integration.ddd
 GROUP BY 'integration.ddd'::varchar(15),
          ddd.file_id) UNION ALL  SELECT 'integration.ddd_md'::varchar(18) AS integration_table,
        ddd_md.file_id,
        count(*) AS counts
 FROM integration.ddd_md
 GROUP BY 'integration.ddd_md'::varchar(18),
          ddd_md.file_id) UNION ALL  SELECT 'integration.ddd_md_demographics'::varchar(31) AS integration_table,
        ddd_md_demographics.file_id,
        count(*) AS counts
 FROM integration.ddd_md_demographics
 GROUP BY 'integration.ddd_md_demographics'::varchar(31),
          ddd_md_demographics.file_id) UNION ALL  SELECT 'integration.direct_sales'::varchar(24) AS integration_table,
        direct_sales.file_id,
        count(*) AS counts
 FROM integration.direct_sales
 GROUP BY 'integration.direct_sales'::varchar(24),
          direct_sales.file_id) UNION ALL  SELECT 'integration.event'::varchar(17) AS integration_table,
        event.file_id,
        count(*) AS counts
 FROM integration.event
 GROUP BY 'integration.event'::varchar(17),
          event.file_id) UNION ALL  SELECT 'integration.event_attendee'::varchar(26) AS integration_table,
        event_attendee.file_id,
        count(*) AS counts
 FROM integration.event_attendee
 GROUP BY 'integration.event_attendee'::varchar(26),
          event_attendee.file_id) UNION ALL  SELECT 'integration.event_count'::varchar(23) AS integration_table,
        event_count.file_id,
        count(*) AS counts
 FROM integration.event_count
 GROUP BY 'integration.event_count'::varchar(23),
          event_count.file_id) UNION ALL  SELECT 'integration.event_expense'::varchar(25) AS integration_table,
        event_expense.file_id,
        count(*) AS counts
 FROM integration.event_expense
 GROUP BY 'integration.event_expense'::varchar(25),
          event_expense.file_id) UNION ALL  SELECT 'integration.event_host'::varchar(22) AS integration_table,
        event_host.file_id,
        count(*) AS counts
 FROM integration.event_host
 GROUP BY 'integration.event_host'::varchar(22),
          event_host.file_id) UNION ALL  SELECT 'integration.event_product'::varchar(25) AS integration_table,
        event_product.file_id,
        count(*) AS counts
 FROM integration.event_product
 GROUP BY 'integration.event_product'::varchar(25),
          event_product.file_id) UNION ALL  SELECT 'integration.event_speaker'::varchar(25) AS integration_table,
        event_speaker.file_id,
        count(*) AS counts
 FROM integration.event_speaker
 GROUP BY 'integration.event_speaker'::varchar(25),
          event_speaker.file_id) UNION ALL  SELECT 'integration.ims_outlet_master'::varchar(29) AS integration_table,
        ims_outlet_master.file_id,
        count(*) AS counts
 FROM integration.ims_outlet_master
 GROUP BY 'integration.ims_outlet_master'::varchar(29),
          ims_outlet_master.file_id) UNION ALL  SELECT 'integration.ims_product_list'::varchar(28) AS integration_table,
        ims_product_list.file_id,
        count(*) AS counts
 FROM integration.ims_product_list
 GROUP BY 'integration.ims_product_list'::varchar(28),
          ims_product_list.file_id) UNION ALL  SELECT 'integration.mm_accounts'::varchar(23) AS integration_table,
        mm_accounts.file_id,
        count(*) AS counts
 FROM integration.mm_accounts
 GROUP BY 'integration.mm_accounts'::varchar(23),
          mm_accounts.file_id) UNION ALL  SELECT 'integration.mm_control'::varchar(22) AS integration_table,
        mm_control.file_id,
        count(*) AS counts
 FROM integration.mm_control
 GROUP BY 'integration.mm_control'::varchar(22),
          mm_control.file_id) UNION ALL  SELECT 'integration.mm_copays'::varchar(21) AS integration_table,
        mm_copays.file_id,
        count(*) AS counts
 FROM integration.mm_copays
 GROUP BY 'integration.mm_copays'::varchar(21),
          mm_copays.file_id) UNION ALL  SELECT 'integration.mm_drug_class_therapeutic_area'::varchar(42) AS integration_table,
        mm_drug_class_therapeutic_area.file_id,
        count(*) AS counts
 FROM integration.mm_drug_class_therapeutic_area
 GROUP BY 'integration.mm_drug_class_therapeutic_area'::varchar(42),
          mm_drug_class_therapeutic_area.file_id) UNION ALL  SELECT 'integration.mm_drugs'::varchar(20) AS integration_table,
        mm_drugs.file_id,
        count(*) AS counts
 FROM integration.mm_drugs
 GROUP BY 'integration.mm_drugs'::varchar(20),
          mm_drugs.file_id) UNION ALL  SELECT 'integration.mm_formularies'::varchar(26) AS integration_table,
        mm_formularies.file_id,
        count(*) AS counts
 FROM integration.mm_formularies
 GROUP BY 'integration.mm_formularies'::varchar(26),
          mm_formularies.file_id) UNION ALL  SELECT 'integration.mm_health_plan_geography'::varchar(36) AS integration_table,
        mm_health_plan_geography.file_id,
        count(*) AS counts
 FROM integration.mm_health_plan_geography
 GROUP BY 'integration.mm_health_plan_geography'::varchar(36),
          mm_health_plan_geography.file_id) UNION ALL  SELECT 'integration.mm_health_plans'::varchar(27) AS integration_table,
        mm_health_plans.file_id,
        count(*) AS counts
 FROM integration.mm_health_plans
 GROUP BY 'integration.mm_health_plans'::varchar(27),
          mm_health_plans.file_id) UNION ALL  SELECT 'integration.mm_ims_bridge'::varchar(25) AS integration_table,
        mm_ims_bridge.file_id,
        count(*) AS counts
 FROM integration.mm_ims_bridge
 GROUP BY 'integration.mm_ims_bridge'::varchar(25),
          mm_ims_bridge.file_id) UNION ALL  SELECT 'integration.mm_pbms'::varchar(19) AS integration_table,
        mm_pbms.file_id,
        count(*) AS counts
 FROM integration.mm_pbms
 GROUP BY 'integration.mm_pbms'::varchar(19),
          mm_pbms.file_id) UNION ALL  SELECT 'integration.mm_restrictions'::varchar(27) AS integration_table,
        mm_restrictions.file_id,
        count(*) AS counts
 FROM integration.mm_restrictions
 GROUP BY 'integration.mm_restrictions'::varchar(27),
          mm_restrictions.file_id) UNION ALL  SELECT 'integration.mm_tiers'::varchar(20) AS integration_table,
        mm_tiers.file_id,
        count(*) AS counts
 FROM integration.mm_tiers
 GROUP BY 'integration.mm_tiers'::varchar(20),
          mm_tiers.file_id) UNION ALL  SELECT 'integration.mm_wk_bridge'::varchar(24) AS integration_table,
        mm_wk_bridge.file_id,
        count(*) AS counts
 FROM integration.mm_wk_bridge
 GROUP BY 'integration.mm_wk_bridge'::varchar(24),
          mm_wk_bridge.file_id) UNION ALL  SELECT 'integration.pbm_xref'::varchar(20) AS integration_table,
        pbm_xref.file_id,
        count(*) AS counts
 FROM integration.pbm_xref
 GROUP BY 'integration.pbm_xref'::varchar(20),
          pbm_xref.file_id) UNION ALL  SELECT 'integration.plan_xref'::varchar(21) AS integration_table,
        plan_xref.file_id,
        count(*) AS counts
 FROM integration.plan_xref
 GROUP BY 'integration.plan_xref'::varchar(21),
          plan_xref.file_id) UNION ALL  SELECT 'integration.prescriber_rx'::varchar(25) AS integration_table,
        prescriber_rx.file_id,
        count(*) AS counts
 FROM integration.prescriber_rx
 GROUP BY 'integration.prescriber_rx'::varchar(25),
          prescriber_rx.file_id) UNION ALL  SELECT 'integration.product_unit_ap'::varchar(27) AS integration_table,
        product_unit_ap.file_id,
        count(*) AS counts
 FROM integration.product_unit_ap
 GROUP BY 'integration.product_unit_ap'::varchar(27),
          product_unit_ap.file_id) UNION ALL  SELECT 'integration.rems_pharmacy'::varchar(25) AS integration_table,
        rems_pharmacy.file_id,
        count(*) AS counts
 FROM integration.rems_pharmacy
 GROUP BY 'integration.rems_pharmacy'::varchar(25),
          rems_pharmacy.file_id) UNION ALL  SELECT 'integration.rems_prescriber'::varchar(27) AS integration_table,
        rems_prescriber.file_id,
        count(*) AS counts
 FROM integration.rems_prescriber
 GROUP BY 'integration.rems_prescriber'::varchar(27),
          rems_prescriber.file_id) UNION ALL  SELECT 'integration.roster_address'::varchar(26) AS integration_table,
        roster_address.file_id,
        count(*) AS counts
 FROM integration.roster_address
 GROUP BY 'integration.roster_address'::varchar(26),
          roster_address.file_id) UNION ALL  SELECT 'integration.roster_associate'::varchar(28) AS integration_table,
        roster_associate.file_id,
        count(*) AS counts
 FROM integration.roster_associate
 GROUP BY 'integration.roster_associate'::varchar(28),
          roster_associate.file_id) UNION ALL  SELECT 'integration.roster_associate_audit'::varchar(34) AS integration_table,
        roster_associate_audit.file_id,
        count(*) AS counts
 FROM integration.roster_associate_audit
 GROUP BY 'integration.roster_associate_audit'::varchar(34),
          roster_associate_audit.file_id) UNION ALL  SELECT 'integration.roster_job_title'::varchar(28) AS integration_table,
        roster_job_title.file_id,
        count(*) AS counts
 FROM integration.roster_job_title
 GROUP BY 'integration.roster_job_title'::varchar(28),
          roster_job_title.file_id) UNION ALL  SELECT 'integration.roster_leave_of_absence'::varchar(35) AS integration_table,
        roster_leave_of_absence.file_id,
        count(*) AS counts
 FROM integration.roster_leave_of_absence
 GROUP BY 'integration.roster_leave_of_absence'::varchar(35),
          roster_leave_of_absence.file_id) UNION ALL  SELECT 'integration.roster_people'::varchar(25) AS integration_table,
        roster_people.file_id,
        count(*) AS counts
 FROM integration.roster_people
 GROUP BY 'integration.roster_people'::varchar(25),
          roster_people.file_id) UNION ALL  SELECT 'integration.roster_people_address'::varchar(33) AS integration_table,
        roster_people_address.file_id,
        count(*) AS counts
 FROM integration.roster_people_address
 GROUP BY 'integration.roster_people_address'::varchar(33),
          roster_people_address.file_id) UNION ALL  SELECT 'integration.roster_people_phone'::varchar(31) AS integration_table,
        roster_people_phone.file_id,
        count(*) AS counts
 FROM integration.roster_people_phone
 GROUP BY 'integration.roster_people_phone'::varchar(31),
          roster_people_phone.file_id) UNION ALL  SELECT 'integration.roster_phone'::varchar(24) AS integration_table,
        roster_phone.file_id,
        count(*) AS counts
 FROM integration.roster_phone
 GROUP BY 'integration.roster_phone'::varchar(24),
          roster_phone.file_id) UNION ALL  SELECT 'integration.roster_salesperson'::varchar(30) AS integration_table,
        roster_salesperson.file_id,
        count(*) AS counts
 FROM integration.roster_salesperson
 GROUP BY 'integration.roster_salesperson'::varchar(30),
          roster_salesperson.file_id) UNION ALL  SELECT 'integration.roster_territory'::varchar(28) AS integration_table,
        roster_territory.file_id,
        count(*) AS counts
 FROM integration.roster_territory
 GROUP BY 'integration.roster_territory'::varchar(28),
          roster_territory.file_id) UNION ALL  SELECT 'integration.roster_territory_change'::varchar(35) AS integration_table,
        roster_territory_change.file_id,
        count(*) AS counts
 FROM integration.roster_territory_change
 GROUP BY 'integration.roster_territory_change'::varchar(35),
          roster_territory_change.file_id) UNION ALL  SELECT 'integration.sales_852'::varchar(21) AS integration_table,
        sales_852.file_id,
        count(*) AS counts
 FROM integration.sales_852
 GROUP BY 'integration.sales_852'::varchar(21),
          sales_852.file_id) UNION ALL  SELECT 'integration.sales_867'::varchar(21) AS integration_table,
        sales_867.file_id,
        count(*) AS counts
 FROM integration.sales_867
 GROUP BY 'integration.sales_867'::varchar(21),
          sales_867.file_id) UNION ALL  SELECT 'integration.sample_shipment'::varchar(27) AS integration_table,
        sample_shipment.file_id,
        count(*) AS counts
 FROM integration.sample_shipment
 GROUP BY 'integration.sample_shipment'::varchar(27),
          sample_shipment.file_id) UNION ALL  SELECT 'integration.speaker_contract'::varchar(28) AS integration_table,
        speaker_contract.file_id,
        count(*) AS counts
 FROM integration.speaker_contract
 GROUP BY 'integration.speaker_contract'::varchar(28),
          speaker_contract.file_id) UNION ALL  SELECT 'integration.speaker_license'::varchar(27) AS integration_table,
        speaker_license.file_id,
        count(*) AS counts
 FROM integration.speaker_license
 GROUP BY 'integration.speaker_license'::varchar(27),
          speaker_license.file_id) UNION ALL  SELECT 'integration.speaker_profile'::varchar(27) AS integration_table,
        speaker_profile.file_id,
        count(*) AS counts
 FROM integration.speaker_profile
 GROUP BY 'integration.speaker_profile'::varchar(27),
          speaker_profile.file_id) UNION ALL  SELECT 'integration.speaker_training'::varchar(28) AS integration_table,
        speaker_training.file_id,
        count(*) AS counts
 FROM integration.speaker_training
 GROUP BY 'integration.speaker_training'::varchar(28),
          speaker_training.file_id) UNION ALL  SELECT 'integration.specialty_pharmacy_enrollment'::varchar(41) AS integration_table,
        specialty_pharmacy_enrollment.file_id,
        count(*) AS counts
 FROM integration.specialty_pharmacy_enrollment
 GROUP BY 'integration.specialty_pharmacy_enrollment'::varchar(41),
          specialty_pharmacy_enrollment.file_id) UNION ALL  SELECT 'integration.specialty_pharmacy_rx'::varchar(33) AS integration_table,
        specialty_pharmacy_rx.file_id,
        count(*) AS counts
 FROM integration.specialty_pharmacy_rx
 GROUP BY 'integration.specialty_pharmacy_rx'::varchar(33),
          specialty_pharmacy_rx.file_id) UNION ALL  SELECT 'integration.specialty_pharmacy_shipment'::varchar(39) AS integration_table,
        specialty_pharmacy_shipment.file_id,
        count(*) AS counts
 FROM integration.specialty_pharmacy_shipment
 GROUP BY 'integration.specialty_pharmacy_shipment'::varchar(39),
          specialty_pharmacy_shipment.file_id) UNION ALL  SELECT 'integration.specialty_pharmacy_shipment_summary'::varchar(47) AS integration_table,
        specialty_pharmacy_shipment_summary.file_id,
        count(*) AS counts
 FROM integration.specialty_pharmacy_shipment_summary
 GROUP BY 'integration.specialty_pharmacy_shipment_summary'::varchar(47),
          specialty_pharmacy_shipment_summary.file_id) UNION ALL  SELECT 'integration.territory_ram_to_state'::varchar(34) AS integration_table,
        territory_ram_to_state.file_id,
        count(*) AS counts
 FROM integration.territory_ram_to_state
 GROUP BY 'integration.territory_ram_to_state'::varchar(34),
          territory_ram_to_state.file_id) UNION ALL  SELECT 'integration.territory_zip'::varchar(25) AS integration_table,
        territory_zip.file_id,
        count(*) AS counts
 FROM integration.territory_zip
 GROUP BY 'integration.territory_zip'::varchar(25),
          territory_zip.file_id) UNION ALL  SELECT 'integration.topic_product'::varchar(25) AS integration_table,
        topic_product.file_id,
        count(*) AS counts
 FROM integration.topic_product
 GROUP BY 'integration.topic_product'::varchar(25),
          topic_product.file_id) UNION ALL  SELECT 'integration.touchpoint_call'::varchar(27) AS integration_table,
        touchpoint_call.file_id,
        count(*) AS counts
 FROM integration.touchpoint_call
 GROUP BY 'integration.touchpoint_call'::varchar(27),
          touchpoint_call.file_id) UNION ALL  SELECT 'integration.touchpoint_presentations'::varchar(36) AS integration_table,
        touchpoint_presentations.file_id,
        count(*) AS counts
 FROM integration.touchpoint_presentations
 GROUP BY 'integration.touchpoint_presentations'::varchar(36),
          touchpoint_presentations.file_id) A;

CREATE  VIEW metadata.outbound_table_counts AS
SELECT A.outbound_table, A.counts FROM ((((((((((((((((((((((((SELECT 'datamart.v_ob_asi_market_access'::varchar(31) AS outbound_table, count(*) AS counts FROM datamart.v_ob_asi_market_access GROUP BY 'datamart.v_ob_asi_market_access'::varchar(31) UNION ALL SELECT 'datamart.v_ob_asi_rems_extract'::varchar(30) AS outbound_table, count(*) AS counts FROM datamart.v_ob_asi_rems_extract GROUP BY 'datamart.v_ob_asi_rems_extract'::varchar(30)) UNION ALL SELECT 'datamart.v_ob_asi_rems_programs'::varchar(31) AS outbound_table, count(*) AS counts FROM datamart.v_ob_asi_rems_programs GROUP BY 'datamart.v_ob_asi_rems_programs'::varchar(31)) UNION ALL SELECT 'datamart.v_ob_asi_rx_by_market'::varchar(30) AS outbound_table, count(*) AS counts FROM datamart.v_ob_asi_rx_by_market GROUP BY 'datamart.v_ob_asi_rx_by_market'::varchar(30)) UNION ALL SELECT 'datamart.v_ob_asi_survey_data'::varchar(29) AS outbound_table, count(*) AS counts FROM datamart.v_ob_asi_survey_data GROUP BY 'datamart.v_ob_asi_survey_data'::varchar(29)) UNION ALL SELECT 'datamart.v_ob_axiom_market'::varchar(26) AS outbound_table, count(*) AS counts FROM datamart.v_ob_axiom_market GROUP BY 'datamart.v_ob_axiom_market'::varchar(26)) UNION ALL SELECT 'datamart.v_ob_axiom_product_totals'::varchar(34) AS outbound_table, count(*) AS counts FROM datamart.v_ob_axiom_product_totals GROUP BY 'datamart.v_ob_axiom_product_totals'::varchar(34)) UNION ALL SELECT 'datamart.v_ob_kc_copay_voucher_program'::varchar(38) AS outbound_table, count(*) AS counts FROM datamart.v_ob_kc_copay_voucher_program GROUP BY 'datamart.v_ob_kc_copay_voucher_program'::varchar(38)) UNION ALL SELECT 'datamart.v_ob_kc_copay_voucher_redemption'::varchar(41) AS outbound_table, count(*) AS counts FROM datamart.v_ob_kc_copay_voucher_redemption GROUP BY 'datamart.v_ob_kc_copay_voucher_redemption'::varchar(41)) UNION ALL SELECT 'datamart.v_ob_touchpoint_call'::varchar(29) AS outbound_table, count(*) AS counts FROM datamart.v_ob_touchpoint_call GROUP BY 'datamart.v_ob_touchpoint_call'::varchar(29)) UNION ALL SELECT 'datamart.v_ob_zs_agile_copay_redemptions'::varchar(40) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_copay_redemptions GROUP BY 'datamart.v_ob_zs_agile_copay_redemptions'::varchar(40)) UNION ALL SELECT 'datamart.v_ob_zs_agile_copay_voucher_drops'::varchar(42) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_copay_voucher_drops GROUP BY 'datamart.v_ob_zs_agile_copay_voucher_drops'::varchar(42)) UNION ALL SELECT 'datamart.v_ob_zs_agile_demographics'::varchar(35) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_demographics GROUP BY 'datamart.v_ob_zs_agile_demographics'::varchar(35)) UNION ALL SELECT 'datamart.v_ob_zs_agile_details'::varchar(30) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_details GROUP BY 'datamart.v_ob_zs_agile_details'::varchar(30)) UNION ALL SELECT 'datamart.v_ob_zs_agile_rx'::varchar(25) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_rx GROUP BY 'datamart.v_ob_zs_agile_rx'::varchar(25)) UNION ALL SELECT 'datamart.v_ob_zs_agile_samples'::varchar(30) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_samples GROUP BY 'datamart.v_ob_zs_agile_samples'::varchar(30)) UNION ALL SELECT 'datamart.v_ob_zs_agile_sp_attendees'::varchar(35) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_sp_attendees GROUP BY 'datamart.v_ob_zs_agile_sp_attendees'::varchar(35)) UNION ALL SELECT 'datamart.v_ob_zs_agile_sp_programs'::varchar(34) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_sp_programs GROUP BY 'datamart.v_ob_zs_agile_sp_programs'::varchar(34)) UNION ALL SELECT 'datamart.v_ob_zs_agile_voucher_redemptions'::varchar(42) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_agile_voucher_redemptions GROUP BY 'datamart.v_ob_zs_agile_voucher_redemptions'::varchar(42)) UNION ALL SELECT 'datamart.v_ob_zs_ic_ims_zip_list'::varchar(32) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_ic_ims_zip_list GROUP BY 'datamart.v_ob_zs_ic_ims_zip_list'::varchar(32)) UNION ALL SELECT 'datamart.v_ob_zs_ic_medicaid_plan_groups'::varchar(40) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_ic_medicaid_plan_groups GROUP BY 'datamart.v_ob_zs_ic_medicaid_plan_groups'::varchar(40)) UNION ALL SELECT 'datamart.v_ob_zs_ic_mop'::varchar(23) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_ic_mop GROUP BY 'datamart.v_ob_zs_ic_mop'::varchar(23)) UNION ALL SELECT 'datamart.v_ob_zs_tr_calls_obw'::varchar(29) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_tr_calls_obw GROUP BY 'datamart.v_ob_zs_tr_calls_obw'::varchar(29)) UNION ALL SELECT 'datamart.v_ob_zs_tr_demographics'::varchar(32) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_tr_demographics GROUP BY 'datamart.v_ob_zs_tr_demographics'::varchar(32)) UNION ALL SELECT 'datamart.v_ob_zs_tr_launch_analytics'::varchar(36) AS outbound_table, count(*) AS counts FROM datamart.v_ob_zs_tr_launch_analytics GROUP BY 'datamart.v_ob_zs_tr_launch_analytics'::varchar(36)) A;

CREATE  VIEW metadata.reference_table_counts AS
SELECT A.reference_table, A.counts FROM ((((((((((((((((((((((((SELECT 'reference.alignment_active_dates'::varchar(32) AS reference_table, count(*) AS counts FROM reference.alignment_active_dates GROUP BY 'reference.alignment_active_dates'::varchar(32) UNION ALL SELECT 'reference.bag'::varchar(13) AS reference_table, count(*) AS counts FROM reference.bag GROUP BY 'reference.bag'::varchar(13)) UNION ALL SELECT 'reference.bag_product'::varchar(21) AS reference_table, count(*) AS counts FROM reference.bag_product GROUP BY 'reference.bag_product'::varchar(21)) UNION ALL SELECT 'reference.bag_territory'::varchar(23) AS reference_table, count(*) AS counts FROM reference.bag_territory GROUP BY 'reference.bag_territory'::varchar(23)) UNION ALL SELECT 'reference.calendar'::varchar(18) AS reference_table, count(*) AS counts FROM reference.calendar GROUP BY 'reference.calendar'::varchar(18)) UNION ALL SELECT 'reference.call_plan_active_dates'::varchar(32) AS reference_table, count(*) AS counts FROM reference.call_plan_active_dates GROUP BY 'reference.call_plan_active_dates'::varchar(32)) UNION ALL SELECT 'reference.caremark_md_id_to_tvcmid'::varchar(34) AS reference_table, count(*) AS counts FROM reference.caremark_md_id_to_tvcmid GROUP BY 'reference.caremark_md_id_to_tvcmid'::varchar(34)) UNION ALL SELECT 'reference.city_state_zip'::varchar(24) AS reference_table, count(*) AS counts FROM reference.city_state_zip GROUP BY 'reference.city_state_zip'::varchar(24)) UNION ALL SELECT 'reference.comp_alignment_exceptions'::varchar(35) AS reference_table, count(*) AS counts FROM reference.comp_alignment_exceptions GROUP BY 'reference.comp_alignment_exceptions'::varchar(35)) UNION ALL SELECT 'reference.copay_voucher_program'::varchar(31) AS reference_table, count(*) AS counts FROM reference.copay_voucher_program GROUP BY 'reference.copay_voucher_program'::varchar(31)) UNION ALL SELECT 'reference.ddd_445_calendar'::varchar(26) AS reference_table, count(*) AS counts FROM reference.ddd_445_calendar GROUP BY 'reference.ddd_445_calendar'::varchar(26)) UNION ALL SELECT 'reference.ddd_category'::varchar(22) AS reference_table, count(*) AS counts FROM reference.ddd_category GROUP BY 'reference.ddd_category'::varchar(22)) UNION ALL SELECT 'reference.ddd_subcategory'::varchar(25) AS reference_table, count(*) AS counts FROM reference.ddd_subcategory GROUP BY 'reference.ddd_subcategory'::varchar(25)) UNION ALL SELECT 'reference.ims_model_payment_method'::varchar(34) AS reference_table, count(*) AS counts FROM reference.ims_model_payment_method GROUP BY 'reference.ims_model_payment_method'::varchar(34)) UNION ALL SELECT 'reference.invoice_adjustments'::varchar(29) AS reference_table, count(*) AS counts FROM reference.invoice_adjustments GROUP BY 'reference.invoice_adjustments'::varchar(29)) UNION ALL SELECT 'reference.market_sales_force'::varchar(28) AS reference_table, count(*) AS counts FROM reference.market_sales_force GROUP BY 'reference.market_sales_force'::varchar(28)) UNION ALL SELECT 'reference.oncology_account_id_867_xref'::varchar(38) AS reference_table, count(*) AS counts FROM reference.oncology_account_id_867_xref GROUP BY 'reference.oncology_account_id_867_xref'::varchar(38)) UNION ALL SELECT 'reference.oncology_account_id_ims_xref'::varchar(38) AS reference_table, count(*) AS counts FROM reference.oncology_account_id_ims_xref GROUP BY 'reference.oncology_account_id_ims_xref'::varchar(38)) UNION ALL SELECT 'reference.oncology_excluded_outlets'::varchar(35) AS reference_table, count(*) AS counts FROM reference.oncology_excluded_outlets GROUP BY 'reference.oncology_excluded_outlets'::varchar(35)) UNION ALL SELECT 'reference.payer_parent'::varchar(22) AS reference_table, count(*) AS counts FROM reference.payer_parent GROUP BY 'reference.payer_parent'::varchar(22)) UNION ALL SELECT 'reference.pbm_parent'::varchar(20) AS reference_table, count(*) AS counts FROM reference.pbm_parent GROUP BY 'reference.pbm_parent'::varchar(20)) UNION ALL SELECT 'reference.specialty_xref'::varchar(24) AS reference_table, count(*) AS counts FROM reference.specialty_xref GROUP BY 'reference.specialty_xref'::varchar(24)) UNION ALL SELECT 'reference.unreported_sales'::varchar(26) AS reference_table, count(*) AS counts FROM reference.unreported_sales GROUP BY 'reference.unreported_sales'::varchar(26)) UNION ALL SELECT 'reference.us_states'::varchar(19) AS reference_table, count(*) AS counts FROM reference.us_states GROUP BY 'reference.us_states'::varchar(19)) UNION ALL SELECT 'reference.zipcode_timezone'::varchar(26) AS reference_table, count(*) AS counts FROM reference.zipcode_timezone GROUP BY 'reference.zipcode_timezone'::varchar(26)) A;

CREATE  VIEW metadata.cleansed_table_counts_by_file_id AS
SELECT A.cleansed_table, A.file_id, A.counts FROM (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((SELECT 'cleansed.kc_hr_addresses'::varchar(24) AS cleansed_table, kc_hr_addresses.file_id, count(*) AS counts FROM cleansed.kc_hr_addresses GROUP BY 'cleansed.kc_hr_addresses'::varchar(24), kc_hr_addresses.file_id UNION ALL SELECT 'cleansed.kc_hr_associates'::varchar(25) AS cleansed_table, kc_hr_associates.file_id, count(*) AS counts FROM cleansed.kc_hr_associates GROUP BY 'cleansed.kc_hr_associates'::varchar(25), kc_hr_associates.file_id) UNION ALL SELECT 'cleansed.kc_hr_aud_associates'::varchar(29) AS cleansed_table, kc_hr_aud_associates.file_id, count(*) AS counts FROM cleansed.kc_hr_aud_associates GROUP BY 'cleansed.kc_hr_aud_associates'::varchar(29), kc_hr_aud_associates.file_id) UNION ALL SELECT 'customer_master.alternate_identifier'::varchar(36) AS cleansed_table, alternate_identifier.file_id, count(*) AS counts FROM customer_master.alternate_identifier GROUP BY 'customer_master.alternate_identifier'::varchar(36), alternate_identifier.file_id) UNION ALL SELECT 'customer_master.raw_dea'::varchar(23) AS cleansed_table, raw_dea.file_id, count(*) AS counts FROM customer_master.raw_dea GROUP BY 'customer_master.raw_dea'::varchar(23), raw_dea.file_id) UNION ALL SELECT 'customer_master.hcp_detail'::varchar(26) AS cleansed_table, hcp_detail.file_id, count(*) AS counts FROM customer_master.hcp_detail GROUP BY 'customer_master.hcp_detail'::varchar(26), hcp_detail.file_id) UNION ALL SELECT 'customer_master.ims_flag'::varchar(24) AS cleansed_table, ims_flag.file_id, count(*) AS counts FROM customer_master.ims_flag GROUP BY 'customer_master.ims_flag'::varchar(24), ims_flag.file_id) UNION ALL SELECT 'customer_master.teva_flag'::varchar(25) AS cleansed_table, teva_flag.file_id, count(*) AS counts FROM customer_master.teva_flag GROUP BY 'customer_master.teva_flag'::varchar(25), teva_flag.file_id) UNION ALL SELECT 'customer_master.sample_eligibility'::varchar(34) AS cleansed_table, sample_eligibility.file_id, count(*) AS counts FROM customer_master.sample_eligibility GROUP BY 'customer_master.sample_eligibility'::varchar(34), sample_eligibility.file_id) UNION ALL SELECT 'cleansed.ahm_event'::varchar(18) AS cleansed_table, ahm_event.file_id, count(*) AS counts FROM cleansed.ahm_event GROUP BY 'cleansed.ahm_event'::varchar(18), ahm_event.file_id) UNION ALL SELECT 'cleansed.ahm_event_attendee'::varchar(27) AS cleansed_table, ahm_event_attendee.file_id, count(*) AS counts FROM cleansed.ahm_event_attendee GROUP BY 'cleansed.ahm_event_attendee'::varchar(27), ahm_event_attendee.file_id) UNION ALL SELECT 'cleansed.ahm_event_count'::varchar(24) AS cleansed_table, ahm_event_count.file_id, count(*) AS counts FROM cleansed.ahm_event_count GROUP BY 'cleansed.ahm_event_count'::varchar(24), ahm_event_count.file_id) UNION ALL SELECT 'cleansed.ahm_event_expense'::varchar(26) AS cleansed_table, ahm_event_expense.file_id, count(*) AS counts FROM cleansed.ahm_event_expense GROUP BY 'cleansed.ahm_event_expense'::varchar(26), ahm_event_expense.file_id) UNION ALL SELECT 'cleansed.ahm_event_host'::varchar(23) AS cleansed_table, ahm_event_host.file_id, count(*) AS counts FROM cleansed.ahm_event_host GROUP BY 'cleansed.ahm_event_host'::varchar(23), ahm_event_host.file_id) UNION ALL SELECT 'cleansed.ahm_event_product'::varchar(26) AS cleansed_table, ahm_event_product.file_id, count(*) AS counts FROM cleansed.ahm_event_product GROUP BY 'cleansed.ahm_event_product'::varchar(26), ahm_event_product.file_id) UNION ALL SELECT 'cleansed.ahm_event_speaker'::varchar(26) AS cleansed_table, ahm_event_speaker.file_id, count(*) AS counts FROM cleansed.ahm_event_speaker GROUP BY 'cleansed.ahm_event_speaker'::varchar(26), ahm_event_speaker.file_id) UNION ALL SELECT 'cleansed.ahm_organization'::varchar(25) AS cleansed_table, ahm_organization.file_id, count(*) AS counts FROM cleansed.ahm_organization GROUP BY 'cleansed.ahm_organization'::varchar(25), ahm_organization.file_id) UNION ALL SELECT 'cleansed.ahm_speaker_contract'::varchar(29) AS cleansed_table, ahm_speaker_contract.file_id, count(*) AS counts FROM cleansed.ahm_speaker_contract GROUP BY 'cleansed.ahm_speaker_contract'::varchar(29), ahm_speaker_contract.file_id) UNION ALL SELECT 'cleansed.ahm_speaker_license'::varchar(28) AS cleansed_table, ahm_speaker_license.file_id, count(*) AS counts FROM cleansed.ahm_speaker_license GROUP BY 'cleansed.ahm_speaker_license'::varchar(28), ahm_speaker_license.file_id) UNION ALL SELECT 'cleansed.ahm_speaker_profile'::varchar(28) AS cleansed_table, ahm_speaker_profile.file_id, count(*) AS counts FROM cleansed.ahm_speaker_profile GROUP BY 'cleansed.ahm_speaker_profile'::varchar(28), ahm_speaker_profile.file_id) UNION ALL SELECT 'cleansed.ahm_speaker_training'::varchar(29) AS cleansed_table, ahm_speaker_training.file_id, count(*) AS counts FROM cleansed.ahm_speaker_training GROUP BY 'cleansed.ahm_speaker_training'::varchar(29), ahm_speaker_training.file_id) UNION ALL SELECT 'cleansed.ahm_topic_product'::varchar(26) AS cleansed_table, ahm_topic_product.file_id, count(*) AS counts FROM cleansed.ahm_topic_product GROUP BY 'cleansed.ahm_topic_product'::varchar(26), ahm_topic_product.file_id) UNION ALL SELECT 'cleansed.anda_sales'::varchar(19) AS cleansed_table, anda_sales.file_id, count(*) AS counts FROM cleansed.anda_sales GROUP BY 'cleansed.anda_sales'::varchar(19), anda_sales.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_copay_detail'::varchar(39) AS cleansed_table, alphascrip_weekly_copay_detail.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_copay_detail GROUP BY 'cleansed.alphascrip_weekly_copay_detail'::varchar(39), alphascrip_weekly_copay_detail.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_copay_cgd'::varchar(36) AS cleansed_table, alphascrip_weekly_copay_cgd.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_copay_cgd GROUP BY 'cleansed.alphascrip_weekly_copay_cgd'::varchar(36), alphascrip_weekly_copay_cgd.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_copay_detail_2'::varchar(41) AS cleansed_table, alphascrip_weekly_copay_detail_2.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_copay_detail_2 GROUP BY 'cleansed.alphascrip_weekly_copay_detail_2'::varchar(41), alphascrip_weekly_copay_detail_2.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_copay_detail_3'::varchar(41) AS cleansed_table, alphascrip_weekly_copay_detail_3.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_copay_detail_3 GROUP BY 'cleansed.alphascrip_weekly_copay_detail_3'::varchar(41), alphascrip_weekly_copay_detail_3.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_copay_pskw'::varchar(37) AS cleansed_table, alphascrip_weekly_copay_pskw.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_copay_pskw GROUP BY 'cleansed.alphascrip_weekly_copay_pskw'::varchar(37), alphascrip_weekly_copay_pskw.file_id) UNION ALL SELECT 'cleansed.alphascrip_copay_redemptions'::varchar(37) AS cleansed_table, alphascrip_copay_redemptions.file_id, count(*) AS counts FROM cleansed.alphascrip_copay_redemptions GROUP BY 'cleansed.alphascrip_copay_redemptions'::varchar(37), alphascrip_copay_redemptions.file_id) UNION ALL SELECT 'cleansed.alphascrip_redemptions'::varchar(31) AS cleansed_table, alphascrip_redemptions.file_id, count(*) AS counts FROM cleansed.alphascrip_redemptions GROUP BY 'cleansed.alphascrip_redemptions'::varchar(31), alphascrip_redemptions.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_voucher_detail_3'::varchar(43) AS cleansed_table, alphascrip_weekly_voucher_detail_3.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_voucher_detail_3 GROUP BY 'cleansed.alphascrip_weekly_voucher_detail_3'::varchar(43), alphascrip_weekly_voucher_detail_3.file_id) UNION ALL SELECT 'cleansed.alphascrip_weekly_voucher_detail_2'::varchar(43) AS cleansed_table, alphascrip_weekly_voucher_detail_2.file_id, count(*) AS counts FROM cleansed.alphascrip_weekly_voucher_detail_2 GROUP BY 'cleansed.alphascrip_weekly_voucher_detail_2'::varchar(43), alphascrip_weekly_voucher_detail_2.file_id) UNION ALL SELECT 'cleansed.kc_sales_call_goals'::varchar(28) AS cleansed_table, kc_sales_call_goals.file_id, count(*) AS counts FROM cleansed.kc_sales_call_goals GROUP BY 'cleansed.kc_sales_call_goals'::varchar(28), kc_sales_call_goals.file_id) UNION ALL SELECT 'cleansed.caremark_rx_aob'::varchar(24) AS cleansed_table, caremark_rx_aob.file_id, count(*) AS counts FROM cleansed.caremark_rx_aob GROUP BY 'cleansed.caremark_rx_aob'::varchar(24), caremark_rx_aob.file_id) UNION ALL SELECT 'cleansed.caremark_rx_medicare'::varchar(29) AS cleansed_table, caremark_rx_medicare.file_id, count(*) AS counts FROM cleansed.caremark_rx_medicare GROUP BY 'cleansed.caremark_rx_medicare'::varchar(29), caremark_rx_medicare.file_id) UNION ALL SELECT 'veeva.dsa_slide'::varchar(15) AS cleansed_table, dsa_slide.file_id, count(*) AS counts FROM veeva.dsa_slide GROUP BY 'veeva.dsa_slide'::varchar(15), dsa_slide.file_id) UNION ALL SELECT 'veeva.dsa_presentation'::varchar(22) AS cleansed_table, dsa_presentation.file_id, count(*) AS counts FROM veeva.dsa_presentation GROUP BY 'veeva.dsa_presentation'::varchar(22), dsa_presentation.file_id) UNION ALL SELECT 'cleansed.clozapine_unit_ap'::varchar(26) AS cleansed_table, clozapine_unit_ap.file_id, count(*) AS counts FROM cleansed.clozapine_unit_ap GROUP BY 'cleansed.clozapine_unit_ap'::varchar(26), clozapine_unit_ap.file_id) UNION ALL SELECT 'cleansed.cmop_rx'::varchar(16) AS cleansed_table, cmop_rx.file_id, count(*) AS counts FROM cleansed.cmop_rx GROUP BY 'cleansed.cmop_rx'::varchar(16), cmop_rx.file_id) UNION ALL SELECT 'customer_master.customer_flags'::varchar(30) AS cleansed_table, customer_flags.file_id, count(*) AS counts FROM customer_master.customer_flags GROUP BY 'customer_master.customer_flags'::varchar(30), customer_flags.file_id) UNION ALL SELECT 'cleansed.ims_ddd_dod_qty'::varchar(24) AS cleansed_table, ims_ddd_dod_qty.file_id, count(*) AS counts FROM cleansed.ims_ddd_dod_qty GROUP BY 'cleansed.ims_ddd_dod_qty'::varchar(24), ims_ddd_dod_qty.file_id) UNION ALL SELECT 'cleansed.ims_ddd_dod_dollars_ms'::varchar(31) AS cleansed_table, ims_ddd_dod_dollars_ms.file_id, count(*) AS counts FROM cleansed.ims_ddd_dod_dollars_ms GROUP BY 'cleansed.ims_ddd_dod_dollars_ms'::varchar(31), ims_ddd_dod_dollars_ms.file_id) UNION ALL SELECT 'cleansed.ims_ddd_dod_dollars_pd'::varchar(31) AS cleansed_table, ims_ddd_dod_dollars_pd.file_id, count(*) AS counts FROM cleansed.ims_ddd_dod_dollars_pd GROUP BY 'cleansed.ims_ddd_dod_dollars_pd'::varchar(31), ims_ddd_dod_dollars_pd.file_id) UNION ALL SELECT 'cleansed.diplomat_enrollment'::varchar(28) AS cleansed_table, diplomat_enrollment.file_id, count(*) AS counts FROM cleansed.diplomat_enrollment GROUP BY 'cleansed.diplomat_enrollment'::varchar(28), diplomat_enrollment.file_id) UNION ALL SELECT 'cleansed.diplomat_rx'::varchar(20) AS cleansed_table, diplomat_rx.file_id, count(*) AS counts FROM cleansed.diplomat_rx GROUP BY 'cleansed.diplomat_rx'::varchar(20), diplomat_rx.file_id) UNION ALL SELECT 'cleansed.ims_outlet_master'::varchar(26) AS cleansed_table, ims_outlet_master.file_id, count(*) AS counts FROM cleansed.ims_outlet_master GROUP BY 'cleansed.ims_outlet_master'::varchar(26), ims_outlet_master.file_id) UNION ALL SELECT 'cleansed.valuecentric_852'::varchar(25) AS cleansed_table, valuecentric_852.file_id, count(*) AS counts FROM cleansed.valuecentric_852 GROUP BY 'cleansed.valuecentric_852'::varchar(25), valuecentric_852.file_id) UNION ALL SELECT 'cleansed.ftf_accounts'::varchar(21) AS cleansed_table, ftf_accounts.file_id, count(*) AS counts FROM cleansed.ftf_accounts GROUP BY 'cleansed.ftf_accounts'::varchar(21), ftf_accounts.file_id) UNION ALL SELECT 'cleansed.ftf_control'::varchar(20) AS cleansed_table, ftf_control.file_id, count(*) AS counts FROM cleansed.ftf_control GROUP BY 'cleansed.ftf_control'::varchar(20), ftf_control.file_id) UNION ALL SELECT 'cleansed.ftf_copays'::varchar(19) AS cleansed_table, ftf_copays.file_id, count(*) AS counts FROM cleansed.ftf_copays GROUP BY 'cleansed.ftf_copays'::varchar(19), ftf_copays.file_id) UNION ALL SELECT 'cleansed.ftf_drug_class_therapeutic_area'::varchar(40) AS cleansed_table, ftf_drug_class_therapeutic_area.file_id, count(*) AS counts FROM cleansed.ftf_drug_class_therapeutic_area GROUP BY 'cleansed.ftf_drug_class_therapeutic_area'::varchar(40), ftf_drug_class_therapeutic_area.file_id) UNION ALL SELECT 'cleansed.ftf_drugs'::varchar(18) AS cleansed_table, ftf_drugs.file_id, count(*) AS counts FROM cleansed.ftf_drugs GROUP BY 'cleansed.ftf_drugs'::varchar(18), ftf_drugs.file_id) UNION ALL SELECT 'cleansed.ftf_formularies'::varchar(24) AS cleansed_table, ftf_formularies.file_id, count(*) AS counts FROM cleansed.ftf_formularies GROUP BY 'cleansed.ftf_formularies'::varchar(24), ftf_formularies.file_id) UNION ALL SELECT 'cleansed.ftf_health_plan_geography'::varchar(34) AS cleansed_table, ftf_health_plan_geography.file_id, count(*) AS counts FROM cleansed.ftf_health_plan_geography GROUP BY 'cleansed.ftf_health_plan_geography'::varchar(34), ftf_health_plan_geography.file_id) UNION ALL SELECT 'cleansed.ftf_health_plans'::varchar(25) AS cleansed_table, ftf_health_plans.file_id, count(*) AS counts FROM cleansed.ftf_health_plans GROUP BY 'cleansed.ftf_health_plans'::varchar(25), ftf_health_plans.file_id) UNION ALL SELECT 'cleansed.ftf_ims_bridge'::varchar(23) AS cleansed_table, ftf_ims_bridge.file_id, count(*) AS counts FROM cleansed.ftf_ims_bridge GROUP BY 'cleansed.ftf_ims_bridge'::varchar(23), ftf_ims_bridge.file_id) UNION ALL SELECT 'cleansed.ftf_pbms'::varchar(17) AS cleansed_table, ftf_pbms.file_id, count(*) AS counts FROM cleansed.ftf_pbms GROUP BY 'cleansed.ftf_pbms'::varchar(17), ftf_pbms.file_id) UNION ALL SELECT 'cleansed.ftf_restrictions'::varchar(25) AS cleansed_table, ftf_restrictions.file_id, count(*) AS counts FROM cleansed.ftf_restrictions GROUP BY 'cleansed.ftf_restrictions'::varchar(25), ftf_restrictions.file_id) UNION ALL SELECT 'cleansed.ftf_wk_bridge'::varchar(22) AS cleansed_table, ftf_wk_bridge.file_id, count(*) AS counts FROM cleansed.ftf_wk_bridge GROUP BY 'cleansed.ftf_wk_bridge'::varchar(22), ftf_wk_bridge.file_id) UNION ALL SELECT 'cleansed.ftf_tiers'::varchar(18) AS cleansed_table, ftf_tiers.file_id, count(*) AS counts FROM cleansed.ftf_tiers GROUP BY 'cleansed.ftf_tiers'::varchar(18), ftf_tiers.file_id) UNION ALL SELECT 'hcos.ims_hcos_aco_detail'::varchar(24) AS cleansed_table, ims_hcos_aco_detail.file_id, count(*) AS counts FROM hcos.ims_hcos_aco_detail GROUP BY 'hcos.ims_hcos_aco_detail'::varchar(24), ims_hcos_aco_detail.file_id) UNION ALL SELECT 'hcos.ims_hcos_aco_detail_fact'::varchar(29) AS cleansed_table, ims_hcos_aco_detail_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_aco_detail_fact GROUP BY 'hcos.ims_hcos_aco_detail_fact'::varchar(29), ims_hcos_aco_detail_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_aco_org_fact'::varchar(26) AS cleansed_table, ims_hcos_aco_org_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_aco_org_fact GROUP BY 'hcos.ims_hcos_aco_org_fact'::varchar(26), ims_hcos_aco_org_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_aco_roster'::varchar(24) AS cleansed_table, ims_hcos_aco_roster.file_id, count(*) AS counts FROM hcos.ims_hcos_aco_roster GROUP BY 'hcos.ims_hcos_aco_roster'::varchar(24), ims_hcos_aco_roster.file_id) UNION ALL SELECT 'hcos.ims_hcos_aco_type'::varchar(22) AS cleansed_table, ims_hcos_aco_type.file_id, count(*) AS counts FROM hcos.ims_hcos_aco_type GROUP BY 'hcos.ims_hcos_aco_type'::varchar(22), ims_hcos_aco_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_affiliation_type'::varchar(30) AS cleansed_table, ims_hcos_affiliation_type.file_id, count(*) AS counts FROM hcos.ims_hcos_affiliation_type GROUP BY 'hcos.ims_hcos_affiliation_type'::varchar(30), ims_hcos_affiliation_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_bed_cluster_type'::varchar(30) AS cleansed_table, ims_hcos_bed_cluster_type.file_id, count(*) AS counts FROM hcos.ims_hcos_bed_cluster_type GROUP BY 'hcos.ims_hcos_bed_cluster_type'::varchar(30), ims_hcos_bed_cluster_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_bed_fact'::varchar(22) AS cleansed_table, ims_hcos_bed_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_bed_fact GROUP BY 'hcos.ims_hcos_bed_fact'::varchar(22), ims_hcos_bed_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_bed_type'::varchar(22) AS cleansed_table, ims_hcos_bed_type.file_id, count(*) AS counts FROM hcos.ims_hcos_bed_type GROUP BY 'hcos.ims_hcos_bed_type'::varchar(22), ims_hcos_bed_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_business'::varchar(22) AS cleansed_table, ims_hcos_business.file_id, count(*) AS counts FROM hcos.ims_hcos_business GROUP BY 'hcos.ims_hcos_business'::varchar(22), ims_hcos_business.file_id) UNION ALL SELECT 'hcos.ims_hcos_business_detail'::varchar(29) AS cleansed_table, ims_hcos_business_detail.file_id, count(*) AS counts FROM hcos.ims_hcos_business_detail GROUP BY 'hcos.ims_hcos_business_detail'::varchar(29), ims_hcos_business_detail.file_id) UNION ALL SELECT 'hcos.ims_hcos_business_detail_fact'::varchar(34) AS cleansed_table, ims_hcos_business_detail_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_business_detail_fact GROUP BY 'hcos.ims_hcos_business_detail_fact'::varchar(34), ims_hcos_business_detail_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_class_of_trade'::varchar(28) AS cleansed_table, ims_hcos_class_of_trade.file_id, count(*) AS counts FROM hcos.ims_hcos_class_of_trade GROUP BY 'hcos.ims_hcos_class_of_trade'::varchar(28), ims_hcos_class_of_trade.file_id) UNION ALL SELECT 'hcos.ims_hcos_clinical_code'::varchar(27) AS cleansed_table, ims_hcos_clinical_code.file_id, count(*) AS counts FROM hcos.ims_hcos_clinical_code GROUP BY 'hcos.ims_hcos_clinical_code'::varchar(27), ims_hcos_clinical_code.file_id) UNION ALL SELECT 'hcos.ims_hcos_clinical_fact'::varchar(27) AS cleansed_table, ims_hcos_clinical_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_clinical_fact GROUP BY 'hcos.ims_hcos_clinical_fact'::varchar(27), ims_hcos_clinical_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_clinical_fact_national'::varchar(36) AS cleansed_table, ims_hcos_clinical_fact_national.file_id, count(*) AS counts FROM hcos.ims_hcos_clinical_fact_national GROUP BY 'hcos.ims_hcos_clinical_fact_national'::varchar(36), ims_hcos_clinical_fact_national.file_id) UNION ALL SELECT 'hcos.ims_hcos_clinical_fact_state'::varchar(33) AS cleansed_table, ims_hcos_clinical_fact_state.file_id, count(*) AS counts FROM hcos.ims_hcos_clinical_fact_state GROUP BY 'hcos.ims_hcos_clinical_fact_state'::varchar(33), ims_hcos_clinical_fact_state.file_id) UNION ALL SELECT 'hcos.ims_hcos_contact_affiliation_fact'::varchar(38) AS cleansed_table, ims_hcos_contact_affiliation_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_contact_affiliation_fact GROUP BY 'hcos.ims_hcos_contact_affiliation_fact'::varchar(38), ims_hcos_contact_affiliation_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_cot_fact'::varchar(22) AS cleansed_table, ims_hcos_cot_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_cot_fact GROUP BY 'hcos.ims_hcos_cot_fact'::varchar(22), ims_hcos_cot_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_financial_fact'::varchar(28) AS cleansed_table, ims_hcos_financial_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_financial_fact GROUP BY 'hcos.ims_hcos_financial_fact'::varchar(28), ims_hcos_financial_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_identifier_fact'::varchar(29) AS cleansed_table, ims_hcos_identifier_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_identifier_fact GROUP BY 'hcos.ims_hcos_identifier_fact'::varchar(29), ims_hcos_identifier_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_identifier_type'::varchar(29) AS cleansed_table, ims_hcos_identifier_type.file_id, count(*) AS counts FROM hcos.ims_hcos_identifier_type GROUP BY 'hcos.ims_hcos_identifier_type'::varchar(29), ims_hcos_identifier_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_identifier_category_type'::varchar(38) AS cleansed_table, ims_hcos_identifier_category_type.file_id, count(*) AS counts FROM hcos.ims_hcos_identifier_category_type GROUP BY 'hcos.ims_hcos_identifier_category_type'::varchar(38), ims_hcos_identifier_category_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_identifier_term_type'::varchar(34) AS cleansed_table, ims_hcos_identifier_term_type.file_id, count(*) AS counts FROM hcos.ims_hcos_identifier_term_type GROUP BY 'hcos.ims_hcos_identifier_term_type'::varchar(34), ims_hcos_identifier_term_type.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional'::varchar(26) AS cleansed_table, ims_hcos_professional.file_id, count(*) AS counts FROM hcos.ims_hcos_professional GROUP BY 'hcos.ims_hcos_professional'::varchar(26), ims_hcos_professional.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional_detail'::varchar(33) AS cleansed_table, ims_hcos_professional_detail.file_id, count(*) AS counts FROM hcos.ims_hcos_professional_detail GROUP BY 'hcos.ims_hcos_professional_detail'::varchar(33), ims_hcos_professional_detail.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional_detail_fact'::varchar(38) AS cleansed_table, ims_hcos_professional_detail_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_professional_detail_fact GROUP BY 'hcos.ims_hcos_professional_detail_fact'::varchar(38), ims_hcos_professional_detail_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional_specialty_fact'::varchar(41) AS cleansed_table, ims_hcos_professional_specialty_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_professional_specialty_fact GROUP BY 'hcos.ims_hcos_professional_specialty_fact'::varchar(41), ims_hcos_professional_specialty_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional_specialty'::varchar(36) AS cleansed_table, ims_hcos_professional_specialty.file_id, count(*) AS counts FROM hcos.ims_hcos_professional_specialty GROUP BY 'hcos.ims_hcos_professional_specialty'::varchar(36), ims_hcos_professional_specialty.file_id) UNION ALL SELECT 'hcos.ims_hcos_professional_title'::varchar(32) AS cleansed_table, ims_hcos_professional_title.file_id, count(*) AS counts FROM hcos.ims_hcos_professional_title GROUP BY 'hcos.ims_hcos_professional_title'::varchar(32), ims_hcos_professional_title.file_id) UNION ALL SELECT 'hcos.ims_hcos_provider_affiliation_fact'::varchar(39) AS cleansed_table, ims_hcos_provider_affiliation_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_provider_affiliation_fact GROUP BY 'hcos.ims_hcos_provider_affiliation_fact'::varchar(39), ims_hcos_provider_affiliation_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_relationship_fact'::varchar(31) AS cleansed_table, ims_hcos_relationship_fact.file_id, count(*) AS counts FROM hcos.ims_hcos_relationship_fact GROUP BY 'hcos.ims_hcos_relationship_fact'::varchar(31), ims_hcos_relationship_fact.file_id) UNION ALL SELECT 'hcos.ims_hcos_relationship_type'::varchar(31) AS cleansed_table, ims_hcos_relationship_type.file_id, count(*) AS counts FROM hcos.ims_hcos_relationship_type GROUP BY 'hcos.ims_hcos_relationship_type'::varchar(31), ims_hcos_relationship_type.file_id) UNION ALL SELECT 'cleansed.i3_rx_by_strength'::varchar(26) AS cleansed_table, i3_rx_by_strength.file_id, count(*) AS counts FROM cleansed.i3_rx_by_strength GROUP BY 'cleansed.i3_rx_by_strength'::varchar(26), i3_rx_by_strength.file_id) UNION ALL SELECT 'cleansed.i3_rx'::varchar(14) AS cleansed_table, i3_rx.file_id, count(*) AS counts FROM cleansed.i3_rx GROUP BY 'cleansed.i3_rx'::varchar(14), i3_rx.file_id) UNION ALL SELECT 'cleansed.i3_rx_tysabri'::varchar(22) AS cleansed_table, i3_rx_tysabri.file_id, count(*) AS counts FROM cleansed.i3_rx_tysabri GROUP BY 'cleansed.i3_rx_tysabri'::varchar(22), i3_rx_tysabri.file_id) UNION ALL SELECT 'veeva.ids_call_detail'::varchar(21) AS cleansed_table, ids_call_detail.file_id, count(*) AS counts FROM veeva.ids_call_detail GROUP BY 'veeva.ids_call_detail'::varchar(21), ids_call_detail.file_id) UNION ALL SELECT 'veeva.ids_call'::varchar(14) AS cleansed_table, ids_call.file_id, count(*) AS counts FROM veeva.ids_call GROUP BY 'veeva.ids_call'::varchar(14), ids_call.file_id) UNION ALL SELECT 'cleansed.ims_product_list_monthly'::varchar(33) AS cleansed_table, ims_product_list_monthly.file_id, count(*) AS counts FROM cleansed.ims_product_list_monthly GROUP BY 'cleansed.ims_product_list_monthly'::varchar(33), ims_product_list_monthly.file_id) UNION ALL SELECT 'cleansed.ims_product_list_weekly'::varchar(32) AS cleansed_table, ims_product_list_weekly.file_id, count(*) AS counts FROM cleansed.ims_product_list_weekly GROUP BY 'cleansed.ims_product_list_weekly'::varchar(32), ims_product_list_weekly.file_id) UNION ALL SELECT 'cleansed.ims_mhj_cnt_m'::varchar(22) AS cleansed_table, ims_mhj_cnt_m.file_id, count(*) AS counts FROM cleansed.ims_mhj_cnt_m GROUP BY 'cleansed.ims_mhj_cnt_m'::varchar(22), ims_mhj_cnt_m.file_id) UNION ALL SELECT 'cleansed.ims_mhj_cnt_w'::varchar(22) AS cleansed_table, ims_mhj_cnt_w.file_id, count(*) AS counts FROM cleansed.ims_mhj_cnt_w GROUP BY 'cleansed.ims_mhj_cnt_w'::varchar(22), ims_mhj_cnt_w.file_id) UNION ALL SELECT 'cleansed.ims_mhj_control_m'::varchar(26) AS cleansed_table, ims_mhj_control_m.file_id, count(*) AS counts FROM cleansed.ims_mhj_control_m GROUP BY 'cleansed.ims_mhj_control_m'::varchar(26), ims_mhj_control_m.file_id) UNION ALL SELECT 'cleansed.ims_mhj_control_w'::varchar(26) AS cleansed_table, ims_mhj_control_w.file_id, count(*) AS counts FROM cleansed.ims_mhj_control_w GROUP BY 'cleansed.ims_mhj_control_w'::varchar(26), ims_mhj_control_w.file_id) UNION ALL SELECT 'cleansed.ims_mhj_qty_m'::varchar(22) AS cleansed_table, ims_mhj_qty_m.file_id, count(*) AS counts FROM cleansed.ims_mhj_qty_m GROUP BY 'cleansed.ims_mhj_qty_m'::varchar(22), ims_mhj_qty_m.file_id) UNION ALL SELECT 'cleansed.ims_mhj_qty_w'::varchar(22) AS cleansed_table, ims_mhj_qty_w.file_id, count(*) AS counts FROM cleansed.ims_mhj_qty_w GROUP BY 'cleansed.ims_mhj_qty_w'::varchar(22), ims_mhj_qty_w.file_id) UNION ALL SELECT 'cleansed.ims_pbm_xref'::varchar(21) AS cleansed_table, ims_pbm_xref.file_id, count(*) AS counts FROM cleansed.ims_pbm_xref GROUP BY 'cleansed.ims_pbm_xref'::varchar(21), ims_pbm_xref.file_id) UNION ALL SELECT 'cleansed.ims_plan_xref'::varchar(22) AS cleansed_table, ims_plan_xref.file_id, count(*) AS counts FROM cleansed.ims_plan_xref GROUP BY 'cleansed.ims_plan_xref'::varchar(22), ims_plan_xref.file_id) UNION ALL SELECT 'cleansed.ims_plan_xref_accelerated'::varchar(34) AS cleansed_table, ims_plan_xref_accelerated.file_id, count(*) AS counts FROM cleansed.ims_plan_xref_accelerated GROUP BY 'cleansed.ims_plan_xref_accelerated'::varchar(34), ims_plan_xref_accelerated.file_id) UNION ALL SELECT 'cleansed.kc_sales_zip_to_territory'::varchar(34) AS cleansed_table, kc_sales_zip_to_territory.file_id, count(*) AS counts FROM cleansed.kc_sales_zip_to_territory GROUP BY 'cleansed.kc_sales_zip_to_territory'::varchar(34), kc_sales_zip_to_territory.file_id) UNION ALL SELECT 'cleansed.knipper_samples_shipped'::varchar(32) AS cleansed_table, knipper_samples_shipped.file_id, count(*) AS counts FROM cleansed.knipper_samples_shipped GROUP BY 'cleansed.knipper_samples_shipped'::varchar(32), knipper_samples_shipped.file_id) UNION ALL SELECT 'cleansed.mm_ram_to_state'::varchar(24) AS cleansed_table, mm_ram_to_state.file_id, count(*) AS counts FROM cleansed.mm_ram_to_state GROUP BY 'cleansed.mm_ram_to_state'::varchar(24), mm_ram_to_state.file_id) UNION ALL SELECT 'cleansed.omnicare_sales'::varchar(23) AS cleansed_table, omnicare_sales.file_id, count(*) AS counts FROM cleansed.omnicare_sales GROUP BY 'cleansed.omnicare_sales'::varchar(23), omnicare_sales.file_id) UNION ALL SELECT 'cleansed.onc_account_targets'::varchar(28) AS cleansed_table, onc_account_targets.file_id, count(*) AS counts FROM cleansed.onc_account_targets GROUP BY 'cleansed.onc_account_targets'::varchar(28), onc_account_targets.file_id) UNION ALL SELECT 'cleansed.onc_call_detail_goals'::varchar(30) AS cleansed_table, onc_call_detail_goals.file_id, count(*) AS counts FROM cleansed.onc_call_detail_goals GROUP BY 'cleansed.onc_call_detail_goals'::varchar(30), onc_call_detail_goals.file_id) UNION ALL SELECT 'cleansed.ims_ddd_monthly_retail_onc'::varchar(35) AS cleansed_table, ims_ddd_monthly_retail_onc.file_id, count(*) AS counts FROM cleansed.ims_ddd_monthly_retail_onc GROUP BY 'cleansed.ims_ddd_monthly_retail_onc'::varchar(35), ims_ddd_monthly_retail_onc.file_id) UNION ALL SELECT 'cleansed.ims_ddd_weekly_retail_onc'::varchar(34) AS cleansed_table, ims_ddd_weekly_retail_onc.file_id, count(*) AS counts FROM cleansed.ims_ddd_weekly_retail_onc GROUP BY 'cleansed.ims_ddd_weekly_retail_onc'::varchar(34), ims_ddd_weekly_retail_onc.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_demo_monthly_dollars'::varchar(40) AS cleansed_table, ims_ddd_md_demo_monthly_dollars.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_demo_monthly_dollars GROUP BY 'cleansed.ims_ddd_md_demo_monthly_dollars'::varchar(40), ims_ddd_md_demo_monthly_dollars.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_demo_monthly_qty'::varchar(36) AS cleansed_table, ims_ddd_md_demo_monthly_qty.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_demo_monthly_qty GROUP BY 'cleansed.ims_ddd_md_demo_monthly_qty'::varchar(36), ims_ddd_md_demo_monthly_qty.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_monthly_dollars_onc'::varchar(39) AS cleansed_table, ims_ddd_md_monthly_dollars_onc.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_monthly_dollars_onc GROUP BY 'cleansed.ims_ddd_md_monthly_dollars_onc'::varchar(39), ims_ddd_md_monthly_dollars_onc.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_monthly_quantity_onc'::varchar(40) AS cleansed_table, ims_ddd_md_monthly_quantity_onc.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_monthly_quantity_onc GROUP BY 'cleansed.ims_ddd_md_monthly_quantity_onc'::varchar(40), ims_ddd_md_monthly_quantity_onc.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_demo_weekly'::varchar(31) AS cleansed_table, ims_ddd_md_demo_weekly.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_demo_weekly GROUP BY 'cleansed.ims_ddd_md_demo_weekly'::varchar(31), ims_ddd_md_demo_weekly.file_id) UNION ALL SELECT 'cleansed.ims_ddd_md_weekly_sales_onc'::varchar(36) AS cleansed_table, ims_ddd_md_weekly_sales_onc.file_id, count(*) AS counts FROM cleansed.ims_ddd_md_weekly_sales_onc GROUP BY 'cleansed.ims_ddd_md_weekly_sales_onc'::varchar(36), ims_ddd_md_weekly_sales_onc.file_id) UNION ALL SELECT 'cleansed.onc_manual_fcrs'::varchar(24) AS cleansed_table, onc_manual_fcrs.file_id, count(*) AS counts FROM cleansed.onc_manual_fcrs GROUP BY 'cleansed.onc_manual_fcrs'::varchar(24), onc_manual_fcrs.file_id) UNION ALL SELECT 'cleansed.onc_sales_quotas'::varchar(25) AS cleansed_table, onc_sales_quotas.file_id, count(*) AS counts FROM cleansed.onc_sales_quotas GROUP BY 'cleansed.onc_sales_quotas'::varchar(25), onc_sales_quotas.file_id) UNION ALL SELECT 'cleansed.ims_ddd_non_retail_pcs'::varchar(31) AS cleansed_table, ims_ddd_non_retail_pcs.file_id, count(*) AS counts FROM cleansed.ims_ddd_non_retail_pcs GROUP BY 'cleansed.ims_ddd_non_retail_pcs'::varchar(31), ims_ddd_non_retail_pcs.file_id) UNION ALL SELECT 'cleansed.ims_ddd_retail_pcs'::varchar(27) AS cleansed_table, ims_ddd_retail_pcs.file_id, count(*) AS counts FROM cleansed.ims_ddd_retail_pcs GROUP BY 'cleansed.ims_ddd_retail_pcs'::varchar(27), ims_ddd_retail_pcs.file_id) UNION ALL SELECT 'cleansed.prime_rx'::varchar(17) AS cleansed_table, prime_rx.file_id, count(*) AS counts FROM cleansed.prime_rx GROUP BY 'cleansed.prime_rx'::varchar(17), prime_rx.file_id) UNION ALL SELECT 'cleansed.rems_facility'::varchar(22) AS cleansed_table, rems_facility.file_id, count(*) AS counts FROM cleansed.rems_facility GROUP BY 'cleansed.rems_facility'::varchar(22), rems_facility.file_id) UNION ALL SELECT 'cleansed.rems_pharmacy'::varchar(22) AS cleansed_table, rems_pharmacy.file_id, count(*) AS counts FROM cleansed.rems_pharmacy GROUP BY 'cleansed.rems_pharmacy'::varchar(22), rems_pharmacy.file_id) UNION ALL SELECT 'cleansed.rems_prescriber'::varchar(24) AS cleansed_table, rems_prescriber.file_id, count(*) AS counts FROM cleansed.rems_prescriber GROUP BY 'cleansed.rems_prescriber'::varchar(24), rems_prescriber.file_id) UNION ALL SELECT 'cleansed.specialty_pharmacy_cm_lookup'::varchar(37) AS cleansed_table, specialty_pharmacy_cm_lookup.file_id, count(*) AS counts FROM cleansed.specialty_pharmacy_cm_lookup GROUP BY 'cleansed.specialty_pharmacy_cm_lookup'::varchar(37), specialty_pharmacy_cm_lookup.file_id) UNION ALL SELECT 'cleansed.specialty_pharmacy_lookups'::varchar(35) AS cleansed_table, specialty_pharmacy_lookups.file_id, count(*) AS counts FROM cleansed.specialty_pharmacy_lookups GROUP BY 'cleansed.specialty_pharmacy_lookups'::varchar(35), specialty_pharmacy_lookups.file_id) UNION ALL SELECT 'cleansed.tb_cb_accounts'::varchar(23) AS cleansed_table, tb_cb_accounts.file_id, count(*) AS counts FROM cleansed.tb_cb_accounts GROUP BY 'cleansed.tb_cb_accounts'::varchar(23), tb_cb_accounts.file_id) UNION ALL SELECT 'cleansed.tb_cb_transactions'::varchar(27) AS cleansed_table, tb_cb_transactions.file_id, count(*) AS counts FROM cleansed.tb_cb_transactions GROUP BY 'cleansed.tb_cb_transactions'::varchar(27), tb_cb_transactions.file_id) UNION ALL SELECT 'cleansed.tb_ds_accounts'::varchar(23) AS cleansed_table, tb_ds_accounts.file_id, count(*) AS counts FROM cleansed.tb_ds_accounts GROUP BY 'cleansed.tb_ds_accounts'::varchar(23), tb_ds_accounts.file_id) UNION ALL SELECT 'cleansed.tb_ds_transactions'::varchar(27) AS cleansed_table, tb_ds_transactions.file_id, count(*) AS counts FROM cleansed.tb_ds_transactions GROUP BY 'cleansed.tb_ds_transactions'::varchar(27), tb_ds_transactions.file_id) UNION ALL SELECT 'veeva.time_off_territory_kc'::varchar(27) AS cleansed_table, time_off_territory_kc.file_id, count(*) AS counts FROM veeva.time_off_territory_kc GROUP BY 'veeva.time_off_territory_kc'::varchar(27), time_off_territory_kc.file_id) UNION ALL SELECT 'veeva.time_off_territory'::varchar(24) AS cleansed_table, time_off_territory.file_id, count(*) AS counts FROM veeva.time_off_territory GROUP BY 'veeva.time_off_territory'::varchar(24), time_off_territory.file_id) UNION ALL SELECT 'cleansed.publicis_touchpoint_call'::varchar(33) AS cleansed_table, publicis_touchpoint_call.file_id, count(*) AS counts FROM cleansed.publicis_touchpoint_call GROUP BY 'cleansed.publicis_touchpoint_call'::varchar(33), publicis_touchpoint_call.file_id) UNION ALL SELECT 'cleansed.publicis_touchpoint_presentation'::varchar(41) AS cleansed_table, publicis_touchpoint_presentation.file_id, count(*) AS counts FROM cleansed.publicis_touchpoint_presentation GROUP BY 'cleansed.publicis_touchpoint_presentation'::varchar(41), publicis_touchpoint_presentation.file_id) UNION ALL SELECT 'cleansed.anda_sales_tw'::varchar(22) AS cleansed_table, anda_sales_tw.file_id, count(*) AS counts FROM cleansed.anda_sales_tw GROUP BY 'cleansed.anda_sales_tw'::varchar(22), anda_sales_tw.file_id) UNION ALL SELECT 'cleansed.biologics_sales_tw'::varchar(27) AS cleansed_table, biologics_sales_tw.file_id, count(*) AS counts FROM cleansed.biologics_sales_tw GROUP BY 'cleansed.biologics_sales_tw'::varchar(27), biologics_sales_tw.file_id) UNION ALL SELECT 'cleansed.hd_smith_sales_tw'::varchar(26) AS cleansed_table, hd_smith_sales_tw.file_id, count(*) AS counts FROM cleansed.hd_smith_sales_tw GROUP BY 'cleansed.hd_smith_sales_tw'::varchar(26), hd_smith_sales_tw.file_id) UNION ALL SELECT 'cleansed.ics_account_tw'::varchar(23) AS cleansed_table, ics_account_tw.file_id, count(*) AS counts FROM cleansed.ics_account_tw GROUP BY 'cleansed.ics_account_tw'::varchar(23), ics_account_tw.file_id) UNION ALL SELECT 'cleansed.ics_sales_tw'::varchar(21) AS cleansed_table, ics_sales_tw.file_id, count(*) AS counts FROM cleansed.ics_sales_tw GROUP BY 'cleansed.ics_sales_tw'::varchar(21), ics_sales_tw.file_id) UNION ALL SELECT 'veeva.account'::varchar(13) AS cleansed_table, account.file_id, count(*) AS counts FROM veeva.account GROUP BY 'veeva.account'::varchar(13), account.file_id) UNION ALL SELECT 'veeva.accountshare'::varchar(18) AS cleansed_table, accountshare.file_id, count(*) AS counts FROM veeva.accountshare GROUP BY 'veeva.accountshare'::varchar(18), accountshare.file_id) UNION ALL SELECT 'veeva.account_merge_history'::varchar(27) AS cleansed_table, account_merge_history.file_id, count(*) AS counts FROM veeva.account_merge_history GROUP BY 'veeva.account_merge_history'::varchar(27), account_merge_history.file_id) UNION ALL SELECT 'veeva.address'::varchar(13) AS cleansed_table, address.file_id, count(*) AS counts FROM veeva.address GROUP BY 'veeva.address'::varchar(13), address.file_id) UNION ALL SELECT 'veeva.affiliation'::varchar(17) AS cleansed_table, affiliation.file_id, count(*) AS counts FROM veeva.affiliation GROUP BY 'veeva.affiliation'::varchar(17), affiliation.file_id) UNION ALL SELECT 'veeva.assessment'::varchar(16) AS cleansed_table, assessment.file_id, count(*) AS counts FROM veeva.assessment GROUP BY 'veeva.assessment'::varchar(16), assessment.file_id) UNION ALL SELECT 'veeva.call_goal'::varchar(15) AS cleansed_table, call_goal.file_id, count(*) AS counts FROM veeva.call_goal GROUP BY 'veeva.call_goal'::varchar(15), call_goal.file_id) UNION ALL SELECT 'veeva.call_detail'::varchar(17) AS cleansed_table, call_detail.file_id, count(*) AS counts FROM veeva.call_detail GROUP BY 'veeva.call_detail'::varchar(17), call_detail.file_id) UNION ALL SELECT 'veeva.call_key_message'::varchar(22) AS cleansed_table, call_key_message.file_id, count(*) AS counts FROM veeva.call_key_message GROUP BY 'veeva.call_key_message'::varchar(22), call_key_message.file_id) UNION ALL SELECT 'veeva.call_sample'::varchar(17) AS cleansed_table, call_sample.file_id, count(*) AS counts FROM veeva.call_sample GROUP BY 'veeva.call_sample'::varchar(17), call_sample.file_id) UNION ALL SELECT 'veeva.call'::varchar(10) AS cleansed_table, call.file_id, count(*) AS counts FROM veeva.call GROUP BY 'veeva.call'::varchar(10), call.file_id) UNION ALL SELECT 'veeva.call_history'::varchar(18) AS cleansed_table, call_history.file_id, count(*) AS counts FROM veeva.call_history GROUP BY 'veeva.call_history'::varchar(18), call_history.file_id) UNION ALL SELECT 'veeva.deciles'::varchar(13) AS cleansed_table, deciles.file_id, count(*) AS counts FROM veeva.deciles GROUP BY 'veeva.deciles'::varchar(13), deciles.file_id) UNION ALL SELECT 'veeva.group'::varchar(11) AS cleansed_table, "group".file_id, count(*) AS counts FROM veeva."group" GROUP BY 'veeva.group'::varchar(11), "group".file_id) UNION ALL SELECT 'veeva.key_message'::varchar(17) AS cleansed_table, key_message.file_id, count(*) AS counts FROM veeva.key_message GROUP BY 'veeva.key_message'::varchar(17), key_message.file_id) UNION ALL SELECT 'veeva.medical_inquiry'::varchar(21) AS cleansed_table, medical_inquiry.file_id, count(*) AS counts FROM veeva.medical_inquiry GROUP BY 'veeva.medical_inquiry'::varchar(21), medical_inquiry.file_id) UNION ALL SELECT 'veeva.product_metrics'::varchar(21) AS cleansed_table, product_metrics.file_id, count(*) AS counts FROM veeva.product_metrics GROUP BY 'veeva.product_metrics'::varchar(21), product_metrics.file_id) UNION ALL SELECT 'veeva.product'::varchar(13) AS cleansed_table, product.file_id, count(*) AS counts FROM veeva.product GROUP BY 'veeva.product'::varchar(13), product.file_id) UNION ALL SELECT 'veeva.survey_question_response'::varchar(30) AS cleansed_table, survey_question_response.file_id, count(*) AS counts FROM veeva.survey_question_response GROUP BY 'veeva.survey_question_response'::varchar(30), survey_question_response.file_id) UNION ALL SELECT 'veeva.recordtype'::varchar(16) AS cleansed_table, recordtype.file_id, count(*) AS counts FROM veeva.recordtype GROUP BY 'veeva.recordtype'::varchar(16), recordtype.file_id) UNION ALL SELECT 'veeva.survey_question'::varchar(21) AS cleansed_table, survey_question.file_id, count(*) AS counts FROM veeva.survey_question GROUP BY 'veeva.survey_question'::varchar(21), survey_question.file_id) UNION ALL SELECT 'veeva.survey_target'::varchar(19) AS cleansed_table, survey_target.file_id, count(*) AS counts FROM veeva.survey_target GROUP BY 'veeva.survey_target'::varchar(19), survey_target.file_id) UNION ALL SELECT 'veeva.survey'::varchar(12) AS cleansed_table, survey.file_id, count(*) AS counts FROM veeva.survey GROUP BY 'veeva.survey'::varchar(12), survey.file_id) UNION ALL SELECT 'veeva.sync_tracking'::varchar(19) AS cleansed_table, sync_tracking.file_id, count(*) AS counts FROM veeva.sync_tracking GROUP BY 'veeva.sync_tracking'::varchar(19), sync_tracking.file_id) UNION ALL SELECT 'veeva.territory'::varchar(15) AS cleansed_table, territory.file_id, count(*) AS counts FROM veeva.territory GROUP BY 'veeva.territory'::varchar(15), territory.file_id) UNION ALL SELECT 'veeva.tsf'::varchar(9) AS cleansed_table, tsf.file_id, count(*) AS counts FROM veeva.tsf GROUP BY 'veeva.tsf'::varchar(9), tsf.file_id) UNION ALL SELECT 'veeva.veeva_user'::varchar(16) AS cleansed_table, veeva_user.file_id, count(*) AS counts FROM veeva.veeva_user GROUP BY 'veeva.veeva_user'::varchar(16), veeva_user.file_id) UNION ALL SELECT 'veeva.user_role'::varchar(15) AS cleansed_table, user_role.file_id, count(*) AS counts FROM veeva.user_role GROUP BY 'veeva.user_role'::varchar(15), user_role.file_id) UNION ALL SELECT 'veeva.user_territory'::varchar(20) AS cleansed_table, user_territory.file_id, count(*) AS counts FROM veeva.user_territory GROUP BY 'veeva.user_territory'::varchar(20), user_territory.file_id) UNION ALL SELECT 'cleansed.valuecentric_867'::varchar(25) AS cleansed_table, valuecentric_867.file_id, count(*) AS counts FROM cleansed.valuecentric_867 GROUP BY 'cleansed.valuecentric_867'::varchar(25), valuecentric_867.file_id) UNION ALL SELECT 'cleansed.zs_call_plan_tc'::varchar(24) AS cleansed_table, zs_call_plan_tc.file_id, count(*) AS counts FROM cleansed.zs_call_plan_tc GROUP BY 'cleansed.zs_call_plan_tc'::varchar(24), zs_call_plan_tc.file_id) UNION ALL SELECT 'cleansed.zs_call_plan_tn'::varchar(24) AS cleansed_table, zs_call_plan_tn.file_id, count(*) AS counts FROM cleansed.zs_call_plan_tn GROUP BY 'cleansed.zs_call_plan_tn'::varchar(24), zs_call_plan_tn.file_id) UNION ALL SELECT 'cleansed.zs_call_plan_tp'::varchar(24) AS cleansed_table, zs_call_plan_tp.file_id, count(*) AS counts FROM cleansed.zs_call_plan_tp GROUP BY 'cleansed.zs_call_plan_tp'::varchar(24), zs_call_plan_tp.file_id) UNION ALL SELECT 'cleansed.zs_call_plan_tr'::varchar(24) AS cleansed_table, zs_call_plan_tr.file_id, count(*) AS counts FROM cleansed.zs_call_plan_tr GROUP BY 'cleansed.zs_call_plan_tr'::varchar(24), zs_call_plan_tr.file_id) UNION ALL SELECT 'cleansed.zs_call_plan_tw'::varchar(24) AS cleansed_table, zs_call_plan_tw.file_id, count(*) AS counts FROM cleansed.zs_call_plan_tw GROUP BY 'cleansed.zs_call_plan_tw'::varchar(24), zs_call_plan_tw.file_id) UNION ALL SELECT 'cleansed.kc_hr_job_titles'::varchar(25) AS cleansed_table, kc_hr_job_titles.file_id, count(*) AS counts FROM cleansed.kc_hr_job_titles GROUP BY 'cleansed.kc_hr_job_titles'::varchar(25), kc_hr_job_titles.file_id) UNION ALL SELECT 'cleansed.kc_hr_people'::varchar(21) AS cleansed_table, kc_hr_people.file_id, count(*) AS counts FROM cleansed.kc_hr_people GROUP BY 'cleansed.kc_hr_people'::varchar(21), kc_hr_people.file_id) UNION ALL SELECT 'cleansed.kc_hr_people_addresses'::varchar(31) AS cleansed_table, kc_hr_people_addresses.file_id, count(*) AS counts FROM cleansed.kc_hr_people_addresses GROUP BY 'cleansed.kc_hr_people_addresses'::varchar(31), kc_hr_people_addresses.file_id) UNION ALL SELECT 'cleansed.kc_hr_people_phones'::varchar(28) AS cleansed_table, kc_hr_people_phones.file_id, count(*) AS counts FROM cleansed.kc_hr_people_phones GROUP BY 'cleansed.kc_hr_people_phones'::varchar(28), kc_hr_people_phones.file_id) UNION ALL SELECT 'cleansed.kc_hr_phones'::varchar(21) AS cleansed_table, kc_hr_phones.file_id, count(*) AS counts FROM cleansed.kc_hr_phones GROUP BY 'cleansed.kc_hr_phones'::varchar(21), kc_hr_phones.file_id) UNION ALL SELECT 'cleansed.kc_hr_territories'::varchar(26) AS cleansed_table, kc_hr_territories.file_id, count(*) AS counts FROM cleansed.kc_hr_territories GROUP BY 'cleansed.kc_hr_territories'::varchar(26), kc_hr_territories.file_id) UNION ALL SELECT 'customer_master.hco_demo'::varchar(24) AS cleansed_table, hco_demo.file_id, count(*) AS counts FROM customer_master.hco_demo GROUP BY 'customer_master.hco_demo'::varchar(24), hco_demo.file_id) UNION ALL SELECT 'customer_master.hcp_demo'::varchar(24) AS cleansed_table, hcp_demo.file_id, count(*) AS counts FROM customer_master.hcp_demo GROUP BY 'customer_master.hcp_demo'::varchar(24), hcp_demo.file_id) UNION ALL SELECT 'customer_master.tvcmid_merges'::varchar(29) AS cleansed_table, tvcmid_merges.file_id, count(*) AS counts FROM customer_master.tvcmid_merges GROUP BY 'customer_master.tvcmid_merges'::varchar(29), tvcmid_merges.file_id) UNION ALL SELECT 'customer_master.tvcmid_xref'::varchar(27) AS cleansed_table, tvcmid_xref.file_id, count(*) AS counts FROM customer_master.tvcmid_xref GROUP BY 'customer_master.tvcmid_xref'::varchar(27), tvcmid_xref.file_id) UNION ALL SELECT 'cleansed.nw_hr_sales_loa'::varchar(24) AS cleansed_table, nw_hr_sales_loa.file_id, count(*) AS counts FROM cleansed.nw_hr_sales_loa GROUP BY 'cleansed.nw_hr_sales_loa'::varchar(24), nw_hr_sales_loa.file_id) UNION ALL SELECT 'cleansed.nw_hr_sales_roster'::varchar(27) AS cleansed_table, nw_hr_sales_roster.file_id, count(*) AS counts FROM cleansed.nw_hr_sales_roster GROUP BY 'cleansed.nw_hr_sales_roster'::varchar(27), nw_hr_sales_roster.file_id) UNION ALL SELECT 'cleansed.nw_hr_terr_id_change'::varchar(29) AS cleansed_table, nw_hr_terr_id_change.file_id, count(*) AS counts FROM cleansed.nw_hr_terr_id_change GROUP BY 'cleansed.nw_hr_terr_id_change'::varchar(29), nw_hr_terr_id_change.file_id) A ORDER BY A.cleansed_table, A.file_id;

CREATE  VIEW metadata.log_summary AS
 SELECT a.job,
        a.started,
        a.ended,
        a.elapsed_time,
        a.job_id,
        a.run
 FROM ( SELECT (split_part(starter.event_description, ':'::varchar(1), 2))::varchar(60) AS job,
        starter.event_date AS started,
        ender.event_date AS ended,
        ender.elapsed_time,
        starter.job_id,
        dense_rank() OVER (PARTITION BY (split_part(starter.event_description, ':'::varchar(1), 2))::varchar(60) ORDER BY starter.event_date DESC) AS run
 FROM (metadata.log_job_events starter LEFT  JOIN ( SELECT e.event_id,
        e.job_id,
        e.event_date,
        e.event_type,
        e.event_description,
        e.metric_name,
        e.metric_count,
        e.elapsed_time
 FROM metadata.log_job_events e
 WHERE ((e.event_description ~~ 'STEP%SQL_%'::varchar(10)) AND ((split_part(e.event_description, ':'::varchar(1), 1))::varchar(60) = 'STEP ENDED'::varchar(10)))) ender ON (((starter.job_id = ender.job_id) AND ((split_part(starter.event_description, ':'::varchar(1), 2))::varchar(60) = (split_part(ender.event_description, ':'::varchar(1), 2))::varchar(60)))))
 WHERE ((starter.event_description ~~ 'STEP%SQL_%'::varchar(10)) AND ((split_part(starter.event_description, ':'::varchar(1), 1))::varchar(60) = 'STEP STARTING'::varchar(13))) UNION  SELECT starter.metric_name,
        starter.event_date,
        ender.event_date AS event_date3,
        "datediff"('s'::varchar(1), starter.event_date, ender.event_date) AS elapsed_time,
        starter.job_id,
        dense_rank() OVER (PARTITION BY starter.metric_name ORDER BY starter.event_date DESC) AS run
 FROM (metadata.log_job_events starter LEFT  JOIN ( SELECT e.event_id,
        e.job_id,
        e.event_date,
        e.event_type,
        e.event_description,
        e.metric_name,
        e.metric_count,
        e.elapsed_time
 FROM metadata.log_job_events e
 WHERE ((e.event_description ~~ '%JOB REQUEST COMPLETED%'::varchar(23)) AND (e.metric_name = ANY (ARRAY['Cleansing'::varchar(11), 'Integration'::varchar(11)])))) ender ON (((starter.job_id = ender.job_id) AND (starter.metric_name = ender.metric_name))))
 WHERE ((starter.event_description ~~ '%JOB REQUEST STARTED%'::varchar(21)) AND (starter.metric_name = ANY (ARRAY['Cleansing'::varchar(11), 'Integration'::varchar(11)])))) a
 ORDER BY a.started DESC;

CREATE  VIEW metadata.datamart_table_counts AS
SELECT A.datamart_table, A.counts FROM (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((SELECT 'datamart.activity_hub'::varchar(21) AS datamart_table, count(*) AS counts FROM datamart.activity_hub GROUP BY 'datamart.activity_hub'::varchar(21) UNION ALL SELECT 'datamart.affiliations'::varchar(21) AS datamart_table, count(*) AS counts FROM datamart.affiliations GROUP BY 'datamart.affiliations'::varchar(21)) UNION ALL SELECT 'datamart.alternate_alignments'::varchar(29) AS datamart_table, count(*) AS counts FROM datamart.alternate_alignments GROUP BY 'datamart.alternate_alignments'::varchar(29)) UNION ALL SELECT 'datamart.alternate_call_plans'::varchar(29) AS datamart_table, count(*) AS counts FROM datamart.alternate_call_plans GROUP BY 'datamart.alternate_call_plans'::varchar(29)) UNION ALL SELECT 'datamart.call_plan'::varchar(18) AS datamart_table, count(*) AS counts FROM datamart.call_plan GROUP BY 'datamart.call_plan'::varchar(18)) UNION ALL SELECT 'datamart.chargeback_demographics'::varchar(32) AS datamart_table, count(*) AS counts FROM datamart.chargeback_demographics GROUP BY 'datamart.chargeback_demographics'::varchar(32)) UNION ALL SELECT 'datamart.chargebacks'::varchar(20) AS datamart_table, count(*) AS counts FROM datamart.chargebacks GROUP BY 'datamart.chargebacks'::varchar(20)) UNION ALL SELECT 'datamart.clozapine_sales'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.clozapine_sales GROUP BY 'datamart.clozapine_sales'::varchar(24)) UNION ALL SELECT 'datamart.cmop_rx'::varchar(16) AS datamart_table, count(*) AS counts FROM datamart.cmop_rx GROUP BY 'datamart.cmop_rx'::varchar(16)) UNION ALL SELECT 'datamart.copay'::varchar(14) AS datamart_table, count(*) AS counts FROM datamart.copay GROUP BY 'datamart.copay'::varchar(14)) UNION ALL SELECT 'datamart.current_alignment'::varchar(26) AS datamart_table, count(*) AS counts FROM datamart.current_alignment GROUP BY 'datamart.current_alignment'::varchar(26)) UNION ALL SELECT 'datamart.customer_hco_demographics'::varchar(34) AS datamart_table, count(*) AS counts FROM datamart.customer_hco_demographics GROUP BY 'datamart.customer_hco_demographics'::varchar(34)) UNION ALL SELECT 'datamart.customer_hcp_demographics'::varchar(34) AS datamart_table, count(*) AS counts FROM datamart.customer_hcp_demographics GROUP BY 'datamart.customer_hcp_demographics'::varchar(34)) UNION ALL SELECT 'datamart.customer_level_flags'::varchar(29) AS datamart_table, count(*) AS counts FROM datamart.customer_level_flags GROUP BY 'datamart.customer_level_flags'::varchar(29)) UNION ALL SELECT 'datamart.ddd'::varchar(12) AS datamart_table, count(*) AS counts FROM datamart.ddd GROUP BY 'datamart.ddd'::varchar(12)) UNION ALL SELECT 'datamart.ddd_md'::varchar(15) AS datamart_table, count(*) AS counts FROM datamart.ddd_md GROUP BY 'datamart.ddd_md'::varchar(15)) UNION ALL SELECT 'datamart.digital_sales_aid_analysis'::varchar(35) AS datamart_table, count(*) AS counts FROM datamart.digital_sales_aid_analysis GROUP BY 'datamart.digital_sales_aid_analysis'::varchar(35)) UNION ALL SELECT 'datamart.direct_sales'::varchar(21) AS datamart_table, count(*) AS counts FROM datamart.direct_sales GROUP BY 'datamart.direct_sales'::varchar(21)) UNION ALL SELECT 'datamart.direct_sales_demographics'::varchar(34) AS datamart_table, count(*) AS counts FROM datamart.direct_sales_demographics GROUP BY 'datamart.direct_sales_demographics'::varchar(34)) UNION ALL SELECT 'datamart.dnc'::varchar(12) AS datamart_table, count(*) AS counts FROM datamart.dnc GROUP BY 'datamart.dnc'::varchar(12)) UNION ALL SELECT 'datamart.do_not_promote'::varchar(23) AS datamart_table, count(*) AS counts FROM datamart.do_not_promote GROUP BY 'datamart.do_not_promote'::varchar(23)) UNION ALL SELECT 'datamart.event'::varchar(14) AS datamart_table, count(*) AS counts FROM datamart.event GROUP BY 'datamart.event'::varchar(14)) UNION ALL SELECT 'datamart.event_attendee'::varchar(23) AS datamart_table, count(*) AS counts FROM datamart.event_attendee GROUP BY 'datamart.event_attendee'::varchar(23)) UNION ALL SELECT 'datamart.event_attendee_count'::varchar(29) AS datamart_table, count(*) AS counts FROM datamart.event_attendee_count GROUP BY 'datamart.event_attendee_count'::varchar(29)) UNION ALL SELECT 'datamart.event_expense'::varchar(22) AS datamart_table, count(*) AS counts FROM datamart.event_expense GROUP BY 'datamart.event_expense'::varchar(22)) UNION ALL SELECT 'datamart.factory_sales_852'::varchar(26) AS datamart_table, count(*) AS counts FROM datamart.factory_sales_852 GROUP BY 'datamart.factory_sales_852'::varchar(26)) UNION ALL SELECT 'datamart.formulary'::varchar(18) AS datamart_table, count(*) AS counts FROM datamart.formulary GROUP BY 'datamart.formulary'::varchar(18)) UNION ALL SELECT 'datamart.ic_demographics_semi_annual_frozen_snapshot'::varchar(52) AS datamart_table, count(*) AS counts FROM datamart.ic_demographics_semi_annual_frozen_snapshot GROUP BY 'datamart.ic_demographics_semi_annual_frozen_snapshot'::varchar(52)) UNION ALL SELECT 'datamart.ic_demographics_snapshot'::varchar(33) AS datamart_table, count(*) AS counts FROM datamart.ic_demographics_snapshot GROUP BY 'datamart.ic_demographics_snapshot'::varchar(33)) UNION ALL SELECT 'datamart.ims_outlet_master'::varchar(26) AS datamart_table, count(*) AS counts FROM datamart.ims_outlet_master GROUP BY 'datamart.ims_outlet_master'::varchar(26)) UNION ALL SELECT 'datamart.leave_of_absence'::varchar(25) AS datamart_table, count(*) AS counts FROM datamart.leave_of_absence GROUP BY 'datamart.leave_of_absence'::varchar(25)) UNION ALL SELECT 'datamart.mm_ram_to_rsm'::varchar(22) AS datamart_table, count(*) AS counts FROM datamart.mm_ram_to_rsm GROUP BY 'datamart.mm_ram_to_rsm'::varchar(22)) UNION ALL SELECT 'datamart.oncology_adjusted_sales'::varchar(32) AS datamart_table, count(*) AS counts FROM datamart.oncology_adjusted_sales GROUP BY 'datamart.oncology_adjusted_sales'::varchar(32)) UNION ALL SELECT 'datamart.oncology_demographics'::varchar(30) AS datamart_table, count(*) AS counts FROM datamart.oncology_demographics GROUP BY 'datamart.oncology_demographics'::varchar(30)) UNION ALL SELECT 'datamart.oncology_fcr'::varchar(21) AS datamart_table, count(*) AS counts FROM datamart.oncology_fcr GROUP BY 'datamart.oncology_fcr'::varchar(21)) UNION ALL SELECT 'datamart.oncology_related_accounts'::varchar(34) AS datamart_table, count(*) AS counts FROM datamart.oncology_related_accounts GROUP BY 'datamart.oncology_related_accounts'::varchar(34)) UNION ALL SELECT 'datamart.oncology_sales_adjustments'::varchar(35) AS datamart_table, count(*) AS counts FROM datamart.oncology_sales_adjustments GROUP BY 'datamart.oncology_sales_adjustments'::varchar(35)) UNION ALL SELECT 'datamart.oncology_sales_deciles'::varchar(31) AS datamart_table, count(*) AS counts FROM datamart.oncology_sales_deciles GROUP BY 'datamart.oncology_sales_deciles'::varchar(31)) UNION ALL SELECT 'datamart.oncology_sales_quotas'::varchar(30) AS datamart_table, count(*) AS counts FROM datamart.oncology_sales_quotas GROUP BY 'datamart.oncology_sales_quotas'::varchar(30)) UNION ALL SELECT 'datamart.oncology_target_accounts'::varchar(33) AS datamart_table, count(*) AS counts FROM datamart.oncology_target_accounts GROUP BY 'datamart.oncology_target_accounts'::varchar(33)) UNION ALL SELECT 'datamart.plantrak_workbook'::varchar(26) AS datamart_table, count(*) AS counts FROM datamart.plantrak_workbook GROUP BY 'datamart.plantrak_workbook'::varchar(26)) UNION ALL SELECT 'datamart.prescriber_combined_demographics'::varchar(41) AS datamart_table, count(*) AS counts FROM datamart.prescriber_combined_demographics GROUP BY 'datamart.prescriber_combined_demographics'::varchar(41)) UNION ALL SELECT 'datamart.prescriber_rx'::varchar(22) AS datamart_table, count(*) AS counts FROM datamart.prescriber_rx GROUP BY 'datamart.prescriber_rx'::varchar(22)) UNION ALL SELECT 'datamart.product_basket'::varchar(23) AS datamart_table, count(*) AS counts FROM datamart.product_basket GROUP BY 'datamart.product_basket'::varchar(23)) UNION ALL SELECT 'datamart.rems_pharmacy'::varchar(22) AS datamart_table, count(*) AS counts FROM datamart.rems_pharmacy GROUP BY 'datamart.rems_pharmacy'::varchar(22)) UNION ALL SELECT 'datamart.rems_prescriber'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.rems_prescriber GROUP BY 'datamart.rems_prescriber'::varchar(24)) UNION ALL SELECT 'datamart.roster'::varchar(15) AS datamart_table, count(*) AS counts FROM datamart.roster GROUP BY 'datamart.roster'::varchar(15)) UNION ALL SELECT 'datamart.rx_deciles'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.rx_deciles GROUP BY 'datamart.rx_deciles'::varchar(19)) UNION ALL SELECT 'datamart.sample_shipment'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.sample_shipment GROUP BY 'datamart.sample_shipment'::varchar(24)) UNION ALL SELECT 'datamart.sfa_call'::varchar(17) AS datamart_table, count(*) AS counts FROM datamart.sfa_call GROUP BY 'datamart.sfa_call'::varchar(17)) UNION ALL SELECT 'datamart.sfa_call_detail'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.sfa_call_detail GROUP BY 'datamart.sfa_call_detail'::varchar(24)) UNION ALL SELECT 'datamart.sfa_demographics'::varchar(25) AS datamart_table, count(*) AS counts FROM datamart.sfa_demographics GROUP BY 'datamart.sfa_demographics'::varchar(25)) UNION ALL SELECT 'datamart.sfa_promotional_items'::varchar(30) AS datamart_table, count(*) AS counts FROM datamart.sfa_promotional_items GROUP BY 'datamart.sfa_promotional_items'::varchar(30)) UNION ALL SELECT 'datamart.sfa_reprints'::varchar(21) AS datamart_table, count(*) AS counts FROM datamart.sfa_reprints GROUP BY 'datamart.sfa_reprints'::varchar(21)) UNION ALL SELECT 'datamart.sfa_sample'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.sfa_sample GROUP BY 'datamart.sfa_sample'::varchar(19)) UNION ALL SELECT 'datamart.sfa_survey'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.sfa_survey GROUP BY 'datamart.sfa_survey'::varchar(19)) UNION ALL SELECT 'datamart.specialty_pharmacy_enrollment'::varchar(38) AS datamart_table, count(*) AS counts FROM datamart.specialty_pharmacy_enrollment GROUP BY 'datamart.specialty_pharmacy_enrollment'::varchar(38)) UNION ALL SELECT 'datamart.specialty_pharmacy_rx'::varchar(30) AS datamart_table, count(*) AS counts FROM datamart.specialty_pharmacy_rx GROUP BY 'datamart.specialty_pharmacy_rx'::varchar(30)) UNION ALL SELECT 'datamart.specialty_pharmacy_shipment'::varchar(36) AS datamart_table, count(*) AS counts FROM datamart.specialty_pharmacy_shipment GROUP BY 'datamart.specialty_pharmacy_shipment'::varchar(36)) UNION ALL SELECT 'datamart.territory_history'::varchar(26) AS datamart_table, count(*) AS counts FROM datamart.territory_history GROUP BY 'datamart.territory_history'::varchar(26)) UNION ALL SELECT 'datamart.time_off_territory'::varchar(27) AS datamart_table, count(*) AS counts FROM datamart.time_off_territory GROUP BY 'datamart.time_off_territory'::varchar(27)) UNION ALL SELECT 'datamart.touchpoint_call'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.touchpoint_call GROUP BY 'datamart.touchpoint_call'::varchar(24)) UNION ALL SELECT 'datamart.touchpoint_presentation'::varchar(32) AS datamart_table, count(*) AS counts FROM datamart.touchpoint_presentation GROUP BY 'datamart.touchpoint_presentation'::varchar(32)) UNION ALL SELECT 'datamart.tvcmid_xref'::varchar(20) AS datamart_table, count(*) AS counts FROM datamart.tvcmid_xref GROUP BY 'datamart.tvcmid_xref'::varchar(20)) UNION ALL SELECT 'datamart.tw_account'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.tw_account GROUP BY 'datamart.tw_account'::varchar(19)) UNION ALL SELECT 'datamart.tw_address'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.tw_address GROUP BY 'datamart.tw_address'::varchar(19)) UNION ALL SELECT 'datamart.tw_address_xref'::varchar(24) AS datamart_table, count(*) AS counts FROM datamart.tw_address_xref GROUP BY 'datamart.tw_address_xref'::varchar(24)) UNION ALL SELECT 'datamart.unmatched_caremark_md_id'::varchar(33) AS datamart_table, count(*) AS counts FROM datamart.unmatched_caremark_md_id GROUP BY 'datamart.unmatched_caremark_md_id'::varchar(33)) UNION ALL SELECT 'datamart.veeva_sync'::varchar(19) AS datamart_table, count(*) AS counts FROM datamart.veeva_sync GROUP BY 'datamart.veeva_sync'::varchar(19)) UNION ALL SELECT 'datamart.wholesaler_sales_867'::varchar(29) AS datamart_table, count(*) AS counts FROM datamart.wholesaler_sales_867 GROUP BY 'datamart.wholesaler_sales_867'::varchar(29)) A;

CREATE  VIEW metadata.log_trend AS
 SELECT log_summary.job,
        max(CASE log_summary.run WHEN NULLSEQUAL 1 THEN log_summary.started ELSE NULL::timestamp END) AS LAST_RUN_DATE,
        max(CASE log_summary.run WHEN NULLSEQUAL 1 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN,
        max(CASE log_summary.run WHEN NULLSEQUAL 2 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_2,
        max(CASE log_summary.run WHEN NULLSEQUAL 3 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_3,
        max(CASE log_summary.run WHEN NULLSEQUAL 4 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_4,
        max(CASE log_summary.run WHEN NULLSEQUAL 5 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_5,
        max(CASE log_summary.run WHEN NULLSEQUAL 6 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_6,
        max(CASE log_summary.run WHEN NULLSEQUAL 7 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_7,
        max(CASE log_summary.run WHEN NULLSEQUAL 8 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_8,
        max(CASE log_summary.run WHEN NULLSEQUAL 9 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_9,
        max(CASE log_summary.run WHEN NULLSEQUAL 10 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_10,
        max(CASE log_summary.run WHEN NULLSEQUAL 11 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_11,
        max(CASE log_summary.run WHEN NULLSEQUAL 12 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_12,
        max(CASE log_summary.run WHEN NULLSEQUAL 13 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_13,
        max(CASE log_summary.run WHEN NULLSEQUAL 14 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_14,
        max(CASE log_summary.run WHEN NULLSEQUAL 15 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_15,
        max(CASE log_summary.run WHEN NULLSEQUAL 16 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_16,
        max(CASE log_summary.run WHEN NULLSEQUAL 17 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_17,
        max(CASE log_summary.run WHEN NULLSEQUAL 18 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_18,
        max(CASE log_summary.run WHEN NULLSEQUAL 19 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_19,
        max(CASE log_summary.run WHEN NULLSEQUAL 20 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_20,
        max(CASE log_summary.run WHEN NULLSEQUAL 21 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_21,
        max(CASE log_summary.run WHEN NULLSEQUAL 22 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_22,
        max(CASE log_summary.run WHEN NULLSEQUAL 23 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_23,
        max(CASE log_summary.run WHEN NULLSEQUAL 24 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_24,
        max(CASE log_summary.run WHEN NULLSEQUAL 25 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_25,
        max(CASE log_summary.run WHEN NULLSEQUAL 26 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_26,
        max(CASE log_summary.run WHEN NULLSEQUAL 27 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_27,
        max(CASE log_summary.run WHEN NULLSEQUAL 28 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_28,
        max(CASE log_summary.run WHEN NULLSEQUAL 29 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_29,
        max(CASE log_summary.run WHEN NULLSEQUAL 30 THEN log_summary.elapsed_time ELSE NULL::float END) AS LAST_RUN_30
 FROM metadata.log_summary
 GROUP BY log_summary.job
 ORDER BY max(CASE log_summary.run WHEN NULLSEQUAL 1 THEN log_summary.started ELSE NULL::timestamp END) DESC;

CREATE  VIEW metadata.workflow_log_trend AS
 SELECT steps.process_id,
        steps.command_step,
        steps.file_name,
        max(steps.log_date) AS most_recent_run,
        max(CASE WHEN (steps.rnk = 1) THEN steps.elapsed_time ELSE 0::float END) AS day_01,
        max(CASE WHEN (steps.rnk = 2) THEN steps.elapsed_time ELSE 0::float END) AS day_02,
        max(CASE WHEN (steps.rnk = 3) THEN steps.elapsed_time ELSE 0::float END) AS day_03,
        max(CASE WHEN (steps.rnk = 4) THEN steps.elapsed_time ELSE 0::float END) AS day_04,
        max(CASE WHEN (steps.rnk = 5) THEN steps.elapsed_time ELSE 0::float END) AS day_05,
        max(CASE WHEN (steps.rnk = 6) THEN steps.elapsed_time ELSE 0::float END) AS day_06,
        max(CASE WHEN (steps.rnk = 7) THEN steps.elapsed_time ELSE 0::float END) AS day_07,
        max(CASE WHEN (steps.rnk = 8) THEN steps.elapsed_time ELSE 0::float END) AS day_08,
        max(CASE WHEN (steps.rnk = 9) THEN steps.elapsed_time ELSE 0::float END) AS day_09,
        max(CASE WHEN (steps.rnk = 10) THEN steps.elapsed_time ELSE 0::float END) AS day_10,
        max(CASE WHEN (steps.rnk = 11) THEN steps.elapsed_time ELSE 0::float END) AS day_11,
        max(CASE WHEN (steps.rnk = 12) THEN steps.elapsed_time ELSE 0::float END) AS day_12,
        max(CASE WHEN (steps.rnk = 13) THEN steps.elapsed_time ELSE 0::float END) AS day_13,
        max(CASE WHEN (steps.rnk = 14) THEN steps.elapsed_time ELSE 0::float END) AS day_14,
        max(CASE WHEN (steps.rnk = 15) THEN steps.elapsed_time ELSE 0::float END) AS day_15,
        max(CASE WHEN (steps.rnk = 16) THEN steps.elapsed_time ELSE 0::float END) AS day_16,
        max(CASE WHEN (steps.rnk = 17) THEN steps.elapsed_time ELSE 0::float END) AS day_17,
        max(CASE WHEN (steps.rnk = 18) THEN steps.elapsed_time ELSE 0::float END) AS day_18,
        max(CASE WHEN (steps.rnk = 19) THEN steps.elapsed_time ELSE 0::float END) AS day_19,
        max(CASE WHEN (steps.rnk = 20) THEN steps.elapsed_time ELSE 0::float END) AS day_20,
        max(CASE WHEN (steps.rnk = 21) THEN steps.elapsed_time ELSE 0::float END) AS day_21,
        max(CASE WHEN (steps.rnk = 22) THEN steps.elapsed_time ELSE 0::float END) AS day_22,
        max(CASE WHEN (steps.rnk = 23) THEN steps.elapsed_time ELSE 0::float END) AS day_23,
        max(CASE WHEN (steps.rnk = 24) THEN steps.elapsed_time ELSE 0::float END) AS day_24,
        max(CASE WHEN (steps.rnk = 25) THEN steps.elapsed_time ELSE 0::float END) AS day_25,
        max(CASE WHEN (steps.rnk = 26) THEN steps.elapsed_time ELSE 0::float END) AS day_26,
        max(CASE WHEN (steps.rnk = 27) THEN steps.elapsed_time ELSE 0::float END) AS day_27,
        max(CASE WHEN (steps.rnk = 28) THEN steps.elapsed_time ELSE 0::float END) AS day_28
 FROM ( SELECT (workflow_log.logged_at)::date AS log_date,
        workflow_log.process_id,
        workflow_log.command_step,
        regexp_substr(workflow_log.full_path, E'[^\\/]+$'::varchar(7), 1, 1, ''::varchar, 0) AS file_name,
        workflow_log.elapsed_time,
        workflow_log.lock_uuid,
        dense_rank() OVER (PARTITION BY workflow_log.process_id, workflow_log.command_step ORDER BY workflow_log.logged_at DESC) AS rnk
 FROM metadata.workflow_log
 WHERE ((workflow_log.type = 'FILE'::varchar(4)) AND (workflow_log.message = 'END SQL FILE'::varchar(12)) AND (workflow_log.logged_at >= (trunc((statement_timestamp())::timestamp, 'DD'::varchar(2)) + '-28'::interval)))) steps
 GROUP BY steps.process_id,
          steps.command_step,
          steps.file_name
 ORDER BY steps.file_name,
          steps.process_id,
          steps.command_step;

CREATE  VIEW metadata.raw_view_counts_by_file_id AS
 SELECT A.raw_view,
        A.file_id,
        A.counts
 FROM ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((( SELECT 'raw.addresses'::varchar(13) AS raw_view,
        addresses.file_id,
        count(*) AS counts
 FROM raw.addresses
 GROUP BY 'raw.addresses'::varchar(13),
          addresses.file_id UNION ALL  SELECT 'raw.associates'::varchar(14) AS raw_view,
        associates.file_id,
        count(*) AS counts
 FROM raw.associates
 GROUP BY 'raw.associates'::varchar(14),
          associates.file_id) UNION ALL  SELECT 'raw.aud_associates'::varchar(18) AS raw_view,
        aud_associates.file_id,
        count(*) AS counts
 FROM raw.aud_associates
 GROUP BY 'raw.aud_associates'::varchar(18),
          aud_associates.file_id) UNION ALL  SELECT 'raw.c_bo_hce_alt_identifier'::varchar(27) AS raw_view,
        c_bo_hce_alt_identifier.file_id,
        count(*) AS counts
 FROM raw.c_bo_hce_alt_identifier
 GROUP BY 'raw.c_bo_hce_alt_identifier'::varchar(27),
          c_bo_hce_alt_identifier.file_id) UNION ALL  SELECT 'raw.c_bo_hce_raw_dea'::varchar(20) AS raw_view,
        c_bo_hce_raw_dea.file_id,
        count(*) AS counts
 FROM raw.c_bo_hce_raw_dea
 GROUP BY 'raw.c_bo_hce_raw_dea'::varchar(20),
          c_bo_hce_raw_dea.file_id) UNION ALL  SELECT 'raw.c_bo_hcp_detail'::varchar(19) AS raw_view,
        c_bo_hcp_detail.file_id,
        count(*) AS counts
 FROM raw.c_bo_hcp_detail
 GROUP BY 'raw.c_bo_hcp_detail'::varchar(19),
          c_bo_hcp_detail.file_id) UNION ALL  SELECT 'raw.c_bo_ims_flag'::varchar(17) AS raw_view,
        c_bo_ims_flag.file_id,
        count(*) AS counts
 FROM raw.c_bo_ims_flag
 GROUP BY 'raw.c_bo_ims_flag'::varchar(17),
          c_bo_ims_flag.file_id) UNION ALL  SELECT 'raw.c_bo_teva_flag'::varchar(18) AS raw_view,
        c_bo_teva_flag.file_id,
        count(*) AS counts
 FROM raw.c_bo_teva_flag
 GROUP BY 'raw.c_bo_teva_flag'::varchar(18),
          c_bo_teva_flag.file_id) UNION ALL  SELECT 'raw.c_bo_teva_sample_elig'::varchar(25) AS raw_view,
        c_bo_teva_sample_elig.file_id,
        count(*) AS counts
 FROM raw.c_bo_teva_sample_elig
 GROUP BY 'raw.c_bo_teva_sample_elig'::varchar(25),
          c_bo_teva_sample_elig.file_id) UNION ALL  SELECT 'raw.ext_ahm_event'::varchar(17) AS raw_view,
        ext_ahm_event.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event
 GROUP BY 'raw.ext_ahm_event'::varchar(17),
          ext_ahm_event.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_attendee'::varchar(26) AS raw_view,
        ext_ahm_event_attendee.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_attendee
 GROUP BY 'raw.ext_ahm_event_attendee'::varchar(26),
          ext_ahm_event_attendee.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_count'::varchar(23) AS raw_view,
        ext_ahm_event_count.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_count
 GROUP BY 'raw.ext_ahm_event_count'::varchar(23),
          ext_ahm_event_count.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_expense'::varchar(25) AS raw_view,
        ext_ahm_event_expense.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_expense
 GROUP BY 'raw.ext_ahm_event_expense'::varchar(25),
          ext_ahm_event_expense.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_host'::varchar(22) AS raw_view,
        ext_ahm_event_host.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_host
 GROUP BY 'raw.ext_ahm_event_host'::varchar(22),
          ext_ahm_event_host.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_product'::varchar(25) AS raw_view,
        ext_ahm_event_product.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_product
 GROUP BY 'raw.ext_ahm_event_product'::varchar(25),
          ext_ahm_event_product.file_id) UNION ALL  SELECT 'raw.ext_ahm_event_speaker'::varchar(25) AS raw_view,
        ext_ahm_event_speaker.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_event_speaker
 GROUP BY 'raw.ext_ahm_event_speaker'::varchar(25),
          ext_ahm_event_speaker.file_id) UNION ALL  SELECT 'raw.ext_ahm_organization'::varchar(24) AS raw_view,
        ext_ahm_organization.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_organization
 GROUP BY 'raw.ext_ahm_organization'::varchar(24),
          ext_ahm_organization.file_id) UNION ALL  SELECT 'raw.ext_ahm_speaker_contract'::varchar(28) AS raw_view,
        ext_ahm_speaker_contract.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_speaker_contract
 GROUP BY 'raw.ext_ahm_speaker_contract'::varchar(28),
          ext_ahm_speaker_contract.file_id) UNION ALL  SELECT 'raw.ext_ahm_speaker_license'::varchar(27) AS raw_view,
        ext_ahm_speaker_license.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_speaker_license
 GROUP BY 'raw.ext_ahm_speaker_license'::varchar(27),
          ext_ahm_speaker_license.file_id) UNION ALL  SELECT 'raw.ext_ahm_speaker_profile'::varchar(27) AS raw_view,
        ext_ahm_speaker_profile.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_speaker_profile
 GROUP BY 'raw.ext_ahm_speaker_profile'::varchar(27),
          ext_ahm_speaker_profile.file_id) UNION ALL  SELECT 'raw.ext_ahm_speaker_training'::varchar(28) AS raw_view,
        ext_ahm_speaker_training.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_speaker_training
 GROUP BY 'raw.ext_ahm_speaker_training'::varchar(28),
          ext_ahm_speaker_training.file_id) UNION ALL  SELECT 'raw.ext_ahm_topic_product'::varchar(25) AS raw_view,
        ext_ahm_topic_product.file_id,
        count(*) AS counts
 FROM raw.ext_ahm_topic_product
 GROUP BY 'raw.ext_ahm_topic_product'::varchar(25),
          ext_ahm_topic_product.file_id) UNION ALL  SELECT 'raw.ext_anda_sales'::varchar(18) AS raw_view,
        ext_anda_sales.file_id,
        count(*) AS counts
 FROM raw.ext_anda_sales
 GROUP BY 'raw.ext_anda_sales'::varchar(18),
          ext_anda_sales.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_detail_wkly'::varchar(29) AS raw_view,
        ext_asi_copay_detail_wkly.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_detail_wkly
 GROUP BY 'raw.ext_asi_copay_detail_wkly'::varchar(29),
          ext_asi_copay_detail_wkly.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_detail_wkly_cgd'::varchar(33) AS raw_view,
        ext_asi_copay_detail_wkly_cgd.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_detail_wkly_cgd
 GROUP BY 'raw.ext_asi_copay_detail_wkly_cgd'::varchar(33),
          ext_asi_copay_detail_wkly_cgd.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_detail_wkly_combo_2'::varchar(37) AS raw_view,
        ext_asi_copay_detail_wkly_combo_2.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_detail_wkly_combo_2
 GROUP BY 'raw.ext_asi_copay_detail_wkly_combo_2'::varchar(37),
          ext_asi_copay_detail_wkly_combo_2.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_detail_wkly_combo_3'::varchar(37) AS raw_view,
        ext_asi_copay_detail_wkly_combo_3.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_detail_wkly_combo_3
 GROUP BY 'raw.ext_asi_copay_detail_wkly_combo_3'::varchar(37),
          ext_asi_copay_detail_wkly_combo_3.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_detail_wkly_pskw'::varchar(34) AS raw_view,
        ext_asi_copay_detail_wkly_pskw.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_detail_wkly_pskw
 GROUP BY 'raw.ext_asi_copay_detail_wkly_pskw'::varchar(34),
          ext_asi_copay_detail_wkly_pskw.file_id) UNION ALL  SELECT 'raw.ext_asi_copay_redemptions'::varchar(29) AS raw_view,
        ext_asi_copay_redemptions.file_id,
        count(*) AS counts
 FROM raw.ext_asi_copay_redemptions
 GROUP BY 'raw.ext_asi_copay_redemptions'::varchar(29),
          ext_asi_copay_redemptions.file_id) UNION ALL  SELECT 'raw.ext_asi_redemptions'::varchar(23) AS raw_view,
        ext_asi_redemptions.file_id,
        count(*) AS counts
 FROM raw.ext_asi_redemptions
 GROUP BY 'raw.ext_asi_redemptions'::varchar(23),
          ext_asi_redemptions.file_id) UNION ALL  SELECT 'raw.ext_asi_voucher_detail_wkly_combo_1'::varchar(39) AS raw_view,
        ext_asi_voucher_detail_wkly_combo_1.file_id,
        count(*) AS counts
 FROM raw.ext_asi_voucher_detail_wkly_combo_1
 GROUP BY 'raw.ext_asi_voucher_detail_wkly_combo_1'::varchar(39),
          ext_asi_voucher_detail_wkly_combo_1.file_id) UNION ALL  SELECT 'raw.ext_asi_voucher_detail_wkly_voucher'::varchar(39) AS raw_view,
        ext_asi_voucher_detail_wkly_voucher.file_id,
        count(*) AS counts
 FROM raw.ext_asi_voucher_detail_wkly_voucher
 GROUP BY 'raw.ext_asi_voucher_detail_wkly_voucher'::varchar(39),
          ext_asi_voucher_detail_wkly_voucher.file_id) UNION ALL  SELECT 'raw.ext_call_goals_kc'::varchar(21) AS raw_view,
        ext_call_goals_kc.file_id,
        count(*) AS counts
 FROM raw.ext_call_goals_kc
 GROUP BY 'raw.ext_call_goals_kc'::varchar(21),
          ext_call_goals_kc.file_id) UNION ALL  SELECT 'raw.ext_caremark_rx2_aob'::varchar(24) AS raw_view,
        ext_caremark_rx2_aob.file_id,
        count(*) AS counts
 FROM raw.ext_caremark_rx2_aob
 GROUP BY 'raw.ext_caremark_rx2_aob'::varchar(24),
          ext_caremark_rx2_aob.file_id) UNION ALL  SELECT 'raw.ext_caremark_rx2_medicare'::varchar(29) AS raw_view,
        ext_caremark_rx2_medicare.file_id,
        count(*) AS counts
 FROM raw.ext_caremark_rx2_medicare
 GROUP BY 'raw.ext_caremark_rx2_medicare'::varchar(29),
          ext_caremark_rx2_medicare.file_id) UNION ALL  SELECT 'raw.ext_clm_presentation_slide_vc'::varchar(33) AS raw_view,
        ext_clm_presentation_slide_vc.file_id,
        count(*) AS counts
 FROM raw.ext_clm_presentation_slide_vc
 GROUP BY 'raw.ext_clm_presentation_slide_vc'::varchar(33),
          ext_clm_presentation_slide_vc.file_id) UNION ALL  SELECT 'raw.ext_clm_presentation_vod__c'::varchar(31) AS raw_view,
        ext_clm_presentation_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_clm_presentation_vod__c
 GROUP BY 'raw.ext_clm_presentation_vod__c'::varchar(31),
          ext_clm_presentation_vod__c.file_id) UNION ALL  SELECT 'raw.ext_clozapine_unit_ap'::varchar(25) AS raw_view,
        ext_clozapine_unit_ap.file_id,
        count(*) AS counts
 FROM raw.ext_clozapine_unit_ap
 GROUP BY 'raw.ext_clozapine_unit_ap'::varchar(25),
          ext_clozapine_unit_ap.file_id) UNION ALL  SELECT 'raw.ext_cmop_rx_data_teva'::varchar(25) AS raw_view,
        ext_cmop_rx_data_teva.file_id,
        count(*) AS counts
 FROM raw.ext_cmop_rx_data_teva
 GROUP BY 'raw.ext_cmop_rx_data_teva'::varchar(25),
          ext_cmop_rx_data_teva.file_id) UNION ALL  SELECT 'raw.ext_customer_flags'::varchar(22) AS raw_view,
        ext_customer_flags.file_id,
        count(*) AS counts
 FROM raw.ext_customer_flags
 GROUP BY 'raw.ext_customer_flags'::varchar(22),
          ext_customer_flags.file_id) UNION ALL  SELECT 'raw.ext_ddd_dod_qty'::varchar(19) AS raw_view,
        ext_ddd_dod_qty.file_id,
        count(*) AS counts
 FROM raw.ext_ddd_dod_qty
 GROUP BY 'raw.ext_ddd_dod_qty'::varchar(19),
          ext_ddd_dod_qty.file_id) UNION ALL  SELECT 'raw.ext_ddd_dod_sales_ms'::varchar(24) AS raw_view,
        ext_ddd_dod_sales_ms.file_id,
        count(*) AS counts
 FROM raw.ext_ddd_dod_sales_ms
 GROUP BY 'raw.ext_ddd_dod_sales_ms'::varchar(24),
          ext_ddd_dod_sales_ms.file_id) UNION ALL  SELECT 'raw.ext_ddd_dod_sales_pd'::varchar(24) AS raw_view,
        ext_ddd_dod_sales_pd.file_id,
        count(*) AS counts
 FROM raw.ext_ddd_dod_sales_pd
 GROUP BY 'raw.ext_ddd_dod_sales_pd'::varchar(24),
          ext_ddd_dod_sales_pd.file_id) UNION ALL  SELECT 'raw.ext_diplomat_enrollment'::varchar(27) AS raw_view,
        ext_diplomat_enrollment.file_id,
        count(*) AS counts
 FROM raw.ext_diplomat_enrollment
 GROUP BY 'raw.ext_diplomat_enrollment'::varchar(27),
          ext_diplomat_enrollment.file_id) UNION ALL  SELECT 'raw.ext_diplomat_rx'::varchar(19) AS raw_view,
        ext_diplomat_rx.file_id,
        count(*) AS counts
 FROM raw.ext_diplomat_rx
 GROUP BY 'raw.ext_diplomat_rx'::varchar(19),
          ext_diplomat_rx.file_id) UNION ALL  SELECT 'raw.ext_f60q'::varchar(12) AS raw_view,
        ext_f60q.file_id,
        count(*) AS counts
 FROM raw.ext_f60q
 GROUP BY 'raw.ext_f60q'::varchar(12),
          ext_f60q.file_id) UNION ALL  SELECT 'raw.ext_factory_sales_852'::varchar(25) AS raw_view,
        ext_factory_sales_852.file_id,
        count(*) AS counts
 FROM raw.ext_factory_sales_852
 GROUP BY 'raw.ext_factory_sales_852'::varchar(25),
          ext_factory_sales_852.file_id) UNION ALL  SELECT 'raw.ext_ftf_accounts'::varchar(20) AS raw_view,
        ext_ftf_accounts.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_accounts
 GROUP BY 'raw.ext_ftf_accounts'::varchar(20),
          ext_ftf_accounts.file_id) UNION ALL  SELECT 'raw.ext_ftf_control'::varchar(19) AS raw_view,
        ext_ftf_control.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_control
 GROUP BY 'raw.ext_ftf_control'::varchar(19),
          ext_ftf_control.file_id) UNION ALL  SELECT 'raw.ext_ftf_copays'::varchar(18) AS raw_view,
        ext_ftf_copays.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_copays
 GROUP BY 'raw.ext_ftf_copays'::varchar(18),
          ext_ftf_copays.file_id) UNION ALL  SELECT 'raw.ext_ftf_drug_class_thrptc_area'::varchar(34) AS raw_view,
        ext_ftf_drug_class_thrptc_area.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_drug_class_thrptc_area
 GROUP BY 'raw.ext_ftf_drug_class_thrptc_area'::varchar(34),
          ext_ftf_drug_class_thrptc_area.file_id) UNION ALL  SELECT 'raw.ext_ftf_drugs'::varchar(17) AS raw_view,
        ext_ftf_drugs.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_drugs
 GROUP BY 'raw.ext_ftf_drugs'::varchar(17),
          ext_ftf_drugs.file_id) UNION ALL  SELECT 'raw.ext_ftf_formularies'::varchar(23) AS raw_view,
        ext_ftf_formularies.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_formularies
 GROUP BY 'raw.ext_ftf_formularies'::varchar(23),
          ext_ftf_formularies.file_id) UNION ALL  SELECT 'raw.ext_ftf_health_plan_geography'::varchar(33) AS raw_view,
        ext_ftf_health_plan_geography.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_health_plan_geography
 GROUP BY 'raw.ext_ftf_health_plan_geography'::varchar(33),
          ext_ftf_health_plan_geography.file_id) UNION ALL  SELECT 'raw.ext_ftf_health_plans'::varchar(24) AS raw_view,
        ext_ftf_health_plans.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_health_plans
 GROUP BY 'raw.ext_ftf_health_plans'::varchar(24),
          ext_ftf_health_plans.file_id) UNION ALL  SELECT 'raw.ext_ftf_ims_bridge'::varchar(22) AS raw_view,
        ext_ftf_ims_bridge.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_ims_bridge
 GROUP BY 'raw.ext_ftf_ims_bridge'::varchar(22),
          ext_ftf_ims_bridge.file_id) UNION ALL  SELECT 'raw.ext_ftf_pbms'::varchar(16) AS raw_view,
        ext_ftf_pbms.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_pbms
 GROUP BY 'raw.ext_ftf_pbms'::varchar(16),
          ext_ftf_pbms.file_id) UNION ALL  SELECT 'raw.ext_ftf_restrictions'::varchar(24) AS raw_view,
        ext_ftf_restrictions.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_restrictions
 GROUP BY 'raw.ext_ftf_restrictions'::varchar(24),
          ext_ftf_restrictions.file_id) UNION ALL  SELECT 'raw.ext_ftf_teva_wk_bridge'::varchar(26) AS raw_view,
        ext_ftf_teva_wk_bridge.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_teva_wk_bridge
 GROUP BY 'raw.ext_ftf_teva_wk_bridge'::varchar(26),
          ext_ftf_teva_wk_bridge.file_id) UNION ALL  SELECT 'raw.ext_ftf_tiers'::varchar(17) AS raw_view,
        ext_ftf_tiers.file_id,
        count(*) AS counts
 FROM raw.ext_ftf_tiers
 GROUP BY 'raw.ext_ftf_tiers'::varchar(17),
          ext_ftf_tiers.file_id) UNION ALL  SELECT 'raw.ext_hcos_aco_detail'::varchar(23) AS raw_view,
        ext_hcos_aco_detail.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_aco_detail
 GROUP BY 'raw.ext_hcos_aco_detail'::varchar(23),
          ext_hcos_aco_detail.file_id) UNION ALL  SELECT 'raw.ext_hcos_aco_detail_fact'::varchar(28) AS raw_view,
        ext_hcos_aco_detail_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_aco_detail_fact
 GROUP BY 'raw.ext_hcos_aco_detail_fact'::varchar(28),
          ext_hcos_aco_detail_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_aco_org_fact'::varchar(25) AS raw_view,
        ext_hcos_aco_org_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_aco_org_fact
 GROUP BY 'raw.ext_hcos_aco_org_fact'::varchar(25),
          ext_hcos_aco_org_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_aco_professional_rstr'::varchar(34) AS raw_view,
        ext_hcos_aco_professional_rstr.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_aco_professional_rstr
 GROUP BY 'raw.ext_hcos_aco_professional_rstr'::varchar(34),
          ext_hcos_aco_professional_rstr.file_id) UNION ALL  SELECT 'raw.ext_hcos_aco_type'::varchar(21) AS raw_view,
        ext_hcos_aco_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_aco_type
 GROUP BY 'raw.ext_hcos_aco_type'::varchar(21),
          ext_hcos_aco_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_affiliation_type'::varchar(29) AS raw_view,
        ext_hcos_affiliation_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_affiliation_type
 GROUP BY 'raw.ext_hcos_affiliation_type'::varchar(29),
          ext_hcos_affiliation_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_bed_cluster_type'::varchar(29) AS raw_view,
        ext_hcos_bed_cluster_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_bed_cluster_type
 GROUP BY 'raw.ext_hcos_bed_cluster_type'::varchar(29),
          ext_hcos_bed_cluster_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_bed_fact'::varchar(21) AS raw_view,
        ext_hcos_bed_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_bed_fact
 GROUP BY 'raw.ext_hcos_bed_fact'::varchar(21),
          ext_hcos_bed_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_bed_type'::varchar(21) AS raw_view,
        ext_hcos_bed_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_bed_type
 GROUP BY 'raw.ext_hcos_bed_type'::varchar(21),
          ext_hcos_bed_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_business'::varchar(21) AS raw_view,
        ext_hcos_business.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_business
 GROUP BY 'raw.ext_hcos_business'::varchar(21),
          ext_hcos_business.file_id) UNION ALL  SELECT 'raw.ext_hcos_business_detail'::varchar(28) AS raw_view,
        ext_hcos_business_detail.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_business_detail
 GROUP BY 'raw.ext_hcos_business_detail'::varchar(28),
          ext_hcos_business_detail.file_id) UNION ALL  SELECT 'raw.ext_hcos_business_detail_fact'::varchar(33) AS raw_view,
        ext_hcos_business_detail_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_business_detail_fact
 GROUP BY 'raw.ext_hcos_business_detail_fact'::varchar(33),
          ext_hcos_business_detail_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_class_of_trade'::varchar(27) AS raw_view,
        ext_hcos_class_of_trade.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_class_of_trade
 GROUP BY 'raw.ext_hcos_class_of_trade'::varchar(27),
          ext_hcos_class_of_trade.file_id) UNION ALL  SELECT 'raw.ext_hcos_clinical_code'::varchar(26) AS raw_view,
        ext_hcos_clinical_code.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_clinical_code
 GROUP BY 'raw.ext_hcos_clinical_code'::varchar(26),
          ext_hcos_clinical_code.file_id) UNION ALL  SELECT 'raw.ext_hcos_clinical_fact'::varchar(26) AS raw_view,
        ext_hcos_clinical_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_clinical_fact
 GROUP BY 'raw.ext_hcos_clinical_fact'::varchar(26),
          ext_hcos_clinical_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_clinical_fact_national'::varchar(35) AS raw_view,
        ext_hcos_clinical_fact_national.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_clinical_fact_national
 GROUP BY 'raw.ext_hcos_clinical_fact_national'::varchar(35),
          ext_hcos_clinical_fact_national.file_id) UNION ALL  SELECT 'raw.ext_hcos_clinical_fact_state'::varchar(32) AS raw_view,
        ext_hcos_clinical_fact_state.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_clinical_fact_state
 GROUP BY 'raw.ext_hcos_clinical_fact_state'::varchar(32),
          ext_hcos_clinical_fact_state.file_id) UNION ALL  SELECT 'raw.ext_hcos_contact_affiltn_fact'::varchar(33) AS raw_view,
        ext_hcos_contact_affiltn_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_contact_affiltn_fact
 GROUP BY 'raw.ext_hcos_contact_affiltn_fact'::varchar(33),
          ext_hcos_contact_affiltn_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_cot_fact'::varchar(21) AS raw_view,
        ext_hcos_cot_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_cot_fact
 GROUP BY 'raw.ext_hcos_cot_fact'::varchar(21),
          ext_hcos_cot_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_financial_fact'::varchar(27) AS raw_view,
        ext_hcos_financial_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_financial_fact
 GROUP BY 'raw.ext_hcos_financial_fact'::varchar(27),
          ext_hcos_financial_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_identifier_fact'::varchar(28) AS raw_view,
        ext_hcos_identifier_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_identifier_fact
 GROUP BY 'raw.ext_hcos_identifier_fact'::varchar(28),
          ext_hcos_identifier_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_identifier_type'::varchar(28) AS raw_view,
        ext_hcos_identifier_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_identifier_type
 GROUP BY 'raw.ext_hcos_identifier_type'::varchar(28),
          ext_hcos_identifier_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_indentifier_cat_type'::varchar(33) AS raw_view,
        ext_hcos_indentifier_cat_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_indentifier_cat_type
 GROUP BY 'raw.ext_hcos_indentifier_cat_type'::varchar(33),
          ext_hcos_indentifier_cat_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_indentifier_term_type'::varchar(34) AS raw_view,
        ext_hcos_indentifier_term_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_indentifier_term_type
 GROUP BY 'raw.ext_hcos_indentifier_term_type'::varchar(34),
          ext_hcos_indentifier_term_type.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional'::varchar(25) AS raw_view,
        ext_hcos_professional.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional
 GROUP BY 'raw.ext_hcos_professional'::varchar(25),
          ext_hcos_professional.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional_detail'::varchar(32) AS raw_view,
        ext_hcos_professional_detail.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional_detail
 GROUP BY 'raw.ext_hcos_professional_detail'::varchar(32),
          ext_hcos_professional_detail.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional_detail_fact'::varchar(37) AS raw_view,
        ext_hcos_professional_detail_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional_detail_fact
 GROUP BY 'raw.ext_hcos_professional_detail_fact'::varchar(37),
          ext_hcos_professional_detail_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional_spec_fact'::varchar(35) AS raw_view,
        ext_hcos_professional_spec_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional_spec_fact
 GROUP BY 'raw.ext_hcos_professional_spec_fact'::varchar(35),
          ext_hcos_professional_spec_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional_specialty'::varchar(35) AS raw_view,
        ext_hcos_professional_specialty.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional_specialty
 GROUP BY 'raw.ext_hcos_professional_specialty'::varchar(35),
          ext_hcos_professional_specialty.file_id) UNION ALL  SELECT 'raw.ext_hcos_professional_title'::varchar(31) AS raw_view,
        ext_hcos_professional_title.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_professional_title
 GROUP BY 'raw.ext_hcos_professional_title'::varchar(31),
          ext_hcos_professional_title.file_id) UNION ALL  SELECT 'raw.ext_hcos_provider_affiliation_fact'::varchar(38) AS raw_view,
        ext_hcos_provider_affiliation_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_provider_affiliation_fact
 GROUP BY 'raw.ext_hcos_provider_affiliation_fact'::varchar(38),
          ext_hcos_provider_affiliation_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_relationship_fact'::varchar(30) AS raw_view,
        ext_hcos_relationship_fact.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_relationship_fact
 GROUP BY 'raw.ext_hcos_relationship_fact'::varchar(30),
          ext_hcos_relationship_fact.file_id) UNION ALL  SELECT 'raw.ext_hcos_relationship_type'::varchar(30) AS raw_view,
        ext_hcos_relationship_type.file_id,
        count(*) AS counts
 FROM raw.ext_hcos_relationship_type
 GROUP BY 'raw.ext_hcos_relationship_type'::varchar(30),
          ext_hcos_relationship_type.file_id) UNION ALL  SELECT 'raw.ext_i3_by_strength_rx'::varchar(25) AS raw_view,
        ext_i3_by_strength_rx.file_id,
        count(*) AS counts
 FROM raw.ext_i3_by_strength_rx
 GROUP BY 'raw.ext_i3_by_strength_rx'::varchar(25),
          ext_i3_by_strength_rx.file_id) UNION ALL  SELECT 'raw.ext_i3_rx'::varchar(13) AS raw_view,
        ext_i3_rx.file_id,
        count(*) AS counts
 FROM raw.ext_i3_rx
 GROUP BY 'raw.ext_i3_rx'::varchar(13),
          ext_i3_rx.file_id) UNION ALL  SELECT 'raw.ext_i3_tysabri_rx'::varchar(21) AS raw_view,
        ext_i3_tysabri_rx.file_id,
        count(*) AS counts
 FROM raw.ext_i3_tysabri_rx
 GROUP BY 'raw.ext_i3_tysabri_rx'::varchar(21),
          ext_i3_tysabri_rx.file_id) UNION ALL  SELECT 'raw.ext_ids_call2_detail_vod__c'::varchar(31) AS raw_view,
        ext_ids_call2_detail_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_ids_call2_detail_vod__c
 GROUP BY 'raw.ext_ids_call2_detail_vod__c'::varchar(31),
          ext_ids_call2_detail_vod__c.file_id) UNION ALL  SELECT 'raw.ext_ids_call2_vod__c'::varchar(24) AS raw_view,
        ext_ids_call2_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_ids_call2_vod__c
 GROUP BY 'raw.ext_ids_call2_vod__c'::varchar(24),
          ext_ids_call2_vod__c.file_id) UNION ALL  SELECT 'raw.ext_ims_drm45_m'::varchar(19) AS raw_view,
        ext_ims_drm45_m.file_id,
        count(*) AS counts
 FROM raw.ext_ims_drm45_m
 GROUP BY 'raw.ext_ims_drm45_m'::varchar(19),
          ext_ims_drm45_m.file_id) UNION ALL  SELECT 'raw.ext_ims_drm45_w'::varchar(19) AS raw_view,
        ext_ims_drm45_w.file_id,
        count(*) AS counts
 FROM raw.ext_ims_drm45_w
 GROUP BY 'raw.ext_ims_drm45_w'::varchar(19),
          ext_ims_drm45_w.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_cnt_m'::varchar(21) AS raw_view,
        ext_ims_mhj_cnt_m.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_cnt_m
 GROUP BY 'raw.ext_ims_mhj_cnt_m'::varchar(21),
          ext_ims_mhj_cnt_m.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_cnt_w'::varchar(21) AS raw_view,
        ext_ims_mhj_cnt_w.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_cnt_w
 GROUP BY 'raw.ext_ims_mhj_cnt_w'::varchar(21),
          ext_ims_mhj_cnt_w.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_control_m'::varchar(25) AS raw_view,
        ext_ims_mhj_control_m.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_control_m
 GROUP BY 'raw.ext_ims_mhj_control_m'::varchar(25),
          ext_ims_mhj_control_m.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_control_w'::varchar(25) AS raw_view,
        ext_ims_mhj_control_w.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_control_w
 GROUP BY 'raw.ext_ims_mhj_control_w'::varchar(25),
          ext_ims_mhj_control_w.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_qty_m'::varchar(21) AS raw_view,
        ext_ims_mhj_qty_m.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_qty_m
 GROUP BY 'raw.ext_ims_mhj_qty_m'::varchar(21),
          ext_ims_mhj_qty_m.file_id) UNION ALL  SELECT 'raw.ext_ims_mhj_qty_w'::varchar(21) AS raw_view,
        ext_ims_mhj_qty_w.file_id,
        count(*) AS counts
 FROM raw.ext_ims_mhj_qty_w
 GROUP BY 'raw.ext_ims_mhj_qty_w'::varchar(21),
          ext_ims_mhj_qty_w.file_id) UNION ALL  SELECT 'raw.ext_ims_pbm_xref'::varchar(20) AS raw_view,
        ext_ims_pbm_xref.file_id,
        count(*) AS counts
 FROM raw.ext_ims_pbm_xref
 GROUP BY 'raw.ext_ims_pbm_xref'::varchar(20),
          ext_ims_pbm_xref.file_id) UNION ALL  SELECT 'raw.ext_ims_plan_xref'::varchar(21) AS raw_view,
        ext_ims_plan_xref.file_id,
        count(*) AS counts
 FROM raw.ext_ims_plan_xref
 GROUP BY 'raw.ext_ims_plan_xref'::varchar(21),
          ext_ims_plan_xref.file_id) UNION ALL  SELECT 'raw.ext_ims_plan_xref_accelerated'::varchar(33) AS raw_view,
        ext_ims_plan_xref_accelerated.file_id,
        count(*) AS counts
 FROM raw.ext_ims_plan_xref_accelerated
 GROUP BY 'raw.ext_ims_plan_xref_accelerated'::varchar(33),
          ext_ims_plan_xref_accelerated.file_id) UNION ALL  SELECT 'raw.ext_kc_zip_to_territory'::varchar(27) AS raw_view,
        ext_kc_zip_to_territory.file_id,
        count(*) AS counts
 FROM raw.ext_kc_zip_to_territory
 GROUP BY 'raw.ext_kc_zip_to_territory'::varchar(27),
          ext_kc_zip_to_territory.file_id) UNION ALL  SELECT 'raw.ext_knipper_samples_shipped'::varchar(31) AS raw_view,
        ext_knipper_samples_shipped.file_id,
        count(*) AS counts
 FROM raw.ext_knipper_samples_shipped
 GROUP BY 'raw.ext_knipper_samples_shipped'::varchar(31),
          ext_knipper_samples_shipped.file_id) UNION ALL  SELECT 'raw.ext_mm_ram_to_state'::varchar(23) AS raw_view,
        ext_mm_ram_to_state.file_id,
        count(*) AS counts
 FROM raw.ext_mm_ram_to_state
 GROUP BY 'raw.ext_mm_ram_to_state'::varchar(23),
          ext_mm_ram_to_state.file_id) UNION ALL  SELECT 'raw.ext_omnicare_sales'::varchar(22) AS raw_view,
        ext_omnicare_sales.file_id,
        count(*) AS counts
 FROM raw.ext_omnicare_sales
 GROUP BY 'raw.ext_omnicare_sales'::varchar(22),
          ext_omnicare_sales.file_id) UNION ALL  SELECT 'raw.ext_onc_account_targets'::varchar(27) AS raw_view,
        ext_onc_account_targets.file_id,
        count(*) AS counts
 FROM raw.ext_onc_account_targets
 GROUP BY 'raw.ext_onc_account_targets'::varchar(27),
          ext_onc_account_targets.file_id) UNION ALL  SELECT 'raw.ext_onc_call_detail_goals'::varchar(29) AS raw_view,
        ext_onc_call_detail_goals.file_id,
        count(*) AS counts
 FROM raw.ext_onc_call_detail_goals
 GROUP BY 'raw.ext_onc_call_detail_goals'::varchar(29),
          ext_onc_call_detail_goals.file_id) UNION ALL  SELECT 'raw.ext_onc_ddd_monthly_retail'::varchar(30) AS raw_view,
        ext_onc_ddd_monthly_retail.file_id,
        count(*) AS counts
 FROM raw.ext_onc_ddd_monthly_retail
 GROUP BY 'raw.ext_onc_ddd_monthly_retail'::varchar(30),
          ext_onc_ddd_monthly_retail.file_id) UNION ALL  SELECT 'raw.ext_onc_ddd_weekly_retail'::varchar(29) AS raw_view,
        ext_onc_ddd_weekly_retail.file_id,
        count(*) AS counts
 FROM raw.ext_onc_ddd_weekly_retail
 GROUP BY 'raw.ext_onc_ddd_weekly_retail'::varchar(29),
          ext_onc_ddd_weekly_retail.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_monthly_demo_dol'::varchar(32) AS raw_view,
        ext_onc_dmd_monthly_demo_dol.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_monthly_demo_dol
 GROUP BY 'raw.ext_onc_dmd_monthly_demo_dol'::varchar(32),
          ext_onc_dmd_monthly_demo_dol.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_monthly_demo_qty'::varchar(32) AS raw_view,
        ext_onc_dmd_monthly_demo_qty.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_monthly_demo_qty
 GROUP BY 'raw.ext_onc_dmd_monthly_demo_qty'::varchar(32),
          ext_onc_dmd_monthly_demo_qty.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_monthly_dollars'::varchar(31) AS raw_view,
        ext_onc_dmd_monthly_dollars.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_monthly_dollars
 GROUP BY 'raw.ext_onc_dmd_monthly_dollars'::varchar(31),
          ext_onc_dmd_monthly_dollars.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_monthly_quantity'::varchar(32) AS raw_view,
        ext_onc_dmd_monthly_quantity.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_monthly_quantity
 GROUP BY 'raw.ext_onc_dmd_monthly_quantity'::varchar(32),
          ext_onc_dmd_monthly_quantity.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_weekly_demo'::varchar(27) AS raw_view,
        ext_onc_dmd_weekly_demo.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_weekly_demo
 GROUP BY 'raw.ext_onc_dmd_weekly_demo'::varchar(27),
          ext_onc_dmd_weekly_demo.file_id) UNION ALL  SELECT 'raw.ext_onc_dmd_weekly_sales'::varchar(28) AS raw_view,
        ext_onc_dmd_weekly_sales.file_id,
        count(*) AS counts
 FROM raw.ext_onc_dmd_weekly_sales
 GROUP BY 'raw.ext_onc_dmd_weekly_sales'::varchar(28),
          ext_onc_dmd_weekly_sales.file_id) UNION ALL  SELECT 'raw.ext_onc_manual_fcrs'::varchar(23) AS raw_view,
        ext_onc_manual_fcrs.file_id,
        count(*) AS counts
 FROM raw.ext_onc_manual_fcrs
 GROUP BY 'raw.ext_onc_manual_fcrs'::varchar(23),
          ext_onc_manual_fcrs.file_id) UNION ALL  SELECT 'raw.ext_onc_sales_quotas'::varchar(24) AS raw_view,
        ext_onc_sales_quotas.file_id,
        count(*) AS counts
 FROM raw.ext_onc_sales_quotas
 GROUP BY 'raw.ext_onc_sales_quotas'::varchar(24),
          ext_onc_sales_quotas.file_id) UNION ALL  SELECT 'raw.ext_pcs_ddd_nonretail'::varchar(25) AS raw_view,
        ext_pcs_ddd_nonretail.file_id,
        count(*) AS counts
 FROM raw.ext_pcs_ddd_nonretail
 GROUP BY 'raw.ext_pcs_ddd_nonretail'::varchar(25),
          ext_pcs_ddd_nonretail.file_id) UNION ALL  SELECT 'raw.ext_pcs_ddd_retail'::varchar(22) AS raw_view,
        ext_pcs_ddd_retail.file_id,
        count(*) AS counts
 FROM raw.ext_pcs_ddd_retail
 GROUP BY 'raw.ext_pcs_ddd_retail'::varchar(22),
          ext_pcs_ddd_retail.file_id) UNION ALL  SELECT 'raw.ext_prime_rx'::varchar(16) AS raw_view,
        ext_prime_rx.file_id,
        count(*) AS counts
 FROM raw.ext_prime_rx
 GROUP BY 'raw.ext_prime_rx'::varchar(16),
          ext_prime_rx.file_id) UNION ALL  SELECT 'raw.ext_rems_facility'::varchar(21) AS raw_view,
        ext_rems_facility.file_id,
        count(*) AS counts
 FROM raw.ext_rems_facility
 GROUP BY 'raw.ext_rems_facility'::varchar(21),
          ext_rems_facility.file_id) UNION ALL  SELECT 'raw.ext_rems_pharmacy'::varchar(21) AS raw_view,
        ext_rems_pharmacy.file_id,
        count(*) AS counts
 FROM raw.ext_rems_pharmacy
 GROUP BY 'raw.ext_rems_pharmacy'::varchar(21),
          ext_rems_pharmacy.file_id) UNION ALL  SELECT 'raw.ext_rems_prescriber'::varchar(23) AS raw_view,
        ext_rems_prescriber.file_id,
        count(*) AS counts
 FROM raw.ext_rems_prescriber
 GROUP BY 'raw.ext_rems_prescriber'::varchar(23),
          ext_rems_prescriber.file_id) UNION ALL  SELECT 'raw.ext_specialty_pharmacy_cm_lkup'::varchar(34) AS raw_view,
        ext_specialty_pharmacy_cm_lkup.file_id,
        count(*) AS counts
 FROM raw.ext_specialty_pharmacy_cm_lkup
 GROUP BY 'raw.ext_specialty_pharmacy_cm_lkup'::varchar(34),
          ext_specialty_pharmacy_cm_lkup.file_id) UNION ALL  SELECT 'raw.ext_specialty_pharmacy_lookups'::varchar(34) AS raw_view,
        ext_specialty_pharmacy_lookups.file_id,
        count(*) AS counts
 FROM raw.ext_specialty_pharmacy_lookups
 GROUP BY 'raw.ext_specialty_pharmacy_lookups'::varchar(34),
          ext_specialty_pharmacy_lookups.file_id) UNION ALL  SELECT 'raw.ext_tb_cb_accounts'::varchar(22) AS raw_view,
        ext_tb_cb_accounts.file_id,
        count(*) AS counts
 FROM raw.ext_tb_cb_accounts
 GROUP BY 'raw.ext_tb_cb_accounts'::varchar(22),
          ext_tb_cb_accounts.file_id) UNION ALL  SELECT 'raw.ext_tb_cb_transactions'::varchar(26) AS raw_view,
        ext_tb_cb_transactions.file_id,
        count(*) AS counts
 FROM raw.ext_tb_cb_transactions
 GROUP BY 'raw.ext_tb_cb_transactions'::varchar(26),
          ext_tb_cb_transactions.file_id) UNION ALL  SELECT 'raw.ext_tb_ds_accounts'::varchar(22) AS raw_view,
        ext_tb_ds_accounts.file_id,
        count(*) AS counts
 FROM raw.ext_tb_ds_accounts
 GROUP BY 'raw.ext_tb_ds_accounts'::varchar(22),
          ext_tb_ds_accounts.file_id) UNION ALL  SELECT 'raw.ext_tb_ds_transactions'::varchar(26) AS raw_view,
        ext_tb_ds_transactions.file_id,
        count(*) AS counts
 FROM raw.ext_tb_ds_transactions
 GROUP BY 'raw.ext_tb_ds_transactions'::varchar(26),
          ext_tb_ds_transactions.file_id) UNION ALL  SELECT 'raw.ext_time_off_territory_kc_veev'::varchar(34) AS raw_view,
        ext_time_off_territory_kc_veev.file_id,
        count(*) AS counts
 FROM raw.ext_time_off_territory_kc_veev
 GROUP BY 'raw.ext_time_off_territory_kc_veev'::varchar(34),
          ext_time_off_territory_kc_veev.file_id) UNION ALL  SELECT 'raw.ext_time_off_territory_vod__c'::varchar(33) AS raw_view,
        ext_time_off_territory_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_time_off_territory_vod__c
 GROUP BY 'raw.ext_time_off_territory_vod__c'::varchar(33),
          ext_time_off_territory_vod__c.file_id) UNION ALL  SELECT 'raw.ext_touchpoint_call'::varchar(23) AS raw_view,
        ext_touchpoint_call.file_id,
        count(*) AS counts
 FROM raw.ext_touchpoint_call
 GROUP BY 'raw.ext_touchpoint_call'::varchar(23),
          ext_touchpoint_call.file_id) UNION ALL  SELECT 'raw.ext_touchpoint_presentation'::varchar(31) AS raw_view,
        ext_touchpoint_presentation.file_id,
        count(*) AS counts
 FROM raw.ext_touchpoint_presentation
 GROUP BY 'raw.ext_touchpoint_presentation'::varchar(31),
          ext_touchpoint_presentation.file_id) UNION ALL  SELECT 'raw.ext_tw_anda_sales'::varchar(21) AS raw_view,
        ext_tw_anda_sales.file_id,
        count(*) AS counts
 FROM raw.ext_tw_anda_sales
 GROUP BY 'raw.ext_tw_anda_sales'::varchar(21),
          ext_tw_anda_sales.file_id) UNION ALL  SELECT 'raw.ext_tw_biologics_sales'::varchar(26) AS raw_view,
        ext_tw_biologics_sales.file_id,
        count(*) AS counts
 FROM raw.ext_tw_biologics_sales
 GROUP BY 'raw.ext_tw_biologics_sales'::varchar(26),
          ext_tw_biologics_sales.file_id) UNION ALL  SELECT 'raw.ext_tw_hd_smith_sales'::varchar(25) AS raw_view,
        ext_tw_hd_smith_sales.file_id,
        count(*) AS counts
 FROM raw.ext_tw_hd_smith_sales
 GROUP BY 'raw.ext_tw_hd_smith_sales'::varchar(25),
          ext_tw_hd_smith_sales.file_id) UNION ALL  SELECT 'raw.ext_tw_ics_account'::varchar(22) AS raw_view,
        ext_tw_ics_account.file_id,
        count(*) AS counts
 FROM raw.ext_tw_ics_account
 GROUP BY 'raw.ext_tw_ics_account'::varchar(22),
          ext_tw_ics_account.file_id) UNION ALL  SELECT 'raw.ext_tw_ics_sales'::varchar(20) AS raw_view,
        ext_tw_ics_sales.file_id,
        count(*) AS counts
 FROM raw.ext_tw_ics_sales
 GROUP BY 'raw.ext_tw_ics_sales'::varchar(20),
          ext_tw_ics_sales.file_id) UNION ALL  SELECT 'raw.ext_vv_account'::varchar(18) AS raw_view,
        ext_vv_account.file_id,
        count(*) AS counts
 FROM raw.EXT_VV_ACCOUNT
 GROUP BY 'raw.ext_vv_account'::varchar(18),
          ext_vv_account.file_id) UNION ALL  SELECT 'raw.ext_vv_accountshare'::varchar(23) AS raw_view,
        ext_vv_accountshare.file_id,
        count(*) AS counts
 FROM raw.ext_vv_accountshare
 GROUP BY 'raw.ext_vv_accountshare'::varchar(23),
          ext_vv_accountshare.file_id) UNION ALL  SELECT 'raw.ext_vv_acct_merge_history_vod'::varchar(33) AS raw_view,
        ext_vv_acct_merge_history_vod.file_id,
        count(*) AS counts
 FROM raw.ext_vv_acct_merge_history_vod
 GROUP BY 'raw.ext_vv_acct_merge_history_vod'::varchar(33),
          ext_vv_acct_merge_history_vod.file_id) UNION ALL  SELECT 'raw.ext_vv_address_vod__c'::varchar(25) AS raw_view,
        ext_vv_address_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_address_vod__c
 GROUP BY 'raw.ext_vv_address_vod__c'::varchar(25),
          ext_vv_address_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_affiliation_vod__c'::varchar(29) AS raw_view,
        ext_vv_affiliation_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_affiliation_vod__c
 GROUP BY 'raw.ext_vv_affiliation_vod__c'::varchar(29),
          ext_vv_affiliation_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_assessment__c'::varchar(24) AS raw_view,
        ext_vv_assessment__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_assessment__c
 GROUP BY 'raw.ext_vv_assessment__c'::varchar(24),
          ext_vv_assessment__c.file_id) UNION ALL  SELECT 'raw.ext_vv_call_goal_tva__c'::varchar(27) AS raw_view,
        ext_vv_call_goal_tva__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_call_goal_tva__c
 GROUP BY 'raw.ext_vv_call_goal_tva__c'::varchar(27),
          ext_vv_call_goal_tva__c.file_id) UNION ALL  SELECT 'raw.ext_vv_call2_detail_vod__c'::varchar(30) AS raw_view,
        ext_vv_call2_detail_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_call2_detail_vod__c
 GROUP BY 'raw.ext_vv_call2_detail_vod__c'::varchar(30),
          ext_vv_call2_detail_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_call2_key_message_vod'::varchar(32) AS raw_view,
        ext_vv_call2_key_message_vod.file_id,
        count(*) AS counts
 FROM raw.ext_vv_call2_key_message_vod
 GROUP BY 'raw.ext_vv_call2_key_message_vod'::varchar(32),
          ext_vv_call2_key_message_vod.file_id) UNION ALL  SELECT 'raw.ext_vv_call2_sample_vod__c'::varchar(30) AS raw_view,
        ext_vv_call2_sample_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_call2_sample_vod__c
 GROUP BY 'raw.ext_vv_call2_sample_vod__c'::varchar(30),
          ext_vv_call2_sample_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_call2_vod__c'::varchar(23) AS raw_view,
        ext_vv_call2_vod__c.file_id,
        count(*) AS counts
 FROM raw.EXT_VV_CALL2_VOD__C
 GROUP BY 'raw.ext_vv_call2_vod__c'::varchar(23),
          ext_vv_call2_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_call2_vod__history'::varchar(29) AS raw_view,
        ext_vv_call2_vod__history.file_id,
        count(*) AS counts
 FROM raw.ext_vv_call2_vod__history
 GROUP BY 'raw.ext_vv_call2_vod__history'::varchar(29),
          ext_vv_call2_vod__history.file_id) UNION ALL  SELECT 'raw.ext_vv_deciles_tva__c'::varchar(25) AS raw_view,
        ext_vv_deciles_tva__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_deciles_tva__c
 GROUP BY 'raw.ext_vv_deciles_tva__c'::varchar(25),
          ext_vv_deciles_tva__c.file_id) UNION ALL  SELECT 'raw.ext_vv_group'::varchar(16) AS raw_view,
        ext_vv_group.file_id,
        count(*) AS counts
 FROM raw.ext_vv_group
 GROUP BY 'raw.ext_vv_group'::varchar(16),
          ext_vv_group.file_id) UNION ALL  SELECT 'raw.ext_vv_key_message_vod__c'::varchar(29) AS raw_view,
        ext_vv_key_message_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_key_message_vod__c
 GROUP BY 'raw.ext_vv_key_message_vod__c'::varchar(29),
          ext_vv_key_message_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_medical_inquiry_vod__c'::varchar(33) AS raw_view,
        ext_vv_medical_inquiry_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_medical_inquiry_vod__c
 GROUP BY 'raw.ext_vv_medical_inquiry_vod__c'::varchar(33),
          ext_vv_medical_inquiry_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_product_metrics_vod__c'::varchar(33) AS raw_view,
        ext_vv_product_metrics_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_product_metrics_vod__c
 GROUP BY 'raw.ext_vv_product_metrics_vod__c'::varchar(33),
          ext_vv_product_metrics_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_product_vod__c'::varchar(25) AS raw_view,
        ext_vv_product_vod__c.file_id,
        count(*) AS counts
 FROM raw.EXT_VV_PRODUCT_VOD__C
 GROUP BY 'raw.ext_vv_product_vod__c'::varchar(25),
          ext_vv_product_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_question_response_vod'::varchar(32) AS raw_view,
        ext_vv_question_response_vod.file_id,
        count(*) AS counts
 FROM raw.ext_vv_question_response_vod
 GROUP BY 'raw.ext_vv_question_response_vod'::varchar(32),
          ext_vv_question_response_vod.file_id) UNION ALL  SELECT 'raw.ext_vv_recordtype'::varchar(21) AS raw_view,
        ext_vv_recordtype.file_id,
        count(*) AS counts
 FROM raw.ext_vv_recordtype
 GROUP BY 'raw.ext_vv_recordtype'::varchar(21),
          ext_vv_recordtype.file_id) UNION ALL  SELECT 'raw.ext_vv_survey_question_vod__c'::varchar(33) AS raw_view,
        ext_vv_survey_question_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_survey_question_vod__c
 GROUP BY 'raw.ext_vv_survey_question_vod__c'::varchar(33),
          ext_vv_survey_question_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_survey_target_vod__c'::varchar(31) AS raw_view,
        ext_vv_survey_target_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_survey_target_vod__c
 GROUP BY 'raw.ext_vv_survey_target_vod__c'::varchar(31),
          ext_vv_survey_target_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_survey_vod__c'::varchar(24) AS raw_view,
        ext_vv_survey_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_survey_vod__c
 GROUP BY 'raw.ext_vv_survey_vod__c'::varchar(24),
          ext_vv_survey_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_sync_tracking_vod__c'::varchar(31) AS raw_view,
        ext_vv_sync_tracking_vod__c.file_id,
        count(*) AS counts
 FROM raw.ext_vv_sync_tracking_vod__c
 GROUP BY 'raw.ext_vv_sync_tracking_vod__c'::varchar(31),
          ext_vv_sync_tracking_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_territory'::varchar(20) AS raw_view,
        ext_vv_territory.file_id,
        count(*) AS counts
 FROM raw.ext_vv_territory
 GROUP BY 'raw.ext_vv_territory'::varchar(20),
          ext_vv_territory.file_id) UNION ALL  SELECT 'raw.ext_vv_tsf_vod__c'::varchar(21) AS raw_view,
        ext_vv_tsf_vod__c.file_id,
        count(*) AS counts
 FROM raw.EXT_VV_TSF_VOD__C
 GROUP BY 'raw.ext_vv_tsf_vod__c'::varchar(21),
          ext_vv_tsf_vod__c.file_id) UNION ALL  SELECT 'raw.ext_vv_user'::varchar(15) AS raw_view,
        ext_vv_user.file_id,
        count(*) AS counts
 FROM raw.ext_vv_user
 GROUP BY 'raw.ext_vv_user'::varchar(15),
          ext_vv_user.file_id) UNION ALL  SELECT 'raw.ext_vv_userrole'::varchar(19) AS raw_view,
        ext_vv_userrole.file_id,
        count(*) AS counts
 FROM raw.ext_vv_userrole
 GROUP BY 'raw.ext_vv_userrole'::varchar(19),
          ext_vv_userrole.file_id) UNION ALL  SELECT 'raw.ext_vv_userterritory'::varchar(24) AS raw_view,
        ext_vv_userterritory.file_id,
        count(*) AS counts
 FROM raw.ext_vv_userterritory
 GROUP BY 'raw.ext_vv_userterritory'::varchar(24),
          ext_vv_userterritory.file_id) UNION ALL  SELECT 'raw.ext_wholesale_867'::varchar(21) AS raw_view,
        ext_wholesale_867.file_id,
        count(*) AS counts
 FROM raw.ext_wholesale_867
 GROUP BY 'raw.ext_wholesale_867'::varchar(21),
          ext_wholesale_867.file_id) UNION ALL  SELECT 'raw.ext_zs_call_plan_tc'::varchar(23) AS raw_view,
        ext_zs_call_plan_tc.file_id,
        count(*) AS counts
 FROM raw.ext_zs_call_plan_tc
 GROUP BY 'raw.ext_zs_call_plan_tc'::varchar(23),
          ext_zs_call_plan_tc.file_id) UNION ALL  SELECT 'raw.ext_zs_call_plan_tn'::varchar(23) AS raw_view,
        ext_zs_call_plan_tn.file_id,
        count(*) AS counts
 FROM raw.ext_zs_call_plan_tn
 GROUP BY 'raw.ext_zs_call_plan_tn'::varchar(23),
          ext_zs_call_plan_tn.file_id) UNION ALL  SELECT 'raw.ext_zs_call_plan_tp'::varchar(23) AS raw_view,
        ext_zs_call_plan_tp.file_id,
        count(*) AS counts
 FROM raw.ext_zs_call_plan_tp
 GROUP BY 'raw.ext_zs_call_plan_tp'::varchar(23),
          ext_zs_call_plan_tp.file_id) UNION ALL  SELECT 'raw.ext_zs_call_plan_tr'::varchar(23) AS raw_view,
        ext_zs_call_plan_tr.file_id,
        count(*) AS counts
 FROM raw.ext_zs_call_plan_tr
 GROUP BY 'raw.ext_zs_call_plan_tr'::varchar(23),
          ext_zs_call_plan_tr.file_id) UNION ALL  SELECT 'raw.ext_zs_call_plan_tw'::varchar(23) AS raw_view,
        ext_zs_call_plan_tw.file_id,
        count(*) AS counts
 FROM raw.ext_zs_call_plan_tw
 GROUP BY 'raw.ext_zs_call_plan_tw'::varchar(23),
          ext_zs_call_plan_tw.file_id) UNION ALL  SELECT 'raw.job_title_defs'::varchar(18) AS raw_view,
        job_title_defs.file_id,
        count(*) AS counts
 FROM raw.job_title_defs
 GROUP BY 'raw.job_title_defs'::varchar(18),
          job_title_defs.file_id) UNION ALL  SELECT 'raw.people'::varchar(10) AS raw_view,
        people.file_id,
        count(*) AS counts
 FROM raw.people
 GROUP BY 'raw.people'::varchar(10),
          people.file_id) UNION ALL  SELECT 'raw.people_addresses'::varchar(20) AS raw_view,
        people_addresses.file_id,
        count(*) AS counts
 FROM raw.people_addresses
 GROUP BY 'raw.people_addresses'::varchar(20),
          people_addresses.file_id) UNION ALL  SELECT 'raw.people_phones'::varchar(17) AS raw_view,
        people_phones.file_id,
        count(*) AS counts
 FROM raw.people_phones
 GROUP BY 'raw.people_phones'::varchar(17),
          people_phones.file_id) UNION ALL  SELECT 'raw.phones'::varchar(10) AS raw_view,
        phones.file_id,
        count(*) AS counts
 FROM raw.phones
 GROUP BY 'raw.phones'::varchar(10),
          phones.file_id) UNION ALL  SELECT 'raw.territories'::varchar(15) AS raw_view,
        territories.file_id,
        count(*) AS counts
 FROM raw.territories
 GROUP BY 'raw.territories'::varchar(15),
          territories.file_id) UNION ALL  SELECT 'raw.tvcmid_hco_demo'::varchar(19) AS raw_view,
        tvcmid_hco_demo.file_id,
        count(*) AS counts
 FROM raw.tvcmid_hco_demo
 GROUP BY 'raw.tvcmid_hco_demo'::varchar(19),
          tvcmid_hco_demo.file_id) UNION ALL  SELECT 'raw.tvcmid_hcp_demo'::varchar(19) AS raw_view,
        tvcmid_hcp_demo.file_id,
        count(*) AS counts
 FROM raw.tvcmid_hcp_demo
 GROUP BY 'raw.tvcmid_hcp_demo'::varchar(19),
          tvcmid_hcp_demo.file_id) UNION ALL  SELECT 'raw.tvcmid_merges'::varchar(17) AS raw_view,
        tvcmid_merges.file_id,
        count(*) AS counts
 FROM raw.tvcmid_merges
 GROUP BY 'raw.tvcmid_merges'::varchar(17),
          tvcmid_merges.file_id) UNION ALL  SELECT 'raw.tvcmid_xref'::varchar(15) AS raw_view,
        tvcmid_xref.file_id,
        count(*) AS counts
 FROM raw.tvcmid_xref
 GROUP BY 'raw.tvcmid_xref'::varchar(15),
          tvcmid_xref.file_id) UNION ALL  SELECT 'raw.xx_sales_loa_mv'::varchar(19) AS raw_view,
        xx_sales_loa_mv.file_id,
        count(*) AS counts
 FROM raw.xx_sales_loa_mv
 GROUP BY 'raw.xx_sales_loa_mv'::varchar(19),
          xx_sales_loa_mv.file_id) UNION ALL  SELECT 'raw.xx_sales_mv'::varchar(15) AS raw_view,
        xx_sales_mv.file_id,
        count(*) AS counts
 FROM raw.xx_sales_mv
 GROUP BY 'raw.xx_sales_mv'::varchar(15),
          xx_sales_mv.file_id) UNION ALL  SELECT 'raw.xx_terr_id_change_v'::varchar(23) AS raw_view,
        xx_terr_id_change_v.file_id,
        count(*) AS counts
 FROM raw.xx_terr_id_change_v
 GROUP BY 'raw.xx_terr_id_change_v'::varchar(23),
          xx_terr_id_change_v.file_id) A
 ORDER BY A.raw_view,
          A.file_id;

SELECT MARK_DESIGN_KSAFE(1);

