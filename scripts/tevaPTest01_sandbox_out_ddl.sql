CREATE SCHEMA sandbox;


CREATE  VIEW sandbox.V_HCOS_KAISER_PROF_AFFIL AS
 SELECT hcp.tvcmid AS TVCMID,
        p.ims_id AS IMS_ID,
        p.npi AS NPI,
        p.all_dea AS ALL_DEA,
        p.last_name AS LAST_NAME,
        p.first_name AS FIRST_NAME,
        p.middle_name AS MIDDLE_NAME,
        at.affil_type_desc AS AFFIL_TYPE_DESC,
        b.ims_org_id AS IMS_FACILITY_NUMBER,
        b.cot_facility_type AS COT_FACILITY_TYPE,
        b.business_name AS BUSINESS_NAME,
        b.physical_addr_1 AS PHYSICAL_ADDR_1,
        b.physical_addr_2 AS PHYSICAL_ADDR_2,
        b.physical_city AS PHYSICAL_CITY,
        b.physical_state AS PHYSICAL_STATE,
        b.physical_zip AS PHYSICAL_ZIP
 FROM (((((( SELECT bx.ims_org_id,
        bx.cot_facility_type,
        bx.business_name,
        bx.physical_addr_1,
        bx.physical_addr_2,
        bx.physical_city,
        bx.physical_state,
        bx.physical_zip
 FROM hcos.ims_hcos_business bx
 WHERE (bx.file_id = ( SELECT max(ims_hcos_business.file_id) AS file_id
 FROM hcos.ims_hcos_business))) b JOIN ( SELECT pafx.ims_org_id,
        pafx.hce_id_prfsnl,
        pafx.affil_type_id
 FROM hcos.ims_hcos_provider_affiliation_fact pafx
 WHERE (pafx.file_id = ( SELECT max(ims_hcos_provider_affiliation_fact.file_id) AS file_id
 FROM hcos.ims_hcos_provider_affiliation_fact))) paf ON ((b.ims_org_id = paf.ims_org_id))) JOIN ( SELECT px.ims_id,
        px.npi,
        px.all_dea,
        px.last_name,
        px.first_name,
        px.middle_name,
        px.hce_id_prfsnl
 FROM hcos.ims_hcos_professional px
 WHERE (px.file_id = ( SELECT max(ims_hcos_professional.file_id) AS file_id
 FROM hcos.ims_hcos_professional))) p ON ((paf.hce_id_prfsnl = p.hce_id_prfsnl))) LEFT  JOIN ( SELECT atx.affil_type_id,
        atx.affil_type_desc
 FROM hcos.ims_hcos_affiliation_type atx
 WHERE (atx.file_id = ( SELECT max(ims_hcos_affiliation_type.file_id) AS file_id
 FROM hcos.ims_hcos_affiliation_type))) at ON ((paf.affil_type_id = at.affil_type_id))) JOIN ( SELECT rfx.ims_org_id_child,
        rfx.ims_org_id_parent
 FROM hcos.ims_hcos_relationship_fact rfx
 WHERE (rfx.file_id = ( SELECT max(ims_hcos_relationship_fact.file_id) AS max
 FROM hcos.ims_hcos_relationship_fact))) rf ON ((b.ims_org_id = rf.ims_org_id_child))) LEFT  JOIN mdm.hcp hcp ON ((p.ims_id = hcp.ims_prescriber_id)))
 WHERE (rf.ims_org_id_parent = 'INS00000226'::varchar(11));

CREATE  VIEW sandbox.test_view AS
 SELECT ftf_restrictions.health_plan_id,
        ftf_restrictions.drug_id,
        ftf_restrictions.restriction_detail_id,
        ftf_restrictions.restriction_code,
        ftf_restrictions.formulary_entry_restriction_id,
        ftf_restrictions.restriction_detail_text,
        ftf_restrictions.restriction_addtnl_information_1,
        ftf_restrictions.restriction_addtnl_information_2,
        ftf_restrictions.record_id,
        ftf_restrictions.file_id
 FROM cleansed.ftf_restrictions
 WHERE (ftf_restrictions.file_id IN ( SELECT max(ftf_restrictions.file_id) AS max
 FROM cleansed.ftf_restrictions));

CREATE  VIEW sandbox.vw_ftf_formularies AS
 SELECT ftf_formularies.health_plan_id,
        ftf_formularies.drug_id,
        ftf_formularies.tier_code,
        ftf_formularies.restrictions,
        ftf_formularies.reason_code,
        ftf_formularies.reason_code_description,
        ftf_formularies.file_id,
        ftf_formularies.record_id
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT max(ftf_formularies.file_id) AS max
 FROM cleansed.ftf_formularies));

CREATE  VIEW sandbox.create_paragard_anda_sales AS
SELECT sh.source_customer_id AS "BP #", NULL AS "Ortho E", sh.customer_name AS "BP Name", coalesce(sh.ship_to_address_line_2, sh.ship_to_address_line_1) AS "Ship-to Street", sh.ship_to_city AS "Ship-to City", sh.ship_to_state AS "Ship-to State", sh.ship_to_zip AS "Ship-to ZipCd", NULL AS "Ship-to Ctry", NULL AS "Ship-to Phone", NULL AS "Ship-to Fax", NULL AS "Ship-to Email", ad.address AS "Bill-to Street", ad.city AS "Bill-to City", ad.state AS "Bill-to State", ad.zip_code AS "Bill-to ZipCd", NULL AS "Bill-to Ctry", NULL AS "Bill-to Phone", NULL AS "Bill-to Fax", NULL AS "Bill-to Email", CASE mod(sh.customer_type, 1::float) WHEN NULLSEQUAL 0::float THEN sh.customer_type ELSE rtrim(sh.customer_type, '0'::varchar(1)) END AS "Class of Trade", CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END AS "Invoice #", CASE mod(sh.invoice_amount, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.invoice_amount)::int)::varchar ELSE rtrim((sh.invoice_amount)::varchar, '0'::varchar(1)) END AS "Del Amt", to_char(sh.invoice_date, 'YYYY-MM-DD'::varchar(10)) AS "Inv Date", CASE mod(sh.quantity, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.quantity)::int)::varchar ELSE rtrim((sh.quantity)::varchar, '0'::varchar(1)) END AS "24237", NULL AS "24238", NULL AS "24800", NULL AS "33223", CASE mod(sh.package_size, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN (sh.package_size)::varchar ELSE rtrim((sh.package_size)::varchar, '0'::varchar(1)) END AS Packs, NULL AS UnitPrice, NULL AS Territory, NULL AS "Order Type Cd", NULL AS "Order Type Desc", NULL AS LOBCdDesc, NULL AS PriceMatrixDef, ('A'::varchar(1) || btrim(to_char(sh.source_parent_customer_id, '000000000'::varchar(9)))) AS ParentBPCd, NULL AS ParentBPCdDesc, NULL AS GrandParentBPCdDesc, NULL AS "PO#", NULL AS "UPS#", CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END AS OrdNbr, NULL AS OrdLnNbr, NULL AS DiscAmt, NULL AS WhseCd, 'ANDA'::varchar(4) AS DATA_SOURCE, '51285020401'::varchar(11) AS NDC11_CODE FROM (datamart.specialty_pharmacy_shipment sh LEFT JOIN (SELECT tw_address.address_id, tw_address.address, tw_address.city, tw_address.state, tw_address.zip_code FROM datamart.tw_address) ad ON ((sh.tw_bill_to_address_id = ad.address_id))) WHERE ((sh.basket_name ~~ '%PARAGARD%'::varchar(10)) AND (sh.specialty_pharmacy_data_source = 'Anda'::varchar(4)) AND (sh.ship_date >= add_months(trunc(('now()'::varchar(5))::date, 'MM'::varchar(2)), (-1))) AND (sh.ship_date < trunc(('now()'::varchar(5))::date, 'MM'::varchar(2)))) GROUP BY sh.source_customer_id, NULL, sh.customer_name, coalesce(sh.ship_to_address_line_2, sh.ship_to_address_line_1), sh.ship_to_city, sh.ship_to_state, sh.ship_to_zip, ad.address, ad.city, ad.state, ad.zip_code, CASE mod(sh.customer_type, 1::float) WHEN NULLSEQUAL 0::float THEN sh.customer_type ELSE rtrim(sh.customer_type, '0'::varchar(1)) END, CASE mod(sh.order_no, 1::float) WHEN NULLSEQUAL 0::float THEN (((sh.order_no)::numeric)::int)::varchar ELSE rtrim(sh.order_no, '0'::varchar(1)) END, CASE mod(sh.invoice_amount, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.invoice_amount)::int)::varchar ELSE rtrim((sh.invoice_amount)::varchar, '0'::varchar(1)) END, to_char(sh.invoice_date, 'YYYY-MM-DD'::varchar(10)), CASE mod(sh.quantity, 1::float) WHEN NULLSEQUAL 0::float THEN ((sh.quantity)::int)::varchar ELSE rtrim((sh.quantity)::varchar, '0'::varchar(1)) END, CASE mod(sh.package_size, 1::numeric(18,0)) WHEN NULLSEQUAL 0::numeric(18,0) THEN (sh.package_size)::varchar ELSE rtrim((sh.package_size)::varchar, '0'::varchar(1)) END, ('A'::varchar(1) || btrim(to_char(sh.source_parent_customer_id, '000000000'::varchar(9)))), 'ANDA'::varchar(4), '51285020401'::varchar(11);

CREATE  VIEW sandbox.knipper_merge_test AS
 SELECT merges.current_tvcmid AS TVCMIDWinner,
        merges.previous_tvcmid AS TVCMIDLoser,
        to_char((now())::date, 'MM/DD/YYYY'::varchar(10)) AS TVCMIDMergeEffectiveDate
 FROM mdm.merges
 GROUP BY merges.current_tvcmid,
          merges.previous_tvcmid,
          to_char((now())::date, 'MM/DD/YYYY'::varchar(10));

CREATE  VIEW sandbox.knipper_supplemental_test AS
 SELECT a.tvcmid AS TVCMID,
        CASE WHEN (a.medical_suffix IS NULL) THEN ''::varchar ELSE a.medical_suffix END AS ProfDesig,
        a.first_name AS FName,
        a.last_name AS Lname,
        CASE WHEN (a.middle_name IS NULL) THEN ''::varchar ELSE a.middle_name END AS MI,
        CASE WHEN (a.personal_suffix IS NULL) THEN ''::varchar ELSE a.personal_suffix END AS Suffix,
        CASE WHEN (a.hce_status_desc IS NULL) THEN 'A'::varchar(1) WHEN (a.hce_status_desc = 'ACTIVE'::varchar(6)) THEN 'A'::varchar(1) WHEN (a.hce_status_desc = 'INACTIVE'::varchar(8)) THEN 'I'::varchar(1) ELSE 'D'::varchar(1) END AS Status,
        CASE WHEN (a.hce_status_desc = 'PRESUMED DEAD'::varchar(13)) THEN 'D'::varchar(1) WHEN (a.hce_status_desc = 'SEMI-RETIRED'::varchar(12)) THEN 'O'::varchar(1) WHEN (a.hce_status_desc = 'RETIRED'::varchar(7)) THEN 'R'::varchar(1) ELSE ''::varchar END AS DeleteReason,
        CASE WHEN ((a.hce_status_desc IS NULL) OR (a.hce_status_desc <> ALL (ARRAY['ACTIVE'::varchar(8), 'INACTIVE'::varchar(8)]))) THEN to_char(e.last_update_date, 'MM/DD/YYYY'::varchar(10)) ELSE ''::varchar END AS DeleteDate,
        CASE WHEN (a.primary_specialty IS NULL) THEN 'US'::varchar(2) ELSE a.primary_specialty END AS Specialty,
        CASE WHEN (a.address_line1 IS NULL) THEN ''::varchar ELSE a.address_line1 END AS Address1,
        CASE WHEN (a.address_line2 IS NULL) THEN ''::varchar ELSE a.address_line2 END AS Address2,
        ''::varchar AS Address3,
        CASE WHEN (a.city IS NULL) THEN ''::varchar ELSE a.city END AS City,
        CASE WHEN (a.state IS NULL) THEN ''::varchar ELSE a.state END AS State,
        CASE WHEN (a.zip IS NULL) THEN ''::varchar ELSE a.zip END AS Zip,
        CASE WHEN (b.sln IS NULL) THEN ''::varchar ELSE b.sln END AS SLN,
        CASE WHEN ((b.sln IS NULL) OR (b.sln = ''::varchar)) THEN ''::varchar ELSE CASE WHEN (b.sln_status_code = 'A'::varchar(1)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END END AS SLNActiveFlag,
        CASE WHEN ((b.sln IS NULL) OR (b.sln = ''::varchar)) THEN ''::varchar ELSE to_char(b.sln_expiration_date, 'MM/DD/YYYY'::varchar(10)) END AS SLNExpirationDate,
        CASE WHEN (c.flag_value = 'Y'::varchar(1)) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS DNCWakeFlag,
        CASE WHEN (d.tvcmid IS NOT NULL) THEN 'Y'::varchar(1) ELSE 'N'::varchar(1) END AS DNP
 FROM (((((( SELECT prescriber_rx.tvcmid
 FROM datamart.prescriber_rx
 GROUP BY prescriber_rx.tvcmid) exp JOIN ( SELECT hcp_demo.tvcmid,
        hcp_demo.ims_id,
        hcp_demo.npi,
        hcp_demo.last_name,
        hcp_demo.first_name,
        hcp_demo.middle_name,
        hcp_demo.personal_suffix,
        hcp_demo.medical_suffix,
        hcp_demo.primary_specialty,
        hcp_demo.address_line1,
        hcp_demo.address_line2,
        hcp_demo.city,
        hcp_demo.state_code AS state,
        hcp_demo.zip,
        hcp_demo.business_phone,
        hcp_demo.business_email,
        hcp_demo.hce_status_desc,
        hcp_demo.file_id,
        hcp_demo.record_id,
        hcp_demo.np_pa_flag
 FROM datamart.customer_hcp_demographics hcp_demo
 WHERE (hcp_demo.file_id = ( SELECT max(customer_hcp_demographics.file_id) AS MAX
 FROM datamart.customer_hcp_demographics))) a ON ((exp.tvcmid = a.tvcmid))) JOIN ( SELECT sample_eligibility.sln,
        sample_eligibility.sln_state,
        sample_eligibility.sln_expiration_date,
        sample_eligibility.sln_status_code,
        sample_eligibility.tvcmid
 FROM mdm.sample_eligibility
 WHERE (sample_eligibility.file_id = ( SELECT max(sample_eligibility.file_id) AS MAX
 FROM mdm.sample_eligibility))) b ON (((a.tvcmid = b.tvcmid) AND (a.state = b.sln_state)))) LEFT  JOIN ( SELECT ims_flag.tvcmid,
        ims_flag.flag_type,
        ims_flag.flag_value
 FROM mdm.ims_flag
 WHERE ((ims_flag.file_id = ( SELECT max(ims_flag.file_id) AS MAX
 FROM mdm.ims_flag)) AND (ims_flag.flag_type = 'AMADNC'::varchar(6)))) c ON ((a.tvcmid = c.tvcmid))) LEFT  JOIN datamart.do_not_promote d ON ((a.tvcmid = d.tvcmid))) LEFT  JOIN ( SELECT hcp.updated_date AS last_update_date,
        hcp.tvcmid
 FROM mdm.hcp
 WHERE (hcp.file_id = ( SELECT max(hcp.file_id) AS MAX
 FROM mdm.hcp))) e ON ((a.tvcmid = e.tvcmid)));

CREATE  VIEW sandbox.ad_hoc_ad AS
 SELECT ('"'::varchar(1) || fed.id_num) AS federation_id,
        NULL AS contact,
        'Third_Party_Redemptions'::varchar(23) AS source,
        to_char(c.fill_date, 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) AS "datetime",
        concat((c.file_id)::varchar, (c.record_id)::varchar) AS trackback_id,
        NULL AS previous_activity,
        (brand.basket_id)::varchar(20) AS level_master_id,
        'HCP'::varchar(3) AS activity_role,
        'Voucher/Coupon_Redemption'::varchar(25) AS type,
        'Voucher/Coupon_Redemption'::varchar(25) AS native_type,
        ((((('Voucher/Coupon Redemption - '::varchar(28) || coalesce(b.name, ''::varchar)) || ','::varchar(1)) || coalesce(cvp.program_description, ''::varchar)) || ','::varchar(1)) || c.redemption_type) AS details,
        to_char(now(), 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) AS created,
        (to_char(now(), 'yyyy-mm-ddThh:mi:ss.msz'::varchar(23)) || '"'::varchar(1)) AS modified
 FROM ((((datamart.copay c JOIN reference.copay_voucher_program cvp ON (((c.program_number = cvp.program_number) AND (c.redemption_type = cvp.redemption_type)))) JOIN datamart.tvcmid_xref fed ON (((c.physician_tvcmid = fed.tvcmid) AND (fed.id_type = 'FED_ID'::varchar(6))))) LEFT  JOIN product.basket b ON ((c.basket_id = b.basket_id))) LEFT  JOIN ( SELECT bb.basket_id,
        bb.name,
        bp.basket_id AS prod_id
 FROM ((product.basket_item bip JOIN product.basket bp ON ((bip.entity_id = bp.basket_id))) JOIN product.basket bb ON (((bip.basket_id = bb.basket_id) AND (bb.basket_type = 'brand'::varchar(5)))))) brand ON ((c.basket_id = brand.prod_id)));

CREATE  VIEW sandbox.v_sent_email AS
 SELECT se.id,
        se.isdeleted,
        se.name,
        se.createddate,
        se.createdbyid,
        se.lastmodifieddate,
        se.lastmodifiedbyid,
        se.systemmodstamp,
        se.mayedit,
        se.islocked,
        se.is_parent_call_vod__c,
        se.call2_vod__c,
        se.product_vod__c,
        se.detail_priority_vod__c,
        se.mobile_id_vod__c,
        se.type_vod__c,
        se.file_id,
        se.record_id
 FROM (veeva.call_detail se JOIN ( SELECT call_detail.id,
        max(call_detail.file_id) AS file_id
 FROM veeva.call_detail
 WHERE (call_detail.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call_detail.id) se2 ON (((se.id = se2.id) AND (se.file_id = se2.file_id))));

CREATE  VIEW sandbox.account AS
 SELECT x.id,
        x.isdeleted,
        x.masterrecordid,
        x.name,
        x.lastname,
        x.firstname,
        x.salutation,
        x.type,
        x.recordtypeid,
        x.phone,
        x.fax,
        x.website,
        x.numberofemployees,
        x.ownership,
        x.ownerid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.isexcludedfromrealign,
        x.personcontactid,
        x.ispersonaccount,
        x.personmailingstreet,
        x.personmailingcity,
        x.personmailingstate,
        x.personmailingpostalcode,
        x.personmailingcountry,
        x.personmailinglatitude,
        x.personmailinglongitude,
        x.personotherstreet,
        x.personothercity,
        x.personotherstate,
        x.personotherpostalcode,
        x.personothercountry,
        x.personotherlatitude,
        x.personotherlongitude,
        x.personmobilephone,
        x.personhomephone,
        x.personotherphone,
        x.personassistantphone,
        x.personemail,
        x.persontitle,
        x.persondepartment,
        x.personassistantname,
        x.personbirthdate,
        x.personhasoptedoutofemail,
        x.personhasoptedoutoffax,
        x.persondonotcall,
        x.personlastcurequestdate,
        x.personlastcuupdatedate,
        x.personemailbouncedreason,
        x.personemailbounceddate,
        x.jigsaw,
        x.jigsawcompanyid,
        x.accountsource,
        x.sicdesc,
        x.external_id_vod__c,
        x.credentials_vod__c,
        x.exclude_from_zip_to_terr_proce,
        x.group_specialty_1_vod__c,
        x.group_specialty_2_vod__c,
        x.specialty_1_vod__c,
        x.specialty_2_vod__c,
        x.formatted_name_vod__c,
        x.territory_test_vod__c,
        x.mobile_id_vod__c,
        x.gender_vod__c,
        x.id_vod__c,
        x.do_not_sync_sales_data_vod__c,
        x.id2_vod__c,
        x.preferred_name_vod__c,
        x.sample_default_vod__c,
        x.segmentations_vod__c,
        x.restricted_products_vod__c,
        x.payer_id_vod__c,
        x.account_status_tva__c,
        x.do_not_call_vod__c,
        x.beds__c,
        x.spend_amount__c,
        x.pdrp_opt_out_vod__c,
        x.spend_status_value_vod__c,
        x.pdrp_opt_out_date_vod__c,
        x.spend_status_vod__c,
        x.enable_restricted_products,
        x.call_reminder_vod__c,
        x.account_group_vod__c,
        x.primary_parent_vod__c,
        x.color_vod__c,
        x.middle_vod__c,
        x.suffix_vod__c,
        x.account_location_tva__c,
        x.no_orders_vod__c,
        x.account_master_id_tva__c,
        x.account_email_tva__c,
        x.account_search_firstlast,
        x.account_search_lastfirst,
        x.person_preferred_name_tva__c,
        x.practice_at_hospital_vod__c,
        x.practice_near_hospital_vod__c,
        x.do_not_create_child_account,
        x.total_mds_dos__c,
        x.aha__c,
        x.order_type_vod__c,
        x.npi_vod__c,
        x.me__c,
        x.speaker__c,
        x.investigator_vod__c,
        x.default_order_type_vod__c,
        x.person_degree_tva__c,
        x.tax_status__c,
        x.model__c,
        x.offerings__c,
        x.departments__c,
        x.account_type__c,
        x.account_search_business_vod__c,
        x.business_professional_person,
        x.no_spend_tva__c,
        x.hospital_type_vod__c,
        x.account_class_vod__c,
        x.furigana_vod__c,
        x.tirf_rems_tva__c,
        x.fentora_app_tva__c,
        x.total_revenue_000__c,
        x.net_income_loss_000__c,
        x.pmpm_income_loss_000__c,
        x.commercial_premiums_pmpm__c,
        x.medical_loss_ratio__c,
        x.medical_expenses_pmpm__c,
        x.commercial_patient_days_1000,
        x.hmo_market_shr__c,
        x.hmo__c,
        x.hmo_pos__c,
        x.ppo__c,
        x.ppo_pos__c,
        x.medicare__c,
        x.medicaid__c,
        x.nuvigil_app_tva__c,
        x.mds_status_tva__c,
        x.lis_status_tva__c,
        x.dnc_pcs_tva__c,
        x.dnc_cns_tva__c,
        x.suffix_tva__c,
        x.tysabri_status_tva__c,
        x.business_description__c,
        x.regional_strategy__c,
        x.contracts_process__c,
        x.cml_profiled_tva__c,
        x.cell_phone_tva__c,
        x.no_contact_tva__c,
        x.outlet_id_tva__c,
        x.pmo_gpo_account_affiliations,
        x.territory_status_tva__c,
        x.zdea_number_tva__c,
        x.veeva_id_tva__c,
        x.treanda_lq_tgt_tva__c,
        x.tbo_filgrastim_target_tva__c,
        x.sln_rescrub_tva__c,
        x.account_identifier_vod__c,
        x.target__c,
        x.kol_vod__c,
        x.rems_expiration_date_teva__c,
        x.account_demo_id_tva__c,
        x.total_lives__c,
        x.total_physicians_enrolled__c,
        x.tirf_rems_eff_date_tva__c,
        x.business_associate_agreement,
        x.do_not_promote_tva__c,
        x.account_dea_tva__c,
        x.bp_number__c,
        x.paragard_segmentation_tva__c,
        x.telesales_activity_tva__c,
        x.designation_tva__c,
        x.total_pharmacists__c,
        x.comp_pricing_tva__c,
        x.formulary_tva__c,
        x.gln_tva__c,
        x.gpo_contracts_tva__c,
        x.hin_tva__c,
        x.max_id_tva__c,
        x.oncology_services_tva__c,
        x.pcp_program_tva__c,
        x.pharmacy_location_tva__c,
        x.primary_credential_tva__c,
        x.primary_wholesaler_tva__c,
        x.rep_credentialing_tva__c,
        x.secondary_credential_tva__c,
        x.sign_in_location_tva__c,
        x.special_tva__c,
        x.sub_type_id_tva__c,
        x.sub_type_tva__c,
        x.teva_contracts_tva__c,
        x.ims_org_id_tva__c,
        x.year_of_birth_tva__c,
        x.teaching_hospital_tva__c,
        x.account_archived_tva__c,
        x.mobile_id_vod__pc,
        x.file_id,
        x.record_id,
        x.cm_id_tva__c,
        x.staff_email,
        x.company_managed_email,
        x.alternate_email
 FROM (veeva.account x JOIN ( SELECT account.id,
        max(account.file_id) AS file_id
 FROM veeva.account
 GROUP BY account.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_account AS
 SELECT x.id,
        x.isdeleted,
        x.masterrecordid,
        x.name,
        x.lastname,
        x.firstname,
        x.salutation,
        x.type,
        x.recordtypeid,
        x.phone,
        x.fax,
        x.website,
        x.numberofemployees,
        x.ownership,
        x.ownerid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.isexcludedfromrealign,
        x.personcontactid,
        x.ispersonaccount,
        x.personmailingstreet,
        x.personmailingcity,
        x.personmailingstate,
        x.personmailingpostalcode,
        x.personmailingcountry,
        x.personmailinglatitude,
        x.personmailinglongitude,
        x.personotherstreet,
        x.personothercity,
        x.personotherstate,
        x.personotherpostalcode,
        x.personothercountry,
        x.personotherlatitude,
        x.personotherlongitude,
        x.personmobilephone,
        x.personhomephone,
        x.personotherphone,
        x.personassistantphone,
        x.personemail,
        x.persontitle,
        x.persondepartment,
        x.personassistantname,
        x.personbirthdate,
        x.personhasoptedoutofemail,
        x.personhasoptedoutoffax,
        x.persondonotcall,
        x.personlastcurequestdate,
        x.personlastcuupdatedate,
        x.personemailbouncedreason,
        x.personemailbounceddate,
        x.jigsaw,
        x.jigsawcompanyid,
        x.accountsource,
        x.sicdesc,
        x.external_id_vod__c,
        x.credentials_vod__c,
        x.exclude_from_zip_to_terr_proce,
        x.group_specialty_1_vod__c,
        x.group_specialty_2_vod__c,
        x.specialty_1_vod__c,
        x.specialty_2_vod__c,
        x.formatted_name_vod__c,
        x.territory_test_vod__c,
        x.mobile_id_vod__c,
        x.gender_vod__c,
        x.id_vod__c,
        x.do_not_sync_sales_data_vod__c,
        x.id2_vod__c,
        x.preferred_name_vod__c,
        x.sample_default_vod__c,
        x.segmentations_vod__c,
        x.restricted_products_vod__c,
        x.payer_id_vod__c,
        x.account_status_tva__c,
        x.do_not_call_vod__c,
        x.beds__c,
        x.spend_amount__c,
        x.pdrp_opt_out_vod__c,
        x.spend_status_value_vod__c,
        x.pdrp_opt_out_date_vod__c,
        x.spend_status_vod__c,
        x.enable_restricted_products,
        x.call_reminder_vod__c,
        x.account_group_vod__c,
        x.primary_parent_vod__c,
        x.color_vod__c,
        x.middle_vod__c,
        x.suffix_vod__c,
        x.account_location_tva__c,
        x.no_orders_vod__c,
        x.account_master_id_tva__c,
        x.account_email_tva__c,
        x.account_search_firstlast,
        x.account_search_lastfirst,
        x.person_preferred_name_tva__c,
        x.practice_at_hospital_vod__c,
        x.practice_near_hospital_vod__c,
        x.do_not_create_child_account,
        x.total_mds_dos__c,
        x.aha__c,
        x.order_type_vod__c,
        x.npi_vod__c,
        x.me__c,
        x.speaker__c,
        x.investigator_vod__c,
        x.default_order_type_vod__c,
        x.person_degree_tva__c,
        x.tax_status__c,
        x.model__c,
        x.offerings__c,
        x.departments__c,
        x.account_type__c,
        x.account_search_business_vod__c,
        x.business_professional_person,
        x.no_spend_tva__c,
        x.hospital_type_vod__c,
        x.account_class_vod__c,
        x.furigana_vod__c,
        x.tirf_rems_tva__c,
        x.fentora_app_tva__c,
        x.total_revenue_000__c,
        x.net_income_loss_000__c,
        x.pmpm_income_loss_000__c,
        x.commercial_premiums_pmpm__c,
        x.medical_loss_ratio__c,
        x.medical_expenses_pmpm__c,
        x.commercial_patient_days_1000,
        x.hmo_market_shr__c,
        x.hmo__c,
        x.hmo_pos__c,
        x.ppo__c,
        x.ppo_pos__c,
        x.medicare__c,
        x.medicaid__c,
        x.nuvigil_app_tva__c,
        x.mds_status_tva__c,
        x.lis_status_tva__c,
        x.dnc_pcs_tva__c,
        x.dnc_cns_tva__c,
        x.suffix_tva__c,
        x.tysabri_status_tva__c,
        x.business_description__c,
        x.regional_strategy__c,
        x.contracts_process__c,
        x.cml_profiled_tva__c,
        x.cell_phone_tva__c,
        x.no_contact_tva__c,
        x.outlet_id_tva__c,
        x.pmo_gpo_account_affiliations,
        x.territory_status_tva__c,
        x.zdea_number_tva__c,
        x.veeva_id_tva__c,
        x.treanda_lq_tgt_tva__c,
        x.tbo_filgrastim_target_tva__c,
        x.sln_rescrub_tva__c,
        x.account_identifier_vod__c,
        x.target__c,
        x.kol_vod__c,
        x.rems_expiration_date_teva__c,
        x.account_demo_id_tva__c,
        x.total_lives__c,
        x.total_physicians_enrolled__c,
        x.tirf_rems_eff_date_tva__c,
        x.business_associate_agreement,
        x.do_not_promote_tva__c,
        x.account_dea_tva__c,
        x.bp_number__c,
        x.paragard_segmentation_tva__c,
        x.telesales_activity_tva__c,
        x.designation_tva__c,
        x.total_pharmacists__c,
        x.comp_pricing_tva__c,
        x.formulary_tva__c,
        x.gln_tva__c,
        x.gpo_contracts_tva__c,
        x.hin_tva__c,
        x.max_id_tva__c,
        x.oncology_services_tva__c,
        x.pcp_program_tva__c,
        x.pharmacy_location_tva__c,
        x.primary_credential_tva__c,
        x.primary_wholesaler_tva__c,
        x.rep_credentialing_tva__c,
        x.secondary_credential_tva__c,
        x.sign_in_location_tva__c,
        x.special_tva__c,
        x.sub_type_id_tva__c,
        x.sub_type_tva__c,
        x.teva_contracts_tva__c,
        x.ims_org_id_tva__c,
        x.year_of_birth_tva__c,
        x.teaching_hospital_tva__c,
        x.account_archived_tva__c,
        x.mobile_id_vod__pc,
        x.file_id,
        x.record_id,
        x.cm_id_tva__c,
        x.staff_email,
        x.company_managed_email,
        x.alternate_email
 FROM (veeva.account x JOIN ( SELECT account.id,
        max(account.file_id) AS file_id
 FROM veeva.account
 GROUP BY account.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_call AS
 SELECT x.id,
        x.ownerid,
        x.isdeleted,
        x.name,
        x.recordtypeid,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.lastactivitydate,
        x.mayedit,
        x.islocked,
        x.lastvieweddate,
        x.lastreferenceddate,
        x.sample_card_vod__c,
        x.add_detail_vod__c,
        x.property_vod__c,
        x.account_vod__c,
        x.zvod_product_discussion_vod__c,
        x.status_vod__c,
        x.parent_address_vod__c,
        x.account_plan_vod__c,
        x.zvod_savenew_vod__c,
        x.next_call_notes_vod__c,
        x.mobile_id_vod__c,
        x.zvod_account_credentials_vod_c,
        x.zvod_account_preferred_name_vo,
        x.zvod_account_sample_status_vod,
        x.zvod_attendees_vod__c,
        x.zvod_key_messages_vod__c,
        x.zvod_detailing_vod__c,
        x.zvod_expenses_vod__c,
        x.zvod_followup_vod__c,
        x.zvod_samples_vod__c,
        x.zvod_save_vod__c,
        x.zvod_submit_vod__c,
        x.zvod_delete_vod__c,
        x.activity_type__c,
        x.significant_event__c,
        x.location_vod__c,
        x.subject_vod__c,
        x.call_datetime_vod__c,
        x.disbursed_to_vod__c,
        x.request_receipt_vod__c,
        x.signature_date_vod__c,
        x.territory_vod__c,
        x.submitted_by_mobile_vod__c,
        x.call_type_vod__c,
        x.add_key_message_vod__c,
        x.address_vod__c,
        x.attendees_vod__c,
        x.attendee_type_vod__c,
        x.call_date_vod__c,
        x.detailed_products_vod__c,
        x.no_disbursement_vod__c,
        x.parent_call_vod__c,
        x.user_vod__c,
        x.contact_vod__c,
        x.zvod_entity_vod__c,
        x.medical_event_vod__c,
        x.mobile_created_datetime_vod__c,
        x.mobile_last_modified_datetime,
        x.license_vod__c,
        x.is_parent_call_vod__c,
        x.entity_display_name_vod__c,
        x.last_device_vod__c,
        x.ship_address_line_1_vod__c,
        x.ship_address_line_2_vod__c,
        x.ship_city_vod__c,
        x.ship_country_vod__c,
        x.ship_license_expiration_date,
        x.ship_license_status_vod__c,
        x.ship_license_vod__c,
        x.ship_state_vod__c,
        x.ship_to_address_vod__c,
        x.ship_zip_vod__c,
        x.ship_to_address_text_vod__c,
        x.clm_vod__c,
        x.zvod_clmdetails_vod__c,
        x.is_sampled_call_vod__c,
        x.zvod_surveys_vod__c,
        x.presentations_vod__c,
        x.entity_reference_id_vod__c,
        x.error_reference_call_vod__c,
        x.duration_vod__c,
        x.color_vod__c,
        x.allowed_products_vod__c,
        x.zvod_attachments_vod__c,
        x.sample_card_reason_vod__c,
        x.assmca_vod__c,
        x.address_line_1_vod__c,
        x.address_line_2_vod__c,
        x.city_vod__c,
        x.dea_address_line_1_vod__c,
        x.dea_address_line_2_vod__c,
        x.dea_address_vod__c,
        x.dea_city_vod__c,
        x.dea_expiration_date_vod__c,
        x.dea_state_vod__c,
        x.dea_zip_4_vod__c,
        x.dea_zip_vod__c,
        x.dea_vod__c,
        x.ship_zip_4_vod__c,
        x.state_vod__c,
        x.zip_4_vod__c,
        x.zip_vod__c,
        x.sample_send_card_vod__c,
        x.zvod_address_vod_c_dea_status_,
        x.signature_page_image_vod__c,
        x.credentials_vod__c,
        x.salutation_vod__c,
        x.zvod_account_call_reminder_vod,
        x.sales_org_tva__c,
        x.zvod_business_account_vod__c,
        x.product_priority_1_vod__c,
        x.product_priority_2_vod__c,
        x.product_priority_3_vod__c,
        x.product_priority_4_vod__c,
        x.product_priority_5_vod__c,
        x.zvod_more_actions_vod__c,
        x.zvod_call_conflict_status,
        x.signature_timestamp_vod__c,
        x.expense_amount_vod__c,
        x.total_expense_attendees_count,
        x.attendee_list_vod__c,
        x.expense_post_status_vod__c,
        x.attendee_post_status_vod__c,
        x.expense_system_external_id,
        x.incurred_expense_vod__c,
        x.assigner_vod__c,
        x.assignment_datetime_vod__c,
        x.zvod_call_objective_vod__c,
        x.signature_location_longitude,
        x.signature_location_latitude,
        x.location_services_status,
        x.created_by_timezone_tva__c,
        x.license_expiration_date_vod__c,
        x.license_status_vod__c,
        x.ship_assmca_vod__c,
        x.ship_dea_expiration_date,
        x.ship_dea_vod__c,
        x.call_method_tva__c,
        x.bendeka_indication_tva__c,
        x.file_id,
        x.record_id,
        x.austedo_indication_tva__c,
        x.call_duration_tva__c,
        x.how_executed_tva__c,
        x.Remote_Meeting_vod__c,
        x.Veeva_Remote_Meeting_Id_vod__c,
        x.Cobrowse_URL_Participant_vod__c,
        x.Signature_Captured_Remotely_vod__c,
        x.Remote_Signature_Attendee_Name_vod__c
 FROM (veeva.call x JOIN ( SELECT call.id,
        max(call.file_id) AS file_id
 FROM veeva.call
 WHERE (call.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.v_call_detail AS
 SELECT x.id,
        x.isdeleted,
        x.name,
        x.createddate,
        x.createdbyid,
        x.lastmodifieddate,
        x.lastmodifiedbyid,
        x.systemmodstamp,
        x.mayedit,
        x.islocked,
        x.is_parent_call_vod__c,
        x.call2_vod__c,
        x.product_vod__c,
        x.detail_priority_vod__c,
        x.mobile_id_vod__c,
        x.type_vod__c,
        x.file_id,
        x.record_id
 FROM (veeva.call_detail x JOIN ( SELECT call_detail.id,
        max(call_detail.file_id) AS file_id
 FROM veeva.call_detail
 WHERE (call_detail.createddate >= add_months((statement_timestamp())::timestamp, (-25)))
 GROUP BY call_detail.id) x2 ON (((x.id = x2.id) AND (x.file_id = x2.file_id))));

CREATE  VIEW sandbox.ics_mop AS
 SELECT rx_vertical.ims_id,
        rx_vertical.hcp_id,
        rx_vertical.plan_code,
        rx_vertical.plan_name,
        rx_vertical.model,
        rx_vertical.basket_name,
        sum(CASE WHEN (rx_vertical.month_bucket = 24) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth24,
        sum(CASE WHEN (rx_vertical.month_bucket = 23) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth23,
        sum(CASE WHEN (rx_vertical.month_bucket = 22) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth22,
        sum(CASE WHEN (rx_vertical.month_bucket = 21) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth21,
        sum(CASE WHEN (rx_vertical.month_bucket = 20) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth20,
        sum(CASE WHEN (rx_vertical.month_bucket = 19) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth19,
        sum(CASE WHEN (rx_vertical.month_bucket = 18) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth18,
        sum(CASE WHEN (rx_vertical.month_bucket = 17) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth17,
        sum(CASE WHEN (rx_vertical.month_bucket = 16) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth16,
        sum(CASE WHEN (rx_vertical.month_bucket = 15) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth15,
        sum(CASE WHEN (rx_vertical.month_bucket = 14) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth14,
        sum(CASE WHEN (rx_vertical.month_bucket = 13) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth13,
        sum(CASE WHEN (rx_vertical.month_bucket = 12) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth12,
        sum(CASE WHEN (rx_vertical.month_bucket = 11) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth11,
        sum(CASE WHEN (rx_vertical.month_bucket = 10) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth10,
        sum(CASE WHEN (rx_vertical.month_bucket = 9) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth9,
        sum(CASE WHEN (rx_vertical.month_bucket = 8) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth8,
        sum(CASE WHEN (rx_vertical.month_bucket = 7) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth7,
        sum(CASE WHEN (rx_vertical.month_bucket = 6) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth6,
        sum(CASE WHEN (rx_vertical.month_bucket = 5) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth5,
        sum(CASE WHEN (rx_vertical.month_bucket = 4) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth4,
        sum(CASE WHEN (rx_vertical.month_bucket = 3) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth3,
        sum(CASE WHEN (rx_vertical.month_bucket = 2) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth2,
        sum(CASE WHEN (rx_vertical.month_bucket = 1) THEN rx_vertical.trx_count ELSE 0::numeric(18,0) END) AS trx_mth1
 FROM ( SELECT CASE WHEN (length(rx.ims_id) = 8) THEN ('XX'::varchar(2) || substr(rx.ims_id, 4)) ELSE rx.ims_id END AS ims_id,
        CASE WHEN (length(rx.ims_id) = 8) THEN NULL ELSE coalesce(xref.veeva_account_id, rx.ims_id) END AS hcp_id,
        rx.payer_plan_number AS plan_code,
        rx.plan_name,
        rx.model,
        rx.basket_name,
        w.month_bucket,
        rx.trx_count
 FROM ((datamart.prescriber_rx rx JOIN ( SELECT ims_week_buckets.month_ending,
        ims_week_buckets.month_bucket
 FROM integration.ims_week_buckets
 GROUP BY ims_week_buckets.month_ending,
          ims_week_buckets.month_bucket) w ON ((rx.rollup_month = w.month_ending))) LEFT  JOIN ( SELECT a.tvcmid,
        a.veeva_account_id
 FROM ( SELECT xref.tvcmid,
        xref.id_num AS veeva_account_id,
        row_number() OVER (PARTITION BY xref.tvcmid ORDER BY xref.id_num) AS rnk
 FROM datamart.tvcmid_xref xref
 WHERE (xref.id_type = 'VEEVA_ID'::varchar(8))) a
 WHERE (a.rnk = 1)) xref ON ((xref.tvcmid = rx.tvcmid)))
 WHERE ((rx.market_name = 'ICS MARKET TOTAL'::varchar(16)) AND (rx.basket_type = 'product'::varchar(7)) AND (rx.report_frequency = 'SPLITWEEK'::varchar(9)) AND (w.month_bucket >= 1) AND (w.month_bucket <= 24))) rx_vertical
 GROUP BY rx_vertical.ims_id,
          rx_vertical.hcp_id,
          rx_vertical.plan_code,
          rx_vertical.plan_name,
          rx_vertical.model,
          rx_vertical.basket_name;

CREATE  VIEW sandbox.call AS
 SELECT a.id,
        a.ownerid,
        a.isdeleted,
        a.name,
        a.recordtypeid,
        a.createddate,
        a.createdbyid,
        a.lastmodifieddate,
        a.lastmodifiedbyid,
        a.systemmodstamp,
        a.lastactivitydate,
        a.mayedit,
        a.islocked,
        a.lastvieweddate,
        a.lastreferenceddate,
        a.sample_card_vod__c,
        a.add_detail_vod__c,
        a.property_vod__c,
        a.account_vod__c,
        a.zvod_product_discussion_vod__c,
        a.status_vod__c,
        a.parent_address_vod__c,
        a.account_plan_vod__c,
        a.zvod_savenew_vod__c,
        a.next_call_notes_vod__c,
        a.mobile_id_vod__c,
        a.zvod_account_credentials_vod_c,
        a.zvod_account_preferred_name_vo,
        a.zvod_account_sample_status_vod,
        a.zvod_attendees_vod__c,
        a.zvod_key_messages_vod__c,
        a.zvod_detailing_vod__c,
        a.zvod_expenses_vod__c,
        a.zvod_followup_vod__c,
        a.zvod_samples_vod__c,
        a.zvod_save_vod__c,
        a.zvod_submit_vod__c,
        a.zvod_delete_vod__c,
        a.activity_type__c,
        a.significant_event__c,
        a.location_vod__c,
        a.subject_vod__c,
        a.call_datetime_vod__c,
        a.disbursed_to_vod__c,
        a.request_receipt_vod__c,
        a.signature_date_vod__c,
        a.territory_vod__c,
        a.submitted_by_mobile_vod__c,
        a.call_type_vod__c,
        a.add_key_message_vod__c,
        a.address_vod__c,
        a.attendees_vod__c,
        a.attendee_type_vod__c,
        a.call_date_vod__c,
        a.detailed_products_vod__c,
        a.no_disbursement_vod__c,
        a.parent_call_vod__c,
        a.user_vod__c,
        a.contact_vod__c,
        a.zvod_entity_vod__c,
        a.medical_event_vod__c,
        a.mobile_created_datetime_vod__c,
        a.mobile_last_modified_datetime,
        a.license_vod__c,
        a.is_parent_call_vod__c,
        a.entity_display_name_vod__c,
        a.last_device_vod__c,
        a.ship_address_line_1_vod__c,
        a.ship_address_line_2_vod__c,
        a.ship_city_vod__c,
        a.ship_country_vod__c,
        a.ship_license_expiration_date,
        a.ship_license_status_vod__c,
        a.ship_license_vod__c,
        a.ship_state_vod__c,
        a.ship_to_address_vod__c,
        a.ship_zip_vod__c,
        a.ship_to_address_text_vod__c,
        a.clm_vod__c,
        a.zvod_clmdetails_vod__c,
        a.is_sampled_call_vod__c,
        a.zvod_surveys_vod__c,
        a.presentations_vod__c,
        a.entity_reference_id_vod__c,
        a.error_reference_call_vod__c,
        a.duration_vod__c,
        a.color_vod__c,
        a.allowed_products_vod__c,
        a.zvod_attachments_vod__c,
        a.sample_card_reason_vod__c,
        a.assmca_vod__c,
        a.address_line_1_vod__c,
        a.address_line_2_vod__c,
        a.city_vod__c,
        a.dea_address_line_1_vod__c,
        a.dea_address_line_2_vod__c,
        a.dea_address_vod__c,
        a.dea_city_vod__c,
        a.dea_expiration_date_vod__c,
        a.dea_state_vod__c,
        a.dea_zip_4_vod__c,
        a.dea_zip_vod__c,
        a.dea_vod__c,
        a.ship_zip_4_vod__c,
        a.state_vod__c,
        a.zip_4_vod__c,
        a.zip_vod__c,
        a.sample_send_card_vod__c,
        a.zvod_address_vod_c_dea_status_,
        a.signature_page_image_vod__c,
        a.credentials_vod__c,
        a.salutation_vod__c,
        a.zvod_account_call_reminder_vod,
        a.sales_org_tva__c,
        a.zvod_business_account_vod__c,
        a.product_priority_1_vod__c,
        a.product_priority_2_vod__c,
        a.product_priority_3_vod__c,
        a.product_priority_4_vod__c,
        a.product_priority_5_vod__c,
        a.zvod_more_actions_vod__c,
        a.zvod_call_conflict_status,
        a.signature_timestamp_vod__c,
        a.expense_amount_vod__c,
        a.total_expense_attendees_count,
        a.attendee_list_vod__c,
        a.expense_post_status_vod__c,
        a.attendee_post_status_vod__c,
        a.expense_system_external_id,
        a.incurred_expense_vod__c,
        a.assigner_vod__c,
        a.assignment_datetime_vod__c,
        a.zvod_call_objective_vod__c,
        a.signature_location_longitude,
        a.signature_location_latitude,
        a.location_services_status,
        a.created_by_timezone_tva__c,
        a.license_expiration_date_vod__c,
        a.license_status_vod__c,
        a.ship_assmca_vod__c,
        a.ship_dea_expiration_date,
        a.ship_dea_vod__c,
        a.call_method_tva__c,
        a.bendeka_indication_tva__c,
        a.file_id,
        a.record_id,
        a.austedo_indication_tva__c,
        a.call_duration_tva__c,
        a.how_executed_tva__c,
        a.Remote_Meeting_vod__c,
        a.Veeva_Remote_Meeting_Id_vod__c,
        a.Cobrowse_URL_Participant_vod__c,
        a.Signature_Captured_Remotely_vod__c,
        a.Remote_Signature_Attendee_Name_vod__c,
        a.rowrank
 FROM ( SELECT c.id,
        c.ownerid,
        c.isdeleted,
        c.name,
        c.recordtypeid,
        c.createddate,
        c.createdbyid,
        c.lastmodifieddate,
        c.lastmodifiedbyid,
        c.systemmodstamp,
        c.lastactivitydate,
        c.mayedit,
        c.islocked,
        c.lastvieweddate,
        c.lastreferenceddate,
        c.sample_card_vod__c,
        c.add_detail_vod__c,
        c.property_vod__c,
        c.account_vod__c,
        c.zvod_product_discussion_vod__c,
        c.status_vod__c,
        c.parent_address_vod__c,
        c.account_plan_vod__c,
        c.zvod_savenew_vod__c,
        c.next_call_notes_vod__c,
        c.mobile_id_vod__c,
        c.zvod_account_credentials_vod_c,
        c.zvod_account_preferred_name_vo,
        c.zvod_account_sample_status_vod,
        c.zvod_attendees_vod__c,
        c.zvod_key_messages_vod__c,
        c.zvod_detailing_vod__c,
        c.zvod_expenses_vod__c,
        c.zvod_followup_vod__c,
        c.zvod_samples_vod__c,
        c.zvod_save_vod__c,
        c.zvod_submit_vod__c,
        c.zvod_delete_vod__c,
        c.activity_type__c,
        c.significant_event__c,
        c.location_vod__c,
        c.subject_vod__c,
        c.call_datetime_vod__c,
        c.disbursed_to_vod__c,
        c.request_receipt_vod__c,
        c.signature_date_vod__c,
        c.territory_vod__c,
        c.submitted_by_mobile_vod__c,
        c.call_type_vod__c,
        c.add_key_message_vod__c,
        c.address_vod__c,
        c.attendees_vod__c,
        c.attendee_type_vod__c,
        c.call_date_vod__c,
        c.detailed_products_vod__c,
        c.no_disbursement_vod__c,
        c.parent_call_vod__c,
        c.user_vod__c,
        c.contact_vod__c,
        c.zvod_entity_vod__c,
        c.medical_event_vod__c,
        c.mobile_created_datetime_vod__c,
        c.mobile_last_modified_datetime,
        c.license_vod__c,
        c.is_parent_call_vod__c,
        c.entity_display_name_vod__c,
        c.last_device_vod__c,
        c.ship_address_line_1_vod__c,
        c.ship_address_line_2_vod__c,
        c.ship_city_vod__c,
        c.ship_country_vod__c,
        c.ship_license_expiration_date,
        c.ship_license_status_vod__c,
        c.ship_license_vod__c,
        c.ship_state_vod__c,
        c.ship_to_address_vod__c,
        c.ship_zip_vod__c,
        c.ship_to_address_text_vod__c,
        c.clm_vod__c,
        c.zvod_clmdetails_vod__c,
        c.is_sampled_call_vod__c,
        c.zvod_surveys_vod__c,
        c.presentations_vod__c,
        c.entity_reference_id_vod__c,
        c.error_reference_call_vod__c,
        c.duration_vod__c,
        c.color_vod__c,
        c.allowed_products_vod__c,
        c.zvod_attachments_vod__c,
        c.sample_card_reason_vod__c,
        c.assmca_vod__c,
        c.address_line_1_vod__c,
        c.address_line_2_vod__c,
        c.city_vod__c,
        c.dea_address_line_1_vod__c,
        c.dea_address_line_2_vod__c,
        c.dea_address_vod__c,
        c.dea_city_vod__c,
        c.dea_expiration_date_vod__c,
        c.dea_state_vod__c,
        c.dea_zip_4_vod__c,
        c.dea_zip_vod__c,
        c.dea_vod__c,
        c.ship_zip_4_vod__c,
        c.state_vod__c,
        c.zip_4_vod__c,
        c.zip_vod__c,
        c.sample_send_card_vod__c,
        c.zvod_address_vod_c_dea_status_,
        c.signature_page_image_vod__c,
        c.credentials_vod__c,
        c.salutation_vod__c,
        c.zvod_account_call_reminder_vod,
        c.sales_org_tva__c,
        c.zvod_business_account_vod__c,
        c.product_priority_1_vod__c,
        c.product_priority_2_vod__c,
        c.product_priority_3_vod__c,
        c.product_priority_4_vod__c,
        c.product_priority_5_vod__c,
        c.zvod_more_actions_vod__c,
        c.zvod_call_conflict_status,
        c.signature_timestamp_vod__c,
        c.expense_amount_vod__c,
        c.total_expense_attendees_count,
        c.attendee_list_vod__c,
        c.expense_post_status_vod__c,
        c.attendee_post_status_vod__c,
        c.expense_system_external_id,
        c.incurred_expense_vod__c,
        c.assigner_vod__c,
        c.assignment_datetime_vod__c,
        c.zvod_call_objective_vod__c,
        c.signature_location_longitude,
        c.signature_location_latitude,
        c.location_services_status,
        c.created_by_timezone_tva__c,
        c.license_expiration_date_vod__c,
        c.license_status_vod__c,
        c.ship_assmca_vod__c,
        c.ship_dea_expiration_date,
        c.ship_dea_vod__c,
        c.call_method_tva__c,
        c.bendeka_indication_tva__c,
        c.file_id,
        c.record_id,
        c.austedo_indication_tva__c,
        c.call_duration_tva__c,
        c.how_executed_tva__c,
        c.Remote_Meeting_vod__c,
        c.Veeva_Remote_Meeting_Id_vod__c,
        c.Cobrowse_URL_Participant_vod__c,
        c.Signature_Captured_Remotely_vod__c,
        c.Remote_Signature_Attendee_Name_vod__c,
        rank() OVER (PARTITION BY c.id ORDER BY c.file_id DESC) AS rowrank
 FROM veeva.call c
 WHERE (c.call_date_vod__c >= add_months((statement_timestamp())::timestamp, (-24)))) a
 WHERE (a.rowrank = 1);

CREATE  VIEW sandbox.vw_prev_month_ftf_formularies AS
 SELECT btrim(ftf_formularies.health_plan_id) AS health_plan_id,
        btrim(ftf_formularies.drug_id) AS drug_id,
        btrim(ftf_formularies.tier_code) AS tier_code,
        btrim(ftf_formularies.restrictions) AS restrictions,
        btrim(ftf_formularies.reason_code) AS reason_code,
        btrim(ftf_formularies.reason_code_description) AS btrim,
        ftf_formularies.file_id,
        ftf_formularies.record_id
 FROM cleansed.ftf_formularies
 WHERE (ftf_formularies.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_formularies.file_id
 FROM cleansed.ftf_formularies
 GROUP BY ftf_formularies.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plans AS
 SELECT btrim(ftf_health_plans.formularyf_id) AS formularyf_id,
        btrim(ftf_health_plans.provider_id) AS provider_id,
        btrim(ftf_health_plans.provider) AS provider,
        btrim(ftf_health_plans.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plans.health_plan) AS health_plan,
        btrim(ftf_health_plans.parent_id) AS parent_id,
        btrim(ftf_health_plans.parent) AS parent,
        ftf_health_plans.national_lives_count,
        btrim(ftf_health_plans.plan_type_name) AS plan_type_name,
        ftf_health_plans.preferred_brand_tier,
        ftf_health_plans.file_id,
        ftf_health_plans.record_id
 FROM cleansed.ftf_health_plans
 WHERE (ftf_health_plans.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plans.file_id
 FROM cleansed.ftf_health_plans
 GROUP BY ftf_health_plans.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_health_plan_geography AS
 SELECT btrim(ftf_health_plan_geography.health_plan_id) AS health_plan_id,
        btrim(ftf_health_plan_geography.operating_state) AS operating_state,
        ftf_health_plan_geography.lives_coverage,
        ftf_health_plan_geography.file_id,
        ftf_health_plan_geography.record_id
 FROM cleansed.ftf_health_plan_geography
 WHERE (ftf_health_plan_geography.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_health_plan_geography.file_id
 FROM cleansed.ftf_health_plan_geography
 GROUP BY ftf_health_plan_geography.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_pbms AS
 SELECT btrim(ftf_pbms.health_plan_id) AS health_plan_id,
        btrim(ftf_pbms.pbm_id) AS pbm_id,
        btrim(ftf_pbms.pbm) AS pbm,
        btrim(ftf_pbms.pbm_function_id) AS pbm_function_id,
        btrim(ftf_pbms.pbm_function) AS pbm_function,
        ftf_pbms.file_id,
        ftf_pbms.record_id
 FROM cleansed.ftf_pbms
 WHERE (ftf_pbms.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_pbms.file_id
 FROM cleansed.ftf_pbms
 GROUP BY ftf_pbms.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_restrictions AS
 SELECT btrim(ftf_restrictions_v2.health_plan_id) AS health_plan_id,
        btrim(ftf_restrictions_v2.drug_id) AS drug_id,
        btrim(ftf_restrictions_v2.restriction_code) AS restriction_code,
        ftf_restrictions_v2.restriction_detail_id,
        btrim(ftf_restrictions_v2.restriction_detail_text) AS restriction_detail_text,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_1) AS restriction_addtnl_information_1,
        btrim(ftf_restrictions_v2.restriction_addtnl_information_2) AS restriction_addtnl_information_2,
        btrim(ftf_restrictions_v2.step_count) AS step_count,
        btrim(ftf_restrictions_v2.pa_form) AS pa_form,
        btrim(ftf_restrictions_v2.indication) AS indication,
        btrim(ftf_restrictions_v2.grouped_restriction_level) AS grouped_restriction_level,
        ftf_restrictions_v2.record_id,
        ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 WHERE (ftf_restrictions_v2.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_restrictions_v2.file_id
 FROM cleansed.ftf_restrictions_v2
 GROUP BY ftf_restrictions_v2.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_plan_xref AS
 SELECT btrim(ims_plan_xref.payer_num) AS payer_num,
        btrim(ims_plan_xref.payer_name) AS payer_name,
        btrim(ims_plan_xref.plan_num) AS plan_num,
        btrim(ims_plan_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_plan_xref.plan_name) AS plan_name,
        btrim(ims_plan_xref.model) AS model,
        btrim(ims_plan_xref.city) AS city,
        btrim(ims_plan_xref.hq_state) AS hq_state,
        btrim(ims_plan_xref.operating_state) AS operating_state,
        ims_plan_xref.months_with_data,
        ims_plan_xref.file_id,
        ims_plan_xref.record_id
 FROM cleansed.ims_plan_xref
 WHERE (ims_plan_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_plan_xref.file_id
 FROM cleansed.ims_plan_xref
 GROUP BY ims_plan_xref.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ims_pbm_xref AS
 SELECT btrim(ims_pbm_xref.pbm_name) AS pbm_name,
        btrim(ims_pbm_xref.payer_plan_num) AS payer_plan_num,
        btrim(ims_pbm_xref.xref_to_payer_plan_num) AS xref_to_payer_plan_num,
        btrim(ims_pbm_xref.ipd_id) AS ipd_id,
        btrim(ims_pbm_xref.ipd_type) AS ipd_type,
        btrim(ims_pbm_xref.plan_name) AS plan_name,
        ims_pbm_xref.pbm_num,
        ims_pbm_xref.ims_processor_num,
        ims_pbm_xref.file_id,
        ims_pbm_xref.record_id
 FROM cleansed.ims_pbm_xref
 WHERE (ims_pbm_xref.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ims_pbm_xref.file_id
 FROM cleansed.ims_pbm_xref
 GROUP BY ims_pbm_xref.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_prev_month_ftf_ims_bridge AS
 SELECT btrim(ftf_ims_bridge.payer_name) AS payer_name,
        btrim(ftf_ims_bridge.code) AS code,
        btrim(ftf_ims_bridge.name) AS name,
        btrim(ftf_ims_bridge.state) AS state,
        btrim(ftf_ims_bridge.comments) AS comments,
        ftf_ims_bridge.plan_id,
        btrim(ftf_ims_bridge.plan_name) AS plan_name,
        btrim(ftf_ims_bridge.provider_name) AS provider_name,
        btrim(ftf_ims_bridge.plan_type_name) AS plan_type_name,
        ftf_ims_bridge.file_id,
        ftf_ims_bridge.record_id
 FROM cleansed.ftf_ims_bridge
 WHERE (ftf_ims_bridge.file_id IN ( SELECT metadata_file.file_id
 FROM ( SELECT data_file_metadata.file_id,
        (date_part('month'::varchar(5), data_file_metadata.processed_date))::int AS month,
        rank() OVER (PARTITION BY (date_part('month'::varchar(5), data_file_metadata.processed_date))::int ORDER BY data_file_metadata.processed_date DESC) AS rn
 FROM metadata.data_file_metadata
 WHERE ((data_file_metadata.file_id IN ( SELECT ftf_ims_bridge.file_id
 FROM cleansed.ftf_ims_bridge
 GROUP BY ftf_ims_bridge.file_id)) AND ("datediff"('month'::varchar(5), data_file_metadata.processed_date, (now())::date) = 1))) metadata_file
 WHERE (metadata_file.rn = 1)));

CREATE  VIEW sandbox.vw_qc_uniq_iqvia_model_plan_count AS
 SELECT iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.model;

CREATE  VIEW sandbox.vw_qc_uniq_paytype_plan_count AS
 SELECT iqvia_plan_preprocessed.paytype,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_uniq_payer_plan_count AS
 SELECT iqvia_plan_preprocessed.iqvia_payer_name,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_payer_name;

CREATE  VIEW sandbox.vw_qc_uniq_pbm_plan_count AS
 SELECT iqvia_plan_preprocessed.iqvia_pbm,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_pbm;

CREATE  VIEW sandbox.vw_qc_uniq_plan_model_codes AS
 SELECT iqvia_plan_preprocessed.iqvia_payer_name,
        iqvia_plan_preprocessed.paytype,
        iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_code) AS count
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.iqvia_payer_name,
          iqvia_plan_preprocessed.paytype,
          iqvia_plan_preprocessed.model
 ORDER BY iqvia_plan_preprocessed.iqvia_payer_name,
          iqvia_plan_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_uniq_paytype_model_plan_count AS
 SELECT iqvia_plan_preprocessed.paytype,
        iqvia_plan_preprocessed.model,
        count(DISTINCT iqvia_plan_preprocessed.iqvia_plan_name) AS plan_counts
 FROM sandbox.iqvia_plan_preprocessed
 WHERE (iqvia_plan_preprocessed.cycle_id IN ( SELECT max(iqvia_plan_preprocessed.cycle_id) AS max
 FROM sandbox.iqvia_plan_preprocessed))
 GROUP BY iqvia_plan_preprocessed.paytype,
          iqvia_plan_preprocessed.model;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_paytype_plan_count AS
 SELECT ftf_health_plans_preprocessed.paytype,
        count(DISTINCT ftf_health_plans_preprocessed.ftf_health_plan_name) AS plan_count
 FROM sandbox.ftf_health_plans_preprocessed
 WHERE (ftf_health_plans_preprocessed.cycle_id IN ( SELECT max(ftf_health_plans_preprocessed.cycle_id) AS max
 FROM sandbox.ftf_health_plans_preprocessed))
 GROUP BY ftf_health_plans_preprocessed.paytype
 ORDER BY ftf_health_plans_preprocessed.paytype;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_paytype_plantype_plan_count AS
 SELECT ftf_health_plans_preprocessed.paytype,
        ftf_health_plans_preprocessed.ftf_health_plan_type,
        count(DISTINCT ftf_health_plans_preprocessed.ftf_health_plan_name) AS plan_count
 FROM sandbox.ftf_health_plans_preprocessed
 WHERE (ftf_health_plans_preprocessed.cycle_id IN ( SELECT max(ftf_health_plans_preprocessed.cycle_id) AS max
 FROM sandbox.ftf_health_plans_preprocessed))
 GROUP BY ftf_health_plans_preprocessed.paytype,
          ftf_health_plans_preprocessed.ftf_health_plan_type
 ORDER BY ftf_health_plans_preprocessed.paytype,
          ftf_health_plans_preprocessed.ftf_health_plan_type;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_restriction_group_plan_count AS
SELECT ftf_restrictions_preprocessed_v1.grouped_restriction_level, count(DISTINCT ftf_restrictions_preprocessed_v1.ftf_health_plan_fid) AS plan_count FROM sandbox.ftf_restrictions_preprocessed_v1 GROUP BY ftf_restrictions_preprocessed_v1.grouped_restriction_level ORDER BY ftf_restrictions_preprocessed_v1.grouped_restriction_level;

CREATE  VIEW sandbox.vw_qc_ftf_uniq_restriction_detail_plan_count AS
SELECT ftf_restrictions_preprocessed_v1.restriction_detail_text, count(DISTINCT ftf_restrictions_preprocessed_v1.ftf_health_plan_fid) AS plan_count FROM sandbox.ftf_restrictions_preprocessed_v1 GROUP BY ftf_restrictions_preprocessed_v1.restriction_detail_text ORDER BY ftf_restrictions_preprocessed_v1.restriction_detail_text;

CREATE  VIEW sandbox.vw_curr_month_ftf_formularies AS
 SELECT btrim(raw_ftf_formularies.health_plan_id) AS health_plan_id,
        btrim(raw_ftf_formularies.drug_id) AS drug_id,
        btrim(raw_ftf_formularies.tier_code) AS tier_code,
        btrim(raw_ftf_formularies.restrictions) AS restrictions,
        btrim(raw_ftf_formularies.reason_code) AS reason_code,
        btrim(raw_ftf_formularies.reason_code_description) AS btrim
 FROM sandbox.raw_ftf_formularies;

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plans AS
 SELECT btrim(raw_ftf_health_plans.formularyf_id) AS formularyf_id,
        btrim(raw_ftf_health_plans.provider_id) AS provider_id,
        btrim(raw_ftf_health_plans.provider) AS provider,
        btrim(raw_ftf_health_plans.health_plan_id) AS health_plan_id,
        btrim(raw_ftf_health_plans.health_plan) AS health_plan,
        btrim(raw_ftf_health_plans.parent_id) AS parent_id,
        btrim(raw_ftf_health_plans.parent) AS parent,
        raw_ftf_health_plans.national_lives_count,
        btrim(raw_ftf_health_plans.plan_type_name) AS plan_type_name,
        raw_ftf_health_plans.preferred_brand_tier
 FROM sandbox.raw_ftf_health_plans;

CREATE  VIEW sandbox.vw_curr_month_ftf_pbms AS
 SELECT btrim(raw_ftf_pbms.health_plan_id) AS health_plan_id,
        btrim(raw_ftf_pbms.pbm_id) AS pbm_id,
        btrim(raw_ftf_pbms.pbm) AS pbm,
        btrim(raw_ftf_pbms.pbm_function_id) AS pbm_function_id,
        btrim(raw_ftf_pbms.pbm_function) AS pbm_function
 FROM sandbox.raw_ftf_pbms;

CREATE  VIEW sandbox.vw_curr_month_ftf_restrictions AS
 SELECT btrim(raw_ftf_restrictions.health_plan_id) AS health_plan_id,
        btrim(raw_ftf_restrictions.drug_id) AS drug_id,
        btrim(raw_ftf_restrictions.restriction_code) AS restriction_code,
        raw_ftf_restrictions.restriction_detail_id,
        btrim(raw_ftf_restrictions.restriction_detail_text) AS restriction_detail_text,
        btrim(raw_ftf_restrictions.restriction_addtnl_information_1) AS restriction_addtnl_information_1,
        btrim(raw_ftf_restrictions.restriction_addtnl_information_2) AS restriction_addtnl_information_2,
        btrim(raw_ftf_restrictions.step_count) AS step_count,
        btrim(raw_ftf_restrictions.pa_form) AS pa_form,
        btrim(raw_ftf_restrictions.indication) AS indication,
        btrim(raw_ftf_restrictions.grouped_restriction_level) AS grouped_restriction_level
 FROM sandbox.raw_ftf_restrictions;

CREATE  VIEW sandbox.vw_curr_month_ims_plan_xref AS
 SELECT btrim(raw_iqvia_plan.payer_num) AS payer_num,
        btrim(raw_iqvia_plan.payer_name) AS payer_name,
        btrim(raw_iqvia_plan.plan_num) AS plan_num,
        btrim(raw_iqvia_plan.payer_plan_num) AS payer_plan_num,
        btrim(raw_iqvia_plan.plan_name) AS plan_name,
        btrim(raw_iqvia_plan.model) AS model,
        btrim(raw_iqvia_plan.city) AS city,
        btrim(raw_iqvia_plan.hq_state) AS hq_state,
        btrim(raw_iqvia_plan.operating_state) AS operating_state,
        raw_iqvia_plan.months_with_data
 FROM sandbox.raw_iqvia_plan;

CREATE  VIEW sandbox.vw_curr_month_ims_pbm_xref AS
 SELECT btrim(raw_iqvia_pbm.pbm_name) AS pbm_name,
        btrim(raw_iqvia_pbm.payer_plan_num) AS payer_plan_num,
        btrim(raw_iqvia_pbm.xref_to_payer_plan_num) AS xref_to_payer_plan_num,
        btrim(raw_iqvia_pbm.ipd_id) AS ipd_id,
        btrim(raw_iqvia_pbm.ipd_type) AS ipd_type,
        btrim(raw_iqvia_pbm.plan_name) AS plan_name,
        raw_iqvia_pbm.pbm_num,
        raw_iqvia_pbm.ims_processor_num
 FROM sandbox.raw_iqvia_pbm;

CREATE  VIEW sandbox.vw_curr_month_ftf_ims_bridge AS
 SELECT btrim(raw_teva_ims_bridge.payer_name) AS payer_name,
        btrim(raw_teva_ims_bridge.code) AS code,
        btrim(raw_teva_ims_bridge.name) AS name,
        btrim(raw_teva_ims_bridge.state) AS state,
        btrim(raw_teva_ims_bridge.comments) AS comments,
        raw_teva_ims_bridge.plan_id,
        btrim(raw_teva_ims_bridge.plan_name) AS plan_name,
        btrim(raw_teva_ims_bridge.provider_name) AS provider_name,
        btrim(raw_teva_ims_bridge.plan_type_name) AS plan_type_name
 FROM sandbox.raw_teva_ims_bridge;

CREATE  VIEW sandbox.vw_curr_month_ftf_health_plan_geography AS
 SELECT btrim(raw_ftf_health_plan_geography.health_plan_id) AS health_plan_id,
        btrim(raw_ftf_health_plan_geography.state_name) AS operating_state,
        raw_ftf_health_plan_geography.county_lives AS lives_coverage
 FROM sandbox.raw_ftf_health_plan_geography;

CREATE  VIEW sandbox.vw_curr_iqvia_plans_discard AS
 SELECT btrim(iqvia_plans_discard.payer_id) AS payer_id,
        btrim(iqvia_plans_discard.notes) AS notes,
        iqvia_plans_discard.file_id,
        iqvia_plans_discard.record_id
 FROM sandbox.iqvia_plans_discard
 WHERE (iqvia_plans_discard.file_id IN ( SELECT max(iqvia_plans_discard.file_id) AS max
 FROM sandbox.iqvia_plans_discard));

CREATE  VIEW sandbox.vw_curr_model_paytype_map AS
 SELECT btrim(model_paytype_map.model) AS model,
        btrim(model_paytype_map.paytype) AS paytype,
        btrim(model_paytype_map.notes) AS notes,
        model_paytype_map.file_id,
        model_paytype_map.record_id
 FROM sandbox.model_paytype_map
 WHERE (model_paytype_map.file_id IN ( SELECT max(model_paytype_map.file_id) AS max
 FROM sandbox.model_paytype_map));

CREATE  VIEW sandbox.vw_curr_iqvia_payer_paytype_override AS
 SELECT btrim(iqvia_payer_paytype_override.iqvia_payer_name) AS iqvia_payer_name,
        btrim(iqvia_payer_paytype_override.iqvia_plan_name_regex) AS iqvia_plan_name_regex,
        btrim(iqvia_payer_paytype_override.paytype) AS paytype,
        iqvia_payer_paytype_override.file_id,
        iqvia_payer_paytype_override.record_id
 FROM sandbox.iqvia_payer_paytype_override
 WHERE (iqvia_payer_paytype_override.file_id IN ( SELECT max(iqvia_payer_paytype_override.file_id) AS max
 FROM sandbox.iqvia_payer_paytype_override));

CREATE  VIEW sandbox.vw_curr_iqvia_paytypeindex AS
 SELECT btrim(iqvia_paytypeindex.paytype_index) AS paytype_index,
        btrim(iqvia_paytypeindex.paytype) AS paytype,
        iqvia_paytypeindex.file_id,
        iqvia_paytypeindex.record_id
 FROM sandbox.iqvia_paytypeindex
 WHERE (iqvia_paytypeindex.file_id IN ( SELECT max(iqvia_paytypeindex.file_id) AS max
 FROM sandbox.iqvia_paytypeindex));

CREATE  VIEW sandbox.vw_curr_ftf_plans_paytypeindex AS
 SELECT btrim(ftf_plans_paytypeindex.ftf_health_plantype) AS btrim,
        ftf_plans_paytypeindex.paytype_index,
        ftf_plans_paytypeindex.file_id,
        ftf_plans_paytypeindex.record_id
 FROM sandbox.ftf_plans_paytypeindex
 WHERE (ftf_plans_paytypeindex.file_id IN ( SELECT max(ftf_plans_paytypeindex.file_id) AS max
 FROM sandbox.ftf_plans_paytypeindex));

CREATE  VIEW sandbox.vw_curr_ftf_paytype_paytypeindex AS
 SELECT btrim(ftf_paytype_paytypeindex.paytype_index) AS paytype_index,
        btrim(ftf_paytype_paytypeindex.paytype) AS paytype,
        ftf_paytype_paytypeindex.file_id,
        ftf_paytype_paytypeindex.record_id
 FROM sandbox.ftf_paytype_paytypeindex
 WHERE (ftf_paytype_paytypeindex.file_id IN ( SELECT max(ftf_paytype_paytypeindex.file_id) AS max
 FROM sandbox.ftf_paytype_paytypeindex));

CREATE  VIEW sandbox.vw_curr_ftf_override_provider AS
 SELECT btrim(ftf_override_provider.paytype_index) AS paytype_index,
        btrim(ftf_override_provider.provider_id) AS provider_id,
        ftf_override_provider.file_id,
        ftf_override_provider.record_id
 FROM sandbox.ftf_override_provider
 WHERE (ftf_override_provider.file_id IN ( SELECT max(ftf_override_provider.file_id) AS max
 FROM sandbox.ftf_override_provider));

CREATE  VIEW sandbox.vw_curr_ftf_override_plan AS
 SELECT btrim(ftf_override_plan.paytype_index) AS paytype_index,
        btrim(ftf_override_plan.ftf_health_planid) AS ftf_health_planid,
        ftf_override_plan.file_id,
        ftf_override_plan.record_id
 FROM sandbox.ftf_override_plan
 WHERE (ftf_override_plan.file_id IN ( SELECT max(ftf_override_plan.file_id) AS max
 FROM sandbox.ftf_override_plan));

CREATE  VIEW sandbox.vw_curr_drug_assignments AS
 SELECT drug_assignments.drug_id,
        drug_assignments.drug_seq,
        btrim(drug_assignments.product) AS product,
        drug_assignments.file_id,
        drug_assignments.record_id
 FROM sandbox.drug_assignments
 WHERE (drug_assignments.file_id IN ( SELECT max(drug_assignments.file_id) AS max
 FROM sandbox.drug_assignments));

CREATE  VIEW sandbox.vw_curr_ftf_pbm_functions AS
 SELECT ftf_pbm_functions.pbm_function_id,
        btrim(ftf_pbm_functions.pbm_function) AS pbm_function,
        btrim(ftf_pbm_functions.notes) AS notes,
        ftf_pbm_functions.file_id,
        ftf_pbm_functions.record_id
 FROM sandbox.ftf_pbm_functions
 WHERE (ftf_pbm_functions.file_id IN ( SELECT max(ftf_pbm_functions.file_id) AS max
 FROM sandbox.ftf_pbm_functions));

CREATE  VIEW sandbox.vw_curr_botox_step_restriction AS
 SELECT botox_step_restriction.code,
        btrim(botox_step_restriction.restriction_group) AS restriction_group,
        btrim(botox_step_restriction.notes) AS notes,
        botox_step_restriction.file_id,
        botox_step_restriction.record_id
 FROM sandbox.botox_step_restriction
 WHERE (botox_step_restriction.file_id IN ( SELECT max(botox_step_restriction.file_id) AS max
 FROM sandbox.botox_step_restriction));

CREATE  VIEW sandbox.vw_curr_step_restriction AS
 SELECT step_restriction.code,
        btrim(step_restriction.restriction_group) AS restriction_group,
        btrim(step_restriction.notes) AS notes,
        step_restriction.file_id,
        step_restriction.record_id
 FROM sandbox.step_restriction
 WHERE (step_restriction.file_id IN ( SELECT max(step_restriction.file_id) AS max
 FROM sandbox.step_restriction));

CREATE  VIEW sandbox.vw_curr_pa_restriction AS
 SELECT pa_restriction.code,
        btrim(pa_restriction.restriction_detail_id) AS restriction_detail_id,
        btrim(pa_restriction.notes) AS notes,
        pa_restriction.file_id,
        pa_restriction.record_id
 FROM sandbox.pa_restriction
 WHERE (pa_restriction.file_id IN ( SELECT max(pa_restriction.file_id) AS max
 FROM sandbox.pa_restriction));

CREATE  VIEW sandbox.vw_curr_patient_pa_restriction AS
 SELECT patient_pa_restriction.code,
        btrim(patient_pa_restriction.restriction_detail_id) AS restriction_detail_id,
        btrim(patient_pa_restriction.notes) AS notes,
        patient_pa_restriction.file_id,
        patient_pa_restriction.record_id
 FROM sandbox.patient_pa_restriction
 WHERE (patient_pa_restriction.file_id IN ( SELECT max(patient_pa_restriction.file_id) AS max
 FROM sandbox.patient_pa_restriction));

CREATE  VIEW sandbox.vw_curr_medical_rec_restriction AS
 SELECT medical_rec_restriction.code,
        btrim(medical_rec_restriction.restriction_detail_id) AS restriction_detail_id,
        btrim(medical_rec_restriction.notes) AS notes,
        medical_rec_restriction.file_id,
        medical_rec_restriction.record_id
 FROM sandbox.medical_rec_restriction
 WHERE (medical_rec_restriction.file_id IN ( SELECT max(medical_rec_restriction.file_id) AS max
 FROM sandbox.medical_rec_restriction));

CREATE  VIEW sandbox.vw_curr_unspecified_rec_restriction AS
 SELECT unspecified_rec_restriction.code,
        btrim(unspecified_rec_restriction.restriction_detail_id) AS restriction_detail_id,
        btrim(unspecified_rec_restriction.notes) AS notes,
        unspecified_rec_restriction.file_id,
        unspecified_rec_restriction.record_id
 FROM sandbox.unspecified_rec_restriction
 WHERE (unspecified_rec_restriction.file_id IN ( SELECT max(unspecified_rec_restriction.file_id) AS max
 FROM sandbox.unspecified_rec_restriction));

CREATE  VIEW sandbox.asi_market_access_w_test AS
SELECT A.zip, A.state, A.payer_plan_num, A.report_num, A.ims_product_group_num, A.data_month, A.nrx_001, A.nrx_002, A.nrx_003, A.nrx_004, A.nrx_005, A.nrx_006, A.nrx_007, A.nrx_008, A.nrx_009, A.nrx_010, A.nrx_011, A.nrx_012, A.nrx_013, A.nrx_014, A.nrx_015, A.nrx_016, A.nrx_017, A.nrx_018, A.nrx_019, A.nrx_020, A.nrx_021, A.nrx_022, A.nrx_023, A.nrx_024, A.trx_001, A.trx_002, A.trx_003, A.trx_004, A.trx_005, A.trx_006, A.trx_007, A.trx_008, A.trx_009, A.trx_010, A.trx_011, A.trx_012, A.trx_013, A.trx_014, A.trx_015, A.trx_016, A.trx_017, A.trx_018, A.trx_019, A.trx_020, A.trx_021, A.trx_022, A.trx_023, A.trx_024 FROM ((SELECT coalesce(d.zip, o.zip, pcd.ptr_zip) AS zip, coalesce(d.state, o.state, pcd.ptr_state, mpzd.state) AS state, rx.payer_plan_number AS payer_plan_num, CASE WHEN (length(rx.ims_report_number_cnt) = 1) THEN btrim(to_char(rx.ims_report_number_cnt, '00'::varchar(2))) ELSE rx.ims_report_number_cnt END AS report_num, rx.ims_product_group AS ims_product_group_num, to_char(rx.data_date, 'MM/YYYY'::varchar(7)) AS data_month, sum(CASE WHEN (iwb.month_bucket = 1) THEN rx.nrx_count ELSE NULL::float END) AS nrx_001, sum(CASE WHEN (iwb.month_bucket = 2) THEN rx.nrx_count ELSE NULL::float END) AS nrx_002, sum(CASE WHEN (iwb.month_bucket = 3) THEN rx.nrx_count ELSE NULL::float END) AS nrx_003, sum(CASE WHEN (iwb.month_bucket = 4) THEN rx.nrx_count ELSE NULL::float END) AS nrx_004, sum(CASE WHEN (iwb.month_bucket = 5) THEN rx.nrx_count ELSE NULL::float END) AS nrx_005, sum(CASE WHEN (iwb.month_bucket = 6) THEN rx.nrx_count ELSE NULL::float END) AS nrx_006, sum(CASE WHEN (iwb.month_bucket = 7) THEN rx.nrx_count ELSE NULL::float END) AS nrx_007, sum(CASE WHEN (iwb.month_bucket = 8) THEN rx.nrx_count ELSE NULL::float END) AS nrx_008, sum(CASE WHEN (iwb.month_bucket = 9) THEN rx.nrx_count ELSE NULL::float END) AS nrx_009, sum(CASE WHEN (iwb.month_bucket = 10) THEN rx.nrx_count ELSE NULL::float END) AS nrx_010, sum(CASE WHEN (iwb.month_bucket = 11) THEN rx.nrx_count ELSE NULL::float END) AS nrx_011, sum(CASE WHEN (iwb.month_bucket = 12) THEN rx.nrx_count ELSE NULL::float END) AS nrx_012, sum(CASE WHEN (iwb.month_bucket = 13) THEN rx.nrx_count ELSE NULL::float END) AS nrx_013, sum(CASE WHEN (iwb.month_bucket = 14) THEN rx.nrx_count ELSE NULL::float END) AS nrx_014, sum(CASE WHEN (iwb.month_bucket = 15) THEN rx.nrx_count ELSE NULL::float END) AS nrx_015, sum(CASE WHEN (iwb.month_bucket = 16) THEN rx.nrx_count ELSE NULL::float END) AS nrx_016, sum(CASE WHEN (iwb.month_bucket = 17) THEN rx.nrx_count ELSE NULL::float END) AS nrx_017, sum(CASE WHEN (iwb.month_bucket = 18) THEN rx.nrx_count ELSE NULL::float END) AS nrx_018, sum(CASE WHEN (iwb.month_bucket = 19) THEN rx.nrx_count ELSE NULL::float END) AS nrx_019, sum(CASE WHEN (iwb.month_bucket = 20) THEN rx.nrx_count ELSE NULL::float END) AS nrx_020, sum(CASE WHEN (iwb.month_bucket = 21) THEN rx.nrx_count ELSE NULL::float END) AS nrx_021, sum(CASE WHEN (iwb.month_bucket = 22) THEN rx.nrx_count ELSE NULL::float END) AS nrx_022, sum(CASE WHEN (iwb.month_bucket = 23) THEN rx.nrx_count ELSE NULL::float END) AS nrx_023, sum(CASE WHEN (iwb.month_bucket = 24) THEN rx.nrx_count ELSE NULL::float END) AS nrx_024, sum(CASE WHEN (iwb.month_bucket = 1) THEN rx.trx_count ELSE NULL::float END) AS trx_001, sum(CASE WHEN (iwb.month_bucket = 2) THEN rx.trx_count ELSE NULL::float END) AS trx_002, sum(CASE WHEN (iwb.month_bucket = 3) THEN rx.trx_count ELSE NULL::float END) AS trx_003, sum(CASE WHEN (iwb.month_bucket = 4) THEN rx.trx_count ELSE NULL::float END) AS trx_004, sum(CASE WHEN (iwb.month_bucket = 5) THEN rx.trx_count ELSE NULL::float END) AS trx_005, sum(CASE WHEN (iwb.month_bucket = 6) THEN rx.trx_count ELSE NULL::float END) AS trx_006, sum(CASE WHEN (iwb.month_bucket = 7) THEN rx.trx_count ELSE NULL::float END) AS trx_007, sum(CASE WHEN (iwb.month_bucket = 8) THEN rx.trx_count ELSE NULL::float END) AS trx_008, sum(CASE WHEN (iwb.month_bucket = 9) THEN rx.trx_count ELSE NULL::float END) AS trx_009, sum(CASE WHEN (iwb.month_bucket = 10) THEN rx.trx_count ELSE NULL::float END) AS trx_010, sum(CASE WHEN (iwb.month_bucket = 11) THEN rx.trx_count ELSE NULL::float END) AS trx_011, sum(CASE WHEN (iwb.month_bucket = 12) THEN rx.trx_count ELSE NULL::float END) AS trx_012, sum(CASE WHEN (iwb.month_bucket = 13) THEN rx.trx_count ELSE NULL::float END) AS trx_013, sum(CASE WHEN (iwb.month_bucket = 14) THEN rx.trx_count ELSE NULL::float END) AS trx_014, sum(CASE WHEN (iwb.month_bucket = 15) THEN rx.trx_count ELSE NULL::float END) AS trx_015, sum(CASE WHEN (iwb.month_bucket = 16) THEN rx.trx_count ELSE NULL::float END) AS trx_016, sum(CASE WHEN (iwb.month_bucket = 17) THEN rx.trx_count ELSE NULL::float END) AS trx_017, sum(CASE WHEN (iwb.month_bucket = 18) THEN rx.trx_count ELSE NULL::float END) AS trx_018, sum(CASE WHEN (iwb.month_bucket = 19) THEN rx.trx_count ELSE NULL::float END) AS trx_019, sum(CASE WHEN (iwb.month_bucket = 20) THEN rx.trx_count ELSE NULL::float END) AS trx_020, sum(CASE WHEN (iwb.month_bucket = 21) THEN rx.trx_count ELSE NULL::float END) AS trx_021, sum(CASE WHEN (iwb.month_bucket = 22) THEN rx.trx_count ELSE NULL::float END) AS trx_022, sum(CASE WHEN (iwb.month_bucket = 23) THEN rx.trx_count ELSE NULL::float END) AS trx_023, sum(CASE WHEN (iwb.month_bucket = 24) THEN rx.trx_count ELSE NULL::float END) AS trx_024 FROM (((((datamart.prescriber_rx rx JOIN outbound.month_rollup_and_bucket iwb ON ((rx.rollup_month = iwb.month_ending))) LEFT JOIN (SELECT market_presc_zip_divisor.ims_id, market_presc_zip_divisor.ims_client_number, market_presc_zip_divisor.ims_report_number, market_presc_zip_divisor.state FROM outbound.market_presc_zip_divisor GROUP BY market_presc_zip_divisor.ims_id, market_presc_zip_divisor.ims_client_number, market_presc_zip_divisor.ims_report_number, market_presc_zip_divisor.state) mpzd ON (((rx.ims_id = mpzd.ims_id) AND (rx.ims_client_number = mpzd.ims_client_number) AND (rx.ims_report_number_cnt = mpzd.ims_report_number)))) LEFT JOIN (SELECT hcp_demo.tvcmid, hcp_demo.state_code AS state, hcp_demo.zip FROM datamart.customer_hcp_demographics hcp_demo WHERE (hcp_demo.file_id = (SELECT max(customer_hcp_demographics.file_id) AS MAX FROM datamart.customer_hcp_demographics))) d ON ((rx.tvcmid = d.tvcmid))) LEFT JOIN (SELECT hco_demo.tvcmid, hco_demo.state_code AS state, hco_demo.zip FROM datamart.customer_hco_demographics hco_demo WHERE (hco_demo.file_id = (SELECT max(customer_hco_demographics.file_id) AS MAX FROM datamart.customer_hco_demographics))) o ON ((rx.tvcmid = o.tvcmid))) LEFT JOIN (SELECT rnk.ims_id, rnk.ptr_state, rnk.ptr_zip FROM (SELECT DISTINCT prescriber_combined_demographics.ims_id, prescriber_combined_demographics.ptr_state, prescriber_combined_demographics.ptr_zip, prescriber_combined_demographics.ptr_address_source, row_number() OVER (PARTITION BY prescriber_combined_demographics.ims_id ORDER BY prescriber_combined_demographics.ptr_address_source) AS rnk FROM datamart.prescriber_combined_demographics ORDER BY prescriber_combined_demographics.ims_id, prescriber_combined_demographics.ptr_state, prescriber_combined_demographics.ptr_zip, prescriber_combined_demographics.ptr_address_source, row_number() OVER (PARTITION BY prescriber_combined_demographics.ims_id ORDER BY prescriber_combined_demographics.ptr_address_source)) rnk WHERE (rnk.rnk = 1)) pcd ON ((pcd.ims_id = rx.ims_id))) WHERE ((rx.basket_type = 'product'::varchar(7)) AND (rx.ims_report_number_cnt = ANY (ARRAY['1'::varchar(1), '2'::varchar(1), '3'::varchar(1), '4'::varchar(1), '5'::varchar(1), '6'::varchar(1), '68'::varchar(2)])) AND (rx.report_frequency = 'SPLITWEEK'::varchar(9))) GROUP BY coalesce(d.zip, o.zip, pcd.ptr_zip), coalesce(d.state, o.state, pcd.ptr_state, mpzd.state), rx.payer_plan_number, CASE WHEN (length(rx.ims_report_number_cnt) = 1) THEN btrim(to_char(rx.ims_report_number_cnt, '00'::varchar(2))) ELSE rx.ims_report_number_cnt END, rx.ims_product_group, to_char(rx.data_date, 'MM/YYYY'::varchar(7)) UNION ALL SELECT CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END AS ship_to_zip, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END AS payer_plan_num, '55'::varchar(2) AS report_num, pg.ims_product_group AS ims_product_group_num, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x) AS data_month, NULL::float AS nrx_001, NULL::float AS nrx_002, NULL::float AS nrx_003, NULL::float AS nrx_004, NULL::float AS nrx_005, NULL::float AS nrx_006, NULL::float AS nrx_007, NULL::float AS nrx_008, NULL::float AS nrx_009, NULL::float AS nrx_010, NULL::float AS nrx_011, NULL::float AS nrx_012, NULL::float AS nrx_013, NULL::float AS nrx_014, NULL::float AS nrx_015, NULL::float AS nrx_016, NULL::float AS nrx_017, NULL::float AS nrx_018, NULL::float AS nrx_019, NULL::float AS nrx_020, NULL::float AS nrx_021, NULL::float AS nrx_022, NULL::float AS nrx_023, NULL::float AS nrx_024, sum(CASE WHEN (mth.month_bucket = 1) THEN sp.trx_cnt ELSE NULL::float END) AS trx_001, sum(CASE WHEN (mth.month_bucket = 2) THEN sp.trx_cnt ELSE NULL::float END) AS trx_002, sum(CASE WHEN (mth.month_bucket = 3) THEN sp.trx_cnt ELSE NULL::float END) AS trx_003, sum(CASE WHEN (mth.month_bucket = 4) THEN sp.trx_cnt ELSE NULL::float END) AS trx_004, sum(CASE WHEN (mth.month_bucket = 5) THEN sp.trx_cnt ELSE NULL::float END) AS trx_005, sum(CASE WHEN (mth.month_bucket = 6) THEN sp.trx_cnt ELSE NULL::float END) AS trx_006, sum(CASE WHEN (mth.month_bucket = 7) THEN sp.trx_cnt ELSE NULL::float END) AS trx_007, sum(CASE WHEN (mth.month_bucket = 8) THEN sp.trx_cnt ELSE NULL::float END) AS trx_008, sum(CASE WHEN (mth.month_bucket = 9) THEN sp.trx_cnt ELSE NULL::float END) AS trx_009, sum(CASE WHEN (mth.month_bucket = 10) THEN sp.trx_cnt ELSE NULL::float END) AS trx_010, sum(CASE WHEN (mth.month_bucket = 11) THEN sp.trx_cnt ELSE NULL::float END) AS trx_011, sum(CASE WHEN (mth.month_bucket = 12) THEN sp.trx_cnt ELSE NULL::float END) AS trx_012, sum(CASE WHEN (mth.month_bucket = 13) THEN sp.trx_cnt ELSE NULL::float END) AS trx_013, sum(CASE WHEN (mth.month_bucket = 14) THEN sp.trx_cnt ELSE NULL::float END) AS trx_014, sum(CASE WHEN (mth.month_bucket = 15) THEN sp.trx_cnt ELSE NULL::float END) AS trx_015, sum(CASE WHEN (mth.month_bucket = 16) THEN sp.trx_cnt ELSE NULL::float END) AS trx_016, sum(CASE WHEN (mth.month_bucket = 17) THEN sp.trx_cnt ELSE NULL::float END) AS trx_017, sum(CASE WHEN (mth.month_bucket = 18) THEN sp.trx_cnt ELSE NULL::float END) AS trx_018, sum(CASE WHEN (mth.month_bucket = 19) THEN sp.trx_cnt ELSE NULL::float END) AS trx_019, sum(CASE WHEN (mth.month_bucket = 20) THEN sp.trx_cnt ELSE NULL::float END) AS trx_020, sum(CASE WHEN (mth.month_bucket = 21) THEN sp.trx_cnt ELSE NULL::float END) AS trx_021, sum(CASE WHEN (mth.month_bucket = 22) THEN sp.trx_cnt ELSE NULL::float END) AS trx_022, sum(CASE WHEN (mth.month_bucket = 23) THEN sp.trx_cnt ELSE NULL::float END) AS trx_023, sum(CASE WHEN (mth.month_bucket = 24) THEN sp.trx_cnt ELSE NULL::float END) AS trx_024 FROM ((datamart.specialty_pharmacy_shipment sp JOIN (SELECT month_rollup_and_bucket.month_ending, month_rollup_and_bucket.month_bucket FROM outbound.month_rollup_and_bucket) mth ON ((last_day(sp.ship_date) = mth.month_ending))) JOIN (SELECT asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source FROM reference.asi_outbound_ims_product_group_mapping WHERE (asi_outbound_ims_product_group_mapping.market_name = 'MS MARKET'::varchar(9)) GROUP BY asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source) pg ON (((pg.basket_id = sp.basket_id) AND (pg.data_source = sp.specialty_pharmacy_data_source)))) WHERE ((sp.specialty_pharmacy_data_source = ANY (ARRAY['Prime Therapeutics'::varchar(18), 'Prime Therapeutics'::varchar(18)])) AND (sp.ims_id IS NOT NULL)) GROUP BY CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END, pg.ims_product_group, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x)) UNION ALL SELECT CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END AS ship_to_zip, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END AS payer_plan_num, '55'::varchar(2) AS report_num, pg.ims_product_group AS ims_product_group_num, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x) AS data_month, NULL::float AS nrx_001, NULL::float AS nrx_002, NULL::float AS nrx_003, NULL::float AS nrx_004, NULL::float AS nrx_005, NULL::float AS nrx_006, NULL::float AS nrx_007, NULL::float AS nrx_008, NULL::float AS nrx_009, NULL::float AS nrx_010, NULL::float AS nrx_011, NULL::float AS nrx_012, NULL::float AS nrx_013, NULL::float AS nrx_014, NULL::float AS nrx_015, NULL::float AS nrx_016, NULL::float AS nrx_017, NULL::float AS nrx_018, NULL::float AS nrx_019, NULL::float AS nrx_020, NULL::float AS nrx_021, NULL::float AS nrx_022, NULL::float AS nrx_023, NULL::float AS nrx_024, sum(CASE WHEN (mth.month_bucket = 1) THEN sp.trx_cnt ELSE NULL::float END) AS trx_001, sum(CASE WHEN (mth.month_bucket = 2) THEN sp.trx_cnt ELSE NULL::float END) AS trx_002, sum(CASE WHEN (mth.month_bucket = 3) THEN sp.trx_cnt ELSE NULL::float END) AS trx_003, sum(CASE WHEN (mth.month_bucket = 4) THEN sp.trx_cnt ELSE NULL::float END) AS trx_004, sum(CASE WHEN (mth.month_bucket = 5) THEN sp.trx_cnt ELSE NULL::float END) AS trx_005, sum(CASE WHEN (mth.month_bucket = 6) THEN sp.trx_cnt ELSE NULL::float END) AS trx_006, sum(CASE WHEN (mth.month_bucket = 7) THEN sp.trx_cnt ELSE NULL::float END) AS trx_007, sum(CASE WHEN (mth.month_bucket = 8) THEN sp.trx_cnt ELSE NULL::float END) AS trx_008, sum(CASE WHEN (mth.month_bucket = 9) THEN sp.trx_cnt ELSE NULL::float END) AS trx_009, sum(CASE WHEN (mth.month_bucket = 10) THEN sp.trx_cnt ELSE NULL::float END) AS trx_010, sum(CASE WHEN (mth.month_bucket = 11) THEN sp.trx_cnt ELSE NULL::float END) AS trx_011, sum(CASE WHEN (mth.month_bucket = 12) THEN sp.trx_cnt ELSE NULL::float END) AS trx_012, sum(CASE WHEN (mth.month_bucket = 13) THEN sp.trx_cnt ELSE NULL::float END) AS trx_013, sum(CASE WHEN (mth.month_bucket = 14) THEN sp.trx_cnt ELSE NULL::float END) AS trx_014, sum(CASE WHEN (mth.month_bucket = 15) THEN sp.trx_cnt ELSE NULL::float END) AS trx_015, sum(CASE WHEN (mth.month_bucket = 16) THEN sp.trx_cnt ELSE NULL::float END) AS trx_016, sum(CASE WHEN (mth.month_bucket = 17) THEN sp.trx_cnt ELSE NULL::float END) AS trx_017, sum(CASE WHEN (mth.month_bucket = 18) THEN sp.trx_cnt ELSE NULL::float END) AS trx_018, sum(CASE WHEN (mth.month_bucket = 19) THEN sp.trx_cnt ELSE NULL::float END) AS trx_019, sum(CASE WHEN (mth.month_bucket = 20) THEN sp.trx_cnt ELSE NULL::float END) AS trx_020, sum(CASE WHEN (mth.month_bucket = 21) THEN sp.trx_cnt ELSE NULL::float END) AS trx_021, sum(CASE WHEN (mth.month_bucket = 22) THEN sp.trx_cnt ELSE NULL::float END) AS trx_022, sum(CASE WHEN (mth.month_bucket = 23) THEN sp.trx_cnt ELSE NULL::float END) AS trx_023, sum(CASE WHEN (mth.month_bucket = 24) THEN sp.trx_cnt ELSE NULL::float END) AS trx_024 FROM ((datamart.specialty_pharmacy_shipment sp JOIN (SELECT month_rollup_and_bucket.month_ending, month_rollup_and_bucket.month_bucket FROM outbound.month_rollup_and_bucket) mth ON ((add_months(last_day(sp.ship_date), 1) = mth.month_ending))) JOIN (SELECT asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source FROM reference.asi_outbound_ims_product_group_mapping WHERE (asi_outbound_ims_product_group_mapping.market_name = 'MS MARKET'::varchar(9)) GROUP BY asi_outbound_ims_product_group_mapping.basket_id, asi_outbound_ims_product_group_mapping.market_name, asi_outbound_ims_product_group_mapping.ims_product_group, asi_outbound_ims_product_group_mapping.data_source) pg ON (((pg.basket_id = sp.basket_id) AND (pg.data_source = sp.specialty_pharmacy_data_source)))) WHERE ((sp.specialty_pharmacy_data_source = ANY (ARRAY['OptumRx'::varchar(7), 'OptumRx'::varchar(7)])) AND (sp.ims_id IS NOT NULL)) GROUP BY CASE WHEN (sp.ship_to_zip IS NULL) THEN '00000'::varchar(5) ELSE sp.ship_to_zip END, sp.ship_to_state, CASE WHEN (pg.market_name = 'MS MARKET'::varchar(9)) THEN CASE WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id <> 572)) THEN 'I3'::varchar(2) WHEN ((sp.specialty_pharmacy_data_source = 'OptumRx'::varchar(7)) AND (sp.basket_id = 572)) THEN 'I3TYS'::varchar(5) WHEN (sp.specialty_pharmacy_data_source = 'Prime Therapeutics'::varchar(18)) THEN 'PRIME'::varchar(5) ELSE NULL END ELSE NULL END, pg.ims_product_group, (SELECT to_char(x.month_ending, 'MM/YYYY'::varchar(7)) AS TO_CHAR FROM (SELECT max(month_rollup_and_bucket.month_ending) AS month_ending FROM outbound.month_rollup_and_bucket) x)) A;

CREATE  VIEW sandbox.vw_concur_hcp_delta_0928 AS
 SELECT concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar) AS cust_id,
        NULL AS organization_name,
        'HCP'::varchar(3) AS contact_type,
        initcap(hcp.first_name) AS first_name,
        initcap(hcp.middle_name) AS middle_name,
        initcap(hcp.last_name) AS last_name,
        hcp.suffix,
        npi.npi,
        addr.address_line_1,
        addr.address_line_2,
        addr.city,
        addr.state,
        addr.zipcode,
        sln.license_number AS sln,
        sln.state AS sln_state,
        dea.dea_number AS dea,
        NULL AS affiliation,
        CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END AS credential,
        hcp.healthcare_professional_status_code,
        date((statement_timestamp())::timestamp) AS create_date
 FROM (((((( SELECT hcp.TVCMID AS tvcmid,
        hcp.FIRST_NAME AS first_name,
        hcp.MIDDLE_NAME AS middle_name,
        hcp.LAST_NAME AS last_name,
        hcp.SUFFIX AS suffix,
        hcp.HEALTHCARE_PROFESSIONAL_STATUS_CODE AS healthcare_professional_status_code,
        hcp.TEVA_SPECIALTY_CODE AS teva_specialty_code
 FROM (raw.mdm_hcp hcp JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_hcp.file_id
 FROM raw.mdm_hcp
 GROUP BY mdm_hcp.file_id) a) hcp_file ON (((hcp.file_id = hcp_file.file_id) AND (hcp_file.file_rank = 1))))) hcp JOIN ( SELECT ad.TVCMID AS tvcmid,
        ad.ADDRESS_ID AS address_id,
        ad.ADDRESS_STATUS AS address_status,
        ad.ADDRESS_TYPE AS address_type,
        initcap(ad.ADDRESS_LINE_1) AS address_line_1,
        initcap(ad.ADDRESS_LINE_2) AS address_line_2,
        initcap(ad.CITY) AS city,
        ad.STATE AS state,
        ad.ZIP5_POSTAL_CODE AS zipcode,
        rank() OVER (PARTITION BY ad.TVCMID ORDER BY ad.PRACTICE_LOCATION_RANK DESC, ad.record_id) AS addr_rank
 FROM (raw.mdm_address ad JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_address.file_id
 FROM raw.mdm_address
 GROUP BY mdm_address.file_id) a) addr_file ON (((ad.file_id = addr_file.file_id) AND (ad.ADDRESS_STATUS = 'A'::varchar(1)) AND (ad.SINGLE_ADDRESS_INDICATOR = 'Y'::varchar(1)) AND (addr_file.file_rank = 1))))) addr ON (((hcp.tvcmid = addr.tvcmid) AND (addr.addr_rank = 1)))) JOIN ( SELECT p.TVCMID AS tvcmid,
        d.profession_code_shortname,
        rank() OVER (PARTITION BY p.TVCMID ORDER BY p.CREATED_DATE DESC) AS rnk
 FROM (raw.mdm_professional p JOIN reference.Designations d ON (((p.PROFESSION_CODE = d.profession_code) AND (p.PROFESSION_RANK = 1::float) AND (p.STATUS = 'A'::varchar(1)))))) prof ON (((hcp.tvcmid = prof.tvcmid) AND (prof.rnk = 1)))) LEFT  JOIN ( SELECT mdm_dea_address.TVCMID AS tvcmid,
        mdm_dea_address.DEA_NUMBER AS dea_number,
        mdm_dea_address.ADDRESS_ID AS address_id,
        rank() OVER (PARTITION BY mdm_dea_address.TVCMID, mdm_dea_address.ADDRESS_ID ORDER BY mdm_dea_address.DEA_EXPIRATION_DATE DESC, mdm_dea_address.UPDATED_DATE DESC, mdm_dea_address.record_id) AS rnk
 FROM raw.mdm_dea_address
 WHERE (mdm_dea_address.DEA_STATUS_CODE = 'A'::varchar(1))) dea ON (((addr.address_id = dea.address_id) AND (addr.tvcmid = dea.tvcmid) AND (dea.rnk = 1)))) LEFT  JOIN ( SELECT npi.tvcmid,
        npi.npi
 FROM (( SELECT mdm_alternate_id.file_id,
        mdm_alternate_id.TVCMID AS tvcmid,
        max(mdm_alternate_id.ALTERNATE_ID_VALUE) AS npi
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id,
          mdm_alternate_id.TVCMID) npi JOIN ( SELECT b.file_id,
        rank() OVER (ORDER BY b.file_id DESC) AS file_rank
 FROM ( SELECT mdm_alternate_id.file_id
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id) b) npi2 ON (((npi.file_id = npi2.file_id) AND (npi2.file_rank = 1))))) npi ON ((hcp.tvcmid = npi.tvcmid))) LEFT  JOIN ( SELECT sln.TVCMID AS tvcmid,
        sln.AUTHORIZATION_NUMBER AS license_number,
        sln.STATE AS state,
        rank() OVER (PARTITION BY sln.TVCMID, sln.STATE ORDER BY sln.LICENSE_TYPE_PRIVILEGE_RANK, sln.LICENSE_EXPIRATION_DATE DESC, sln.LICENSE_EFFECTIVE_DATE DESC, sln.UPDATED_DATE DESC, sln.record_id) AS rnk
 FROM raw.mdm_license sln
 WHERE (sln.LICENSE_STATUS_CODE = 'A'::varchar(1))) sln ON (((hcp.tvcmid = sln.tvcmid) AND (addr.state = sln.state) AND (sln.rnk = 1))))
 GROUP BY concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar),
          NULL,
          'HCP'::varchar(3),
          initcap(hcp.first_name),
          initcap(hcp.middle_name),
          initcap(hcp.last_name),
          hcp.suffix,
          npi.npi,
          addr.address_line_1,
          addr.address_line_2,
          addr.city,
          addr.state,
          addr.zipcode,
          sln.license_number,
          sln.state,
          dea.dea_number,
          CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END,
          hcp.healthcare_professional_status_code,
          date((statement_timestamp())::timestamp) EXCEPT  SELECT concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar) AS cust_id,
        NULL AS organization_name,
        'HCP'::varchar(3) AS contact_type,
        initcap(hcp.first_name) AS first_name,
        initcap(hcp.middle_name) AS middle_name,
        initcap(hcp.last_name) AS last_name,
        hcp.suffix,
        npi.npi,
        addr.address_line_1,
        addr.address_line_2,
        addr.city,
        addr.state,
        addr.zipcode,
        sln.license_number AS sln,
        sln.state AS sln_state,
        dea.dea_number AS dea,
        NULL AS affiliation,
        CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END AS credential,
        hcp.healthcare_professional_status_code,
        date((statement_timestamp())::timestamp) AS create_date
 FROM (((((( SELECT hcp.TVCMID AS tvcmid,
        hcp.FIRST_NAME AS first_name,
        hcp.MIDDLE_NAME AS middle_name,
        hcp.LAST_NAME AS last_name,
        hcp.SUFFIX AS suffix,
        hcp.HEALTHCARE_PROFESSIONAL_STATUS_CODE AS healthcare_professional_status_code,
        hcp.TEVA_SPECIALTY_CODE AS teva_specialty_code
 FROM (raw.mdm_hcp hcp JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_hcp.file_id
 FROM raw.mdm_hcp
 GROUP BY mdm_hcp.file_id) a) hcp_file ON (((hcp.file_id = hcp_file.file_id) AND (hcp_file.file_rank = 2))))) hcp JOIN ( SELECT ad.TVCMID AS tvcmid,
        ad.ADDRESS_ID AS address_id,
        ad.ADDRESS_STATUS AS address_status,
        ad.ADDRESS_TYPE AS address_type,
        initcap(ad.ADDRESS_LINE_1) AS address_line_1,
        initcap(ad.ADDRESS_LINE_2) AS address_line_2,
        initcap(ad.CITY) AS city,
        ad.STATE AS state,
        ad.ZIP5_POSTAL_CODE AS zipcode,
        rank() OVER (PARTITION BY ad.TVCMID ORDER BY ad.PRACTICE_LOCATION_RANK DESC, ad.record_id) AS addr_rank
 FROM (raw.mdm_address ad JOIN ( SELECT a.file_id,
        rank() OVER (ORDER BY a.file_id DESC) AS file_rank
 FROM ( SELECT mdm_address.file_id
 FROM raw.mdm_address
 GROUP BY mdm_address.file_id) a) addr_file ON (((ad.file_id = addr_file.file_id) AND (ad.ADDRESS_STATUS = 'A'::varchar(1)) AND (ad.SINGLE_ADDRESS_INDICATOR = 'Y'::varchar(1)) AND (addr_file.file_rank = 2))))) addr ON (((hcp.tvcmid = addr.tvcmid) AND (addr.addr_rank = 1)))) JOIN ( SELECT p.TVCMID AS tvcmid,
        d.profession_code_shortname,
        rank() OVER (PARTITION BY p.TVCMID ORDER BY p.CREATED_DATE DESC) AS rnk
 FROM (raw.mdm_professional p JOIN reference.Designations d ON (((p.PROFESSION_CODE = d.profession_code) AND (p.PROFESSION_RANK = 1::float) AND (p.STATUS = 'A'::varchar(1)))))) prof ON (((hcp.tvcmid = prof.tvcmid) AND (prof.rnk = 1)))) LEFT  JOIN ( SELECT mdm_dea_address.TVCMID AS tvcmid,
        mdm_dea_address.DEA_NUMBER AS dea_number,
        mdm_dea_address.ADDRESS_ID AS address_id,
        rank() OVER (PARTITION BY mdm_dea_address.TVCMID, mdm_dea_address.ADDRESS_ID ORDER BY mdm_dea_address.DEA_EXPIRATION_DATE DESC, mdm_dea_address.UPDATED_DATE DESC, mdm_dea_address.record_id) AS rnk
 FROM raw.mdm_dea_address
 WHERE (mdm_dea_address.DEA_STATUS_CODE = 'A'::varchar(1))) dea ON (((addr.address_id = dea.address_id) AND (addr.tvcmid = dea.tvcmid) AND (dea.rnk = 1)))) LEFT  JOIN ( SELECT npi.tvcmid,
        npi.npi
 FROM (( SELECT mdm_alternate_id.file_id,
        mdm_alternate_id.TVCMID AS tvcmid,
        max(mdm_alternate_id.ALTERNATE_ID_VALUE) AS npi
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id,
          mdm_alternate_id.TVCMID) npi JOIN ( SELECT b.file_id,
        rank() OVER (ORDER BY b.file_id DESC) AS file_rank
 FROM ( SELECT mdm_alternate_id.file_id
 FROM raw.mdm_alternate_id
 WHERE ((mdm_alternate_id.ALTERNATE_ID_TYPE = 'NPI'::varchar(3)) AND (mdm_alternate_id.STATUS = 'A'::varchar(1)))
 GROUP BY mdm_alternate_id.file_id) b) npi2 ON (((npi.file_id = npi2.file_id) AND (npi2.file_rank = 2))))) npi ON ((hcp.tvcmid = npi.tvcmid))) LEFT  JOIN ( SELECT sln.TVCMID AS tvcmid,
        sln.AUTHORIZATION_NUMBER AS license_number,
        sln.STATE AS state,
        rank() OVER (PARTITION BY sln.TVCMID, sln.STATE ORDER BY sln.LICENSE_TYPE_PRIVILEGE_RANK, sln.LICENSE_EXPIRATION_DATE DESC, sln.LICENSE_EFFECTIVE_DATE DESC, sln.UPDATED_DATE DESC, sln.record_id) AS rnk
 FROM raw.mdm_license sln
 WHERE (sln.LICENSE_STATUS_CODE = 'A'::varchar(1))) sln ON (((hcp.tvcmid = sln.tvcmid) AND (addr.state = sln.state) AND (sln.rnk = 1))))
 GROUP BY concat('H'::varchar(1), (trunc(hcp.tvcmid))::varchar),
          NULL,
          'HCP'::varchar(3),
          initcap(hcp.first_name),
          initcap(hcp.middle_name),
          initcap(hcp.last_name),
          hcp.suffix,
          npi.npi,
          addr.address_line_1,
          addr.address_line_2,
          addr.city,
          addr.state,
          addr.zipcode,
          sln.license_number,
          sln.state,
          dea.dea_number,
          CASE WHEN ((prof.profession_code_shortname = 'RN'::varchar(2)) AND (hcp.teva_specialty_code = ANY (ARRAY['NRP'::varchar(3), 'CNA'::varchar(3), 'ARN'::varchar(3), 'CNM'::varchar(3), 'CNS'::varchar(3), 'PHA'::varchar(3)]))) THEN hcp.teva_specialty_code ELSE prof.profession_code_shortname END,
          hcp.healthcare_professional_status_code,
          date((statement_timestamp())::timestamp);