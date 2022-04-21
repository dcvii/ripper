CREATE SCHEMA tableau;

CREATE TABLE tableau.drop_geolocation
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    busines_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    campaign_id varchar(250),
    campaign_name varchar(200),
    xref_campaign_name varchar(200),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(200),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    state varchar(50),
    lat numeric(18,8),
    LONG numeric(18,8),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    total_impressions numeric(18,4),
    totals_visits numeric(18,4),
    device_device_category varchar(50),
    total_page_views numeric(18,4)
) INCLUDE SCHEMA PRIVILEGES;


CREATE TABLE tableau.drop_account_dim_test
(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    brand varchar(20),
    engine varchar(20) NOT NULL DEFAULT 'DS',
    audience varchar(10),
    search_engine varchar(20) NOT NULL,
    search_engine_code varchar(20),
    agency_id int NOT NULL,
    agency_name varchar(100) NOT NULL,
    advertiser_id int NOT NULL,
    is_active boolean NOT NULL DEFAULT true,
    is_visible boolean NOT NULL DEFAULT true,
    CONSTRAINT C_PRIMARY PRIMARY KEY (id, engine) DISABLED
);


CREATE TABLE tableau.drop_cards_viewport
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    busines_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    display_impressions varchar(64),
    display_actual_media_cost varchar(64),
    totals_new_visits varchar(64),
    totals_visits varchar(64),
    new_visit_percent numeric(18,4),
    average_cpc varchar(64),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    traffic_source_medium varchar(50),
    device_device_category varchar(50),
    dollar_per_event numeric(18,4),
    dollar_per_goal numeric(18,4),
    search_impressions varchar(64),
    dollar_per_search_impressions varchar(64),
    coupon_redemptions int,
    nrx numeric(18,4),
    display_cpm numeric(18,4),
    search_actual_media_cost numeric(18,4),
    total_cost_per_visitor numeric(18,4)
) INCLUDE SCHEMA PRIVILEGES;


CREATE TABLE tableau.drop_word_cloud
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_id varchar(100),
    partner_category varchar(100),
    partner_name varchar(100),
    creative varchar(250),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    display_impressions numeric(18,4),
    display_impressions_per_thousand numeric(18,4),
    display_clicks numeric(18,4),
    display_conversions numeric(18,4),
    display_actual_media_cost numeric(18,4),
    display_cpm numeric(18,4),
    display_cpc numeric(18,4),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    dollar_per_event numeric(18,4),
    dollar_per_goal numeric(18,4),
    search_impressions numeric(18,4),
    search_impressions_per_thousand numeric(18,4),
    search_clicks numeric(18,4),
    search_conversions numeric(18,4),
    actual_search_cost numeric(18,4),
    average_cpc numeric(18,4),
    dollar_per_search_impressions numeric(18,4),
    search_keyword varchar(200),
    search_ad_group varchar(200),
    daily_visitors numeric(18,4),
    total_media_cost_actual numeric(18,4),
    search_ctr numeric(18,4),
    display_ctr numeric(18,4)
) INCLUDE SCHEMA PRIVILEGES;


CREATE TABLE tableau.drop_account_dim
(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    brand varchar(20),
    engine varchar(20) NOT NULL DEFAULT 'DS',
    audience varchar(10),
    search_engine varchar(20) NOT NULL,
    search_engine_code varchar(20),
    agency_id int NOT NULL,
    agency_name varchar(100) NOT NULL,
    advertiser_id int NOT NULL,
    is_active boolean NOT NULL DEFAULT true,
    is_visible boolean NOT NULL DEFAULT true,
    CONSTRAINT PK_account_dim PRIMARY KEY (engine, id) ENABLED
);


CREATE TABLE tableau.drop_activity_dim
(
    id int NOT NULL,
    name varchar(500),
    engine varchar(10) NOT NULL,
    advertiser_id int,
    group_id int,
    group_name varchar(400),
    category_name varchar(50),
    name_hash int,
    is_event boolean NOT NULL DEFAULT false,
    is_goal boolean NOT NULL DEFAULT false,
    CONSTRAINT C_PRIMARY PRIMARY KEY (id, engine) ENABLED,
    CONSTRAINT C_UNIQUE UNIQUE (name, group_name, advertiser_id) ENABLED
);


CREATE TABLE tableau.drop_activity_event_goal_xref
(
    gathered_from varchar(50),
    event_name varchar(250),
    event_category varchar(50),
    brand varchar(20),
    occurrences int,
    gtm_tag_name varchar(250),
    is_event boolean,
    is_goal boolean,
    kpi_funnel varchar(50),
    CONSTRAINT UQ_activity_event_goal_xref UNIQUE (brand, event_name, gathered_from, event_category) ENABLED
);


CREATE TABLE tableau.drop_activity_hub_src
(
    DATE timestamp,
    business_unit varchar(50),
    brand varchar(200),
    audience varchar(200),
    campaign_name varchar(100),
    type_name varchar(100),
    send int,
    delivered int,
    OPEN int,
    click int,
    zip varchar(50),
    state varchar(50),
    source_name varchar(100),
    spend varchar(50)
);


CREATE TABLE tableau.drop_ad_dim
(
    id int NOT NULL,
    engine varchar(10) NOT NULL,
    type varchar(100),
    placement_id int NOT NULL,
    creative_id int,
    url varchar(1000),
    is_mapped boolean NOT NULL,
    content varchar(1000),
    CONSTRAINT UQ_ad_dim UNIQUE (engine, creative_id, placement_id, id) ENABLED
);


CREATE TABLE tableau.drop_adgroup_xref
(
    search_engine varchar(50),
    ad_group_id varchar(100),
    ad_group_name varchar(200),
    ad_group_rollup varchar(100)
);


CREATE TABLE tableau.drop_advertiser_dim
(
    id int NOT NULL,
    name varchar(200) NOT NULL,
    brand varchar(20),
    engine varchar(20) NOT NULL,
    audience varchar(20),
    account_id int,
    account_engine varchar(20),
    parent_id int,
    parent_engine varchar(20),
    is_active boolean NOT NULL DEFAULT true,
    is_visible boolean NOT NULL DEFAULT true,
    CONSTRAINT C_PRIMARY PRIMARY KEY (id, engine) ENABLED
);


CREATE TABLE tableau.drop_audience_dim
(
    code varchar(3) NOT NULL,
    name varchar(20) NOT NULL,
    is_default boolean NOT NULL,
    regexp_pattern varchar(100),
    CONSTRAINT C_PRIMARY PRIMARY KEY (code) DISABLED
);


CREATE TABLE tableau.drop_brand_bu_xref
(
    ad_server_campaign_id varchar(100),
    brand varchar(200),
    business_unit varchar(100),
    country varchar(100)
);


CREATE TABLE tableau.drop_brand_dim
(
    code varchar(100) NOT NULL,
    name varchar(100) NOT NULL,
    short_name varchar(20),
    regexp_pattern varchar(1000),
    business_unit varchar(100),
    parent_code varchar(80) DEFAULT 'TEVA',
    cached_rx_count int DEFAULT 0,
    CONSTRAINT C_PRIMARY PRIMARY KEY (code) ENABLED
);


CREATE TABLE tableau.drop_campaign_audience_xref
(
    ad_server_campaign_id varchar(100),
    campaign_name varchar(200),
    product_name varchar(100),
    audience varchar(100),
    source varchar(50)
);


CREATE TABLE tableau.drop_campaign_dim
(
    id int,
    code varchar(100) NOT NULL,
    name varchar(200) NOT NULL,
    brand varchar(80) NOT NULL,
    engine varchar(20) NOT NULL,
    engine_code varchar(100),
    audience varchar(20),
    advertiser_id int,
    account_id int,
    normalized_id varchar(80),
    normalized_name varchar(200),
    is_active boolean NOT NULL DEFAULT true,
    is_visible boolean NOT NULL DEFAULT true,
    CONSTRAINT PK_campaign_dim PRIMARY KEY (engine, brand, code) ENABLED
);


CREATE TABLE tableau.drop_cards_viewport__20171106
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    busines_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    display_impressions varchar(64),
    display_actual_media_cost varchar(64),
    totals_new_visits varchar(64),
    totals_visits varchar(64),
    new_visit_percent numeric(37,15),
    average_cpc varchar(64),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    traffic_source_medium varchar(50),
    device_device_category varchar(50),
    dollar_per_event numeric(37,15),
    dollar_per_goal numeric(37,15),
    search_impressions varchar(64),
    dollar_per_search_impressions varchar(64),
    coupon_redemptions int,
    nrx numeric(37,15),
    display_cpm numeric(37,15),
    search_actual_media_cost numeric(37,15),
    total_cost_per_visitor numeric(37,15)
);


CREATE TABLE tableau.drop_city_dim
(
    continent varchar(64),
    subcontinent varchar(64),
    country varchar(128),
    region varchar(128),
    id int NOT NULL,
    name varchar(128),
    latitude float,
    longitude float,
    popularity int,
    CONSTRAINT C_PRIMARY PRIMARY KEY (id) ENABLED
);


CREATE TABLE tableau.drop_control_table
(
    workflow_id int,
    cleansed_table varchar(100),
    file_id int,
    update_ts timestamp NOT NULL DEFAULT getdate()
);


CREATE TABLE tableau.drop_cost_dim
(
    code varchar(10) NOT NULL,
    name varchar(32) NOT NULL,
    note varchar(256),
    CONSTRAINT C_PRIMARY PRIMARY KEY (code) ENABLED
);


CREATE TABLE tableau.drop_coupon_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    state_code varchar(2),
    city_name varchar(40),
    latitude float,
    longitude float,
    coupon_redemptions int
);


CREATE TABLE tableau.drop_da_print_spend_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE timestamp,
    publisher_category varchar(39),
    campaign_name varchar(159),
    daily_cost numeric(18,4)
);


CREATE TABLE tableau.drop_dataset_dim
(
    id int NOT NULL,
    account_id int NOT NULL,
    account_name varchar(100) NOT NULL,
    property_id varchar(20) NOT NULL,
    property_name varchar(100) NOT NULL,
    property_internal_id int NOT NULL,
    property_level varchar(20) NOT NULL,
    website_url varchar(100),
    profile_id int NOT NULL,
    profile_name varchar(100) NOT NULL,
    profile_type varchar(10) NOT NULL,
    brand varchar(100),
    audience varchar(80),
    is_active boolean NOT NULL DEFAULT true,
    CONSTRAINT PK_dataset_dim PRIMARY KEY (id) ENABLED
);


CREATE TABLE tableau.drop_date_master
(
    field varchar(100),
    date_format varchar(100),
    COMMENT varchar(100)
);


CREATE TABLE tableau.drop_device_dim
(
    type varchar(16) NOT NULL,
    name varchar(32) NOT NULL,
    sample varchar(128) NOT NULL,
    minimum_resolution int NOT NULL,
    maximum_resolution int NOT NULL,
    regexp_pattern varchar(128),
    like_pattern varchar(128),
    not_like_pattern varchar(128),
    is_default boolean NOT NULL DEFAULT false,
    is_active boolean NOT NULL DEFAULT true,
    CONSTRAINT PK_device_dim PRIMARY KEY (type) ENABLED
);


CREATE TABLE tableau.drop_doubleclick_dcm_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    impressions numeric(38,0),
    clicks numeric(38,0),
    media_cost numeric(18,4),
    total_conversions numeric(38,0),
    click_thru_conversions numeric(38,0),
    view_thru_conversions numeric(38,0),
    average_cpm numeric(18,4),
    average_cpc numeric(18,4),
    average_ctr numeric(18,4)
);


CREATE TABLE tableau.drop_doubleclick_ds_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    keyword_name varchar(200),
    keyword_position numeric(18,4),
    impressions numeric(38,0),
    clicks numeric(38,0),
    average_cpc numeric(18,4),
    average_cpm numeric(18,4),
    average_ctr numeric(18,4),
    media_cost numeric(18,4),
    adwords_conversions numeric(38,0),
    total_conversions numeric(38,0)
);


CREATE TABLE tableau.drop_email
(
    DATE timestamp,
    business_unit varchar(50),
    brand varchar(200),
    audience varchar(200),
    campaign_name varchar(100),
    type_name varchar(100),
    send int,
    delivered int,
    OPEN int,
    click int,
    zip varchar(50),
    state varchar(50),
    source_name varchar(100),
    spend varchar(50),
    email_stacked_clicks int,
    email_stacked_opens int,
    email_stacked_delivered int
);


CREATE TABLE tableau.drop_email_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    state varchar(2),
    zip varchar(10),
    send int,
    deliver int,
    OPEN int,
    click int
);


CREATE TABLE tableau.drop_email_new
(
    DATE date,
    campaign_id varchar(100),
    business_unit varchar(50),
    brand varchar(200),
    audience varchar(200),
    campaign_name varchar(100),
    type_name varchar(100),
    send int,
    delivered int,
    OPEN int,
    click int,
    zip varchar(50),
    state varchar(50),
    source_name varchar(100),
    spend varchar(50),
    email_stacked_clicks int,
    email_stacked_opens int,
    email_stacked_delivered int
);


CREATE TABLE tableau.drop_email_src
(
    campaign_name varchar(266),
    source_name varchar(100),
    DATE date,
    type_name varchar(100),
    state varchar(2),
    zip varchar(5),
    city varchar(40)
);


CREATE TABLE tableau.drop_engine_dim
(
    code varchar(10) NOT NULL,
    name varchar(64),
    type varchar(8) NOT NULL,
    regexp_pattern varchar(128),
    normalized_name varchar(64),
    strata int,
    url varchar(128),
    bi_layer_code varchar(32),
    CONSTRAINT C_PRIMARY PRIMARY KEY (code, type) DISABLED
);


CREATE TABLE tableau.drop_entity_map
(
    source_id int,
    source_code varchar(64) NOT NULL,
    target_id int,
    target_code varchar(64) NOT NULL,
    source_engine varchar(16) NOT NULL,
    target_engine varchar(16) NOT NULL,
    source_entity varchar(32) NOT NULL,
    target_entity varchar(32) NOT NULL,
    notes varchar(256),
    is_manual_entry boolean NOT NULL DEFAULT false,
    CONSTRAINT PK_entity_map PRIMARY KEY (source_engine, source_entity, target_entity, target_engine, source_code, target_code) ENABLED,
    CONSTRAINT UQ_entity_map UNIQUE (source_engine, source_entity, target_entity, target_engine, source_id, target_id) ENABLED
);


CREATE TABLE tableau.drop_event_goal_xref
(
    gtm_tag_name varchar(200),
    is_event int,
    is_goal int,
    kpi_funnel varchar(100),
    brand varchar(200)
);


CREATE TABLE tableau.drop_fingerprint_dim
(
    full_visitor_id int NOT NULL,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    population int,
    CONSTRAINT PK_fingerprint_dim PRIMARY KEY (full_visitor_id) ENABLED,
    CONSTRAINT UQ_fingerprint_dim UNIQUE (audience_code, search_engine, device_type, engine, brand, campaign_code, partner_id, placement_id, event_id, event_lower_and_md5, event_attribute, asset_id, asset_lower_and_md5, application_code, region_id, city_id, user_id, visit_id) ENABLED
);


CREATE TABLE tableau.drop_geolocation__20171106
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    busines_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    campaign_id varchar(250),
    campaign_name varchar(200),
    xref_campaign_name varchar(200),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(200),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    state varchar(50),
    lat numeric(37,15),
    LONG numeric(37,15),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    total_impressions numeric(37,15),
    totals_visits numeric(37,15),
    device_device_category varchar(50),
    total_page_views numeric(37,15)
);


CREATE TABLE tableau.drop_google_analytics_360_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    traffic_source_medium_initial varchar(100),
    traffic_source_medium_final varchar(100),
    traffic_source_source varchar(100),
    traffic_source_campaign varchar(100),
    partner_site_name varchar(500),
    url varchar(1000),
    min_full_visitor_id numeric(38,0),
    max_full_visitor_id numeric(38,0),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    is_event_label_event int,
    is_event_label_goal int,
    totals_new_visits int,
    totals_visits int,
    totals_bounces int,
    totals_page_views int,
    totals_time_on_site int,
    visit_count int,
    record_count int,
    engine_by_source varchar(10),
    match_placement_by_map int,
    match_campaign_dcm_easy varchar(100),
    match_campaign_dcm_hard varchar(100),
    match_campaign_ds_by_dcm_ghost_map varchar(100),
    match_campaign_ds_by_alias_map varchar(100),
    match_campaign_ds_by_name varchar(100)
);


CREATE TABLE tableau.drop_innovid_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(32),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    iv_campaign_name varchar(100),
    publisher_id int,
    publisher varchar(50),
    iv_video_name varchar(100),
    placement_name varchar(200),
    DATE date,
    video_starts int,
    video_completion numeric(20,0),
    percent_video_completion numeric(18,4)
);


CREATE TABLE tableau.drop_placement_dim
(
    id int NOT NULL,
    name varchar(512) NOT NULL,
    brand varchar(20) NOT NULL,
    engine varchar(3) NOT NULL,
    audience varchar(20),
    campaign_id int NOT NULL,
    category varchar(50),
    search_engine varchar(10),
    pixel_size varchar(50),
    cost varchar(100),
    site_id int,
    url varchar(1000),
    account_id int,
    normalized_id varchar(80),
    normalized_name varchar(200),
    start_date date,
    close_date date,
    CONSTRAINT PK_placement_dim PRIMARY KEY (engine, id) ENABLED
);


CREATE TABLE tableau.drop_ppc_search
(
    DATE date,
    business_unit varchar(100),
    advertiser_id int,
    brand varchar(20),
    audience varchar(20),
    buy_type varchar(100),
    creative varchar(512),
    ad_size varchar(50),
    publisher_unique_id varchar(250),
    search_engine_source varchar(10),
    campaign_id varchar(80),
    campaign_name varchar(200),
    search_impressions numeric(38,0),
    dollar_per_search_impression numeric(38,0),
    search_clicks numeric(38,0),
    search_ctr numeric(38,0),
    search_cpc numeric(18,4),
    search_conversion_name varchar(500),
    search_conversions numeric(38,0),
    dollar_per_search_conversions numeric(38,0),
    keyword varchar(200),
    ad_group_id int,
    ad_group varchar(512),
    ad_position float,
    max_bid numeric(18,4)
);


CREATE TABLE tableau.drop_ppc_search_sankey
(
    session_date_filter date,
    business_unit_filter varchar(100),
    brand_filter varchar(200),
    target_audience_filter varchar(100),
    campaign_id_artifact_not_used varchar(100),
    campaign_name_filter varchar(200),
    ad_group_id varchar(100),
    ad_group_node_left varchar(50),
    teva_url_node_center varchar(1000),
    visit_weight_partner_site_to_url varchar(64),
    conversion_node_right varchar(500),
    event_weight_url_to_event varchar(64),
    search_engine_filter varchar(50),
    partner_site_id varchar(100)
);


CREATE TABLE tableau.drop_publisher_partner_site_xref
(
    partner_site_id varchar(100),
    partner_site_name varchar(100),
    partner_group varchar(100),
    partner_site_classification varchar(100),
    partner_site_classification_desc varchar(200),
    COMMENT varchar(200)
);


CREATE TABLE tableau.drop_rec_search_sankey
(
    session_date_filter date,
    business_unit_filter varchar(100),
    brand_filter varchar(200),
    target_audience_filter varchar(100),
    campaign_id_artifact_not_used varchar(100),
    campaign_name_filter varchar(200),
    publisher_unique_id_artifact_not_used varchar(100),
    partner_site_classification_node_left varchar(100),
    daily_classification_cnt int,
    teva_url_node_center varchar(1000),
    visit_weight_partner_site_to_url varchar(64),
    hits_event_info_event_label varchar(500),
    event_weight_url_to_event varchar(64)
);


CREATE TABLE tableau.drop_region_dim
(
    code varchar(10) NOT NULL,
    name varchar(128) NOT NULL,
    region_type varchar(64),
    code_iso varchar(10),
    code_ansi varchar(10),
    code_uscg varchar(80),
    latitude float,
    longitude float,
    CONSTRAINT C_PRIMARY PRIMARY KEY (code) ENABLED,
    CONSTRAINT C_UNIQUE UNIQUE (name) ENABLED
);


CREATE TABLE tableau.drop_script_fct
(
    full_visitor_id int,
    brand varchar(100),
    engine varchar(20),
    audience_code varchar(3),
    campaign_code varchar(100),
    placement_id int,
    partner_id int,
    asset_id int,
    asset_value varchar(1000),
    asset_lower_and_md5 varchar(32),
    search_engine varchar(10),
    device_type varchar(20),
    application_code varchar(32),
    region_id varchar(10),
    city_id int,
    event_id int,
    event_value varchar(1000),
    event_lower_and_md5 varchar(1),
    event_attribute varchar(100),
    user_id int,
    visit_id int,
    DATE date,
    state char(2),
    latitude float,
    longitude float,
    rollup_week date,
    rollup_month date,
    record_count int,
    day_count_total int,
    nrx_count_total float,
    nrx_count float
);


CREATE TABLE tableau.drop_site_dim
(
    id int NOT NULL,
    name varchar(500),
    engine varchar(3),
    account_id int,
    directory_site_id int,
    class_code varchar(200),
    class_name varchar(400),
    has_click_tracking boolean,
    has_click_thru_url boolean,
    CONSTRAINT PK_site_dim PRIMARY KEY (id) ENABLED
);


CREATE TABLE tableau.drop_stacked_bar__20171106
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    source_type varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    impressions_total numeric(37,15),
    engagement_total numeric(37,15),
    conversion_total numeric(37,15),
    spend_total numeric(37,15),
    ola_spend numeric(37,15),
    ola_cpm numeric(37,15),
    ola_impressions numeric(37,15),
    ola_impressions_per_thousand numeric(37,15),
    ola_clicks numeric(37,15),
    ola_conversions numeric(37,15),
    ola_cpc numeric(37,15),
    ola_dollar_per_conversions numeric(37,15),
    impressions_total_per_thousand numeric(37,15),
    stacked_conversions_total numeric(37,15),
    stacked_engagement_total numeric(37,15),
    stacked_impressions_total_per_thousand numeric(37,15),
    ola_stacked_conversion varchar(64),
    ola_stacked_engagement numeric(37,15),
    ola_stacked_impressions_per_thousand numeric(37,15),
    email_delivered numeric(37,15),
    email_opens numeric(37,15),
    email_clicks numeric(37,15),
    email_spend numeric(37,15),
    email_stacked_clicks numeric(37,15),
    email_stacked_opens numeric(37,15),
    email_stacked_delivered numeric(37,15),
    email_source_name varchar(250)
);


CREATE TABLE tableau.drop_text_table__20171106
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    ias_campaign_id varchar(50),
    viewability numeric(37,15),
    dollar_per_viewable_impression numeric(37,15),
    percent_viewed_hover numeric(37,15),
    innovid_campaign_id varchar(64),
    video_starts numeric(37,15),
    video_completion numeric(37,15),
    video_completion_percent numeric(37,15),
    owned_asset_visit varchar(100),
    owned_asset_visit_descripton varchar(100),
    bounce_rate numeric(37,15),
    search_impressions numeric(37,15),
    search_actual_cost numeric(37,15),
    search_clicks numeric(37,15),
    search_ctr numeric(37,15),
    search_cpc numeric(37,15),
    search_conversion_name varchar(500),
    search_conversions numeric(37,15),
    dollar_per_search_conversions numeric(37,15),
    totals_visits numeric(37,15),
    display_impressions numeric(37,15),
    display_cpm numeric(37,15),
    event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    display_media_cost numeric(37,15),
    display_clicks numeric(37,15),
    display_cpc numeric(37,15),
    display_conversion_name varchar(500),
    display_conversions numeric(37,15),
    search_cpm numeric(37,15),
    dollar_per_event numeric(37,15),
    dollar_per_goal numeric(37,15)
);


CREATE TABLE tableau.drop_word_cloud__20171106
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_id varchar(100),
    partner_category varchar(100),
    partner_name varchar(100),
    creative varchar(250),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    display_impressions varchar(64),
    display_impressions_per_thousand numeric(37,15),
    display_clicks numeric(37,15),
    display_conversions numeric(37,15),
    display_actual_media_cost numeric(37,15),
    display_cpm numeric(37,15),
    display_cpc numeric(37,15),
    hits_event_info_event_category varchar(250),
    hits_event_info_event_action varchar(250),
    hits_event_info_event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    dollar_per_event numeric(37,15),
    dollar_per_goal numeric(37,15),
    search_impressions numeric(37,15),
    search_impressions_per_thousand numeric(37,15),
    search_clicks numeric(37,15),
    search_conversions numeric(37,15),
    actual_search_cost numeric(37,15),
    average_cpc numeric(37,15),
    dollar_per_search_impressions numeric(37,15),
    search_keyword varchar(200),
    search_ad_group varchar(200),
    daily_visitors numeric(37,15),
    total_media_cost_actual numeric(37,15),
    search_ctr numeric(37,15),
    display_ctr numeric(37,15)
);


CREATE TABLE tableau.drop_zip3_state
(
    zip3 char(3) NOT NULL,
    state char(2) NOT NULL,
    popularity int,
    CONSTRAINT C_PRIMARY PRIMARY KEY (zip3) ENABLED
);


CREATE TABLE tableau.drop_stacked_bar
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    source_type varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    impressions_total numeric(18,4),
    engagement_total numeric(18,4),
    conversion_total numeric(18,4),
    spend_total numeric(18,4),
    ola_spend numeric(18,4),
    ola_cpm numeric(18,4),
    ola_impressions numeric(18,4),
    ola_impressions_per_thousand numeric(18,4),
    ola_clicks numeric(18,4),
    ola_conversions numeric(18,4),
    ola_cpc numeric(18,4),
    ola_dollar_per_conversions numeric(18,4),
    impressions_total_per_thousand numeric(18,4),
    stacked_conversions_total numeric(18,4),
    stacked_engagement_total numeric(18,4),
    stacked_impressions_total_per_thousand numeric(18,4),
    ola_stacked_conversion numeric(18,4),
    ola_stacked_engagement numeric(18,4),
    ola_stacked_impressions_per_thousand numeric(18,4),
    email_delivered numeric(18,4),
    email_opens numeric(18,4),
    email_clicks numeric(18,4),
    email_spend numeric(18,4),
    email_stacked_clicks numeric(18,4),
    email_stacked_opens numeric(18,4),
    email_stacked_delivered numeric(18,4),
    email_source_name varchar(250)
) INCLUDE SCHEMA PRIVILEGES;


CREATE TABLE tableau.drop_text_table
(
    full_visitor_id varchar(64),
    visit_id varchar(50),
    DATE date,
    business_unit varchar(100),
    brand varchar(200),
    audience varchar(100),
    buy_type varchar(100),
    partner_site_id varchar(100),
    partner_site_name varchar(100),
    partner_category varchar(100),
    creative varchar(200),
    ad_size varchar(50),
    search_engine varchar(50),
    campaign_id varchar(100),
    campaign_name varchar(200),
    ias_campaign_id varchar(50),
    viewability numeric(18,4),
    dollar_per_viewable_impression numeric(18,4),
    percent_viewed_hover numeric(18,4),
    innovid_campaign_id varchar(64),
    video_starts numeric(18,4),
    video_completion numeric(18,4),
    video_completion_percent numeric(18,4),
    owned_asset_visit varchar(100),
    owned_asset_visit_descripton varchar(100),
    bounce_rate numeric(18,4),
    search_impressions numeric(18,4),
    search_actual_cost numeric(18,4),
    search_clicks numeric(18,4),
    search_ctr numeric(18,4),
    search_cpc numeric(18,4),
    search_conversion_name varchar(500),
    search_conversions numeric(18,4),
    dollar_per_search_conversions numeric(18,4),
    totals_visits numeric(18,4),
    display_impressions numeric(18,4),
    display_cpm numeric(18,4),
    event_label varchar(500),
    is_event_label_event int,
    is_event_label_goal int,
    display_media_cost numeric(18,4),
    display_clicks numeric(18,4),
    display_cpc numeric(18,4),
    display_conversion_name varchar(500),
    display_conversions numeric(18,4),
    search_cpm numeric(18,4),
    dollar_per_event numeric(18,4),
    dollar_per_goal numeric(18,4)
) INCLUDE SCHEMA PRIVILEGES;