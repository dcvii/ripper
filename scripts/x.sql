grant all on sandbox.qc_table_stats to Databurst_Updt;

grant all on metadata.id_lookup to Databurst_Updt;

grant all on veeva.dsa_slide to Databurst_Updt;

grant all on sequence metadata.job_id_sequence to Databurst_Updt;

grant usage on schema mdm to Databurst_Updt;

grant all on mdm.address to Databurst_Updt;

grant all on metadata.log_job_events to Databurst_Updt;

grant all on integration.copay_detail_weekly to Databurst_Updt;

grant all on metadata.workflow_command to Databurst_Updt;

grant all on product.source_product to Databurst_Updt;

grant all on integration.prescriber_rx to Databurst_Updt;

grant all on datamart.prescriber_rx to Databurst_Updt;

grant all on product.basket to Databurst_Updt;

grant all on veeva.ids_call_detail to Databurst_Updt;

grant all on sandbox.qc_table_stats to Databurst_Updt;

grant all on metadata.id_lookup to Databurst_Updt;

grant all on veeva.dsa_slide to Databurst_Updt;

grant all on sequence metadata.job_id_sequence to Databurst_Updt;

insert into
    metadata.purge_list (
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
    ) with ids as (
        select
            distinct file_id,
            feed_id
        from
            (
                select
                    a.file_id,
                    dfm.feed_id,
                    rank() over (
                        partition by client_number,
                        report_number,
                        bucket_type
                        order by
                            data_date desc
                    ) as rnk
                from
                    (
                        select
                            distinct file_id,
                            client_number,
                            report_number,
                            bucket_type,
                            data_date
                        from
                            integration.ddd_md
                    ) a
                    inner join metadata.data_file_metadata dfm on a.file_id = dfm.file_id
                    and dfm.status = 5
            ) b
        where
            b.rnk > 1
    )
select
    batch_id,
    feed_id,
    feed_version,
    file_id,
    raw_table,
    ti_table,
    false as ti_purged,
    null :: timestamp as ti_purge_ts,
    process_cleanse,
    clns_table,
    false as clns_purged,
    null :: timestamp as clns_purge_ts,
    process_intg,
    intg_table,
    false as intg_purged,
    null :: timestamp as intg_purge_ts,
    'E: by_client_report_dddmd' as row_source
from
    (
        select
            fi.batch_id,
            fi.feed_id,
            fi.feed_version,
            fi.file_id,
            fv.raw_table_name as raw_table,
            'teva_ingestion.' || lower(fx.source_table) || '_src' as ti_table,
            fe.process_cleanse,
            fv.cleansed_table_name as clns_table,
            fe.process_intg,
            im.intg_table as intg_table,
            fv.number_of_files_to_retain
        from
            metadata.data_file_metadata fi
            inner join metadata.data_feed_version_metadata fv on fi.feed_id = fv.feed_id
            and fi.feed_version = fv.feed_version_id
            inner join metadata.fileclass_feedid_ver_xref fx on lower(fv.raw_table_name) = 'raw.' || lower(fx.source_table)
            inner join metadata.data_feed_metadata fe on fv.feed_id = fe.feed_id
            left join (
                select
                    distinct clns_table,
                    intg_table
                from
                    metadata.integration_mapping
            ) im on fv.cleansed_table_name = im.clns_tablewhere
    not fe.incremental
    and fv.retention_type = 'by_client_report_dddmd'
    and (fi.file_id, fi.feed_id) in (
        select
            file_id,
            feed_id
        from
            ids
    )
) A