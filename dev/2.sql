select distinct epoch from integration.prescriber_rx
order by 1 desc;

select distinct bucket_date, data_date from integration.prescriber_rx_adhoc where epoch = (select max(epoch) from integration.prescriber_rx_adhoc); 

select distinct epoch, update_ts::date from teva_ingestion.EXT_AHM_EVENT_PRODUCT_src
order by 2 desc;


-- partial target query wants the following selection...


select set of tables where 