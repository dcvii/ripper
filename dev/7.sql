select  *
from query_requests 
where  start_timestamp > '2022-05-27 19:00:00'  and request_type = 'QUERY'
and user_name = 'Databurst_Updt'
and success is false
order by start_timestamp desc ;


select distinct start_timestamp,transaction_id, request_id, request, request_duration_ms, success 
from query_requests 
where  start_timestamp > '2022-05-27 19:00:00'  and request_type = 'QUERY'
and user_name = 'Databurst_Updt'

and transaction_id in (select distinct TRANSACTION_id
from query_requests 
where  start_timestamp > '2022-05-27 19:00:00'  and request_type = 'QUERY'
and user_name = 'Databurst_Updt'
and success is false)
-- and request ilike '%delete from reporting.rs%'
order by start_timestamp desc ;


select  TRANSACTION_id
from query_requests 
where  start_timestamp > '2022-05-27 19:00:00'  and request_type = 'QUERY'
and user_name = 'Databurst_Updt'
and success is false
-- and request ilike '%delete from reporting.rs%'
order by start_timestamp desc ;
