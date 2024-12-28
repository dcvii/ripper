select new_time(logged_at,'UTC','EDT'), wl.*
from metadata.workflow_log wl
where
logged_at > sysdate -5
and
process_id in (6)
and
command_step in (15)
order by log_id desc, process_id desc;
---

select  * from query_requests
where start_timestamp >= '2022-05-24 18:45:00' AND request_type = 'QUERY'
and request ilike '%tmp_tvcmid_ddd%' and is_executing ;


select  session_id, transaction_id, statement_id, request,request_duration,start_timestamp, lag(start_timestamp,1 ) OVER( partition by session_id order by start_timestamp) as blah 
from query_requests 
where  start_timestamp > '2022-05-24 19:00:00'  and request_type = 'QUERY'
and user_name = 'Databurst_Updt'
order by start_timestamp desc ;

select close_user_sessions('ecs');

select * from sessions;

select * from metadata.python_lock;

select * from sessions 
	where user_name = 'Databurst_Updt';

select * from query_requests
	where session_id = 'v_teva_node0001-8476:0x119d61';

select * from query_events
	where event_severity = 'Critical'
	and session_id in (
		select session_id from sessions);

select * from query_events
	where session_id = 'v_teva_node0004-8334:0x387f80';

select * from v_monitor.transactions where transaction_id = '58546795159083671';

select close_session('v_teva_node0004-8334:0x387f80');

select close_session('v_teva_node0004-8334:0x387f81');


select close_user_sessions('snandan');

SELECT CLOSE_ALL_SESSIONS();


select * from nodes


select * from sessions where 
transaction_id= 58546795167980354 and statement_id = 5;

select * from execution_engine_profiles
where 
transaction_id= 58546795167980354 and statement_id = 5;

select * from nodes;

select * from metadata.workflow_log
where logged_at >= '2022-05-24 18:48:00'
order by logged_at desc;

select analyze_statistics('');

select close_session('v_teva_node0003-81555:0x4270');

CREATE LOCATION 's3://teva-prod-schema-data-exports' SHARED USAGE 'USER' LABEL 'migration';


ALTER SESSION SET AWSAuth = 'ASIAXTYJIG5ADRLW34ZA:5KM/5eNAI4UMiMY5HLWAAPJWw5H5mQGLe2yxugrS';  

ALTER SESSION SET AWSSessionToken = 'IQoJb3JpZ2luX2VjEOL//////////wEaCXVzLWVhc3QtMSJIMEYCIQCg8o2LbXJShzh5f+0hemEIFEheq/cT9N4t2FucDLE5iAIhAIguRBEmkq9hwzXprgOi5MDpNiYTmfajyYi1IPe2hcroKusBCHsQAxoMNTIzNDY4NTUyMDAwIgyZzpvw40sWa3mDQycqyAGYMcsisxqkvVfeC04eQmPFY996a/UoH4iGN5YeFyc3SIXJTUjizkEtLsf6vBeFGtEMbdF0Q6zXiEvCUXZPDNZqBfEDHt9WHsMvLuA3Hr29kxmijEdWAmBoPmUavEkJdWMYx0XngnjNPWETygJWPKTs/O+9FvuhBlxJyA1qEe2zh/YQ+Ug8z/VnIdvSUupXrOP0Og+K5pcLl+5cQezQKjGzA9gFP/uM3HTHsju8lIgQ4DtUeKxd3+L91Fik7rCflsiZdZ4XeBVBoDDA++CLBjqXAfwrH6/ktDlKYXv/6JYRsJpUo6C6fSfmnNU+/SryiliztghZqwp6mLC6i2gO52rIfP0vqIuTQzF3aU4G584qXCp6NCbzCrM7jA0aGU/2tsfdqdO+Xa5ZP8RlOeA7kfq9Q67uQCge/Oz1HgKjWkAx8C+tGHfIMOFycwiaI3rxAmGxy/B2/W/OCakymI/V4vlSPAC/S0nKoik=';

ALTER SESSION SET AWSRegion = 'us-east-1';

grant all on location 's3://teva-prod-schema-data-exports' to dbadmin;

EXPORT TO PARQUET(directory='s3://teva-prod-schema-data-exports/archive/bag_product_20180329') 
   AS SELECT * from archive.bag_product_20180329;


Invalid view zzz_demo_amrix: Relation "reference.specialty_xref" does not exist


Invalid view EXT_IMS_MHK_QTY_M: Relation "teva_ingestion.EXT_IMS_MHK_QTY_M_src" does not exist

SELECT
    COLUMN_NAME,
    ORDINAL_POSITION,
    DATA_TYPE_ID,
    DATA_TYPE,
    DATA_TYPE_LENGTH,
    DATETIME_PRECISION
FROM
    COLUMNS
WHERE
    lower(TABLE_SCHEMA) = 'raw'
    and lower(TABLE_NAME) = 'ext_vv_territory2model'
UNION
SELECT
    COLUMN_NAME,
    ORDINAL_POSITION,
    DATA_TYPE_ID,
    DATA_TYPE,
    DATA_TYPE_LENGTH,
    DATETIME_PRECISION
FROM
    view_COLUMNS --> Views WHERE lower(TABLE_SCHEMA) = 'raw' and lower(TABLE_NAME) = 'ext_vv_territory2model' ORDER BY ORDINAL_POSITION;

    

