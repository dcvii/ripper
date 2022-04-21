CREATE  VIEW teva_ingestion.MS_MTHLY_RX_QTY AS
SELECT
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.ims_client_num = '' :: varchar) THEN NULL :: int
        ELSE (btrim(MS_MTHLY_RX_QTY_src.ims_client_num)) :: int
    END AS ims_client_num,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.ims_report_num = '' :: varchar) THEN NULL :: int
        ELSE (btrim(MS_MTHLY_RX_QTY_src.ims_report_num)) :: int
    END AS ims_report_num,
    btrim(MS_MTHLY_RX_QTY_src.zip_other) AS zip_other,
    btrim(MS_MTHLY_RX_QTY_src.ims_id) AS ims_id,
    btrim(MS_MTHLY_RX_QTY_src.ndc) AS ndc,
    btrim(MS_MTHLY_RX_QTY_src.plan_id) AS plan_id,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.sales_category = '' :: varchar) THEN NULL :: int
        ELSE (btrim(MS_MTHLY_RX_QTY_src.sales_category)) :: int
    END AS sales_category,
    btrim(MS_MTHLY_RX_QTY_src.rx_type) AS rx_type,
    CASE
        WHEN (
            MS_MTHLY_RX_QTY_src.ims_product_group_num = '' :: varchar
        ) THEN NULL :: int
        ELSE (btrim(MS_MTHLY_RX_QTY_src.ims_product_group_num)) :: int
    END AS ims_product_group_num,
    btrim(MS_MTHLY_RX_QTY_src.filler_01) AS filler_01,
    btrim(MS_MTHLY_RX_QTY_src.me_num) AS me_num,
    btrim(MS_MTHLY_RX_QTY_src.last_name) AS last_name,
    btrim(MS_MTHLY_RX_QTY_src.first_name) AS first_name,
    btrim(MS_MTHLY_RX_QTY_src.middle_name) AS middle_name,
    btrim(MS_MTHLY_RX_QTY_src.address) AS address,
    btrim(MS_MTHLY_RX_QTY_src.city) AS city,
    btrim(MS_MTHLY_RX_QTY_src.state) AS state,
    btrim(MS_MTHLY_RX_QTY_src.zip) AS zip,
    btrim(MS_MTHLY_RX_QTY_src.specialty) AS specialty,
    btrim(MS_MTHLY_RX_QTY_src.plan_name) AS plan_name,
    btrim(MS_MTHLY_RX_QTY_src.ndc_description) AS ndc_description,
    btrim(MS_MTHLY_RX_QTY_src.data_date) AS data_date,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.bucket_count = '' :: varchar) THEN NULL :: int
        ELSE (btrim(MS_MTHLY_RX_QTY_src.bucket_count)) :: int
    END AS bucket_count,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_001 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_001)) :: numeric(9, 3)
    END AS nrx_001,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_002 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_002)) :: numeric(9, 3)
    END AS nrx_002,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_003 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_003)) :: numeric(9, 3)
    END AS nrx_003,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_004 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_004)) :: numeric(9, 3)
    END AS nrx_004,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_005 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_005)) :: numeric(9, 3)
    END AS nrx_005,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_006 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_006)) :: numeric(9, 3)
    END AS nrx_006,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_007 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_007)) :: numeric(9, 3)
    END AS nrx_007,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_008 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_008)) :: numeric(9, 3)
    END AS nrx_008,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_009 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_009)) :: numeric(9, 3)
    END AS nrx_009,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_010 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_010)) :: numeric(9, 3)
    END AS nrx_010,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_011 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_011)) :: numeric(9, 3)
    END AS nrx_011,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_012 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_012)) :: numeric(9, 3)
    END AS nrx_012,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_013 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_013)) :: numeric(9, 3)
    END AS nrx_013,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_014 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_014)) :: numeric(9, 3)
    END AS nrx_014,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_015 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_015)) :: numeric(9, 3)
    END AS nrx_015,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_016 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_016)) :: numeric(9, 3)
    END AS nrx_016,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_017 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_017)) :: numeric(9, 3)
    END AS nrx_017,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_018 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_018)) :: numeric(9, 3)
    END AS nrx_018,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_019 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_019)) :: numeric(9, 3)
    END AS nrx_019,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_020 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_020)) :: numeric(9, 3)
    END AS nrx_020,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_021 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_021)) :: numeric(9, 3)
    END AS nrx_021,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_022 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_022)) :: numeric(9, 3)
    END AS nrx_022,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_023 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_023)) :: numeric(9, 3)
    END AS nrx_023,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.nrx_024 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.nrx_024)) :: numeric(9, 3)
    END AS nrx_024,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_001 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_001)) :: numeric(9, 3)
    END AS trx_001,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_002 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_002)) :: numeric(9, 3)
    END AS trx_002,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_003 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_003)) :: numeric(9, 3)
    END AS trx_003,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_004 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_004)) :: numeric(9, 3)
    END AS trx_004,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_005 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_005)) :: numeric(9, 3)
    END AS trx_005,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_006 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_006)) :: numeric(9, 3)
    END AS trx_006,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_007 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_007)) :: numeric(9, 3)
    END AS trx_007,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_008 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_008)) :: numeric(9, 3)
    END AS trx_008,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_009 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_009)) :: numeric(9, 3)
    END AS trx_009,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_010 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_010)) :: numeric(9, 3)
    END AS trx_010,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_011 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_011)) :: numeric(9, 3)
    END AS trx_011,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_012 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_012)) :: numeric(9, 3)
    END AS trx_012,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_013 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_013)) :: numeric(9, 3)
    END AS trx_013,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_014 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_014)) :: numeric(9, 3)
    END AS trx_014,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_015 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_015)) :: numeric(9, 3)
    END AS trx_015,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_016 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_016)) :: numeric(9, 3)
    END AS trx_016,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_017 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_017)) :: numeric(9, 3)
    END AS trx_017,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_018 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_018)) :: numeric(9, 3)
    END AS trx_018,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_019 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_019)) :: numeric(9, 3)
    END AS trx_019,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_020 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_020)) :: numeric(9, 3)
    END AS trx_020,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_021 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_021)) :: numeric(9, 3)
    END AS trx_021,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_022 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_022)) :: numeric(9, 3)
    END AS trx_022,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_023 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_023)) :: numeric(9, 3)
    END AS trx_023,
    CASE
        WHEN (MS_MTHLY_RX_QTY_src.trx_024 = '' :: varchar) THEN NULL :: numeric(9, 3)
        ELSE (btrim(MS_MTHLY_RX_QTY_src.trx_024)) :: numeric(9, 3)
    END AS trx_024,
    MS_MTHLY_RX_QTY_src.batch_id,
    MS_MTHLY_RX_QTY_src.row_id,
    MS_MTHLY_RX_QTY_src.update_ts
FROM
    teva_ingestion.MS_MTHLY_RX_QTY_src;