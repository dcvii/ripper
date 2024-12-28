select distinct epoch from integration.prescriber_rx
order by 1 desc;

select distinct bucket_date, data_date from integration.prescriber_rx_adhoc where epoch = (select max(epoch) from integration.prescriber_rx_adhoc); 

select distinct epoch, update_ts::date from teva_ingestion.EXT_AHM_EVENT_PRODUCT_src
order by 2 desc;


-- partial target query wants the following selection...


---

select table_schema, table_name, src_row_count, tgt_row_count, export_type, export_success, export_ts
from migration.audit
where table_schema = 'datamart'
and src_row_count <> tgt_row_count
order by 3 desc;



truncate table datamart.prescriber_combined_demographics;
truncate table datamart.prescriber_rx;
truncate table datamart.tvcmid_xref;
truncate table datamart.specialty_pharmacy_shipment;
truncate table datamart.sfa_sample;
truncate table datamart.sfa_promotional_items;
truncate table datamart.sfa_reprints;