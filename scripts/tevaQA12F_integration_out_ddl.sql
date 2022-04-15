CREATE SCHEMA integration;


CREATE TABLE integration.rems_pharmacy
(
    source_name varchar(255),
    program_id varchar(10),
    program_name varchar(48),
    channel varchar(20),
    enrollment_id varchar(20),
    pharmacy_type varchar(20),
    pharmacy_name varchar(200),
    address_line_1 varchar(40),
    address_line_2 varchar(40),
    city varchar(40),
    state_code varchar(2),
    zip varchar(5),
    first_name varchar(36),
    middle_name varchar(36),
    last_name varchar(40),
    status varchar(60),
    in_progress_step varchar(40),
    phone varchar(10),
    effective_date date,
    expiration_date date,
    ncpdp varchar(20),
    npi varchar(10),
    dea_number varchar(20),
    license_number varchar(20),
    obsolescence_date date,
    file_id int,
    record_id int,
    obsolescence_reason varchar(64),
    last_build_date date
);


CREATE TABLE integration.territory_ram_to_state
(
    source_name varchar(255),
    mm_ram varchar(40),
    state_code varchar(8),
    file_id int,
    record_id int
);


CREATE TABLE integration.territory_zip
(
    source_name varchar(255),
    zip_code varchar(5),
    city varchar(50),
    state_code varchar(2),
    territory_number varchar(8),
    territory_name varchar(50),
    area_name varchar(50),
    region_name varchar(50),
    sales_force_id varchar(5),
    organization_code varchar(200),
    mirror_flag varchar(64),
    mirror_territory_number varchar(8),
    file_id int,
    record_id int
);


CREATE TABLE integration.plan_xref
(
    source_name varchar(255),
    payer_number varchar(6),
    payer_name varchar(100),
    plan_number varchar(4),
    payer_plan_number varchar(10),
    plan_name varchar(100),
    model varchar(10),
    city varchar(30),
    hq_state varchar(2),
    operating_state varchar(2),
    months_with_data varchar(4),
    file_id int,
    record_id int
);


CREATE TABLE integration.pbm_xref
(
    source_name varchar(255),
    pbm_name varchar(100),
    payer_plan_number varchar(10),
    xref_to_payer_plan_number varchar(10),
    plan_name varchar(100),
    pbm_number varchar(6),
    ims_processor_number varchar(10),
    file_id int,
    record_id int
);


CREATE TABLE integration.ims_product_list
(
    source_name varchar(255),
    file_code varchar(8),
    product_group varchar(8),
    product_name varchar(100),
    mfg_number varchar(10),
    status varchar(10),
    cmf_code varchar(20),
    product_description varchar(255),
    mfg_name varchar(100),
    usc_code varchar(10),
    file_id int,
    record_id int
);


CREATE TABLE integration.event_speaker
(
    source_system_name varchar(100),
    event_number varchar(100),
    event_speaker_status varchar(100),
    speaker_id varchar(100),
    product_id varchar(100),
    topic_id varchar(100),
    cancellation_reason varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.speaker_contract
(
    source_system_name varchar(100),
    speaker_id varchar(100),
    contract_type_code varchar(100),
    contract_type_name varchar(100),
    contract_effective_date varchar(100),
    contract_expiration_date varchar(100),
    contract_signed_date varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.speaker_profile
(
    source_system_name varchar(100),
    speaker_id varchar(100),
    first_name varchar(100),
    last_name varchar(100),
    middle_name varchar(100),
    title varchar(100),
    address_line_1 varchar(100),
    address_line_2 varchar(100),
    address_line_3 varchar(100),
    address_line_4 varchar(100),
    city varchar(100),
    state_province varchar(100),
    postal_code varchar(100),
    postal_extended_code varchar(100),
    country_code varchar(100),
    business_phone varchar(100),
    business_phone_extension varchar(100),
    home_phone varchar(100),
    mobile_phone varchar(100),
    business_fax varchar(100),
    home_fax varchar(100),
    email varchar(100),
    specialty varchar(100),
    personal_suffix varchar(100),
    degree varchar(100),
    me_number varchar(100),
    ims_number varchar(100),
    dea_number varchar(100),
    npi_number varchar(10),
    clinical_affiliation varchar(100),
    clinical_title varchar(100),
    academic_affiliation varchar(100),
    other_affiliation varchar(100),
    federal_employee_indicator varchar(100),
    state_employee_indicator varchar(100),
    local_employee_indicator varchar(100),
    fda_debarment_indicator varchar(100),
    ofac_debarment_indicator varchar(100),
    oig_exclusion_indicator varchar(100),
    speaker_biography varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.call_plan
(
    source_name varchar(255),
    veeva_account_id varchar(18),
    ims_id varchar(10),
    first_name varchar(50),
    last_name varchar(50),
    specialty varchar(100),
    territory_number varchar(8),
    address varchar(150),
    city varchar(100),
    state varchar(2),
    zip varchar(10),
    product_name varchar(50),
    p1 int,
    p2 int,
    p3 int,
    target varchar(50),
    sales_force_id varchar(5),
    period varchar(20),
    file_id int,
    record_id int,
    tvcmid int
);


CREATE TABLE integration.ddd_md
(
    source_name varchar(255),
    client_number varchar(3),
    report_number varchar(2),
    territory_number varchar(8),
    ims_outlet_code varchar(10),
    subcategory_code varchar(10),
    alt_seq_number varchar(10),
    category_code varchar(2),
    ims_product_code varchar(9),
    data_date date,
    dollars numeric(37,15),
    quantity numeric(37,15),
    bucket_date date,
    bucket_type varchar(10),
    outlet_name varchar(30),
    outlet_address varchar(30),
    outlet_city varchar(25),
    outlet_state varchar(2),
    outlet_zip varchar(5),
    file_id int,
    record_id int,
    tvcmid_outlet int
);


CREATE TABLE integration.copay_detail_weekly
(
    source_name varchar(255),
    trans_type varchar(1),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_number varchar(50),
    rx_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(15),
    daw int,
    drug_name varchar(50),
    drug_description varchar(50),
    new_refill int,
    quantity numeric(37,15),
    refills int,
    other_coverage_code varchar(64),
    group_number varchar(50),
    coupon_number varchar(20),
    sex varchar(1),
    age_at_redemption int,
    pharmacy_process_date date,
    pharmacy_chain_number varchar(15),
    nabp varchar(15),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_phone varchar(25),
    pharmacy_npi_number varchar(10),
    principle_phys_dea_number varchar(20),
    phys_npi varchar(10),
    physician_name varchar(100),
    asi_phys_address1 varchar(100),
    asi_phys_address2 varchar(100),
    asi_phys_city varchar(50),
    asi_phys_state varchar(2),
    asi_phys_zip varchar(15),
    rebate_amount numeric(18,4),
    member_cash_expense numeric(18,4),
    submitted_cost numeric(18,4),
    pharmacy_fee numeric(18,4),
    total_amount_due numeric(18,4),
    calc_awp numeric(18,4),
    create_date date,
    occ_payment_type varchar(10),
    file_id int,
    record_id int,
    tvcmid_physician int,
    tvcmid_pharmacy int,
    auth_refills int,
    admin_hcp_npi varchar(10),
    admin_hcp_name varchar(100),
    admin_hcp_address varchar(100),
    admin_hcp_address2 varchar(100),
    admin_hcp_city varchar(50),
    admin_hcp_state varchar(2),
    claim_type varchar(50),
    administration_flag char(1),
    soc_name varchar(60),
    soc_address varchar(100),
    soc_city varchar(50),
    soc_state varchar(2),
    soc_id varchar(50),
    soc_npi varchar(10),
    payer_name varchar(60),
    cpt_code varchar(10),
    previous_payer_id int,
    member_id varchar(20),
    benefit_amount numeric(9,2),
    patient_expense numeric(9,2),
    submission_method varchar(1),
    redemption_type varchar(10),
    report_frequency varchar(20),
    admin_hcp_zip varchar(10),
    soc_phone varchar(10),
    soc_fax varchar(10),
    soc_zip varchar(10),
    basket_id int,
    basket_name varchar(300),
    tvcmid_from_npi int,
    tvcmid_from_dea int,
    tvcmid_from_pharmacy_npi int,
    ims_id_from_npi varchar(10),
    ims_id_from_dea varchar(10),
    veeva_account_id_from_npi varchar(20),
    veeva_account_id_from_dea varchar(20),
    patient_type varchar(100),
    primary_bin varchar(100),
    primary_bin_description varchar(100),
    reject_code varchar(100)
);


CREATE TABLE integration.roster_address
(
    source_name varchar(255),
    address_id varchar(64),
    line_1 varchar(50),
    line_2 varchar(50),
    line_3 varchar(50),
    city varchar(50),
    state_abbr varchar(2),
    postal_code varchar(20),
    country_iso_abbr varchar(2),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_associate
(
    source_name varchar(255),
    teva_id varchar(7),
    hr_id varchar(15),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date,
    hire_date date,
    logon_id varchar(15),
    reports_to varchar(7),
    stat_code varchar(2),
    type_code varchar(1),
    full_time varchar(1),
    eeo_cat varchar(10),
    exempt varchar(1),
    expense_cost_ctr varchar(10),
    hours_per_week float,
    marital_stat varchar(1),
    race varchar(50),
    email varchar(255),
    birth_date date,
    country_id varchar(3),
    default_currency_id varchar(50),
    territory_id varchar(15),
    office varchar(6),
    person_sys_id varchar(64),
    language varchar(2),
    "position" varchar(50),
    term_date date,
    last_wrk_date date,
    auth_limit varchar(64),
    vehicle varchar(11),
    vacation_days varchar(64),
    check_req_limit varchar(64),
    expense_report_approver varchar(7),
    location_code varchar(10),
    pay_code varchar(3),
    ed_code varchar(2),
    ed_code_date date,
    job_code varchar(6),
    country_citizenship varchar(3),
    disabled varchar(1),
    vietnam_vet varchar(1),
    emergency_contact_name varchar(50),
    emergency_contact_relationship varchar(20),
    emergency_contact_phone varchar(50),
    adp_dept_num varchar(10),
    vacation_year varchar(64),
    fin_auth_comments varchar(255),
    eeo_cat_hr_updt varchar(10),
    expense_reporting varchar(1),
    company_id varchar(10),
    check_request_approver varchar(7),
    invoice_approver varchar(7),
    phantom_indicator varchar(1),
    payroll_cost_ctr varchar(30),
    sample_auth varchar(1),
    oracle_string varchar(25),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_associate_audit
(
    source_name varchar(255),
    teva_id varchar(7),
    hr_id varchar(15),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date,
    hire_date date,
    logon_id varchar(15),
    reports_to varchar(7),
    status_code varchar(2),
    type_code varchar(1),
    full_time varchar(1),
    eeo_cat varchar(10),
    exempt varchar(1),
    expense_cost_ctr varchar(10),
    hours_per_week float,
    marital_status varchar(1),
    race varchar(50),
    email varchar(255),
    birth_date date,
    country_id varchar(3),
    default_currency_id varchar(50),
    territory_id varchar(15),
    office varchar(6),
    person_sys_id varchar(64),
    language varchar(2),
    "position" varchar(50),
    term_date date,
    last_work_date date,
    auth_limit numeric(18,4),
    vehicle varchar(11),
    vacation_days float,
    action_date date,
    action varchar(20),
    check_request_limit numeric(18,4),
    expense_report_approver varchar(7),
    location_code varchar(10),
    pay_code varchar(3),
    ed_code date,
    ed_code_date varchar(64),
    job_code varchar(6),
    country_citizenship varchar(3),
    disabled varchar(1),
    vietnam_vet varchar(1),
    emergency_contact_name varchar(50),
    emergency_contact_relationship varchar(20),
    emergency_contact_phone varchar(50),
    adp_dept_num varchar(10),
    eeo_cat_hr_updt varchar(10),
    company_id varchar(10),
    expense_reporting varchar(1),
    phantom_indicator varchar(1),
    check_request_approver varchar(7),
    invoice_approver varchar(7),
    vacation_year varchar(64),
    fin_auth_comments varchar(255),
    payroll_cost_ctr varchar(30),
    sample_auth varchar(1),
    oracle_string varchar(25),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_job_title
(
    source_name varchar(255),
    job_code varchar(5),
    code_desc varchar(50),
    adp_job_code varchar(8),
    create_date date,
    create_user varchar(30),
    update_date date,
    update_user varchar(30),
    display_sequence varchar(64),
    company_id varchar(10),
    effective_date date,
    expiration_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_leave_of_absence
(
    source_name varchar(255),
    file_number varchar(6),
    name varchar(40),
    job_title varchar(30),
    cost_center_name varchar(35),
    department varchar(30),
    ee_status varchar(30),
    leave_date date,
    return_date date,
    leave_days int,
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_people
(
    source_name varchar(255),
    system_id varchar(64),
    create_date date,
    create_user varchar(30),
    update_date date,
    update_user varchar(30),
    last_name varchar(50),
    first_name varchar(50),
    status_code varchar(2),
    gender varchar(1),
    middle_name varchar(50),
    name_suffix varchar(15),
    person_title varchar(15),
    prof_title varchar(15),
    email varchar(255),
    pref_name varchar(50),
    previous_last_name varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_people_address
(
    source_name varchar(255),
    person_sys_id varchar(64),
    address_id varchar(64),
    atd_code varchar(2),
    priority varchar(64),
    mail_stop varchar(10),
    eff_date date,
    end_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_people_phone
(
    source_name varchar(255),
    person_sys_id varchar(64),
    phone_id varchar(64),
    ptd_code varchar(2),
    priority varchar(64),
    ext varchar(64),
    vmail varchar(64),
    address_id varchar(64),
    provider_code varchar(2),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_phone
(
    source_name varchar(255),
    phone_id varchar(64),
    country_dial_code varchar(64),
    area_code varchar(5),
    phone_number varchar(64),
    create_user varchar(30),
    create_date date,
    update_user varchar(30),
    update_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_salesperson
(
    source_name varchar(255),
    file_number varchar(6),
    name varchar(40),
    job_title varchar(30),
    cost_center_name varchar(35),
    department varchar(30),
    job_entry_date date,
    manager_level varchar(30),
    ee_status varchar(30),
    work_location varchar(5),
    work_location_name varchar(30),
    orig_hire_date date,
    service_date date,
    rehire_date date,
    termination_date date,
    direct_manager varchar(40),
    home_address_line1 varchar(40),
    home_address_line2 varchar(40),
    home_city varchar(30),
    home_state varchar(2),
    home_postal_code varchar(10),
    home_phone varchar(15),
    cell_phone varchar(15),
    email_address varchar(70),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_territory
(
    source_name varchar(255),
    territory_id varchar(225),
    name varchar(255),
    desc_text varchar(255),
    company_code varchar(10),
    territory_type varchar(20),
    team varchar(50),
    sample_dist varchar(1),
    comments varchar(200),
    fleet_elig varchar(1),
    rep_type varchar(8),
    file_id int,
    record_id int
);


CREATE TABLE integration.roster_territory_change
(
    source_name varchar(255),
    ee_number varchar(24),
    ee_name varchar(40),
    territory_id_from varchar(8),
    territory_id_to varchar(8),
    territory_move_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.cmop_rx
(
    source_name varchar(255),
    data_month date,
    cmop varchar(100),
    visn varchar(2),
    station_number varchar(10),
    station varchar(50),
    va_product varchar(70),
    total_rxs numeric(37,15),
    cmop_rxs numeric(37,15),
    total_quantity numeric(37,15),
    cmop_quantity numeric(37,15),
    rxs_30_days numeric(37,15),
    zip varchar(5),
    id varchar(10),
    file_id int,
    record_id int
);


CREATE TABLE integration.specialty_pharmacy_shipment_summary
(
    source_name varchar(255),
    ship_date date,
    full_name varchar(100),
    specialty varchar(50),
    rank int,
    total int,
    aubagio_14 int,
    aubagio_7 int,
    avonex_30 int,
    avonex_pack int,
    avonex_pen_pack int,
    betaseron int,
    copaxone_20 int,
    copaxone_40 int,
    gilenya_0_5 int,
    glatopa_20 int,
    lemtrada int,
    plegridy_pfs int,
    plegridy_pen int,
    rebif_22_rebidose int,
    rebif_22 int,
    rebif_44 int,
    rebif_44_rebidose int,
    rebif_pack int,
    rebif_pack_rebidose int,
    tecfidera_120 int,
    tecfidera_240 int,
    tecfidera_starter_pack int,
    tysabri int,
    md_addr1 varchar(100),
    md_addr2 varchar(100),
    md_city varchar(50),
    md_state varchar(2),
    md_zip varchar(5),
    prescriber_npi varchar(20),
    dnc_flag varchar(1),
    record_id int,
    file_id int,
    gilenya_0_5_2x14 int,
    gilenya_0_5_1x7 int,
    glatiramer_acetate_20 int,
    glatiramer_acetate_40 int,
    zinbryta_150 int
);


CREATE TABLE integration.specialty_pharmacy_enrollment
(
    source_name varchar(255),
    patient_id varchar(80),
    rx_received_date date,
    insurance_information varchar(200),
    most_recent_cml_treatment varchar(200),
    date_of_discontinuation date,
    reason_for_discontinuation varchar(200),
    physician_last_name varchar(200),
    physician_first_name varchar(200),
    physician_address varchar(400),
    physician_city varchar(200),
    physician_state varchar(8),
    physician_zip varchar(40),
    file_id int,
    record_id int,
    brand_name varchar(100)
);


CREATE TABLE integration.chargebacks
(
    source_name varchar(255),
    account_id varchar(100),
    location_id varchar(100),
    shipment_date date,
    ndc_code varchar(20),
    product_name varchar(100),
    contract_id varchar(100),
    chargeback_quantity numeric(37,15),
    chargeback_amount numeric(37,15),
    receipt_date date,
    debit_memo_number varchar(30),
    credit_memo_date date,
    credit_memo_number varchar(30),
    settlement_date timestamp,
    contract_price numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE integration.sample_shipment
(
    tvcmid int,
    hcp_veeva_id varchar(25),
    hcp_first_name varchar(50),
    hcp_middle_name varchar(50),
    hcp_last_name varchar(50),
    hcp_designation varchar(30),
    hcp_state_license_number varchar(20),
    hcp_address1 varchar(35),
    hcp_address2 varchar(35),
    hcp_address3 varchar(35),
    hcp_city varchar(50),
    hcp_state varchar(2),
    hcp_zip varchar(10),
    dea_license_number varchar(20),
    order_source_order_id varchar(20),
    ndc varchar(20),
    quantity int,
    order_source_job_code varchar(14),
    order_source_job_code_description varchar(50),
    ship_date date,
    file_id int,
    record_id int,
    TERRITORY varchar(20),
    REPID varchar(20),
    REPLASTNAME varchar(50),
    REPMIDDLENAME varchar(50),
    REPFIRSTNAME varchar(50),
    signature_type varchar(50),
    attendeename varchar(50),
    literature_product_id varchar(20),
    literature_product_name varchar(50)
);


CREATE TABLE integration.chargeback_demographics
(
    account_id varchar(100),
    location_id varchar(100),
    dea_number varchar(20),
    end_customer varchar(100),
    address_1 varchar(100),
    address_2 varchar(100),
    city varchar(50),
    state varchar(2),
    zip varchar(10),
    contract_title varchar(100),
    contract_id varchar(100),
    wholesaler_name varchar(100),
    hin varchar(20),
    contract_alias varchar(100),
    wholesaler_dea varchar(20),
    class_of_trade varchar(30),
    cot_source varchar(30),
    file_id int,
    record_id int
);


CREATE TABLE integration.psr_report
(
    prescriber_npi varchar(10),
    prescriber_name varchar(180),
    prescriber_state varchar(10),
    product varchar(100),
    month varchar(10),
    indication varchar(5),
    in_progress varchar(64),
    completed varchar(64),
    cancelled varchar(64),
    psr_count varchar(64),
    file_id int,
    record_id int
);


CREATE TABLE integration.prognos_syndicated_trigger_report
(
    week_end_date varchar(10),
    practice_name varchar(255),
    practice_address_line_1 varchar(255),
    practice_address_line_2 varchar(255),
    city varchar(255),
    state varchar(255),
    zip_code varchar(255),
    provider_first_name varchar(255),
    provider_last_name varchar(255),
    npi varchar(255),
    specialty_1 varchar(255),
    specialty_2 varchar(255),
    total_cml_patients_with_poor_response_to_treatment int,
    file_id int,
    record_id int,
    product_name varchar(50),
    pts_with_moderate_severe_asthma_and_eosinophils_0_149 int,
    pts_with_moderate_severe_asthma_and_eosinophils_150_399 int,
    pts_with_moderate_severe_asthma_and_eosinophils_400_or_greater int,
    pts_with_ao_asthma_and_eosinophils_0_149 int,
    pts_with_ao_asthma_and_eosinophils_150_399 int,
    pts_with_ao_asthma_and_eosinophils_400_or_greater int,
    pts_with_moderate_severe_asthma_and_has_eosinophils_300_499 int,
    pts_with_moderate_severe_asthma_and_has_eosinophils_500_or_greater int
);


CREATE TABLE integration.oncology_target_accounts
(
    tvcmid int,
    source_name varchar(255),
    sales_force_id varchar(5),
    product_name varchar(20),
    acct_demo_id int,
    ims_outlet_code varchar(10),
    target_type varchar(10),
    target_value varchar(15),
    applies_from_date date,
    applies_to_date date,
    active_ind varchar(1),
    system_start_date date,
    system_end_date date,
    end_reason varchar(30),
    veeva_account_id varchar(18),
    file_id int,
    record_id int
);


CREATE TABLE integration.prescriber_rx
(
    source_name varchar(255),
    client_number varchar(64),
    report_number varchar(64),
    zip_other varchar(10),
    ims_id varchar(10),
    specialty varchar(10),
    plan_id varchar(10),
    sales_category varchar(64),
    rx_type varchar(1),
    product_group varchar(64),
    me_num varchar(10),
    last_name varchar(25),
    first_name varchar(25),
    middle_name varchar(2),
    address varchar(30),
    city varchar(25),
    state varchar(2),
    zip varchar(5),
    supplemental_data varchar(20),
    plan_name varchar(32),
    data_date date,
    bucket_date date,
    bucket_type varchar(10),
    nrx_cnt numeric(18,3),
    nrx_qty numeric(18,3),
    trx_cnt numeric(18,3),
    trx_qty numeric(18,3),
    file_id int,
    record_id int,
    tvcmid int,
    ims_id_modified varchar(10)
);


CREATE TABLE integration.prescriber_rx_adhoc
(
    source_name varchar(255),
    client_number varchar(64),
    report_number varchar(64),
    zip_other varchar(10),
    ims_id varchar(10),
    specialty varchar(10),
    plan_id varchar(10),
    sales_category varchar(64),
    rx_type varchar(1),
    product_group varchar(64),
    me_num varchar(10),
    last_name varchar(25),
    first_name varchar(25),
    middle_name varchar(2),
    address varchar(30),
    city varchar(25),
    state varchar(2),
    zip varchar(5),
    supplemental_data varchar(20),
    plan_name varchar(32),
    data_date date,
    bucket_date date,
    bucket_type varchar(10),
    nrx_cnt numeric(37,15),
    nrx_qty numeric(37,15),
    trx_cnt numeric(37,15),
    trx_qty numeric(37,15),
    file_id int,
    record_id int,
    tvcmid int,
    ims_id_modified varchar(10)
);


CREATE TABLE integration.onc_sales_adjustment_load
(
    adj_code varchar(10),
    adj_time_period varchar(10),
    tvcmid int,
    basket_id int,
    adj_factor numeric(10,2),
    record_id int,
    file_id int
);


CREATE TABLE integration.copay_voucher_program
(
    redemption_type varchar(20),
    program_number varchar(15),
    program_description varchar(100),
    create_date date,
    file_id int,
    record_id int
);


CREATE TABLE integration.fia_provider_old
(
    PROVIDER_ID varchar(7),
    PROVIDER_TYPE varchar(2),
    IQVIA_RXER_ID varchar(7),
    PRIMARY_SPECIALTY_CODE varchar(10),
    PRIMARY_SPECIALTY_DESC varchar(100),
    FIRST_NAME varchar(100),
    LAST_NAME varchar(100),
    ORG_NM varchar(50),
    ADDRESS varchar(200),
    CITY varchar(100),
    ZIP_CODE varchar(5),
    STATE_CODE varchar(2),
    PHONE_NUMBER varchar(20),
    DEA_NUMBER varchar(20),
    ME_NUMBER varchar(20),
    FLEXIBLE_FLD_1_CHAR varchar(50),
    FLEXIBLE_FLD_2_CHAR varchar(50),
    record_id int,
    file_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_fact_v2_0917
(
    claim_id varchar(64),
    patient_id int,
    sequence_number int,
    product_id varchar(11),
    fill_date date,
    claim_type varchar(2),
    reject_code varchar(3),
    days_supply numeric(10,6),
    quantity varchar(12),
    refill_code int,
    plantrak_id varchar(10),
    opc_ask varchar(10),
    sec_plantrak_id varchar(10),
    buy_down varchar(11),
    opc_paid varchar(10),
    prescriber_id varchar(7),
    sob varchar(1),
    sub_product_id varchar(11),
    sub_opc varchar(10),
    initial_claim_id int,
    prev_product_id varchar(11),
    daw_code varchar(2),
    wrt_date date,
    claim_status varchar(1),
    copay_card_flg varchar(4),
    zip_code varchar(5),
    ecoup_flag int,
    ecoup_offset_amt numeric(10,2),
    standard_copay numeric(10,2),
    standard_copay_yn varchar(1),
    market_id int,
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    flexible_fld_3_char varchar(50),
    flexible_fld_4_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_fact_v2_0918
(
    claim_id varchar(64),
    patient_id int,
    sequence_number int,
    product_id varchar(11),
    fill_date date,
    claim_type varchar(2),
    reject_code varchar(3),
    days_supply numeric(10,6),
    quantity varchar(12),
    refill_code int,
    plantrak_id varchar(10),
    opc_ask varchar(10),
    sec_plantrak_id varchar(10),
    buy_down varchar(11),
    opc_paid varchar(10),
    prescriber_id varchar(7),
    sob varchar(1),
    sub_product_id varchar(11),
    sub_opc varchar(10),
    initial_claim_id varchar(64),
    prev_product_id varchar(11),
    daw_code varchar(2),
    wrt_date date,
    claim_status varchar(1),
    copay_card_flg varchar(4),
    zip_code varchar(5),
    ecoup_flag int,
    ecoup_offset_amt numeric(10,2),
    standard_copay numeric(10,2),
    standard_copay_yn varchar(1),
    market_id int,
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    flexible_fld_3_char varchar(50),
    flexible_fld_4_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.ddd_adhoc
(
    source_name varchar(255),
    client_number varchar(3),
    report_number varchar(3),
    territory_number varchar(10),
    outlet_code varchar(8),
    category_code varchar(2),
    ims_product_code varchar(10),
    data_date date,
    outlet_name varchar(30),
    outlet_address varchar(30),
    outlet_city varchar(25),
    outlet_state varchar(2),
    outlet_zip varchar(10),
    bucket_date date,
    bucket_type varchar(10),
    quantity numeric(37,15),
    dollars numeric(37,15),
    file_id int,
    record_id int,
    tvcmid_outlet int,
    subcategory_code varchar(10)
);


CREATE TABLE integration.fia_provider
(
    PROVIDER_ID varchar(20),
    PROVIDER_TYPE varchar(2),
    IQVIA_RXER_ID varchar(7),
    PRIMARY_SPECIALTY_CODE varchar(10),
    PRIMARY_SPECIALTY_DESC varchar(100),
    FIRST_NAME varchar(100),
    LAST_NAME varchar(100),
    ORG_NM varchar(50),
    ADDRESS varchar(200),
    CITY varchar(100),
    ZIP_CODE varchar(5),
    STATE_CODE varchar(2),
    PHONE_NUMBER varchar(20),
    DEA_NUMBER varchar(20),
    ME_NUMBER varchar(20),
    FLEXIBLE_FLD_1_CHAR varchar(50),
    FLEXIBLE_FLD_2_CHAR varchar(50),
    record_id int,
    file_id int,
    file_location varchar(255)
);


CREATE TABLE integration.sales_867
(
    trading_partner varchar(50),
    partner_duns varchar(15),
    partner_duns_4 varchar(15),
    partner_dea varchar(20),
    partner_hin varchar(20),
    partner_seller_assigned_id varchar(50),
    partner_buyer_assigned_id varchar(50),
    client_name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(50),
    state varchar(2),
    zip varchar(15),
    client_duns varchar(15),
    client_dea varchar(20),
    client_hin varchar(20),
    client_seller_assigned_id varchar(50),
    client_buyer_assigned_id varchar(50),
    ncpdp varchar(20),
    ndc varchar(20),
    item varchar(50),
    ship_date date,
    quantity_purchased int,
    quantity_returned int,
    unit_price numeric(18,4),
    gross_amount varchar(20),
    drop_shipments int,
    file_id int,
    record_id int,
    source_name varchar(255),
    tvcmid int
);


CREATE TABLE integration.direct_sales
(
    source_name varchar(255),
    account_id varchar(100),
    location_id varchar(100),
    shipment_date date,
    ndc_code varchar(20),
    product_name varchar(100),
    transaction_type varchar(100),
    direct_sales_units numeric(37,15),
    direct_sales_dollars numeric(18,4),
    file_id int,
    record_id int
);


CREATE TABLE integration.event_count
(
    source_system_name varchar(10),
    event_number varchar(100),
    attendee_category_code varchar(25),
    attendee_category varchar(250),
    count numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE integration.event
(
    source_system_name varchar(10),
    event_number varchar(100),
    event_name varchar(100),
    event_status_code varchar(100),
    event_status_description varchar(100),
    event_status_change_date timestamp,
    event_start_date timestamp,
    event_end_date timestamp,
    funding_source varchar(100),
    event_type varchar(100),
    event_type_description varchar(100),
    event_location varchar(100),
    event_schedule_date timestamp,
    attendee_closeout_date timestamp,
    financial_closeout_date timestamp,
    cancellation_date timestamp,
    cancellation_reason varchar(100),
    estimated_attendance varchar(100),
    venue_id varchar(100),
    venue_full_name varchar(100),
    venue_address_line_1 varchar(100),
    venue_address_line_2 varchar(100),
    venue_city varchar(100),
    venue_state varchar(100),
    venue_zip varchar(100),
    venue_contact varchar(100),
    venue_phone varchar(100),
    venue_fax varchar(100),
    venue_email varchar(100),
    file_id int,
    record_id int,
    parent_event_number varchar(100),
    event_time_zone varchar(100),
    event_format varchar(100),
    pending_mgmnt_approval_date timestamp(6),
    event_approval_date timestamp(6),
    event_approver_id varchar(100),
    cancellation_source varchar(100),
    event_venue_min_cnt_req_ind varchar(100),
    event_venue_min_count varchar(100),
    venue_address_line_3 varchar(100),
    venue_address_line_4 varchar(100),
    venue_postal_extended_code varchar(100),
    venue_country_code varchar(100),
    trade_secret_indicator varchar(100),
    trade_secret_reason varchar(100),
    custom_field_1 varchar(100),
    custom_field_2 varchar(100),
    custom_field_3 varchar(100),
    custom_field_4 varchar(100),
    custom_field_5 varchar(100),
    rec_stat_cd varchar(100)
);


CREATE TABLE integration.copay_redemptions
(
    source_name varchar(255),
    asi_txn_id varchar(20),
    territory_number varchar(200),
    program_number varchar(5),
    claim_cert_number varchar(12),
    rx_date date,
    ndc_code varchar(15),
    quantity numeric(37,15),
    other_coverage_code varchar(10),
    sex varchar(1),
    dob date,
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    principle_phys_dea_number varchar(20),
    phys_npi varchar(10),
    physician_first_name varchar(50),
    physician_last_name varchar(50),
    asi_phys_first_name varchar(50),
    asi_phys_last_name varchar(50),
    asi_phys_address1 varchar(50),
    asi_phys_address2 varchar(50),
    asi_phys_city varchar(50),
    asi_phys_state varchar(2),
    asi_phys_zip varchar(15),
    rebate_amount numeric(18,4),
    member_cash_expense numeric(18,4),
    submitted_cost numeric(18,4),
    pharmacy_fee numeric(18,4),
    total_amount_due numeric(18,4),
    company_phys_last_name varchar(50),
    company_phys_first_name varchar(50),
    company_phys_address1 varchar(50),
    company_phys_address2 varchar(50),
    company_phys_city varchar(50),
    company_phys_state varchar(2),
    company_phys_zip varchar(15),
    file_id int,
    record_id int,
    tvcmid_physician int,
    basket_id int,
    basket_name varchar(300),
    tvcmid_from_npi int,
    tvcmid_from_dea int,
    ims_id_from_npi varchar(10),
    ims_id_from_dea varchar(10),
    veeva_account_id_from_npi varchar(20),
    veeva_account_id_from_dea varchar(20)
);


CREATE TABLE integration.ims_outlet_master
(
    source_name varchar(255),
    client_number varchar(3),
    suffix varchar(2),
    territory_number varchar(8),
    outlet_number varchar(8),
    outlet_name varchar(50),
    address varchar(80),
    city varchar(40),
    state varchar(2),
    report_type varchar(2),
    status varchar(1),
    subcategory varchar(5),
    state_code varchar(2),
    county_code varchar(10),
    record_type varchar(2),
    file_id int,
    record_id int,
    retail_flag varchar(1),
    activity_date varchar(4),
    dea_number varchar(9)
);


CREATE TABLE integration.specialty_pharmacy_shipment
(
    source_name varchar(255),
    customer_number varchar(50),
    customer_name varchar(100),
    physician_first_name varchar(50),
    physician_last_name varchar(50),
    ship_to_address_line_1 varchar(100),
    ship_to_address_line_2 varchar(100),
    ship_to_city varchar(50),
    ship_to_state varchar(20),
    ship_to_zip varchar(20),
    ship_to_phone varchar(50),
    ship_to_fax varchar(50),
    transaction_id varchar(50),
    invoice_date date,
    ship_date date,
    item_number varchar(20),
    ndc varchar(20),
    brand varchar(100),
    package_size int,
    specialty_pharmacy_name varchar(100),
    quantity float,
    unit_price float,
    invoice_amount float,
    invoice_discount float,
    order_type_code varchar(30),
    customer_type_code varchar(20),
    customer_type varchar(50),
    customer_340b_number varchar(20),
    class_of_trade varchar(50),
    dea_number varchar(20),
    dea_number_expiration numeric(37,15),
    state_license_number varchar(20),
    state_license_expiration numeric(37,15),
    npi varchar(10),
    tax_id varchar(20),
    bill_to_customer_number varchar(20),
    bill_to_customer_name varchar(100),
    bill_to_address_line_1 varchar(100),
    bill_to_address_line_2 varchar(100),
    bill_to_state varchar(50),
    bill_to_city varchar(50),
    bill_to_zip varchar(20),
    bill_to_phone varchar(50),
    bill_to_fax varchar(50),
    parent_customer_code varchar(20),
    parent_customer_name varchar(100),
    order_number varchar(50),
    invoice_number varchar(50),
    order_type_description varchar(50),
    lob_code_description varchar(100),
    price_matrix_definition varchar(20),
    warehouse_code varchar(20),
    file_id int,
    record_id int,
    tvcmid int,
    replacement_flag varchar(10),
    net_sales_amt numeric(37,15),
    medicaid_return_date date,
    self_pay_refund_date date,
    hin varchar(20),
    net_cost numeric(37,15),
    order_date date,
    payer_flag varchar(50),
    briova_flag varchar(50),
    trx_count float,
    days_supplied int,
    SPP_Physician_ID int,
    Primary_Payer_BIN varchar(20),
    Primary_Payer_PCN varchar(20),
    Primary_Group_Num varchar(30),
    Primary_Payer_Name varchar(100),
    Primary_Payer_Type varchar(25),
    Primary_Copay_Amount numeric(20,2)
);


CREATE TABLE integration.oncology_target_accounts_BKP
(
    source_name varchar(255),
    sales_force_id varchar(5),
    product_name varchar(20),
    acct_demo_id int,
    ims_outlet_code varchar(10),
    target_type varchar(10),
    target_value varchar(15),
    applies_from_date date,
    applies_to_date date,
    active_ind varchar(1),
    system_start_date date,
    system_end_date date,
    end_reason varchar(30),
    veeva_account_id varchar(18),
    file_id int,
    record_id int
);


CREATE TABLE integration.oncology_call_detail_goals
(
    source_name varchar(255),
    sales_force_id varchar(5),
    time_period varchar(20),
    territory_num varchar(8),
    product_name varchar(20),
    p1 int,
    p2 int,
    p3 int,
    file_id int,
    record_id int
);


CREATE TABLE integration.oncology_fcr
(
    source_name varchar(255),
    time_period varchar(15),
    sales_force_id varchar(5),
    territory_num varchar(8),
    rep_id varchar(7),
    contact_date date,
    duration_days numeric(3,2),
    ss_opening int,
    ss_probing int,
    ss_resources int,
    ss_commitment int,
    ss_transitioning int,
    ss_acumen int,
    archive_flag varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE integration.alternate_alignments
(
    zip_code varchar(10),
    state_code varchar(2),
    territory_number varchar(8),
    territory_name varchar(50),
    area_name varchar(50),
    region_name varchar(50),
    mirror_flag varchar(1),
    mirror_territory_number varchar(8),
    file_id int,
    record_id int,
    city varchar(50)
);


CREATE TABLE integration.oncology_sales_quotas
(
    source_name varchar(255),
    time_period varchar(10),
    sales_force_id varchar(5),
    territory_num varchar(8),
    product_name varchar(20),
    quota_qty int,
    quota_dol numeric(18,4),
    quota_strength_unit int,
    file_id int,
    record_id int
);


CREATE TABLE integration.ahm_interactions
(
    sourcesystemid varchar(10),
    batchid varchar(18),
    batchdate date,
    transactionstatuscode varchar(1),
    interactionid varchar(18),
    interactioncode varchar(50),
    interactionname varchar(200),
    interactioncategory varchar(50),
    interactiontype varchar(50),
    locationtype varchar(50),
    interactionstatus varchar(50),
    interactionstartdate date,
    interactionenddate date,
    interactionstarttime varchar(50),
    interactionendtime varchar(50),
    interactiontimezone varchar(80),
    interactionstartdatetime varchar(26),
    interactionenddatetime varchar(26),
    requestingregion varchar(100),
    parentinteractionid varchar(18),
    parentinteractioncode varchar(50),
    employeeid varchar(18),
    clientemployeeid varchar(50),
    employeefirstname varchar(80),
    employeelastname varchar(80),
    employeeorganizationunitid varchar(18),
    employeeorganizationunitcode varchar(50),
    employeeorganizationunitname varchar(200),
    venueid varchar(18),
    clientvenueid varchar(18),
    venuename varchar(80),
    venueaddressline1 varchar(50),
    venueaddressline2 varchar(50),
    venueaddressline3 varchar(50),
    venuecity varchar(80),
    venuestateprovince varchar(50),
    venuepostalcode varchar(20),
    venuecountry varchar(50),
    venueregion varchar(100),
    totalestimatedparticipantcount int,
    financialcloseddate date,
    product1name varchar(80),
    product1id varchar(18),
    product1clientid varchar(100),
    topic1name varchar(255),
    topic1id varchar(18),
    topic1clientid varchar(80),
    product2name varchar(80),
    product2id varchar(18),
    product2clientid varchar(100),
    topic2name varchar(255),
    topic2id varchar(18),
    topic2clientid varchar(80),
    product3name varchar(80),
    product3id varchar(18),
    product3clientid varchar(100),
    topic3name varchar(255),
    topic3id varchar(18),
    topic3clientid varchar(80),
    product4name varchar(80),
    product4id varchar(18),
    product4clientid varchar(100),
    topic4name varchar(255),
    topic4id varchar(18),
    topic4clientid varchar(80),
    product5name varchar(80),
    product5id varchar(18),
    product5clientid varchar(100),
    topic5name varchar(255),
    topic5id varchar(18),
    topic5clientid varchar(80),
    reservedfield1 varchar(10),
    reservedfield2 varchar(10),
    reservedfield3 varchar(10),
    reservedfield4 varchar(10),
    reservedfield5 varchar(10),
    reservedfield6 varchar(10),
    reservedfield7 varchar(10),
    reservedfield8 varchar(10),
    reservedfield9 varchar(10),
    reservedfield10 varchar(10),
    record_id int,
    file_id int
);


CREATE TABLE integration.ahm_participant
(
    sourcesystemid varchar(10),
    batchid varchar(18),
    batchdate date,
    transactionstatuscode varchar(1),
    interactionid varchar(18),
    interactioncode varchar(50),
    participantid varchar(18),
    clientcustomerid varchar(100),
    participanttype varchar(80),
    firstname varchar(80),
    middlename varchar(80),
    lastname varchar(80),
    suffix varchar(80),
    professionaldesignation varchar(80),
    primaryspecialty varchar(80),
    organizationname varchar(80),
    npinumber varchar(10),
    addressid varchar(18),
    clientaddressid varchar(100),
    addressline1 varchar(255),
    addressline2 varchar(255),
    addressline3 varchar(255),
    addresscity varchar(80),
    addressstateprovince varchar(50),
    addresspostalcode varchar(20),
    addresspostalcodeextension varchar(10),
    addresscountry varchar(50),
    region varchar(50),
    primarystatelicensestate varchar(50),
    primarystatelicensenumber varchar(50),
    attended varchar(1),
    mealconsumed varchar(1),
    contractid varchar(18),
    clientcontractid varchar(50),
    contractname varchar(100),
    contractcategory varchar(50),
    contractsubcategory varchar(50),
    contractclassification varchar(50),
    contracttier varchar(50),
    contracteffectivedate date,
    contractexpirationdate date,
    contracttotalvalue numeric(10,2),
    reservedfield1 varchar(10),
    reservedfield2 varchar(10),
    reservedfield3 varchar(10),
    reservedfield4 varchar(10),
    reservedfield5 varchar(10),
    reservedfield6 varchar(10),
    reservedfield7 varchar(10),
    reservedfield8 varchar(10),
    reservedfield9 varchar(10),
    reservedfield10 varchar(10),
    record_id int,
    file_id int
);


CREATE TABLE integration.ahm_unnamedparticipant
(
    sourcesystemid varchar(10),
    batchid varchar(18),
    batchdate date,
    transactionstatuscode varchar(1),
    interactionid varchar(18),
    interactioncode varchar(50),
    particpantcategoryid varchar(18),
    categorytype varchar(100),
    totalattendedcount int,
    totalmealconsumedcount int,
    record_id int,
    file_id int
);


CREATE TABLE integration.ahm_expense
(
    sourcesystemid varchar(10),
    batchid varchar(18),
    batchdate date,
    transactionstatuscode varchar(1),
    interactionid varchar(18),
    interactioncode varchar(50),
    spendid varchar(18),
    clientspendid varchar(100),
    spendamount numeric(10,2),
    spendcurrency varchar(3),
    spenddate date,
    spendtype varchar(50),
    spendpurpose varchar(50),
    traveldestinationcity varchar(80),
    traveldestinationstateprovince varchar(50),
    traveldestinationcountry varchar(50),
    spenddescription varchar(2000),
    taxincludedindicator varchar(1),
    taxamount numeric(10,2),
    taxrate numeric(10,2),
    recipientid varchar(18),
    clientrecipientid varchar(100),
    participantid varchar(18),
    recipientfirstname varchar(80),
    recipientmiddlename varchar(80),
    recipientlastname varchar(80),
    recipientsuffix varchar(80),
    recipientprofessionaldesignation varchar(80),
    recipientprimaryspecialty varchar(80),
    recipientorganizationname varchar(80),
    recipientnpinumber varchar(10),
    recipientaddressid varchar(18),
    recipientclientaddressid varchar(100),
    recipientaddressline1 varchar(255),
    recipientaddressline2 varchar(255),
    recipientaddressline3 varchar(255),
    recipientaddresscity varchar(80),
    recipientaddressstateprovince varchar(50),
    recipientaddresspostalcode varchar(20),
    recipientaddresspostalcodeextension varchar(10),
    recipientaddresscountry varchar(50),
    recipientprimarystatelicensestate varchar(50),
    recipientprimarystatelicensenumber varchar(50),
    thirdpartyrecipientindicator varchar(1),
    thirdpartyrecipientid varchar(18),
    thirdpartyclientrecipientid varchar(100),
    thirdpartyrecipientname varchar(80),
    thirdpartycoveredrecipientindicator varchar(1),
    paymentid varchar(18),
    clientpaymentid varchar(50),
    paymentdate date,
    paymentmethod varchar(50),
    paymentreferencenumber varchar(50),
    paymentstatus varchar(50),
    reservedfield1 varchar(10),
    reservedfield2 varchar(10),
    reservedfield3 varchar(10),
    reservedfield4 varchar(10),
    reservedfield5 varchar(10),
    reservedfield6 varchar(10),
    reservedfield7 varchar(10),
    reservedfield8 varchar(10),
    reservedfield9 varchar(10),
    reservedfield10 varchar(10),
    record_id int,
    file_id int
);


CREATE TABLE integration.valuecentric_867_v2
(
    ndc varchar(20),
    product_description varchar(50),
    product_name varchar(25),
    trading_partner_name varchar(50),
    trading_partner_dea varchar(15),
    trading_partner_hin varchar(15),
    trading_partner_location_type varchar(5),
    trading_partner_dc_dea varchar(15),
    trading_partner_dc_hin varchar(15),
    trading_partner_dc_name varchar(50),
    trading_partner_dc_address varchar(50),
    trading_partner_dc_address_2 varchar(50),
    trading_partner_dc_city varchar(30),
    trading_partner_dc_state varchar(2),
    trading_partner_dc_zip varchar(10),
    class_of_trade varchar(50),
    outlet_location_name varchar(150),
    outlet_dea varchar(15),
    outlet_hin varchar(15),
    outlet_340b varchar(15),
    outlet_ncpdp varchar(15),
    outlet_npi varchar(15),
    outlet_location_address varchar(100),
    outlet_location_address_2 varchar(100),
    outlet_location_city varchar(30),
    outlet_location_state varchar(2),
    outlet_location_zip varchar(10),
    reporting_date date,
    contract_number varchar(30),
    contract_description varchar(30),
    invoice_number varchar(30),
    invoice_date date,
    invoice_line_id int,
    quanitity_stock_sales_ss int,
    ds_sales_ds int,
    summary_sales_su int,
    dock_to_dock_bq int,
    interbranch_ib int,
    return_to_useable_ru int,
    return_to_vendor_rv int,
    transfer_to_disposal_td int,
    adjusted_price numeric(37,15),
    gross_amount numeric(37,15),
    record_id int,
    file_id int
);


CREATE TABLE integration.xpd_core_metrics
(
    ims_client_number varchar(3),
    ims_report_number varchar(2),
    channel_indicator int,
    ims_id varchar(10),
    specialty varchar(10),
    ims_product_group varchar(3),
    month_ending date,
    xpo_nrx numeric(37,15),
    xpo_trx numeric(37,15),
    unknown_nrx numeric(37,15),
    unknown_trx numeric(37,15),
    new_therapy_starts numeric(37,15),
    continued_new numeric(37,15),
    switch_to numeric(37,15),
    add_on numeric(37,15),
    restart_same_new numeric(37,15),
    restart_different numeric(37,15),
    continued_refill numeric(37,15),
    restart_same_refill numeric(37,15),
    switch_from numeric(37,15),
    restart_different_from numeric(37,15),
    add_to numeric(37,15),
    market_new_to_brand_rx numeric(37,15),
    dynamic_capture_rx numeric(37,15),
    record_id int,
    file_id int
);


CREATE TABLE integration.xpd_demographics
(
    ims_client_number varchar(3),
    ims_report_number varchar(2),
    ims_id varchar(10),
    last_name varchar(40),
    first_name varchar(40),
    middle_name varchar(40),
    address_1 varchar(40),
    address_2 varchar(40),
    city varchar(40),
    state varchar(2),
    zip varchar(5),
    specialty varchar(3),
    specialty_description varchar(25),
    trx_decile_retail int,
    nrx_decile_retail int,
    nbrx_decile_retail int,
    trx_decile_mail int,
    nrx_decile_mail int,
    nbrx_decile_mail int,
    market_prescriber_reliability_retail varchar(2),
    market_prescriber_reliability_mail varchar(2),
    record_id int,
    file_id int
);


CREATE TABLE integration.xpd_switch_details
(
    ims_client_number varchar(3),
    ims_report_number varchar(2),
    channel_indicator int,
    ims_id varchar(10),
    specialty varchar(10),
    switch_from_product_group_num varchar(3),
    switch_to_product_group_num varchar(3),
    month_ending date,
    rx numeric(37,15),
    record_id int,
    file_id int
);


CREATE TABLE integration.ftf_restrictions_v2
(
    health_plan_id varchar(6),
    drug_id varchar(6),
    restriction_code varchar(7),
    restriction_detail_id varchar(6),
    restriction_detail_text varchar(250),
    restriction_addtnl_information_1 varchar(4000),
    restriction_addtnl_information_2 varchar(4000),
    step_count varchar(50),
    pa_form varchar(4000),
    indication varchar(255),
    grouped_restriction_level varchar(255),
    record_id int,
    file_id int
);


CREATE TABLE integration.touchpoint_call
(
    source_name varchar(255),
    call_id int,
    call_attempt_id int,
    touchpoint_id int,
    client_id varchar(20),
    ims_id varchar(10),
    first_name varchar(50),
    last_name varchar(50),
    call_type varchar(100),
    call_date date,
    status_code varchar(10),
    status_description varchar(100),
    rep_id int,
    rep_first_name varchar(50),
    rep_last_name varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE integration.event_product
(
    source_system_name varchar(100),
    event_number varchar(100),
    product_id varchar(100),
    product_name varchar(100),
    topic_id varchar(100),
    topic_name varchar(250),
    file_id int,
    record_id int
);


CREATE TABLE integration.event_host
(
    source_system_name varchar(100),
    event_number varchar(100),
    employee_id varchar(100),
    territory varchar(100),
    ordinal varchar(100),
    budget_percent varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.event_expense
(
    source_system_name varchar(100),
    event_number varchar(100),
    payment_id varchar(100),
    expense_category varchar(100),
    amount numeric(18,4),
    remit_to_id varchar(100),
    recipient_id varchar(100),
    check_number varchar(100),
    check_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE integration.sales_852
(
    source_name varchar(255),
    trading_partner varchar(50),
    distribution_center varchar(50),
    distribution_center_dea_number varchar(20),
    reporting_date date,
    product_name varchar(50),
    description varchar(50),
    ndc_11 varchar(20),
    quantity_received numeric(37,15),
    quantity_received_dollars numeric(18,4),
    quantity_sold numeric(37,15),
    quantity_sold_dollars numeric(18,4),
    quantity_omit numeric(37,15),
    quantity_omit_dollars numeric(18,4),
    month_end_quantity_on_hand numeric(37,15),
    month_end_quantity_on_hand_dollars numeric(18,4),
    month_end_committed numeric(37,15),
    month_end_committed_dollars numeric(18,4),
    month_end_reserved numeric(37,15),
    month_end_reserved_dollars numeric(18,4),
    quantity_return numeric(37,15),
    quantity_return_dollars numeric(18,4),
    quantity_customer_return numeric(37,15),
    quantity_customer_return_dollars numeric(18,4),
    file_id int,
    record_id int
);


CREATE TABLE integration.product_unit_ap
(
    source_name varchar(255),
    source_ndc_code varchar(20),
    source_description varchar(100),
    unit_ap numeric(37,15),
    file_id int,
    record_id int
);


CREATE TABLE integration.touchpoint_presentations
(
    source_name varchar(255),
    call_id int,
    call_attempt_id int,
    presentation_id int,
    product varchar(50),
    position_number int,
    item_type varchar(50),
    item_description varchar(100),
    quantity int,
    file_id int,
    record_id int
);


CREATE TABLE integration.ims_week_buckets
(
    ims_bucket int,
    month_ending date,
    month_bucket int,
    split_week_ending date,
    calendar_week date,
    calendar_week_bucket int,
    full_month varchar(1)
);


CREATE TABLE integration.ddd_md_demographics
(
    source_name varchar(255),
    client_number varchar(3),
    report_number varchar(2),
    ims_outlet_code varchar(10),
    ims_facility_number varchar(11),
    ims_prescriber_number varchar(7),
    outlet_name varchar(30),
    outlet_address varchar(120),
    outlet_city varchar(40),
    outlet_state varchar(2),
    outlet_zip varchar(5),
    facility_prescriber_name varchar(100),
    facility_prescriber_address1 varchar(60),
    facility_prescriber_address2 varchar(60),
    facility_prescriber_city varchar(40),
    facility_prescriber_state varchar(2),
    facility_prescriber_zip varchar(5),
    file_id int,
    record_id int,
    tvcmid_outlet int,
    tvcmid_facility int,
    tvcmid_prescriber int
);


CREATE TABLE integration.mm_accounts
(
    source_name varchar(255),
    id varchar(6),
    provider_id varchar(6),
    site_id varchar(6),
    first_name varchar(250),
    last_name varchar(100),
    title varchar(250),
    address_line_1 varchar(100),
    address_line_2 varchar(100),
    city varchar(100),
    state varchar(2),
    postal_code varchar(20),
    phone_1 varchar(50),
    phone_2 varchar(50),
    phone_mobile varchar(50),
    phone_fax varchar(50),
    email varchar(250),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_control
(
    source_name varchar(255),
    file_name varchar(250),
    records varchar(250),
    created_at timestamp,
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_copays
(
    source_name varchar(255),
    health_plan_id varchar(6),
    tier varchar(64),
    retail_copay varchar(50),
    retail_coinsurance varchar(50),
    mail_order_copay varchar(50),
    mail_order_coinsurance varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_drug_class_therapeutic_area
(
    source_name varchar(255),
    drug_class_id varchar(6),
    therapeutic_area_id varchar(6),
    therapeutic_area varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_drugs
(
    source_name varchar(255),
    drug_class_id varchar(6),
    drug_class varchar(100),
    drug_id varchar(6),
    drug varchar(100),
    generic varchar(100),
    manufacturer varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_formularies
(
    source_name varchar(255),
    health_plan_id varchar(6),
    drug_id varchar(6),
    tier_code varchar(2),
    restrictions varchar(20),
    reason_code varchar(100),
    reason_code_description varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_health_plan_geography
(
    source_name varchar(255),
    health_plan_id varchar(6),
    operating_state varchar(2),
    lives_coverage int,
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_health_plans
(
    source_name varchar(255),
    formularyf_id varchar(6),
    provider_id varchar(6),
    provider varchar(250),
    health_plan_id varchar(6),
    health_plan varchar(100),
    parent_id varchar(6),
    parent varchar(250),
    national_lives_count int,
    plan_type_name varchar(250),
    preferred_brand_tier varchar(64),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_ims_bridge
(
    source_name varchar(255),
    payer_name varchar(200),
    code varchar(50),
    name varchar(250),
    state varchar(2),
    comments varchar(250),
    plan_id varchar(100),
    plan_name varchar(250),
    provider_name varchar(250),
    plan_type_name varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_pbms
(
    source_name varchar(255),
    health_plan_id varchar(6),
    pbm_id varchar(6),
    pbm varchar(250),
    pbm_function_id varchar(6),
    pbm_function varchar(250),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_restrictions
(
    source_name varchar(255),
    health_plan_id varchar(64),
    drug_id varchar(64),
    restriction_detail_id varchar(64),
    restriction_code varchar(64),
    formulary_entry_restriction_id varchar(64),
    restriction_detail_text varchar(250),
    restriction_addtnl_information_1 varchar(1000),
    restriction_addtnl_information_2 varchar(1000),
    record_id int,
    file_id int
);


CREATE TABLE integration.mm_tiers
(
    source_name varchar(255),
    id varchar(64),
    name varchar(250),
    code_name varchar(10),
    explanation_text varchar(1000),
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_wk_bridge
(
    source_name varchar(255),
    name varchar(200),
    amc_number varchar(6),
    pbm_amc_number varchar(6),
    plan_type_code varchar(50),
    zip_code varchar(50),
    comments varchar(250),
    ff_plan_id varchar(100),
    ff_plan_name varchar(250),
    ff_provider_name varchar(250),
    ff_plan_type varchar(100),
    file_id int,
    record_id int
);


CREATE TABLE integration.rems_prescriber
(
    source_name varchar(255),
    program_id varchar(10),
    program_name varchar(48),
    channel varchar(20),
    enrollment_id varchar(20),
    first_name varchar(36),
    middle_name varchar(36),
    last_name varchar(40),
    credential varchar(40),
    site_name varchar(200),
    address_line_1 varchar(40),
    address_line_2 varchar(40),
    city varchar(40),
    state_code varchar(2),
    zip varchar(5),
    status varchar(60),
    phone varchar(10),
    effective_date date,
    expiration_date date,
    npi varchar(10),
    dea_number varchar(20),
    obsolescence_date date,
    ppaf_count int,
    file_id int,
    record_id int,
    in_progress_step varchar(40),
    tvcmid int
);


CREATE TABLE integration.copay_weekly
(
    source_name varchar(255),
    trans_type varchar(1),
    asi_txn_id varchar(20),
    orig_asi_txn_id varchar(20),
    rx_number varchar(50),
    rx_date date,
    date_written date,
    days_supply int,
    ndc_code varchar(20),
    daw int,
    drug_name varchar(50),
    drug_description varchar(100),
    new_refill int,
    quantity numeric(37,15),
    refills int,
    other_coverage_code varchar(10),
    group_number varchar(50),
    member_id varchar(20),
    sex varchar(1),
    age_at_redemption int,
    status varchar(2),
    patient_paid_amount_qualifier varchar(2),
    pharmacy_process_date date,
    nabp varchar(15),
    pharmacy_chain varchar(50),
    pharmacy_name varchar(100),
    pharmacy_address varchar(100),
    pharmacy_address2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(15),
    pharmacy_npi_number varchar(10),
    principle_phys_dea_number varchar(20),
    phys_npi varchar(10),
    physician_name varchar(100),
    physician_first_name varchar(50),
    physician_middle_name varchar(50),
    physician_last_name varchar(50),
    physician_suffix varchar(50),
    physician_prof_desg varchar(50),
    spec1 varchar(50),
    spec2 varchar(40),
    asi_phys_address1 varchar(100),
    asi_phys_address2 varchar(100),
    asi_phys_city varchar(50),
    asi_phys_state varchar(2),
    asi_phys_zip varchar(15),
    submission_method varchar(1),
    patient_benefit numeric(37,15),
    pharmacy_fee numeric(18,4),
    total_amount_authorized numeric(18,4),
    patient_copay numeric(37,15),
    patient_oop numeric(37,15),
    linked_card varchar(1000),
    doctor_state_license_number varchar(20),
    sln_state varchar(50),
    program_name varchar(255),
    customer_physician_id varchar(15),
    provider_reimbursement numeric(18,4),
    coupon_amount numeric(18,4),
    file_id int,
    record_id int,
    tvcmid_pharmacy int,
    tvcmid_physician int
);


CREATE TABLE integration.clozapine_sales
(
    source_name varchar(255),
    transaction_id varchar(100),
    invoice_date date,
    product_brand varchar(50),
    product_ndc varchar(20),
    product_desc varchar(100),
    invoice_qty numeric(37,15),
    invoice_units numeric(37,15),
    invoice_cost numeric(18,4),
    invoice_pack_cost numeric(18,4),
    invoice_unit_cost numeric(18,4),
    contract_pack_cost numeric(18,4),
    contract_purchases numeric(18,4),
    contract_number varchar(100),
    dispensing_location varchar(100),
    dl_address_1 varchar(100),
    dl_address_2 varchar(100),
    dl_city varchar(50),
    dl_state varchar(2),
    dl_zip varchar(20),
    dl_dea_number varchar(20),
    depot_location varchar(100),
    dep_address_1 varchar(100),
    dep_address_2 varchar(100),
    dep_city varchar(50),
    dep_state varchar(2),
    dep_zip varchar(5),
    dep_dea_number varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE integration.speaker_license
(
    source_system_name varchar(100),
    speaker_id varchar(100),
    state_code varchar(100),
    state_license_number varchar(100),
    state_license_effective_date timestamp,
    state_license_expiration_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE integration.speaker_training
(
    source_system_name varchar(100),
    speaker_id varchar(100),
    topic_id varchar(100),
    effective_date timestamp,
    expiration_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE integration.topic_product
(
    source_system_name varchar(100),
    topic_id varchar(100),
    topic_name varchar(250),
    product_id varchar(100),
    product_name varchar(100),
    effective_date timestamp,
    expiration_date timestamp,
    file_id int,
    record_id int
);


CREATE TABLE integration.mm_predominant
(
    source_name varchar(255),
    ims_plan_id varchar(10),
    ims_plan_name varchar(100),
    ff_plan_id varchar(25),
    ff_plan_name varchar(100),
    record_id int,
    file_id int
);


CREATE TABLE integration.event_attendee
(
    source_system_name varchar(100),
    event_number varchar(100),
    employee_id varchar(100),
    attendee_id varchar(100),
    attendee_last_name varchar(100),
    attendee_first_name varchar(100),
    attendee_middle_name varchar(100),
    attendee_title varchar(100),
    attendee_specialty varchar(100),
    attendee_degree varchar(100),
    attendee_address_line_1 varchar(100),
    attendee_address_line_2 varchar(100),
    attendee_address_line_3 varchar(100),
    attendee_city varchar(100),
    attendee_state_province varchar(100),
    attendee_postal_code varchar(100),
    attendee_postal_extended_code varchar(100),
    attendee_phone varchar(100),
    attendee_fax varchar(100),
    attendee_email varchar(100),
    dea_number varchar(100),
    ims_number varchar(100),
    me_number varchar(100),
    npi_number varchar(10),
    attendee_category_code varchar(100),
    attended int,
    meal int,
    file_id int,
    record_id int,
    non_hcp_count int,
    other_hcp_count int,
    customer_id int,
    attendee_address_line_4 varchar(100)
);


CREATE TABLE integration.specialty_pharmacy_rx
(
    source_name varchar(255),
    specialty_pharmacy_name varchar(50),
    sub_specialty_pharmacy_name varchar(50),
    specialty_pharmacy_hub_id varchar(20),
    pharmacy_npi varchar(10),
    ncpdp varchar(7),
    pharmacy_store_number varchar(20),
    pharmacy_address_1 varchar(100),
    pharmacy_address_2 varchar(100),
    pharmacy_city varchar(50),
    pharmacy_state varchar(2),
    pharmacy_zip varchar(10),
    pharmacy_phone varchar(20),
    pharmacy_fax varchar(20),
    dsp_patient_id varchar(100),
    gender varchar(1),
    age int,
    patient_state varchar(2),
    primary_icd9 varchar(20),
    secondary_icd9 varchar(20),
    prescriber_npi varchar(10),
    prescriber_dea varchar(20),
    prescriber_hub_id varchar(20),
    prescriber_name_first varchar(50),
    prescriber_name_last varchar(50),
    prescriber_address_1 varchar(100),
    prescriber_address_2 varchar(100),
    prescriber_city varchar(50),
    prescriber_state varchar(2),
    prescriber_zip varchar(10),
    prescriber_phone varchar(20),
    prescriber_fax varchar(20),
    drug_name varchar(50),
    drug_ndc_11 varchar(20),
    drug_strength varchar(20),
    drug_form varchar(20),
    package_size varchar(20),
    dose_form varchar(50),
    rx_nbr varchar(20),
    refill_number int,
    rx_refills_written int,
    dispense_qty int,
    days_supply int,
    rx_written_date date,
    rx_receipt_date date,
    fill_date date,
    rx_type varchar(1),
    copay numeric(18,4),
    ingredient_wac_cost numeric(18,4),
    total_price_paid numeric(18,4),
    primary_plan_name varchar(100),
    primary_bin varchar(20),
    primary_pcn varchar(20),
    secondary_plan_name varchar(100),
    secondary_bin varchar(20),
    secondary_pcn varchar(20),
    tertiary_plan_name varchar(100),
    tertiary_bin varchar(20),
    tertiary_pcn varchar(20),
    ship_date date,
    shipping_carrier varchar(20),
    file_id int,
    record_id int
);


CREATE TABLE integration.activity
(
    activity_id varchar(64),
    federation_id varchar(64),
    contact varchar(200),
    source_name varchar(200),
    "datetime" timestamp,
    trackback_id varchar(200),
    previous_activity varchar(200),
    level_name varchar(200),
    activity_role_name varchar(200),
    type_name varchar(200),
    native_type varchar(200),
    details varchar(200),
    file_id int,
    record_id int,
    basket_id varchar(64),
    web_url varchar(5000)
);


CREATE TABLE integration.activity_line_item
(
    line_item_id varchar(64),
    brand_name varchar(200),
    activity varchar(200),
    line_item_datetime timestamp,
    line_item_previous_item varchar(200),
    line_item_trackback_id varchar(200),
    line_item_details varchar(200),
    line_item_type_name varchar(200),
    line_item_native_type varchar(200),
    file_id int,
    record_id int
);


CREATE TABLE integration.aggregated_activity
(
    aggregated_id varchar(64),
    level_name varchar(200),
    federation_id varchar(64),
    source_name varchar(200),
    contact varchar(200),
    originating_id varchar(200),
    prior_activity varchar(200),
    activity_role_name varchar(200),
    count int,
    aggregated_type_name varchar(200),
    file_id int,
    record_id int
);


CREATE TABLE integration.dynamic_segment
(
    federation_id varchar(64),
    basket_id int,
    segment_name varchar(50),
    segment_value varchar(50),
    file_id int,
    record_id int
);


CREATE TABLE integration.ddd
(
    source_name varchar(255),
    client_number varchar(3),
    report_number varchar(3),
    territory_number varchar(10),
    outlet_code varchar(8),
    category_code varchar(2),
    ims_product_code varchar(10),
    data_date date,
    outlet_name varchar(30),
    outlet_address varchar(30),
    outlet_city varchar(25),
    outlet_state varchar(2),
    outlet_zip varchar(10),
    bucket_date date,
    bucket_type varchar(10),
    quantity numeric(37,15),
    dollars numeric(37,15),
    file_id int,
    record_id int,
    tvcmid_outlet int,
    subcategory_code varchar(10)
);


CREATE TABLE integration.specialty_pharmacy_patient_txn
(
    patient_yob numeric(4,0),
    patient_gender varchar(10),
    ims_surrogate_patient_id numeric(38,0),
    product_ndc varchar(15),
    product_name varchar(50),
    product_strength varchar(50),
    unit_of_measure varchar(50),
    extended_wac_price numeric(9,4),
    transaction_id varchar(20),
    patient_status_date date,
    patient_status_ varchar(50),
    patient_sub_status varchar(100),
    specialty_pharmacy_patient_or_case_id varchar(20),
    primary_icd_9 varchar(30),
    primary_icd_10 varchar(30),
    script_reciept_date date,
    primary_appeal_status varchar(50),
    primary_copay_type varchar(50),
    primary_deductible numeric(9,4),
    primary_pa_required varchar(10),
    primary_copay_amount numeric(9,4),
    primary_payer_name varchar(128),
    primary_plan_name varchar(70),
    primary_payer_type varchar(50),
    primary_plan_type varchar(50),
    primary_payer_reject_reason_code varchar(70),
    primary_reimbursement_status varchar(100),
    primary_reimbursement_status_date date,
    primary_step_therapy_required varchar(30),
    secondary_copay_type varchar(50),
    secondary_deductible numeric(9,4),
    secondary_pa_required varchar(10),
    secondary_copay_amount numeric(9,4),
    secondary_payer_name varchar(128),
    secondary_plan_name varchar(70),
    secondary_payer_type varchar(50),
    secondary_plan_type varchar(50),
    secondary_payer_reject_reason_code varchar(70),
    secondary_step_therapy_required varchar(30),
    ncpdp_number varchar(10),
    pharmacy_name varchar(75),
    pharmacy_zip varchar(10),
    prescribing_physician_first_name varchar(35),
    prescribing_physician_last_name varchar(35),
    prescribing_physician_middle_initial varchar(35),
    prescribing_physician_dea_number varchar(15),
    prescribing_physician_me_number varchar(10),
    prescribing_physician_npi_number varchar(15),
    prescribing_physician_address_1 varchar(70),
    prescribing_physician_address_2 varchar(70),
    prescribing_physician_city varchar(50),
    prescribing_physician_state varchar(20),
    prescribing_physician_zip varchar(5),
    number_of_fills_prescribed numeric(10,0),
    number_of_refills_remaining numeric(4,0),
    fill_type varchar(10),
    rx_date date,
    rx_number varchar(15),
    carrier varchar(50),
    date_of_drug_receipt date,
    initial_ship_date date,
    quantity_shipped numeric(9,4),
    out_of_pocket_cost numeric(9,4),
    shipment_date date,
    product_lot_number varchar(35),
    program_dispense_type varchar(50),
    days_supply_dispensed varchar(20),
    primary_payer_pa_outcome varchar(30),
    secondary_payer_pa_outcome varchar(30),
    rx_communication_method varchar(30),
    tertiary_icd_10 varchar(30),
    ims_file_id numeric(38,0),
    ims_transaction_id numeric(38,0),
    ims_cycle_date date,
    ims_supplier_id numeric(15,0),
    ims_supplier_name varchar(150),
    ims_transaction_type_code numeric(2,0),
    ims_duplicate_transaction varchar(1),
    ims_prescriber_id varchar(10),
    ims_phys_first_name varchar(50),
    ims_phys_last_name varchar(50),
    ims_phys_address varchar(40),
    ims_phys_city varchar(40),
    ims_phys_state varchar(14),
    ims_phys_zip varchar(5),
    ims_phys_specialty varchar(3),
    ims_product_id varchar(10),
    ims_product_description varchar(100),
    ims_outlet_id varchar(10),
    ims_outlet_name varchar(50),
    ims_outlet_address varchar(100),
    ims_outlet_city varchar(40),
    ims_outlet_state varchar(14),
    ims_outlet_zip varchar(5),
    ims_outlet_subcategory varchar(2),
    ims_plan_id varchar(10),
    ims_plan_name varchar(100),
    ims_plan_model varchar(50),
    primary_icd10_grouping varchar(20),
    primary_icd10_grouping_reason_code varchar(30),
    secondary_icd10_grouping varchar(20),
    secondary_icd10_grouping_reason_code varchar(30),
    ims_ndc_flag varchar(1),
    ims_dispensed_date_flag varchar(1),
    ims_dispensed_quantity_flag varchar(1),
    ims_cost_flag varchar(1),
    ims_overall_flag varchar(1),
    file_id int,
    record_id int
);


CREATE TABLE integration.dx_claims
(
    ims_id varchar(7),
    npi varchar(10),
    g244_clm_cnt_mth_01 int,
    g244_clm_cnt_mth_02 int,
    g244_clm_cnt_mth_03 int,
    g244_clm_cnt_mth_04 int,
    g244_clm_cnt_mth_05 int,
    g244_clm_cnt_mth_06 int,
    g244_clm_cnt_mth_07 int,
    g244_clm_cnt_mth_08 int,
    g244_clm_cnt_mth_09 int,
    g244_clm_cnt_mth_10 int,
    g244_clm_cnt_mth_11 int,
    g244_clm_cnt_mth_12 int,
    g244_pat_cnt_mth_01 int,
    g244_pat_cnt_mth_02 int,
    g244_pat_cnt_mth_03 int,
    g244_pat_cnt_mth_04 int,
    g244_pat_cnt_mth_05 int,
    g244_pat_cnt_mth_06 int,
    g244_pat_cnt_mth_07 int,
    g244_pat_cnt_mth_08 int,
    g244_pat_cnt_mth_09 int,
    g244_pat_cnt_mth_10 int,
    g244_pat_cnt_mth_11 int,
    g244_pat_cnt_mth_12 int,
    g2401_clm_cnt_mth_01 int,
    g2401_clm_cnt_mth_02 int,
    g2401_clm_cnt_mth_03 int,
    g2401_clm_cnt_mth_04 int,
    g2401_clm_cnt_mth_05 int,
    g2401_clm_cnt_mth_06 int,
    g2401_clm_cnt_mth_07 int,
    g2401_clm_cnt_mth_08 int,
    g2401_clm_cnt_mth_09 int,
    g2401_clm_cnt_mth_10 int,
    g2401_clm_cnt_mth_11 int,
    g2401_clm_cnt_mth_12 int,
    g2401_pat_cnt_mth_01 int,
    g2401_pat_cnt_mth_02 int,
    g2401_pat_cnt_mth_03 int,
    g2401_pat_cnt_mth_04 int,
    g2401_pat_cnt_mth_05 int,
    g2401_pat_cnt_mth_06 int,
    g2401_pat_cnt_mth_07 int,
    g2401_pat_cnt_mth_08 int,
    g2401_pat_cnt_mth_09 int,
    g2401_pat_cnt_mth_10 int,
    g2401_pat_cnt_mth_11 int,
    g2401_pat_cnt_mth_12 int,
    file_id int,
    record_id int
);


CREATE TABLE integration.fia_product
(
    product_id varchar(11),
    product_group varchar(80),
    product_group_id int,
    product_name varchar(100),
    generic_name varchar(100),
    brand_generic_flag varchar(1),
    product_form varchar(100),
    product_strength varchar(100),
    package_size float,
    manufacturer varchar(100),
    cmf10 varchar(10),
    usc_code varchar(5),
    fia_market_id varchar(50),
    fia_market_desc varchar(50),
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    flexible_fld_3_char varchar(50),
    flexible_fld_4_char varchar(50),
    record_id int,
    file_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_geography
(
    zip_code varchar(5),
    cbsa_code varchar(5),
    cbsa_description varchar(100),
    state_code varchar(2),
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    record_id int,
    file_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_reject
(
    reject_code varchar(3),
    reject_reason varchar(200),
    reject_group varchar(50),
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_plan
(
    plantrak_id varchar(10),
    payer_name varchar(64),
    plan_name varchar(64),
    pbm_name varchar(60),
    pbm_id varchar(6),
    method_of_payment varchar(50),
    model_type varchar(64),
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_fact_v1
(
    claim_id int,
    patient_id int,
    sequence_number int,
    product_id varchar(11),
    fill_date date,
    claim_type varchar(2),
    reject_code varchar(3),
    days_supply numeric(10,6),
    quantity varchar(12),
    refill_code int,
    plantrak_id varchar(10),
    opc_ask varchar(10),
    sec_plantrak_id varchar(10),
    buy_down varchar(11),
    opc_paid varchar(10),
    prescriber_id varchar(7),
    sob varchar(1),
    sub_product_id varchar(11),
    sub_opc varchar(10),
    initial_claim_id int,
    prev_product_id varchar(11),
    daw_code varchar(2),
    wrt_date date,
    claim_status varchar(1),
    copay_card_flg varchar(4),
    zip_code varchar(5),
    ecoup_flag int,
    ecoup_offset_amt numeric(10,2),
    standard_copay numeric(10,2),
    standard_copay_yn varchar(1),
    market_id int,
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    flexible_fld_3_char varchar(50),
    flexible_fld_4_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.fia_mpd
(
    patient_id int,
    mpd_year int,
    mpd_eligibility_class varchar(11),
    deductible_start_date date,
    copay_start_date date,
    gap_start_date date,
    catastrophic_start_date date,
    mpd_panel_patient int,
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);


CREATE TABLE integration.xpd_add_on_details
(
    ims_client_number varchar(3),
    ims_report_number varchar(2),
    channel_indicator int,
    ims_id varchar(10),
    specialty varchar(10),
    add_to_product_group varchar(3),
    add_On_product_group varchar(3),
    month_ending date,
    add_on_rx numeric(37,15),
    record_id int,
    file_id int
);


CREATE TABLE integration.xpd_restart_diff_details
(
    ims_client_number varchar(3),
    ims_report_number varchar(2),
    channel_indicator int,
    ims_id varchar(10),
    specialty varchar(10),
    rdf_product_group varchar(3),
    rd_product_group varchar(3),
    month_ending date,
    restart_diff_rx numeric(37,15),
    record_id int,
    file_id int
);


CREATE TABLE integration.fia_fact
(
    claim_id varchar(64),
    patient_id int,
    sequence_number int,
    product_id varchar(11),
    fill_date date,
    claim_type varchar(2),
    reject_code varchar(3),
    days_supply numeric(10,6),
    quantity varchar(12),
    refill_code int,
    plantrak_id varchar(10),
    opc_ask varchar(10),
    sec_plantrak_id varchar(10),
    buy_down varchar(11),
    opc_paid varchar(10),
    prescriber_id varchar(20),
    sob varchar(3),
    sub_product_id varchar(11),
    sub_opc varchar(10),
    initial_claim_id varchar(64),
    prev_product_id varchar(11),
    daw_code varchar(2),
    wrt_date date,
    claim_status varchar(1),
    copay_card_flg varchar(4),
    zip_code varchar(5),
    ecoup_flag int,
    ecoup_offset_amt numeric(10,2),
    standard_copay numeric(10,2),
    standard_copay_yn varchar(1),
    market_id int,
    flexible_fld_1_char varchar(50),
    flexible_fld_2_char varchar(50),
    flexible_fld_3_char varchar(50),
    flexible_fld_4_char varchar(50),
    file_id int,
    record_id int,
    file_location varchar(255)
);