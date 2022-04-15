CREATE SCHEMA tableau;

CREATE SEQUENCE tableau.fingerprint_dim_seq  CYCLE  MAXVALUE   1000000000000000 ;

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


CREATE PROJECTION tableau.campaign_dim__super__v1a17Q4
(
 id ENCODING DELTARANGE_COMP,
 code,
 name,
 brand ENCODING RLE,
 engine ENCODING RLE,
 engine_code,
 audience,
 advertiser_id ENCODING COMMONDELTA_COMP,
 account_id ENCODING BLOCKDICT_COMP,
 normalized_id,
 normalized_name,
 is_active ENCODING BLOCKDICT_COMP,
 is_visible ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_campaign_dim.id,
        drop_campaign_dim.code,
        drop_campaign_dim.name,
        drop_campaign_dim.brand,
        drop_campaign_dim.engine,
        drop_campaign_dim.engine_code,
        drop_campaign_dim.audience,
        drop_campaign_dim.advertiser_id,
        drop_campaign_dim.account_id,
        drop_campaign_dim.normalized_id,
        drop_campaign_dim.normalized_name,
        drop_campaign_dim.is_active,
        drop_campaign_dim.is_visible
 FROM tableau.drop_campaign_dim
 ORDER BY drop_campaign_dim.engine,
          drop_campaign_dim.brand,
          drop_campaign_dim.code
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.device_dim__super__v1a17Q4
(
 type,
 name,
 sample,
 minimum_resolution,
 maximum_resolution,
 regexp_pattern,
 like_pattern,
 not_like_pattern,
 is_default ENCODING BLOCKDICT_COMP,
 is_active ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_device_dim.type,
        drop_device_dim.name,
        drop_device_dim.sample,
        drop_device_dim.minimum_resolution,
        drop_device_dim.maximum_resolution,
        drop_device_dim.regexp_pattern,
        drop_device_dim.like_pattern,
        drop_device_dim.not_like_pattern,
        drop_device_dim.is_default,
        drop_device_dim.is_active
 FROM tableau.drop_device_dim
 ORDER BY drop_device_dim.type,
          drop_device_dim.name,
          drop_device_dim.sample,
          drop_device_dim.minimum_resolution,
          drop_device_dim.maximum_resolution,
          drop_device_dim.regexp_pattern,
          drop_device_dim.like_pattern,
          drop_device_dim.not_like_pattern,
          drop_device_dim.is_default,
          drop_device_dim.is_active
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.entity_map__super__v1a17Q4
(
 source_id ENCODING DELTARANGE_COMP,
 source_code,
 target_id ENCODING COMMONDELTA_COMP,
 target_code,
 source_engine ENCODING RLE,
 target_engine ENCODING RLE,
 source_entity ENCODING RLE,
 target_entity ENCODING RLE,
 notes,
 is_manual_entry ENCODING RLE
)
AS
 SELECT drop_entity_map.source_id,
        drop_entity_map.source_code,
        drop_entity_map.target_id,
        drop_entity_map.target_code,
        drop_entity_map.source_engine,
        drop_entity_map.target_engine,
        drop_entity_map.source_entity,
        drop_entity_map.target_entity,
        drop_entity_map.notes,
        drop_entity_map.is_manual_entry
 FROM tableau.drop_entity_map
 ORDER BY drop_entity_map.source_engine,
          drop_entity_map.source_entity,
          drop_entity_map.target_entity,
          drop_entity_map.target_engine,
          drop_entity_map.source_code,
          drop_entity_map.target_code
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.entity_map__unique__v1a17Q4
(
 source_id ENCODING DELTARANGE_COMP,
 source_code,
 target_id ENCODING COMMONDELTA_COMP,
 target_code,
 source_engine ENCODING RLE,
 target_engine ENCODING RLE,
 source_entity ENCODING RLE,
 target_entity ENCODING RLE,
 notes,
 is_manual_entry ENCODING RLE
)
AS
 SELECT drop_entity_map.source_id,
        drop_entity_map.source_code,
        drop_entity_map.target_id,
        drop_entity_map.target_code,
        drop_entity_map.source_engine,
        drop_entity_map.target_engine,
        drop_entity_map.source_entity,
        drop_entity_map.target_entity,
        drop_entity_map.notes,
        drop_entity_map.is_manual_entry
 FROM tableau.drop_entity_map
 ORDER BY drop_entity_map.source_engine,
          drop_entity_map.source_entity,
          drop_entity_map.target_entity,
          drop_entity_map.target_engine,
          drop_entity_map.source_id,
          drop_entity_map.target_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.geolocation__super__v1a17Q4_b0 /*+basename(geolocation__super__v1a17Q4)*/ 
(
 full_visitor_id,
 visit_id ENCODING RLE,
 DATE ENCODING DELTARANGE_COMP,
 busines_unit ENCODING RLE,
 brand ENCODING RLE,
 audience ENCODING RLE,
 campaign_id ENCODING RLE,
 campaign_name,
 xref_campaign_name,
 buy_type,
 partner_site_id ENCODING RLE,
 partner_site_name,
 creative,
 ad_size,
 search_engine ENCODING RLE,
 state ENCODING RLE,
 lat,
 LONG,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event ENCODING BLOCKDICT_COMP,
 is_event_label_goal,
 total_impressions ENCODING BLOCKDICT_COMP,
 totals_visits ENCODING BLOCKDICT_COMP,
 device_device_category ENCODING RLE,
 total_page_views ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_geolocation.full_visitor_id,
        drop_geolocation.visit_id,
        drop_geolocation.DATE AS date,
        drop_geolocation.busines_unit,
        drop_geolocation.brand,
        drop_geolocation.audience,
        drop_geolocation.campaign_id,
        drop_geolocation.campaign_name,
        drop_geolocation.xref_campaign_name,
        drop_geolocation.buy_type,
        drop_geolocation.partner_site_id,
        drop_geolocation.partner_site_name,
        drop_geolocation.creative,
        drop_geolocation.ad_size,
        drop_geolocation.search_engine,
        drop_geolocation.state,
        drop_geolocation.lat,
        drop_geolocation.LONG AS long,
        drop_geolocation.hits_event_info_event_category,
        drop_geolocation.hits_event_info_event_action,
        drop_geolocation.hits_event_info_event_label,
        drop_geolocation.is_event_label_event,
        drop_geolocation.is_event_label_goal,
        drop_geolocation.total_impressions,
        drop_geolocation.totals_visits,
        drop_geolocation.device_device_category,
        drop_geolocation.total_page_views
 FROM tableau.drop_geolocation
 ORDER BY drop_geolocation.audience,
          drop_geolocation.search_engine,
          drop_geolocation.device_device_category,
          drop_geolocation.busines_unit,
          drop_geolocation.brand,
          drop_geolocation.state,
          drop_geolocation.campaign_id,
          drop_geolocation.partner_site_id,
          drop_geolocation.full_visitor_id,
          drop_geolocation.DATE
SEGMENTED BY hash(drop_geolocation.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.fingerprint_dim_ukcol4_b0 /*+basename(fingerprint_dim_ukcol4),createtype(L)*/ 
(
 audience_code,
 search_engine,
 device_type,
 engine,
 brand,
 campaign_code,
 partner_id,
 placement_id,
 event_id,
 event_lower_and_md5,
 event_attribute,
 asset_id,
 asset_lower_and_md5,
 application_code,
 region_id,
 city_id,
 user_id,
 visit_id
)
AS
 SELECT drop_fingerprint_dim.audience_code,
        drop_fingerprint_dim.search_engine,
        drop_fingerprint_dim.device_type,
        drop_fingerprint_dim.engine,
        drop_fingerprint_dim.brand,
        drop_fingerprint_dim.campaign_code,
        drop_fingerprint_dim.partner_id,
        drop_fingerprint_dim.placement_id,
        drop_fingerprint_dim.event_id,
        drop_fingerprint_dim.event_lower_and_md5,
        drop_fingerprint_dim.event_attribute,
        drop_fingerprint_dim.asset_id,
        drop_fingerprint_dim.asset_lower_and_md5,
        drop_fingerprint_dim.application_code,
        drop_fingerprint_dim.region_id,
        drop_fingerprint_dim.city_id,
        drop_fingerprint_dim.user_id,
        drop_fingerprint_dim.visit_id
 FROM tableau.drop_fingerprint_dim
 ORDER BY drop_fingerprint_dim.audience_code,
          drop_fingerprint_dim.search_engine,
          drop_fingerprint_dim.device_type,
          drop_fingerprint_dim.engine,
          drop_fingerprint_dim.brand,
          drop_fingerprint_dim.campaign_code,
          drop_fingerprint_dim.partner_id,
          drop_fingerprint_dim.placement_id,
          drop_fingerprint_dim.event_id,
          drop_fingerprint_dim.event_lower_and_md5,
          drop_fingerprint_dim.event_attribute,
          drop_fingerprint_dim.asset_id,
          drop_fingerprint_dim.asset_lower_and_md5,
          drop_fingerprint_dim.application_code,
          drop_fingerprint_dim.region_id,
          drop_fingerprint_dim.city_id,
          drop_fingerprint_dim.user_id,
          drop_fingerprint_dim.visit_id
SEGMENTED BY hash(drop_fingerprint_dim.audience_code, drop_fingerprint_dim.search_engine, drop_fingerprint_dim.device_type, drop_fingerprint_dim.engine, drop_fingerprint_dim.brand, drop_fingerprint_dim.campaign_code, drop_fingerprint_dim.partner_id, drop_fingerprint_dim.placement_id, drop_fingerprint_dim.event_id, drop_fingerprint_dim.event_lower_and_md5, drop_fingerprint_dim.event_attribute, drop_fingerprint_dim.asset_id, drop_fingerprint_dim.asset_lower_and_md5, drop_fingerprint_dim.application_code, drop_fingerprint_dim.region_id, drop_fingerprint_dim.city_id, drop_fingerprint_dim.user_id, drop_fingerprint_dim.visit_id) ALL NODES;

CREATE PROJECTION tableau.account_dim__super__v1a17Q4
(
 id,
 name,
 brand,
 engine ENCODING RLE,
 audience,
 search_engine,
 search_engine_code,
 agency_id ENCODING BLOCKDICT_COMP,
 agency_name,
 advertiser_id,
 is_active ENCODING BLOCKDICT_COMP,
 is_visible ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_account_dim.id,
        drop_account_dim.name,
        drop_account_dim.brand,
        drop_account_dim.engine,
        drop_account_dim.audience,
        drop_account_dim.search_engine,
        drop_account_dim.search_engine_code,
        drop_account_dim.agency_id,
        drop_account_dim.agency_name,
        drop_account_dim.advertiser_id,
        drop_account_dim.is_active,
        drop_account_dim.is_visible
 FROM tableau.drop_account_dim
 ORDER BY drop_account_dim.engine,
          drop_account_dim.id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.activity_event_goal_xref__super__v1a17Q4
(
 gathered_from,
 event_name,
 event_category,
 brand ENCODING RLE,
 occurrences ENCODING DELTARANGE_COMP,
 gtm_tag_name,
 is_event ENCODING RLE,
 is_goal ENCODING BLOCKDICT_COMP,
 kpi_funnel
)
AS
 SELECT drop_activity_event_goal_xref.gathered_from,
        drop_activity_event_goal_xref.event_name,
        drop_activity_event_goal_xref.event_category,
        drop_activity_event_goal_xref.brand,
        drop_activity_event_goal_xref.occurrences,
        drop_activity_event_goal_xref.gtm_tag_name,
        drop_activity_event_goal_xref.is_event,
        drop_activity_event_goal_xref.is_goal,
        drop_activity_event_goal_xref.kpi_funnel
 FROM tableau.drop_activity_event_goal_xref
 ORDER BY drop_activity_event_goal_xref.brand,
          drop_activity_event_goal_xref.event_name,
          drop_activity_event_goal_xref.gathered_from,
          drop_activity_event_goal_xref.event_category
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.ad_dim__super__v1a17Q4
(
 id ENCODING COMMONDELTA_COMP,
 engine ENCODING RLE,
 type,
 placement_id ENCODING COMMONDELTA_COMP,
 creative_id ENCODING COMMONDELTA_COMP,
 url,
 is_mapped ENCODING RLE,
 content
)
AS
 SELECT drop_ad_dim.id,
        drop_ad_dim.engine,
        drop_ad_dim.type,
        drop_ad_dim.placement_id,
        drop_ad_dim.creative_id,
        drop_ad_dim.url,
        drop_ad_dim.is_mapped,
        drop_ad_dim.content
 FROM tableau.drop_ad_dim
 ORDER BY drop_ad_dim.engine,
          drop_ad_dim.id,
          drop_ad_dim.creative_id,
          drop_ad_dim.placement_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.ad_dim__creative_id__v1a17Q4
(
 id ENCODING COMMONDELTA_COMP,
 engine ENCODING RLE,
 type,
 placement_id ENCODING COMMONDELTA_COMP,
 creative_id ENCODING RLE,
 url,
 is_mapped ENCODING RLE,
 content
)
AS
 SELECT drop_ad_dim.id,
        drop_ad_dim.engine,
        drop_ad_dim.type,
        drop_ad_dim.placement_id,
        drop_ad_dim.creative_id,
        drop_ad_dim.url,
        drop_ad_dim.is_mapped,
        drop_ad_dim.content
 FROM tableau.drop_ad_dim
 ORDER BY drop_ad_dim.engine,
          drop_ad_dim.creative_id,
          drop_ad_dim.placement_id,
          drop_ad_dim.id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.cards_viewport__super__v1a17Q4_b0 /*+basename(cards_viewport__super__v1a17Q4)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 busines_unit ENCODING RLE,
 brand ENCODING RLE,
 audience ENCODING RLE,
 buy_type,
 partner_id ENCODING RLE,
 partner_site_name,
 partner_category ENCODING GZIP_COMP,
 creative,
 ad_size,
 search_engine ENCODING RLE,
 campaign_id ENCODING RLE,
 campaign_name,
 display_impressions,
 display_actual_media_cost,
 totals_new_visits,
 totals_visits,
 new_visit_percent,
 average_cpc,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event,
 is_event_label_goal,
 traffic_source_medium ENCODING RLE,
 device_device_category ENCODING RLE,
 dollar_per_event,
 dollar_per_goal,
 search_impressions,
 dollar_per_search_impressions,
 coupon_redemptions,
 nrx,
 display_cpm,
 search_actual_media_cost,
 total_cost_per_visitor
)
AS
 SELECT drop_cards_viewport.full_visitor_id,
        drop_cards_viewport.visit_id,
        drop_cards_viewport.DATE AS date,
        drop_cards_viewport.busines_unit,
        drop_cards_viewport.brand,
        drop_cards_viewport.audience,
        drop_cards_viewport.buy_type,
        drop_cards_viewport.partner_id,
        drop_cards_viewport.partner_site_name,
        drop_cards_viewport.partner_category,
        drop_cards_viewport.creative,
        drop_cards_viewport.ad_size,
        drop_cards_viewport.search_engine,
        drop_cards_viewport.campaign_id,
        drop_cards_viewport.campaign_name,
        drop_cards_viewport.display_impressions,
        drop_cards_viewport.display_actual_media_cost,
        drop_cards_viewport.totals_new_visits,
        drop_cards_viewport.totals_visits,
        drop_cards_viewport.new_visit_percent,
        drop_cards_viewport.average_cpc,
        drop_cards_viewport.hits_event_info_event_category,
        drop_cards_viewport.hits_event_info_event_action,
        drop_cards_viewport.hits_event_info_event_label,
        drop_cards_viewport.is_event_label_event,
        drop_cards_viewport.is_event_label_goal,
        drop_cards_viewport.traffic_source_medium,
        drop_cards_viewport.device_device_category,
        drop_cards_viewport.dollar_per_event,
        drop_cards_viewport.dollar_per_goal,
        drop_cards_viewport.search_impressions,
        drop_cards_viewport.dollar_per_search_impressions,
        drop_cards_viewport.coupon_redemptions,
        drop_cards_viewport.nrx,
        drop_cards_viewport.display_cpm,
        drop_cards_viewport.search_actual_media_cost,
        drop_cards_viewport.total_cost_per_visitor
 FROM tableau.drop_cards_viewport
 ORDER BY drop_cards_viewport.audience,
          drop_cards_viewport.search_engine,
          drop_cards_viewport.device_device_category,
          drop_cards_viewport.busines_unit,
          drop_cards_viewport.traffic_source_medium,
          drop_cards_viewport.brand,
          drop_cards_viewport.campaign_id,
          drop_cards_viewport.partner_id,
          drop_cards_viewport.full_visitor_id,
          drop_cards_viewport.DATE
SEGMENTED BY hash(drop_cards_viewport.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.fingerprint_dim__super__v1a17Q4_b0 /*+basename(fingerprint_dim__super__v1a17Q4)*/ 
(
 full_visitor_id ENCODING DELTARANGE_COMP,
 brand ENCODING RLE,
 engine ENCODING RLE,
 audience_code ENCODING RLE,
 campaign_code ENCODING RLE,
 placement_id ENCODING RLE,
 partner_id ENCODING RLE,
 asset_id ENCODING COMMONDELTA_COMP,
 asset_value,
 asset_lower_and_md5,
 search_engine ENCODING RLE,
 device_type ENCODING RLE,
 application_code ENCODING RLE,
 region_id ENCODING DELTARANGE_COMP,
 city_id ENCODING DELTARANGE_COMP,
 event_id ENCODING RLE,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 population
)
AS
 SELECT drop_fingerprint_dim.full_visitor_id,
        drop_fingerprint_dim.brand,
        drop_fingerprint_dim.engine,
        drop_fingerprint_dim.audience_code,
        drop_fingerprint_dim.campaign_code,
        drop_fingerprint_dim.placement_id,
        drop_fingerprint_dim.partner_id,
        drop_fingerprint_dim.asset_id,
        drop_fingerprint_dim.asset_value,
        drop_fingerprint_dim.asset_lower_and_md5,
        drop_fingerprint_dim.search_engine,
        drop_fingerprint_dim.device_type,
        drop_fingerprint_dim.application_code,
        drop_fingerprint_dim.region_id,
        drop_fingerprint_dim.city_id,
        drop_fingerprint_dim.event_id,
        drop_fingerprint_dim.event_value,
        drop_fingerprint_dim.event_lower_and_md5,
        drop_fingerprint_dim.event_attribute,
        drop_fingerprint_dim.user_id,
        drop_fingerprint_dim.visit_id,
        drop_fingerprint_dim.population
 FROM tableau.drop_fingerprint_dim
 ORDER BY drop_fingerprint_dim.audience_code,
          drop_fingerprint_dim.search_engine,
          drop_fingerprint_dim.device_type,
          drop_fingerprint_dim.engine,
          drop_fingerprint_dim.brand,
          drop_fingerprint_dim.campaign_code,
          drop_fingerprint_dim.partner_id,
          drop_fingerprint_dim.placement_id,
          drop_fingerprint_dim.event_id,
          drop_fingerprint_dim.event_lower_and_md5,
          drop_fingerprint_dim.event_attribute,
          drop_fingerprint_dim.asset_id,
          drop_fingerprint_dim.asset_lower_and_md5,
          drop_fingerprint_dim.application_code,
          drop_fingerprint_dim.region_id,
          drop_fingerprint_dim.city_id,
          drop_fingerprint_dim.user_id,
          drop_fingerprint_dim.visit_id
SEGMENTED BY hash(drop_fingerprint_dim.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.fingerprint_dim___primary__v1a17Q4_b0 /*+basename(fingerprint_dim___primary__v1a17Q4)*/ 
(
 full_visitor_id
)
AS
 SELECT drop_fingerprint_dim.full_visitor_id
 FROM tableau.drop_fingerprint_dim
 ORDER BY drop_fingerprint_dim.full_visitor_id
SEGMENTED BY hash(drop_fingerprint_dim.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.google_analytics_360_fct__super__v1a17Q4_b0 /*+basename(google_analytics_360_fct__super__v1a17Q4),createtype(D)*/ 
(
 full_visitor_id ENCODING DELTARANGE_COMP,
 brand ENCODING RLE,
 engine ENCODING RLE,
 audience_code ENCODING RLE,
 campaign_code ENCODING RLE,
 placement_id ENCODING RLE,
 partner_id ENCODING RLE,
 asset_id ENCODING RLE,
 asset_value,
 asset_lower_and_md5,
 search_engine ENCODING RLE,
 device_type ENCODING RLE,
 application_code ENCODING RLE,
 region_id ENCODING DELTARANGE_COMP,
 city_id ENCODING DELTARANGE_COMP,
 event_id ENCODING RLE,
 event_value,
 event_lower_and_md5,
 event_attribute ENCODING RLE,
 user_id ENCODING RLE,
 visit_id ENCODING RLE,
 date ENCODING DELTARANGE_COMP,
 traffic_source_medium_initial,
 traffic_source_medium_final ENCODING RLE,
 traffic_source_source,
 traffic_source_campaign,
 partner_site_name,
 url,
 min_full_visitor_id,
 max_full_visitor_id,
 hits_event_info_event_category,
 hits_event_info_event_action,
 is_event_label_event ENCODING BLOCKDICT_COMP,
 is_event_label_goal ENCODING BLOCKDICT_COMP,
 totals_new_visits ENCODING BLOCKDICT_COMP,
 totals_visits ENCODING BLOCKDICT_COMP,
 totals_bounces ENCODING BLOCKDICT_COMP,
 totals_page_views ENCODING BLOCKDICT_COMP,
 totals_time_on_site ENCODING BLOCKDICT_COMP,
 visit_count ENCODING BLOCKDICT_COMP,
 record_count ENCODING BLOCKDICT_COMP,
 engine_by_source,
 match_placement_by_map,
 match_campaign_dcm_easy,
 match_campaign_dcm_hard,
 match_campaign_ds_by_dcm_ghost_map,
 match_campaign_ds_by_alias_map,
 match_campaign_ds_by_name
)
AS
 SELECT drop_google_analytics_360_fct.full_visitor_id,
        drop_google_analytics_360_fct.brand,
        drop_google_analytics_360_fct.engine,
        drop_google_analytics_360_fct.audience_code,
        drop_google_analytics_360_fct.campaign_code,
        drop_google_analytics_360_fct.placement_id,
        drop_google_analytics_360_fct.partner_id,
        drop_google_analytics_360_fct.asset_id,
        drop_google_analytics_360_fct.asset_value,
        drop_google_analytics_360_fct.asset_lower_and_md5,
        drop_google_analytics_360_fct.search_engine,
        drop_google_analytics_360_fct.device_type,
        drop_google_analytics_360_fct.application_code,
        drop_google_analytics_360_fct.region_id,
        drop_google_analytics_360_fct.city_id,
        drop_google_analytics_360_fct.event_id,
        drop_google_analytics_360_fct.event_value,
        drop_google_analytics_360_fct.event_lower_and_md5,
        drop_google_analytics_360_fct.event_attribute,
        drop_google_analytics_360_fct.user_id,
        drop_google_analytics_360_fct.visit_id,
        drop_google_analytics_360_fct.DATE AS date,
        drop_google_analytics_360_fct.traffic_source_medium_initial,
        drop_google_analytics_360_fct.traffic_source_medium_final,
        drop_google_analytics_360_fct.traffic_source_source,
        drop_google_analytics_360_fct.traffic_source_campaign,
        drop_google_analytics_360_fct.partner_site_name,
        drop_google_analytics_360_fct.url,
        drop_google_analytics_360_fct.min_full_visitor_id,
        drop_google_analytics_360_fct.max_full_visitor_id,
        drop_google_analytics_360_fct.hits_event_info_event_category,
        drop_google_analytics_360_fct.hits_event_info_event_action,
        drop_google_analytics_360_fct.is_event_label_event,
        drop_google_analytics_360_fct.is_event_label_goal,
        drop_google_analytics_360_fct.totals_new_visits,
        drop_google_analytics_360_fct.totals_visits,
        drop_google_analytics_360_fct.totals_bounces,
        drop_google_analytics_360_fct.totals_page_views,
        drop_google_analytics_360_fct.totals_time_on_site,
        drop_google_analytics_360_fct.visit_count,
        drop_google_analytics_360_fct.record_count,
        drop_google_analytics_360_fct.engine_by_source,
        drop_google_analytics_360_fct.match_placement_by_map,
        drop_google_analytics_360_fct.match_campaign_dcm_easy,
        drop_google_analytics_360_fct.match_campaign_dcm_hard,
        drop_google_analytics_360_fct.match_campaign_ds_by_dcm_ghost_map,
        drop_google_analytics_360_fct.match_campaign_ds_by_alias_map,
        drop_google_analytics_360_fct.match_campaign_ds_by_name
 FROM tableau.drop_google_analytics_360_fct
 ORDER BY drop_google_analytics_360_fct.audience_code,
          drop_google_analytics_360_fct.search_engine,
          drop_google_analytics_360_fct.device_type,
          drop_google_analytics_360_fct.engine,
          drop_google_analytics_360_fct.brand,
          drop_google_analytics_360_fct.campaign_code,
          drop_google_analytics_360_fct.partner_id,
          drop_google_analytics_360_fct.placement_id,
          drop_google_analytics_360_fct.event_id,
          drop_google_analytics_360_fct.event_lower_and_md5,
          drop_google_analytics_360_fct.event_attribute,
          drop_google_analytics_360_fct.asset_id,
          drop_google_analytics_360_fct.asset_lower_and_md5,
          drop_google_analytics_360_fct.application_code,
          drop_google_analytics_360_fct.region_id,
          drop_google_analytics_360_fct.city_id,
          drop_google_analytics_360_fct.user_id,
          drop_google_analytics_360_fct.visit_id
SEGMENTED BY hash(drop_google_analytics_360_fct.max_full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.placement_dim__super__v1a17Q4
(
 id ENCODING DELTARANGE_COMP,
 name,
 brand,
 engine ENCODING RLE,
 audience,
 campaign_id ENCODING DELTARANGE_COMP,
 category,
 search_engine,
 pixel_size,
 cost,
 site_id ENCODING DELTARANGE_COMP,
 url,
 account_id ENCODING COMMONDELTA_COMP,
 normalized_id,
 normalized_name,
 start_date ENCODING RLE,
 close_date ENCODING COMMONDELTA_COMP
)
AS
 SELECT drop_placement_dim.id,
        drop_placement_dim.name,
        drop_placement_dim.brand,
        drop_placement_dim.engine,
        drop_placement_dim.audience,
        drop_placement_dim.campaign_id,
        drop_placement_dim.category,
        drop_placement_dim.search_engine,
        drop_placement_dim.pixel_size,
        drop_placement_dim.cost,
        drop_placement_dim.site_id,
        drop_placement_dim.url,
        drop_placement_dim.account_id,
        drop_placement_dim.normalized_id,
        drop_placement_dim.normalized_name,
        drop_placement_dim.start_date,
        drop_placement_dim.close_date
 FROM tableau.drop_placement_dim
 ORDER BY drop_placement_dim.engine,
          drop_placement_dim.id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.site_dim__super__v1a17Q4
(
 id,
 name,
 engine,
 account_id ENCODING COMMONDELTA_COMP,
 directory_site_id ENCODING DELTAVAL,
 class_code,
 class_name,
 has_click_tracking ENCODING BLOCKDICT_COMP,
 has_click_thru_url ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_site_dim.id,
        drop_site_dim.name,
        drop_site_dim.engine,
        drop_site_dim.account_id,
        drop_site_dim.directory_site_id,
        drop_site_dim.class_code,
        drop_site_dim.class_name,
        drop_site_dim.has_click_tracking,
        drop_site_dim.has_click_thru_url
 FROM tableau.drop_site_dim
 ORDER BY drop_site_dim.id,
          drop_site_dim.name,
          drop_site_dim.engine,
          drop_site_dim.account_id,
          drop_site_dim.directory_site_id,
          drop_site_dim.class_code,
          drop_site_dim.class_name,
          drop_site_dim.has_click_tracking,
          drop_site_dim.has_click_thru_url
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.word_cloud__super__v1a17Q4_b0 /*+basename(word_cloud__super__v1a17Q4)*/ 
(
 full_visitor_id,
 visit_id,
 DATE ENCODING DELTARANGE_COMP,
 business_unit ENCODING RLE,
 brand ENCODING RLE,
 audience ENCODING RLE,
 buy_type,
 partner_id ENCODING RLE,
 partner_category,
 partner_name,
 creative,
 ad_size,
 search_engine ENCODING RLE,
 campaign_id ENCODING RLE,
 campaign_name,
 display_impressions,
 display_impressions_per_thousand,
 display_clicks ENCODING BLOCKDICT_COMP,
 display_conversions ENCODING BLOCKDICT_COMP,
 display_actual_media_cost,
 display_cpm,
 display_cpc,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event ENCODING COMMONDELTA_COMP,
 is_event_label_goal,
 dollar_per_event,
 dollar_per_goal,
 search_impressions ENCODING BLOCKDICT_COMP,
 search_impressions_per_thousand ENCODING BLOCKDICT_COMP,
 search_clicks ENCODING BLOCKDICT_COMP,
 search_conversions ENCODING BLOCKDICT_COMP,
 actual_search_cost,
 average_cpc,
 dollar_per_search_impressions,
 search_keyword,
 search_ad_group,
 daily_visitors ENCODING BLOCKDICT_COMP,
 total_media_cost_actual,
 search_ctr,
 display_ctr
)
AS
 SELECT drop_word_cloud.full_visitor_id,
        drop_word_cloud.visit_id,
        drop_word_cloud.DATE AS date,
        drop_word_cloud.business_unit,
        drop_word_cloud.brand,
        drop_word_cloud.audience,
        drop_word_cloud.buy_type,
        drop_word_cloud.partner_id,
        drop_word_cloud.partner_category,
        drop_word_cloud.partner_name,
        drop_word_cloud.creative,
        drop_word_cloud.ad_size,
        drop_word_cloud.search_engine,
        drop_word_cloud.campaign_id,
        drop_word_cloud.campaign_name,
        drop_word_cloud.display_impressions,
        drop_word_cloud.display_impressions_per_thousand,
        drop_word_cloud.display_clicks,
        drop_word_cloud.display_conversions,
        drop_word_cloud.display_actual_media_cost,
        drop_word_cloud.display_cpm,
        drop_word_cloud.display_cpc,
        drop_word_cloud.hits_event_info_event_category,
        drop_word_cloud.hits_event_info_event_action,
        drop_word_cloud.hits_event_info_event_label,
        drop_word_cloud.is_event_label_event,
        drop_word_cloud.is_event_label_goal,
        drop_word_cloud.dollar_per_event,
        drop_word_cloud.dollar_per_goal,
        drop_word_cloud.search_impressions,
        drop_word_cloud.search_impressions_per_thousand,
        drop_word_cloud.search_clicks,
        drop_word_cloud.search_conversions,
        drop_word_cloud.actual_search_cost,
        drop_word_cloud.average_cpc,
        drop_word_cloud.dollar_per_search_impressions,
        drop_word_cloud.search_keyword,
        drop_word_cloud.search_ad_group,
        drop_word_cloud.daily_visitors,
        drop_word_cloud.total_media_cost_actual,
        drop_word_cloud.search_ctr,
        drop_word_cloud.display_ctr
 FROM tableau.drop_word_cloud
 ORDER BY drop_word_cloud.audience,
          drop_word_cloud.search_engine,
          drop_word_cloud.business_unit,
          drop_word_cloud.brand,
          drop_word_cloud.campaign_id,
          drop_word_cloud.partner_id,
          drop_word_cloud.full_visitor_id,
          drop_word_cloud.DATE
SEGMENTED BY hash(drop_word_cloud.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.activity_dim_v1_b0 /*+basename(activity_dim_v1),createtype(L)*/ 
(
 id,
 name,
 engine,
 advertiser_id,
 group_id,
 group_name,
 category_name,
 name_hash,
 is_event,
 is_goal
)
AS
 SELECT drop_activity_dim.id,
        drop_activity_dim.name,
        drop_activity_dim.engine,
        drop_activity_dim.advertiser_id,
        drop_activity_dim.group_id,
        drop_activity_dim.group_name,
        drop_activity_dim.category_name,
        drop_activity_dim.name_hash,
        drop_activity_dim.is_event,
        drop_activity_dim.is_goal
 FROM tableau.drop_activity_dim
 ORDER BY drop_activity_dim.id,
          drop_activity_dim.name
SEGMENTED BY hash(drop_activity_dim.id, drop_activity_dim.engine) ALL NODES;

CREATE PROJECTION tableau.activity_dim_pk_b0 /*+basename(activity_dim_pk),createtype(L)*/ 
(
 id,
 engine
)
AS
 SELECT drop_activity_dim.id,
        drop_activity_dim.engine
 FROM tableau.drop_activity_dim
 ORDER BY drop_activity_dim.id,
          drop_activity_dim.engine
SEGMENTED BY hash(drop_activity_dim.id, drop_activity_dim.engine) ALL NODES;

CREATE PROJECTION tableau.activity_dim_ukcol2_b0 /*+basename(activity_dim_ukcol2),createtype(N)*/ 
(
 name,
 group_name,
 advertiser_id
)
AS
 SELECT drop_activity_dim.name,
        drop_activity_dim.group_name,
        drop_activity_dim.advertiser_id
 FROM tableau.drop_activity_dim
 ORDER BY drop_activity_dim.name,
          drop_activity_dim.group_name,
          drop_activity_dim.advertiser_id
SEGMENTED BY hash(drop_activity_dim.name, drop_activity_dim.group_name, drop_activity_dim.advertiser_id) ALL NODES;

CREATE PROJECTION tableau.email_src_b0 /*+basename(email_src),createtype(A)*/ 
(
 DATE,
 business_unit,
 brand,
 audience,
 campaign_name,
 type_name,
 send,
 delivered,
 OPEN,
 click,
 zip,
 state,
 source_name,
 spend
)
AS
 SELECT drop_activity_hub_src.DATE,
        drop_activity_hub_src.business_unit,
        drop_activity_hub_src.brand,
        drop_activity_hub_src.audience,
        drop_activity_hub_src.campaign_name,
        drop_activity_hub_src.type_name,
        drop_activity_hub_src.send,
        drop_activity_hub_src.delivered,
        drop_activity_hub_src.OPEN,
        drop_activity_hub_src.click,
        drop_activity_hub_src.zip,
        drop_activity_hub_src.state,
        drop_activity_hub_src.source_name,
        drop_activity_hub_src.spend
 FROM tableau.drop_activity_hub_src
 ORDER BY drop_activity_hub_src.DATE,
          drop_activity_hub_src.business_unit,
          drop_activity_hub_src.brand,
          drop_activity_hub_src.audience,
          drop_activity_hub_src.campaign_name,
          drop_activity_hub_src.type_name,
          drop_activity_hub_src.send,
          drop_activity_hub_src.delivered,
          drop_activity_hub_src.OPEN,
          drop_activity_hub_src.click,
          drop_activity_hub_src.zip,
          drop_activity_hub_src.state,
          drop_activity_hub_src.source_name,
          drop_activity_hub_src.spend
SEGMENTED BY hash(drop_activity_hub_src.DATE, drop_activity_hub_src.send, drop_activity_hub_src.delivered, drop_activity_hub_src.OPEN, drop_activity_hub_src.click, drop_activity_hub_src.business_unit, drop_activity_hub_src.zip, drop_activity_hub_src.state, drop_activity_hub_src.spend, drop_activity_hub_src.campaign_name, drop_activity_hub_src.type_name, drop_activity_hub_src.source_name, drop_activity_hub_src.brand, drop_activity_hub_src.audience) ALL NODES;

CREATE PROJECTION tableau.ad_dim_ukcol1_b0 /*+basename(ad_dim_ukcol1),createtype(L)*/ 
(
 id,
 placement_id,
 creative_id
)
AS
 SELECT drop_ad_dim.id,
        drop_ad_dim.placement_id,
        drop_ad_dim.creative_id
 FROM tableau.drop_ad_dim
 ORDER BY drop_ad_dim.id,
          drop_ad_dim.placement_id,
          drop_ad_dim.creative_id
SEGMENTED BY hash(drop_ad_dim.id, drop_ad_dim.placement_id, drop_ad_dim.creative_id) ALL NODES;

CREATE PROJECTION tableau.adgroup_xref_b0 /*+basename(adgroup_xref),createtype(L)*/ 
(
 search_engine,
 ad_group_id,
 ad_group_name,
 ad_group_rollup
)
AS
 SELECT drop_adgroup_xref.search_engine,
        drop_adgroup_xref.ad_group_id,
        drop_adgroup_xref.ad_group_name,
        drop_adgroup_xref.ad_group_rollup
 FROM tableau.drop_adgroup_xref
 ORDER BY drop_adgroup_xref.search_engine,
          drop_adgroup_xref.ad_group_id,
          drop_adgroup_xref.ad_group_name,
          drop_adgroup_xref.ad_group_rollup
SEGMENTED BY hash(drop_adgroup_xref.search_engine, drop_adgroup_xref.ad_group_id, drop_adgroup_xref.ad_group_rollup, drop_adgroup_xref.ad_group_name) ALL NODES;

CREATE PROJECTION tableau.advertiser_dim_v1_b0 /*+basename(advertiser_dim_v1),createtype(L)*/ 
(
 id,
 name,
 brand,
 engine,
 audience,
 account_id,
 account_engine,
 parent_id,
 parent_engine,
 is_active,
 is_visible
)
AS
 SELECT drop_advertiser_dim.id,
        drop_advertiser_dim.name,
        drop_advertiser_dim.brand,
        drop_advertiser_dim.engine,
        drop_advertiser_dim.audience,
        drop_advertiser_dim.account_id,
        drop_advertiser_dim.account_engine,
        drop_advertiser_dim.parent_id,
        drop_advertiser_dim.parent_engine,
        drop_advertiser_dim.is_active,
        drop_advertiser_dim.is_visible
 FROM tableau.drop_advertiser_dim
 ORDER BY drop_advertiser_dim.id,
          drop_advertiser_dim.engine
SEGMENTED BY hash(drop_advertiser_dim.id, drop_advertiser_dim.engine) ALL NODES;

CREATE PROJECTION tableau.audience_dim_b0 /*+basename(audience_dim),createtype(L)*/ 
(
 code,
 name,
 is_default,
 regexp_pattern
)
AS
 SELECT drop_audience_dim.code,
        drop_audience_dim.name,
        drop_audience_dim.is_default,
        drop_audience_dim.regexp_pattern
 FROM tableau.drop_audience_dim
 ORDER BY drop_audience_dim.code
SEGMENTED BY hash(drop_audience_dim.code) ALL NODES;

CREATE PROJECTION tableau.brand_bu_xref_b0 /*+basename(brand_bu_xref),createtype(L)*/ 
(
 ad_server_campaign_id,
 brand,
 business_unit,
 country
)
AS
 SELECT drop_brand_bu_xref.ad_server_campaign_id,
        drop_brand_bu_xref.brand,
        drop_brand_bu_xref.business_unit,
        drop_brand_bu_xref.country
 FROM tableau.drop_brand_bu_xref
 ORDER BY drop_brand_bu_xref.ad_server_campaign_id,
          drop_brand_bu_xref.brand,
          drop_brand_bu_xref.business_unit,
          drop_brand_bu_xref.country
SEGMENTED BY hash(drop_brand_bu_xref.ad_server_campaign_id, drop_brand_bu_xref.business_unit, drop_brand_bu_xref.country, drop_brand_bu_xref.brand) ALL NODES;

CREATE PROJECTION tableau.brand_dim_b0 /*+basename(brand_dim),createtype(L)*/ 
(
 code,
 name,
 short_name,
 regexp_pattern,
 business_unit,
 parent_code,
 cached_rx_count
)
AS
 SELECT drop_brand_dim.code,
        drop_brand_dim.name,
        drop_brand_dim.short_name,
        drop_brand_dim.regexp_pattern,
        drop_brand_dim.business_unit,
        drop_brand_dim.parent_code,
        drop_brand_dim.cached_rx_count
 FROM tableau.drop_brand_dim
 ORDER BY drop_brand_dim.code
SEGMENTED BY hash(drop_brand_dim.code) ALL NODES;

CREATE PROJECTION tableau.campaign_audience_xref_b0 /*+basename(campaign_audience_xref),createtype(L)*/ 
(
 ad_server_campaign_id,
 campaign_name,
 product_name,
 audience,
 source
)
AS
 SELECT drop_campaign_audience_xref.ad_server_campaign_id,
        drop_campaign_audience_xref.campaign_name,
        drop_campaign_audience_xref.product_name,
        drop_campaign_audience_xref.audience,
        drop_campaign_audience_xref.source
 FROM tableau.drop_campaign_audience_xref
 ORDER BY drop_campaign_audience_xref.ad_server_campaign_id,
          drop_campaign_audience_xref.campaign_name,
          drop_campaign_audience_xref.product_name,
          drop_campaign_audience_xref.audience,
          drop_campaign_audience_xref.source
SEGMENTED BY hash(drop_campaign_audience_xref.source, drop_campaign_audience_xref.ad_server_campaign_id, drop_campaign_audience_xref.product_name, drop_campaign_audience_xref.audience, drop_campaign_audience_xref.campaign_name) ALL NODES;

CREATE PROJECTION tableau.cards_viewport_v1_b0 /*+basename(cards_viewport_v1),createtype(L)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 busines_unit,
 brand,
 audience,
 buy_type,
 partner_id,
 partner_site_name,
 partner_category,
 creative,
 ad_size,
 search_engine,
 campaign_id,
 campaign_name,
 display_impressions,
 display_actual_media_cost,
 totals_new_visits,
 totals_visits,
 new_visit_percent,
 average_cpc,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event,
 is_event_label_goal,
 traffic_source_medium,
 device_device_category,
 dollar_per_event,
 dollar_per_goal,
 search_impressions,
 dollar_per_search_impressions,
 coupon_redemptions,
 nrx,
 display_cpm,
 search_actual_media_cost,
 total_cost_per_visitor
)
AS
 SELECT drop_cards_viewport__20171106.full_visitor_id,
        drop_cards_viewport__20171106.visit_id,
        drop_cards_viewport__20171106.DATE,
        drop_cards_viewport__20171106.busines_unit,
        drop_cards_viewport__20171106.brand,
        drop_cards_viewport__20171106.audience,
        drop_cards_viewport__20171106.buy_type,
        drop_cards_viewport__20171106.partner_id,
        drop_cards_viewport__20171106.partner_site_name,
        drop_cards_viewport__20171106.partner_category,
        drop_cards_viewport__20171106.creative,
        drop_cards_viewport__20171106.ad_size,
        drop_cards_viewport__20171106.search_engine,
        drop_cards_viewport__20171106.campaign_id,
        drop_cards_viewport__20171106.campaign_name,
        drop_cards_viewport__20171106.display_impressions,
        drop_cards_viewport__20171106.display_actual_media_cost,
        drop_cards_viewport__20171106.totals_new_visits,
        drop_cards_viewport__20171106.totals_visits,
        drop_cards_viewport__20171106.new_visit_percent,
        drop_cards_viewport__20171106.average_cpc,
        drop_cards_viewport__20171106.hits_event_info_event_category,
        drop_cards_viewport__20171106.hits_event_info_event_action,
        drop_cards_viewport__20171106.hits_event_info_event_label,
        drop_cards_viewport__20171106.is_event_label_event,
        drop_cards_viewport__20171106.is_event_label_goal,
        drop_cards_viewport__20171106.traffic_source_medium,
        drop_cards_viewport__20171106.device_device_category,
        drop_cards_viewport__20171106.dollar_per_event,
        drop_cards_viewport__20171106.dollar_per_goal,
        drop_cards_viewport__20171106.search_impressions,
        drop_cards_viewport__20171106.dollar_per_search_impressions,
        drop_cards_viewport__20171106.coupon_redemptions,
        drop_cards_viewport__20171106.nrx,
        drop_cards_viewport__20171106.display_cpm,
        drop_cards_viewport__20171106.search_actual_media_cost,
        drop_cards_viewport__20171106.total_cost_per_visitor
 FROM tableau.drop_cards_viewport__20171106
 ORDER BY drop_cards_viewport__20171106.full_visitor_id,
          drop_cards_viewport__20171106.visit_id,
          drop_cards_viewport__20171106.DATE,
          drop_cards_viewport__20171106.busines_unit,
          drop_cards_viewport__20171106.brand,
          drop_cards_viewport__20171106.audience,
          drop_cards_viewport__20171106.buy_type,
          drop_cards_viewport__20171106.partner_id,
          drop_cards_viewport__20171106.partner_site_name,
          drop_cards_viewport__20171106.partner_category,
          drop_cards_viewport__20171106.creative,
          drop_cards_viewport__20171106.ad_size,
          drop_cards_viewport__20171106.search_engine,
          drop_cards_viewport__20171106.campaign_id,
          drop_cards_viewport__20171106.campaign_name,
          drop_cards_viewport__20171106.display_impressions,
          drop_cards_viewport__20171106.display_actual_media_cost,
          drop_cards_viewport__20171106.totals_new_visits,
          drop_cards_viewport__20171106.totals_visits,
          drop_cards_viewport__20171106.new_visit_percent,
          drop_cards_viewport__20171106.average_cpc,
          drop_cards_viewport__20171106.hits_event_info_event_category,
          drop_cards_viewport__20171106.hits_event_info_event_action,
          drop_cards_viewport__20171106.hits_event_info_event_label,
          drop_cards_viewport__20171106.is_event_label_event,
          drop_cards_viewport__20171106.is_event_label_goal,
          drop_cards_viewport__20171106.traffic_source_medium,
          drop_cards_viewport__20171106.device_device_category,
          drop_cards_viewport__20171106.dollar_per_event,
          drop_cards_viewport__20171106.dollar_per_goal,
          drop_cards_viewport__20171106.search_impressions,
          drop_cards_viewport__20171106.dollar_per_search_impressions,
          drop_cards_viewport__20171106.coupon_redemptions,
          drop_cards_viewport__20171106.nrx,
          drop_cards_viewport__20171106.display_cpm,
          drop_cards_viewport__20171106.search_actual_media_cost,
          drop_cards_viewport__20171106.total_cost_per_visitor
SEGMENTED BY hash(drop_cards_viewport__20171106.campaign_id) ALL NODES;

CREATE PROJECTION tableau.city_dim_b0 /*+basename(city_dim),createtype(A)*/ 
(
 continent,
 subcontinent,
 country,
 region,
 id,
 name,
 latitude,
 longitude,
 popularity
)
AS
 SELECT drop_city_dim.continent,
        drop_city_dim.subcontinent,
        drop_city_dim.country,
        drop_city_dim.region,
        drop_city_dim.id,
        drop_city_dim.name,
        drop_city_dim.latitude,
        drop_city_dim.longitude,
        drop_city_dim.popularity
 FROM tableau.drop_city_dim
 ORDER BY drop_city_dim.continent,
          drop_city_dim.subcontinent,
          drop_city_dim.country,
          drop_city_dim.region,
          drop_city_dim.id,
          drop_city_dim.name,
          drop_city_dim.latitude,
          drop_city_dim.longitude,
          drop_city_dim.popularity
SEGMENTED BY hash(drop_city_dim.id, drop_city_dim.latitude, drop_city_dim.longitude, drop_city_dim.popularity, drop_city_dim.continent, drop_city_dim.subcontinent, drop_city_dim.country, drop_city_dim.region, drop_city_dim.name) ALL NODES;

CREATE PROJECTION tableau.city_dim_pk_b0 /*+basename(city_dim_pk),createtype(N)*/ 
(
 id
)
AS
 SELECT drop_city_dim.id
 FROM tableau.drop_city_dim
 ORDER BY drop_city_dim.id
SEGMENTED BY hash(drop_city_dim.id) ALL NODES;

CREATE PROJECTION tableau.cost_dim_b0 /*+basename(cost_dim),createtype(L)*/ 
(
 code,
 name,
 note
)
AS
 SELECT drop_cost_dim.code,
        drop_cost_dim.name,
        drop_cost_dim.note
 FROM tableau.drop_cost_dim
 ORDER BY drop_cost_dim.code
SEGMENTED BY hash(drop_cost_dim.code) ALL NODES;

CREATE PROJECTION tableau.coupon_fct_b0 /*+basename(coupon_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 state_code,
 city_name,
 latitude,
 longitude,
 coupon_redemptions
)
AS
 SELECT drop_coupon_fct.full_visitor_id,
        drop_coupon_fct.brand,
        drop_coupon_fct.engine,
        drop_coupon_fct.audience_code,
        drop_coupon_fct.campaign_code,
        drop_coupon_fct.placement_id,
        drop_coupon_fct.partner_id,
        drop_coupon_fct.asset_id,
        drop_coupon_fct.asset_value,
        drop_coupon_fct.asset_lower_and_md5,
        drop_coupon_fct.search_engine,
        drop_coupon_fct.device_type,
        drop_coupon_fct.application_code,
        drop_coupon_fct.region_id,
        drop_coupon_fct.city_id,
        drop_coupon_fct.event_id,
        drop_coupon_fct.event_value,
        drop_coupon_fct.event_lower_and_md5,
        drop_coupon_fct.event_attribute,
        drop_coupon_fct.user_id,
        drop_coupon_fct.visit_id,
        drop_coupon_fct.DATE,
        drop_coupon_fct.state_code,
        drop_coupon_fct.city_name,
        drop_coupon_fct.latitude,
        drop_coupon_fct.longitude,
        drop_coupon_fct.coupon_redemptions
 FROM tableau.drop_coupon_fct
 ORDER BY drop_coupon_fct.DATE,
          drop_coupon_fct.brand,
          drop_coupon_fct.city_id
SEGMENTED BY hash(drop_coupon_fct.full_visitor_id, drop_coupon_fct.audience_code, drop_coupon_fct.placement_id, drop_coupon_fct.partner_id, drop_coupon_fct.asset_id, drop_coupon_fct.city_id, drop_coupon_fct.event_id, drop_coupon_fct.user_id, drop_coupon_fct.visit_id, drop_coupon_fct.DATE, drop_coupon_fct.state_code, drop_coupon_fct.latitude, drop_coupon_fct.longitude, drop_coupon_fct.coupon_redemptions, drop_coupon_fct.search_engine, drop_coupon_fct.region_id, drop_coupon_fct.engine, drop_coupon_fct.device_type, drop_coupon_fct.asset_lower_and_md5, drop_coupon_fct.application_code, drop_coupon_fct.event_lower_and_md5, drop_coupon_fct.city_name, drop_coupon_fct.brand, drop_coupon_fct.campaign_code, drop_coupon_fct.event_attribute, drop_coupon_fct.asset_value, drop_coupon_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.da_print_spend_fct_b0 /*+basename(da_print_spend_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 publisher_category,
 campaign_name,
 daily_cost
)
AS
 SELECT drop_da_print_spend_fct.full_visitor_id,
        drop_da_print_spend_fct.brand,
        drop_da_print_spend_fct.engine,
        drop_da_print_spend_fct.audience_code,
        drop_da_print_spend_fct.campaign_code,
        drop_da_print_spend_fct.placement_id,
        drop_da_print_spend_fct.partner_id,
        drop_da_print_spend_fct.asset_id,
        drop_da_print_spend_fct.asset_value,
        drop_da_print_spend_fct.asset_lower_and_md5,
        drop_da_print_spend_fct.search_engine,
        drop_da_print_spend_fct.device_type,
        drop_da_print_spend_fct.application_code,
        drop_da_print_spend_fct.region_id,
        drop_da_print_spend_fct.city_id,
        drop_da_print_spend_fct.event_id,
        drop_da_print_spend_fct.event_value,
        drop_da_print_spend_fct.event_lower_and_md5,
        drop_da_print_spend_fct.event_attribute,
        drop_da_print_spend_fct.user_id,
        drop_da_print_spend_fct.visit_id,
        drop_da_print_spend_fct.DATE,
        drop_da_print_spend_fct.publisher_category,
        drop_da_print_spend_fct.campaign_name,
        drop_da_print_spend_fct.daily_cost
 FROM tableau.drop_da_print_spend_fct
 ORDER BY drop_da_print_spend_fct.full_visitor_id,
          drop_da_print_spend_fct.brand,
          drop_da_print_spend_fct.engine,
          drop_da_print_spend_fct.audience_code,
          drop_da_print_spend_fct.campaign_code,
          drop_da_print_spend_fct.placement_id,
          drop_da_print_spend_fct.partner_id,
          drop_da_print_spend_fct.asset_id,
          drop_da_print_spend_fct.asset_value,
          drop_da_print_spend_fct.asset_lower_and_md5,
          drop_da_print_spend_fct.search_engine,
          drop_da_print_spend_fct.device_type,
          drop_da_print_spend_fct.application_code,
          drop_da_print_spend_fct.region_id,
          drop_da_print_spend_fct.city_id,
          drop_da_print_spend_fct.event_id,
          drop_da_print_spend_fct.event_value,
          drop_da_print_spend_fct.event_lower_and_md5,
          drop_da_print_spend_fct.event_attribute,
          drop_da_print_spend_fct.user_id,
          drop_da_print_spend_fct.visit_id,
          drop_da_print_spend_fct.DATE,
          drop_da_print_spend_fct.publisher_category,
          drop_da_print_spend_fct.campaign_name,
          drop_da_print_spend_fct.daily_cost
SEGMENTED BY hash(drop_da_print_spend_fct.full_visitor_id, drop_da_print_spend_fct.audience_code, drop_da_print_spend_fct.placement_id, drop_da_print_spend_fct.partner_id, drop_da_print_spend_fct.asset_id, drop_da_print_spend_fct.city_id, drop_da_print_spend_fct.event_id, drop_da_print_spend_fct.user_id, drop_da_print_spend_fct.visit_id, drop_da_print_spend_fct.DATE, drop_da_print_spend_fct.daily_cost, drop_da_print_spend_fct.search_engine, drop_da_print_spend_fct.region_id, drop_da_print_spend_fct.engine, drop_da_print_spend_fct.device_type, drop_da_print_spend_fct.asset_lower_and_md5, drop_da_print_spend_fct.application_code, drop_da_print_spend_fct.event_lower_and_md5, drop_da_print_spend_fct.publisher_category, drop_da_print_spend_fct.brand, drop_da_print_spend_fct.campaign_code, drop_da_print_spend_fct.event_attribute, drop_da_print_spend_fct.campaign_name, drop_da_print_spend_fct.asset_value, drop_da_print_spend_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.date_master_b0 /*+basename(date_master),createtype(L)*/ 
(
 field,
 date_format,
 COMMENT
)
AS
 SELECT drop_date_master.field,
        drop_date_master.date_format,
        drop_date_master.COMMENT
 FROM tableau.drop_date_master
 ORDER BY drop_date_master.field,
          drop_date_master.date_format,
          drop_date_master.COMMENT
SEGMENTED BY hash(drop_date_master.field, drop_date_master.date_format, drop_date_master.COMMENT) ALL NODES;

CREATE PROJECTION tableau.doubleclick_dcm_fct_b0 /*+basename(doubleclick_dcm_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 impressions,
 clicks,
 media_cost,
 total_conversions,
 click_thru_conversions,
 view_thru_conversions,
 average_cpm,
 average_cpc,
 average_ctr
)
AS
 SELECT drop_doubleclick_dcm_fct.full_visitor_id,
        drop_doubleclick_dcm_fct.brand,
        drop_doubleclick_dcm_fct.engine,
        drop_doubleclick_dcm_fct.audience_code,
        drop_doubleclick_dcm_fct.campaign_code,
        drop_doubleclick_dcm_fct.placement_id,
        drop_doubleclick_dcm_fct.partner_id,
        drop_doubleclick_dcm_fct.asset_id,
        drop_doubleclick_dcm_fct.asset_value,
        drop_doubleclick_dcm_fct.asset_lower_and_md5,
        drop_doubleclick_dcm_fct.search_engine,
        drop_doubleclick_dcm_fct.device_type,
        drop_doubleclick_dcm_fct.application_code,
        drop_doubleclick_dcm_fct.region_id,
        drop_doubleclick_dcm_fct.city_id,
        drop_doubleclick_dcm_fct.event_id,
        drop_doubleclick_dcm_fct.event_value,
        drop_doubleclick_dcm_fct.event_lower_and_md5,
        drop_doubleclick_dcm_fct.event_attribute,
        drop_doubleclick_dcm_fct.user_id,
        drop_doubleclick_dcm_fct.visit_id,
        drop_doubleclick_dcm_fct.DATE,
        drop_doubleclick_dcm_fct.impressions,
        drop_doubleclick_dcm_fct.clicks,
        drop_doubleclick_dcm_fct.media_cost,
        drop_doubleclick_dcm_fct.total_conversions,
        drop_doubleclick_dcm_fct.click_thru_conversions,
        drop_doubleclick_dcm_fct.view_thru_conversions,
        drop_doubleclick_dcm_fct.average_cpm,
        drop_doubleclick_dcm_fct.average_cpc,
        drop_doubleclick_dcm_fct.average_ctr
 FROM tableau.drop_doubleclick_dcm_fct
 ORDER BY drop_doubleclick_dcm_fct.full_visitor_id,
          drop_doubleclick_dcm_fct.brand,
          drop_doubleclick_dcm_fct.engine,
          drop_doubleclick_dcm_fct.audience_code,
          drop_doubleclick_dcm_fct.campaign_code,
          drop_doubleclick_dcm_fct.placement_id,
          drop_doubleclick_dcm_fct.partner_id,
          drop_doubleclick_dcm_fct.asset_id,
          drop_doubleclick_dcm_fct.asset_value,
          drop_doubleclick_dcm_fct.asset_lower_and_md5,
          drop_doubleclick_dcm_fct.search_engine,
          drop_doubleclick_dcm_fct.device_type,
          drop_doubleclick_dcm_fct.application_code,
          drop_doubleclick_dcm_fct.region_id,
          drop_doubleclick_dcm_fct.city_id,
          drop_doubleclick_dcm_fct.event_id,
          drop_doubleclick_dcm_fct.event_value,
          drop_doubleclick_dcm_fct.event_lower_and_md5,
          drop_doubleclick_dcm_fct.event_attribute,
          drop_doubleclick_dcm_fct.user_id,
          drop_doubleclick_dcm_fct.visit_id,
          drop_doubleclick_dcm_fct.DATE,
          drop_doubleclick_dcm_fct.impressions,
          drop_doubleclick_dcm_fct.clicks,
          drop_doubleclick_dcm_fct.media_cost,
          drop_doubleclick_dcm_fct.total_conversions,
          drop_doubleclick_dcm_fct.click_thru_conversions,
          drop_doubleclick_dcm_fct.view_thru_conversions,
          drop_doubleclick_dcm_fct.average_cpm,
          drop_doubleclick_dcm_fct.average_cpc,
          drop_doubleclick_dcm_fct.average_ctr
SEGMENTED BY hash(drop_doubleclick_dcm_fct.full_visitor_id, drop_doubleclick_dcm_fct.audience_code, drop_doubleclick_dcm_fct.placement_id, drop_doubleclick_dcm_fct.partner_id, drop_doubleclick_dcm_fct.asset_id, drop_doubleclick_dcm_fct.city_id, drop_doubleclick_dcm_fct.event_id, drop_doubleclick_dcm_fct.user_id, drop_doubleclick_dcm_fct.visit_id, drop_doubleclick_dcm_fct.DATE, drop_doubleclick_dcm_fct.media_cost, drop_doubleclick_dcm_fct.average_cpm, drop_doubleclick_dcm_fct.average_cpc, drop_doubleclick_dcm_fct.average_ctr, drop_doubleclick_dcm_fct.search_engine, drop_doubleclick_dcm_fct.region_id, drop_doubleclick_dcm_fct.engine, drop_doubleclick_dcm_fct.device_type, drop_doubleclick_dcm_fct.impressions, drop_doubleclick_dcm_fct.clicks, drop_doubleclick_dcm_fct.total_conversions, drop_doubleclick_dcm_fct.click_thru_conversions, drop_doubleclick_dcm_fct.view_thru_conversions, drop_doubleclick_dcm_fct.asset_lower_and_md5, drop_doubleclick_dcm_fct.application_code, drop_doubleclick_dcm_fct.event_lower_and_md5, drop_doubleclick_dcm_fct.brand, drop_doubleclick_dcm_fct.campaign_code, drop_doubleclick_dcm_fct.event_attribute, drop_doubleclick_dcm_fct.asset_value, drop_doubleclick_dcm_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.doubleclick_ds_fct_b0 /*+basename(doubleclick_ds_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 keyword_name,
 keyword_position,
 impressions,
 clicks,
 average_cpc,
 average_cpm,
 average_ctr,
 media_cost,
 adwords_conversions,
 total_conversions
)
AS
 SELECT drop_doubleclick_ds_fct.full_visitor_id,
        drop_doubleclick_ds_fct.brand,
        drop_doubleclick_ds_fct.engine,
        drop_doubleclick_ds_fct.audience_code,
        drop_doubleclick_ds_fct.campaign_code,
        drop_doubleclick_ds_fct.placement_id,
        drop_doubleclick_ds_fct.partner_id,
        drop_doubleclick_ds_fct.asset_id,
        drop_doubleclick_ds_fct.asset_value,
        drop_doubleclick_ds_fct.asset_lower_and_md5,
        drop_doubleclick_ds_fct.search_engine,
        drop_doubleclick_ds_fct.device_type,
        drop_doubleclick_ds_fct.application_code,
        drop_doubleclick_ds_fct.region_id,
        drop_doubleclick_ds_fct.city_id,
        drop_doubleclick_ds_fct.event_id,
        drop_doubleclick_ds_fct.event_value,
        drop_doubleclick_ds_fct.event_lower_and_md5,
        drop_doubleclick_ds_fct.event_attribute,
        drop_doubleclick_ds_fct.user_id,
        drop_doubleclick_ds_fct.visit_id,
        drop_doubleclick_ds_fct.DATE,
        drop_doubleclick_ds_fct.keyword_name,
        drop_doubleclick_ds_fct.keyword_position,
        drop_doubleclick_ds_fct.impressions,
        drop_doubleclick_ds_fct.clicks,
        drop_doubleclick_ds_fct.average_cpc,
        drop_doubleclick_ds_fct.average_cpm,
        drop_doubleclick_ds_fct.average_ctr,
        drop_doubleclick_ds_fct.media_cost,
        drop_doubleclick_ds_fct.adwords_conversions,
        drop_doubleclick_ds_fct.total_conversions
 FROM tableau.drop_doubleclick_ds_fct
 ORDER BY drop_doubleclick_ds_fct.full_visitor_id,
          drop_doubleclick_ds_fct.brand,
          drop_doubleclick_ds_fct.engine,
          drop_doubleclick_ds_fct.audience_code,
          drop_doubleclick_ds_fct.campaign_code,
          drop_doubleclick_ds_fct.placement_id,
          drop_doubleclick_ds_fct.partner_id,
          drop_doubleclick_ds_fct.asset_id,
          drop_doubleclick_ds_fct.asset_value,
          drop_doubleclick_ds_fct.asset_lower_and_md5,
          drop_doubleclick_ds_fct.search_engine,
          drop_doubleclick_ds_fct.device_type,
          drop_doubleclick_ds_fct.application_code,
          drop_doubleclick_ds_fct.region_id,
          drop_doubleclick_ds_fct.city_id,
          drop_doubleclick_ds_fct.event_id,
          drop_doubleclick_ds_fct.event_value,
          drop_doubleclick_ds_fct.event_lower_and_md5,
          drop_doubleclick_ds_fct.event_attribute,
          drop_doubleclick_ds_fct.user_id,
          drop_doubleclick_ds_fct.visit_id,
          drop_doubleclick_ds_fct.DATE,
          drop_doubleclick_ds_fct.keyword_name,
          drop_doubleclick_ds_fct.keyword_position,
          drop_doubleclick_ds_fct.impressions,
          drop_doubleclick_ds_fct.clicks,
          drop_doubleclick_ds_fct.average_cpc,
          drop_doubleclick_ds_fct.average_cpm,
          drop_doubleclick_ds_fct.average_ctr,
          drop_doubleclick_ds_fct.media_cost,
          drop_doubleclick_ds_fct.adwords_conversions,
          drop_doubleclick_ds_fct.total_conversions
SEGMENTED BY hash(drop_doubleclick_ds_fct.full_visitor_id, drop_doubleclick_ds_fct.audience_code, drop_doubleclick_ds_fct.placement_id, drop_doubleclick_ds_fct.partner_id, drop_doubleclick_ds_fct.asset_id, drop_doubleclick_ds_fct.city_id, drop_doubleclick_ds_fct.event_id, drop_doubleclick_ds_fct.user_id, drop_doubleclick_ds_fct.visit_id, drop_doubleclick_ds_fct.DATE, drop_doubleclick_ds_fct.keyword_position, drop_doubleclick_ds_fct.average_cpc, drop_doubleclick_ds_fct.average_cpm, drop_doubleclick_ds_fct.average_ctr, drop_doubleclick_ds_fct.media_cost, drop_doubleclick_ds_fct.search_engine, drop_doubleclick_ds_fct.region_id, drop_doubleclick_ds_fct.engine, drop_doubleclick_ds_fct.device_type, drop_doubleclick_ds_fct.impressions, drop_doubleclick_ds_fct.clicks, drop_doubleclick_ds_fct.adwords_conversions, drop_doubleclick_ds_fct.total_conversions, drop_doubleclick_ds_fct.asset_lower_and_md5, drop_doubleclick_ds_fct.application_code, drop_doubleclick_ds_fct.event_lower_and_md5, drop_doubleclick_ds_fct.brand, drop_doubleclick_ds_fct.campaign_code, drop_doubleclick_ds_fct.event_attribute, drop_doubleclick_ds_fct.keyword_name, drop_doubleclick_ds_fct.asset_value, drop_doubleclick_ds_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.email_b0 /*+basename(email),createtype(L)*/ 
(
 DATE,
 business_unit,
 brand,
 audience,
 campaign_name,
 type_name,
 send,
 delivered,
 OPEN,
 click,
 zip,
 state,
 source_name,
 spend,
 email_stacked_clicks,
 email_stacked_opens,
 email_stacked_delivered
)
AS
 SELECT drop_email.DATE,
        drop_email.business_unit,
        drop_email.brand,
        drop_email.audience,
        drop_email.campaign_name,
        drop_email.type_name,
        drop_email.send,
        drop_email.delivered,
        drop_email.OPEN,
        drop_email.click,
        drop_email.zip,
        drop_email.state,
        drop_email.source_name,
        drop_email.spend,
        drop_email.email_stacked_clicks,
        drop_email.email_stacked_opens,
        drop_email.email_stacked_delivered
 FROM tableau.drop_email
 ORDER BY drop_email.DATE,
          drop_email.business_unit,
          drop_email.brand,
          drop_email.audience,
          drop_email.campaign_name,
          drop_email.type_name,
          drop_email.send,
          drop_email.delivered,
          drop_email.OPEN,
          drop_email.click,
          drop_email.zip,
          drop_email.state,
          drop_email.source_name,
          drop_email.spend
SEGMENTED BY hash(drop_email.DATE, drop_email.send, drop_email.delivered, drop_email.OPEN, drop_email.click, drop_email.business_unit, drop_email.zip, drop_email.state, drop_email.spend, drop_email.campaign_name, drop_email.type_name, drop_email.source_name, drop_email.brand, drop_email.audience) ALL NODES;

CREATE PROJECTION tableau.email_fct_b0 /*+basename(email_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 state,
 zip,
 send,
 deliver,
 OPEN,
 click
)
AS
 SELECT drop_email_fct.full_visitor_id,
        drop_email_fct.brand,
        drop_email_fct.engine,
        drop_email_fct.audience_code,
        drop_email_fct.campaign_code,
        drop_email_fct.placement_id,
        drop_email_fct.partner_id,
        drop_email_fct.asset_id,
        drop_email_fct.asset_value,
        drop_email_fct.asset_lower_and_md5,
        drop_email_fct.search_engine,
        drop_email_fct.device_type,
        drop_email_fct.application_code,
        drop_email_fct.region_id,
        drop_email_fct.city_id,
        drop_email_fct.event_id,
        drop_email_fct.event_value,
        drop_email_fct.event_lower_and_md5,
        drop_email_fct.event_attribute,
        drop_email_fct.user_id,
        drop_email_fct.visit_id,
        drop_email_fct.DATE,
        drop_email_fct.state,
        drop_email_fct.zip,
        drop_email_fct.send,
        drop_email_fct.deliver,
        drop_email_fct.OPEN,
        drop_email_fct.click
 FROM tableau.drop_email_fct
 ORDER BY drop_email_fct.campaign_code
SEGMENTED BY hash(drop_email_fct.full_visitor_id, drop_email_fct.audience_code, drop_email_fct.placement_id, drop_email_fct.partner_id, drop_email_fct.asset_id, drop_email_fct.city_id, drop_email_fct.event_id, drop_email_fct.user_id, drop_email_fct.visit_id, drop_email_fct.DATE, drop_email_fct.state, drop_email_fct.send, drop_email_fct.deliver, drop_email_fct.OPEN, drop_email_fct.click, drop_email_fct.search_engine, drop_email_fct.region_id, drop_email_fct.zip, drop_email_fct.engine, drop_email_fct.device_type, drop_email_fct.asset_lower_and_md5, drop_email_fct.application_code, drop_email_fct.event_lower_and_md5, drop_email_fct.brand, drop_email_fct.campaign_code, drop_email_fct.event_attribute, drop_email_fct.asset_value, drop_email_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.email_src_v1_b0 /*+basename(email_src_v1),createtype(A)*/ 
(
 campaign_name,
 source_name,
 DATE,
 type_name,
 state,
 zip,
 city
)
AS
 SELECT drop_email_src.campaign_name,
        drop_email_src.source_name,
        drop_email_src.DATE,
        drop_email_src.type_name,
        drop_email_src.state,
        drop_email_src.zip,
        drop_email_src.city
 FROM tableau.drop_email_src
 ORDER BY drop_email_src.campaign_name,
          drop_email_src.source_name,
          drop_email_src.DATE,
          drop_email_src.type_name,
          drop_email_src.state,
          drop_email_src.zip,
          drop_email_src.city
SEGMENTED BY hash(drop_email_src.DATE, drop_email_src.state, drop_email_src.zip, drop_email_src.city, drop_email_src.source_name, drop_email_src.type_name, drop_email_src.campaign_name) ALL NODES;

CREATE PROJECTION tableau.engine_dim_b0 /*+basename(engine_dim),createtype(L)*/ 
(
 code,
 name,
 type,
 regexp_pattern,
 normalized_name,
 strata,
 url,
 bi_layer_code
)
AS
 SELECT drop_engine_dim.code,
        drop_engine_dim.name,
        drop_engine_dim.type,
        drop_engine_dim.regexp_pattern,
        drop_engine_dim.normalized_name,
        drop_engine_dim.strata,
        drop_engine_dim.url,
        drop_engine_dim.bi_layer_code
 FROM tableau.drop_engine_dim
 ORDER BY drop_engine_dim.code
SEGMENTED BY hash(drop_engine_dim.code) ALL NODES;

CREATE PROJECTION tableau.event_goal_xref_b0 /*+basename(event_goal_xref),createtype(L)*/ 
(
 gtm_tag_name,
 is_event,
 is_goal,
 kpi_funnel,
 brand
)
AS
 SELECT drop_event_goal_xref.gtm_tag_name,
        drop_event_goal_xref.is_event,
        drop_event_goal_xref.is_goal,
        drop_event_goal_xref.kpi_funnel,
        drop_event_goal_xref.brand
 FROM tableau.drop_event_goal_xref
 ORDER BY drop_event_goal_xref.gtm_tag_name,
          drop_event_goal_xref.is_event,
          drop_event_goal_xref.is_goal,
          drop_event_goal_xref.kpi_funnel,
          drop_event_goal_xref.brand
SEGMENTED BY hash(drop_event_goal_xref.is_event, drop_event_goal_xref.is_goal, drop_event_goal_xref.kpi_funnel, drop_event_goal_xref.gtm_tag_name, drop_event_goal_xref.brand) ALL NODES;

CREATE PROJECTION tableau.geolocation_v1_b0 /*+basename(geolocation_v1),createtype(L)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 busines_unit,
 brand,
 audience,
 campaign_id,
 campaign_name,
 xref_campaign_name,
 buy_type,
 partner_site_id,
 partner_site_name,
 creative,
 ad_size,
 search_engine,
 state,
 lat,
 LONG,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event,
 is_event_label_goal,
 total_impressions,
 totals_visits,
 device_device_category,
 total_page_views
)
AS
 SELECT drop_geolocation__20171106.full_visitor_id,
        drop_geolocation__20171106.visit_id,
        drop_geolocation__20171106.DATE,
        drop_geolocation__20171106.busines_unit,
        drop_geolocation__20171106.brand,
        drop_geolocation__20171106.audience,
        drop_geolocation__20171106.campaign_id,
        drop_geolocation__20171106.campaign_name,
        drop_geolocation__20171106.xref_campaign_name,
        drop_geolocation__20171106.buy_type,
        drop_geolocation__20171106.partner_site_id,
        drop_geolocation__20171106.partner_site_name,
        drop_geolocation__20171106.creative,
        drop_geolocation__20171106.ad_size,
        drop_geolocation__20171106.search_engine,
        drop_geolocation__20171106.state,
        drop_geolocation__20171106.lat,
        drop_geolocation__20171106.LONG,
        drop_geolocation__20171106.hits_event_info_event_category,
        drop_geolocation__20171106.hits_event_info_event_action,
        drop_geolocation__20171106.hits_event_info_event_label,
        drop_geolocation__20171106.is_event_label_event,
        drop_geolocation__20171106.is_event_label_goal,
        drop_geolocation__20171106.total_impressions,
        drop_geolocation__20171106.totals_visits,
        drop_geolocation__20171106.device_device_category,
        drop_geolocation__20171106.total_page_views
 FROM tableau.drop_geolocation__20171106
 ORDER BY drop_geolocation__20171106.full_visitor_id,
          drop_geolocation__20171106.visit_id,
          drop_geolocation__20171106.DATE,
          drop_geolocation__20171106.busines_unit,
          drop_geolocation__20171106.brand,
          drop_geolocation__20171106.audience,
          drop_geolocation__20171106.campaign_id,
          drop_geolocation__20171106.campaign_name,
          drop_geolocation__20171106.xref_campaign_name,
          drop_geolocation__20171106.buy_type,
          drop_geolocation__20171106.partner_site_id,
          drop_geolocation__20171106.partner_site_name,
          drop_geolocation__20171106.creative,
          drop_geolocation__20171106.ad_size,
          drop_geolocation__20171106.search_engine,
          drop_geolocation__20171106.state,
          drop_geolocation__20171106.lat,
          drop_geolocation__20171106.LONG,
          drop_geolocation__20171106.hits_event_info_event_category,
          drop_geolocation__20171106.hits_event_info_event_action,
          drop_geolocation__20171106.hits_event_info_event_label,
          drop_geolocation__20171106.is_event_label_event,
          drop_geolocation__20171106.is_event_label_goal,
          drop_geolocation__20171106.total_impressions,
          drop_geolocation__20171106.totals_visits,
          drop_geolocation__20171106.device_device_category,
          drop_geolocation__20171106.total_page_views
SEGMENTED BY hash(drop_geolocation__20171106.is_event_label_event, drop_geolocation__20171106.is_event_label_goal, drop_geolocation__20171106.visit_id, drop_geolocation__20171106.ad_size, drop_geolocation__20171106.search_engine, drop_geolocation__20171106.state, drop_geolocation__20171106.lat, drop_geolocation__20171106.LONG, drop_geolocation__20171106.hits_event_info_event_category, drop_geolocation__20171106.hits_event_info_event_action, drop_geolocation__20171106.hits_event_info_event_label, drop_geolocation__20171106.device_device_category, drop_geolocation__20171106.full_visitor_id, drop_geolocation__20171106.DATE, drop_geolocation__20171106.total_impressions, drop_geolocation__20171106.totals_visits, drop_geolocation__20171106.total_page_views, drop_geolocation__20171106.busines_unit, drop_geolocation__20171106.audience, drop_geolocation__20171106.buy_type, drop_geolocation__20171106.partner_site_id, drop_geolocation__20171106.brand, drop_geolocation__20171106.campaign_name, drop_geolocation__20171106.xref_campaign_name, drop_geolocation__20171106.partner_site_name, drop_geolocation__20171106.creative, drop_geolocation__20171106.campaign_id) ALL NODES;

CREATE PROJECTION tableau.innovid_fct_b0 /*+basename(innovid_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 iv_campaign_name,
 publisher_id,
 publisher,
 iv_video_name,
 placement_name,
 DATE,
 video_starts,
 video_completion,
 percent_video_completion
)
AS
 SELECT drop_innovid_fct.full_visitor_id,
        drop_innovid_fct.brand,
        drop_innovid_fct.engine,
        drop_innovid_fct.audience_code,
        drop_innovid_fct.campaign_code,
        drop_innovid_fct.placement_id,
        drop_innovid_fct.partner_id,
        drop_innovid_fct.asset_id,
        drop_innovid_fct.asset_value,
        drop_innovid_fct.asset_lower_and_md5,
        drop_innovid_fct.search_engine,
        drop_innovid_fct.device_type,
        drop_innovid_fct.application_code,
        drop_innovid_fct.region_id,
        drop_innovid_fct.city_id,
        drop_innovid_fct.event_id,
        drop_innovid_fct.event_value,
        drop_innovid_fct.event_lower_and_md5,
        drop_innovid_fct.event_attribute,
        drop_innovid_fct.user_id,
        drop_innovid_fct.visit_id,
        drop_innovid_fct.iv_campaign_name,
        drop_innovid_fct.publisher_id,
        drop_innovid_fct.publisher,
        drop_innovid_fct.iv_video_name,
        drop_innovid_fct.placement_name,
        drop_innovid_fct.DATE,
        drop_innovid_fct.video_starts,
        drop_innovid_fct.video_completion,
        drop_innovid_fct.percent_video_completion
 FROM tableau.drop_innovid_fct
 ORDER BY drop_innovid_fct.DATE
SEGMENTED BY hash(drop_innovid_fct.full_visitor_id, drop_innovid_fct.audience_code, drop_innovid_fct.placement_id, drop_innovid_fct.partner_id, drop_innovid_fct.asset_id, drop_innovid_fct.city_id, drop_innovid_fct.event_id, drop_innovid_fct.user_id, drop_innovid_fct.visit_id, drop_innovid_fct.publisher_id, drop_innovid_fct.DATE, drop_innovid_fct.video_starts, drop_innovid_fct.percent_video_completion, drop_innovid_fct.search_engine, drop_innovid_fct.region_id, drop_innovid_fct.video_completion, drop_innovid_fct.engine, drop_innovid_fct.device_type, drop_innovid_fct.asset_lower_and_md5, drop_innovid_fct.application_code, drop_innovid_fct.event_lower_and_md5, drop_innovid_fct.publisher, drop_innovid_fct.brand, drop_innovid_fct.campaign_code, drop_innovid_fct.event_attribute, drop_innovid_fct.iv_campaign_name, drop_innovid_fct.iv_video_name, drop_innovid_fct.placement_name, drop_innovid_fct.asset_value, drop_innovid_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.placement_dim_pk_b0 /*+basename(placement_dim_pk),createtype(L)*/ 
(
 id,
 engine
)
AS
 SELECT drop_placement_dim.id,
        drop_placement_dim.engine
 FROM tableau.drop_placement_dim
 ORDER BY drop_placement_dim.id,
          drop_placement_dim.engine
SEGMENTED BY hash(drop_placement_dim.id, drop_placement_dim.engine) ALL NODES;

CREATE PROJECTION tableau.ppc_search_v1_b0 /*+basename(ppc_search_v1),createtype(L)*/ 
(
 DATE,
 business_unit,
 advertiser_id,
 brand,
 audience,
 buy_type,
 creative,
 ad_size,
 publisher_unique_id,
 search_engine_source,
 campaign_id,
 campaign_name,
 search_impressions,
 dollar_per_search_impression,
 search_clicks,
 search_ctr,
 search_cpc,
 search_conversion_name,
 search_conversions,
 dollar_per_search_conversions,
 keyword,
 ad_group_id,
 ad_group,
 ad_position,
 max_bid
)
AS
 SELECT drop_ppc_search.DATE,
        drop_ppc_search.business_unit,
        drop_ppc_search.advertiser_id,
        drop_ppc_search.brand,
        drop_ppc_search.audience,
        drop_ppc_search.buy_type,
        drop_ppc_search.creative,
        drop_ppc_search.ad_size,
        drop_ppc_search.publisher_unique_id,
        drop_ppc_search.search_engine_source,
        drop_ppc_search.campaign_id,
        drop_ppc_search.campaign_name,
        drop_ppc_search.search_impressions,
        drop_ppc_search.dollar_per_search_impression,
        drop_ppc_search.search_clicks,
        drop_ppc_search.search_ctr,
        drop_ppc_search.search_cpc,
        drop_ppc_search.search_conversion_name,
        drop_ppc_search.search_conversions,
        drop_ppc_search.dollar_per_search_conversions,
        drop_ppc_search.keyword,
        drop_ppc_search.ad_group_id,
        drop_ppc_search.ad_group,
        drop_ppc_search.ad_position,
        drop_ppc_search.max_bid
 FROM tableau.drop_ppc_search
 ORDER BY drop_ppc_search.DATE,
          drop_ppc_search.business_unit,
          drop_ppc_search.advertiser_id,
          drop_ppc_search.brand,
          drop_ppc_search.audience,
          drop_ppc_search.buy_type,
          drop_ppc_search.creative,
          drop_ppc_search.ad_size,
          drop_ppc_search.publisher_unique_id,
          drop_ppc_search.search_engine_source,
          drop_ppc_search.campaign_id,
          drop_ppc_search.campaign_name,
          drop_ppc_search.search_impressions,
          drop_ppc_search.dollar_per_search_impression,
          drop_ppc_search.search_clicks,
          drop_ppc_search.search_ctr,
          drop_ppc_search.search_cpc,
          drop_ppc_search.search_conversion_name,
          drop_ppc_search.search_conversions,
          drop_ppc_search.dollar_per_search_conversions,
          drop_ppc_search.keyword,
          drop_ppc_search.ad_group_id,
          drop_ppc_search.ad_group,
          drop_ppc_search.ad_position,
          drop_ppc_search.max_bid
SEGMENTED BY hash(drop_ppc_search.ad_group_id) ALL NODES;

CREATE PROJECTION tableau.ppc_search_sankey_v1_b0 /*+basename(ppc_search_sankey_v1),createtype(L)*/ 
(
 session_date_filter,
 business_unit_filter,
 brand_filter,
 target_audience_filter,
 campaign_id_artifact_not_used,
 campaign_name_filter,
 ad_group_id,
 ad_group_node_left,
 teva_url_node_center,
 visit_weight_partner_site_to_url,
 conversion_node_right,
 event_weight_url_to_event,
 search_engine_filter,
 partner_site_id
)
AS
 SELECT drop_ppc_search_sankey.session_date_filter,
        drop_ppc_search_sankey.business_unit_filter,
        drop_ppc_search_sankey.brand_filter,
        drop_ppc_search_sankey.target_audience_filter,
        drop_ppc_search_sankey.campaign_id_artifact_not_used,
        drop_ppc_search_sankey.campaign_name_filter,
        drop_ppc_search_sankey.ad_group_id,
        drop_ppc_search_sankey.ad_group_node_left,
        drop_ppc_search_sankey.teva_url_node_center,
        drop_ppc_search_sankey.visit_weight_partner_site_to_url,
        drop_ppc_search_sankey.conversion_node_right,
        drop_ppc_search_sankey.event_weight_url_to_event,
        drop_ppc_search_sankey.search_engine_filter,
        drop_ppc_search_sankey.partner_site_id
 FROM tableau.drop_ppc_search_sankey
 ORDER BY drop_ppc_search_sankey.session_date_filter,
          drop_ppc_search_sankey.business_unit_filter,
          drop_ppc_search_sankey.brand_filter,
          drop_ppc_search_sankey.target_audience_filter,
          drop_ppc_search_sankey.campaign_id_artifact_not_used,
          drop_ppc_search_sankey.campaign_name_filter,
          drop_ppc_search_sankey.ad_group_id,
          drop_ppc_search_sankey.ad_group_node_left,
          drop_ppc_search_sankey.teva_url_node_center,
          drop_ppc_search_sankey.visit_weight_partner_site_to_url,
          drop_ppc_search_sankey.conversion_node_right,
          drop_ppc_search_sankey.event_weight_url_to_event,
          drop_ppc_search_sankey.search_engine_filter,
          drop_ppc_search_sankey.partner_site_id
SEGMENTED BY hash(drop_ppc_search_sankey.session_date_filter, drop_ppc_search_sankey.ad_group_node_left, drop_ppc_search_sankey.search_engine_filter, drop_ppc_search_sankey.visit_weight_partner_site_to_url, drop_ppc_search_sankey.event_weight_url_to_event, drop_ppc_search_sankey.business_unit_filter, drop_ppc_search_sankey.target_audience_filter, drop_ppc_search_sankey.campaign_id_artifact_not_used, drop_ppc_search_sankey.ad_group_id, drop_ppc_search_sankey.partner_site_id, drop_ppc_search_sankey.brand_filter, drop_ppc_search_sankey.campaign_name_filter, drop_ppc_search_sankey.conversion_node_right, drop_ppc_search_sankey.teva_url_node_center) ALL NODES;

CREATE PROJECTION tableau.publisher_partner_site_xref_b0 /*+basename(publisher_partner_site_xref),createtype(L)*/ 
(
 partner_site_id,
 partner_site_name,
 partner_group,
 partner_site_classification,
 partner_site_classification_desc,
 COMMENT
)
AS
 SELECT drop_publisher_partner_site_xref.partner_site_id,
        drop_publisher_partner_site_xref.partner_site_name,
        drop_publisher_partner_site_xref.partner_group,
        drop_publisher_partner_site_xref.partner_site_classification,
        drop_publisher_partner_site_xref.partner_site_classification_desc,
        drop_publisher_partner_site_xref.COMMENT
 FROM tableau.drop_publisher_partner_site_xref
 ORDER BY drop_publisher_partner_site_xref.partner_site_id,
          drop_publisher_partner_site_xref.partner_site_name,
          drop_publisher_partner_site_xref.partner_group,
          drop_publisher_partner_site_xref.partner_site_classification,
          drop_publisher_partner_site_xref.partner_site_classification_desc,
          drop_publisher_partner_site_xref.COMMENT
SEGMENTED BY hash(drop_publisher_partner_site_xref.partner_site_id, drop_publisher_partner_site_xref.partner_site_name, drop_publisher_partner_site_xref.partner_group, drop_publisher_partner_site_xref.partner_site_classification, drop_publisher_partner_site_xref.partner_site_classification_desc, drop_publisher_partner_site_xref.COMMENT) ALL NODES;

CREATE PROJECTION tableau.rec_search_sankey_v1_v1_b0 /*+basename(rec_search_sankey_v1_v1),createtype(L)*/ 
(
 session_date_filter,
 business_unit_filter,
 brand_filter,
 target_audience_filter,
 campaign_id_artifact_not_used,
 campaign_name_filter,
 publisher_unique_id_artifact_not_used,
 partner_site_classification_node_left,
 daily_classification_cnt,
 teva_url_node_center,
 visit_weight_partner_site_to_url,
 hits_event_info_event_label,
 event_weight_url_to_event
)
AS
 SELECT drop_rec_search_sankey.session_date_filter,
        drop_rec_search_sankey.business_unit_filter,
        drop_rec_search_sankey.brand_filter,
        drop_rec_search_sankey.target_audience_filter,
        drop_rec_search_sankey.campaign_id_artifact_not_used,
        drop_rec_search_sankey.campaign_name_filter,
        drop_rec_search_sankey.publisher_unique_id_artifact_not_used,
        drop_rec_search_sankey.partner_site_classification_node_left,
        drop_rec_search_sankey.daily_classification_cnt,
        drop_rec_search_sankey.teva_url_node_center,
        drop_rec_search_sankey.visit_weight_partner_site_to_url,
        drop_rec_search_sankey.hits_event_info_event_label,
        drop_rec_search_sankey.event_weight_url_to_event
 FROM tableau.drop_rec_search_sankey
 ORDER BY drop_rec_search_sankey.session_date_filter,
          drop_rec_search_sankey.business_unit_filter,
          drop_rec_search_sankey.brand_filter,
          drop_rec_search_sankey.target_audience_filter,
          drop_rec_search_sankey.campaign_id_artifact_not_used,
          drop_rec_search_sankey.campaign_name_filter,
          drop_rec_search_sankey.publisher_unique_id_artifact_not_used,
          drop_rec_search_sankey.partner_site_classification_node_left,
          drop_rec_search_sankey.daily_classification_cnt,
          drop_rec_search_sankey.teva_url_node_center,
          drop_rec_search_sankey.visit_weight_partner_site_to_url,
          drop_rec_search_sankey.hits_event_info_event_label,
          drop_rec_search_sankey.event_weight_url_to_event
SEGMENTED BY hash(drop_rec_search_sankey.session_date_filter, drop_rec_search_sankey.daily_classification_cnt, drop_rec_search_sankey.visit_weight_partner_site_to_url, drop_rec_search_sankey.event_weight_url_to_event, drop_rec_search_sankey.business_unit_filter, drop_rec_search_sankey.target_audience_filter, drop_rec_search_sankey.campaign_id_artifact_not_used, drop_rec_search_sankey.publisher_unique_id_artifact_not_used, drop_rec_search_sankey.partner_site_classification_node_left, drop_rec_search_sankey.brand_filter, drop_rec_search_sankey.campaign_name_filter, drop_rec_search_sankey.hits_event_info_event_label, drop_rec_search_sankey.teva_url_node_center) ALL NODES;

CREATE PROJECTION tableau.region_dim_b0 /*+basename(region_dim),createtype(L)*/ 
(
 code,
 name,
 region_type,
 code_iso,
 code_ansi,
 code_uscg,
 latitude,
 longitude
)
AS
 SELECT drop_region_dim.code,
        drop_region_dim.name,
        drop_region_dim.region_type,
        drop_region_dim.code_iso,
        drop_region_dim.code_ansi,
        drop_region_dim.code_uscg,
        drop_region_dim.latitude,
        drop_region_dim.longitude
 FROM tableau.drop_region_dim
 ORDER BY drop_region_dim.code
SEGMENTED BY hash(drop_region_dim.code) ALL NODES;

CREATE PROJECTION tableau.region_dim_ukcol2_b0 /*+basename(region_dim_ukcol2),createtype(N)*/ 
(
 name
)
AS
 SELECT drop_region_dim.name
 FROM tableau.drop_region_dim
 ORDER BY drop_region_dim.name
SEGMENTED BY hash(drop_region_dim.name) ALL NODES;

CREATE PROJECTION tableau.script_fct_b0 /*+basename(script_fct),createtype(A)*/ 
(
 full_visitor_id,
 brand,
 engine,
 audience_code,
 campaign_code,
 placement_id,
 partner_id,
 asset_id,
 asset_value,
 asset_lower_and_md5,
 search_engine,
 device_type,
 application_code,
 region_id,
 city_id,
 event_id,
 event_value,
 event_lower_and_md5,
 event_attribute,
 user_id,
 visit_id,
 DATE,
 state,
 latitude,
 longitude,
 rollup_week,
 rollup_month,
 record_count,
 day_count_total,
 nrx_count_total,
 nrx_count
)
AS
 SELECT drop_script_fct.full_visitor_id,
        drop_script_fct.brand,
        drop_script_fct.engine,
        drop_script_fct.audience_code,
        drop_script_fct.campaign_code,
        drop_script_fct.placement_id,
        drop_script_fct.partner_id,
        drop_script_fct.asset_id,
        drop_script_fct.asset_value,
        drop_script_fct.asset_lower_and_md5,
        drop_script_fct.search_engine,
        drop_script_fct.device_type,
        drop_script_fct.application_code,
        drop_script_fct.region_id,
        drop_script_fct.city_id,
        drop_script_fct.event_id,
        drop_script_fct.event_value,
        drop_script_fct.event_lower_and_md5,
        drop_script_fct.event_attribute,
        drop_script_fct.user_id,
        drop_script_fct.visit_id,
        drop_script_fct.DATE,
        drop_script_fct.state,
        drop_script_fct.latitude,
        drop_script_fct.longitude,
        drop_script_fct.rollup_week,
        drop_script_fct.rollup_month,
        drop_script_fct.record_count,
        drop_script_fct.day_count_total,
        drop_script_fct.nrx_count_total,
        drop_script_fct.nrx_count
 FROM tableau.drop_script_fct
 ORDER BY drop_script_fct.brand,
          drop_script_fct.asset_id,
          drop_script_fct.state,
          drop_script_fct.rollup_week,
          drop_script_fct.rollup_month
SEGMENTED BY hash(drop_script_fct.full_visitor_id, drop_script_fct.audience_code, drop_script_fct.placement_id, drop_script_fct.partner_id, drop_script_fct.asset_id, drop_script_fct.city_id, drop_script_fct.event_id, drop_script_fct.event_lower_and_md5, drop_script_fct.user_id, drop_script_fct.visit_id, drop_script_fct.DATE, drop_script_fct.state, drop_script_fct.latitude, drop_script_fct.longitude, drop_script_fct.rollup_week, drop_script_fct.rollup_month, drop_script_fct.record_count, drop_script_fct.day_count_total, drop_script_fct.nrx_count_total, drop_script_fct.nrx_count, drop_script_fct.search_engine, drop_script_fct.region_id, drop_script_fct.engine, drop_script_fct.device_type, drop_script_fct.asset_lower_and_md5, drop_script_fct.application_code, drop_script_fct.brand, drop_script_fct.campaign_code, drop_script_fct.event_attribute, drop_script_fct.asset_value, drop_script_fct.event_value) ALL NODES;

CREATE PROJECTION tableau.stacked_bar_v1_b0 /*+basename(stacked_bar_v1),createtype(L)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 business_unit,
 brand,
 audience,
 buy_type,
 partner_site_id,
 partner_site_name,
 partner_category,
 creative,
 ad_size,
 source_type,
 campaign_id,
 campaign_name,
 impressions_total,
 engagement_total,
 conversion_total,
 spend_total,
 ola_spend,
 ola_cpm,
 ola_impressions,
 ola_impressions_per_thousand,
 ola_clicks,
 ola_conversions,
 ola_cpc,
 ola_dollar_per_conversions,
 impressions_total_per_thousand,
 stacked_conversions_total,
 stacked_engagement_total,
 stacked_impressions_total_per_thousand,
 ola_stacked_conversion,
 ola_stacked_engagement,
 ola_stacked_impressions_per_thousand,
 email_delivered,
 email_opens,
 email_clicks,
 email_spend,
 email_stacked_clicks,
 email_stacked_opens,
 email_stacked_delivered,
 email_source_name
)
AS
 SELECT drop_stacked_bar__20171106.full_visitor_id,
        drop_stacked_bar__20171106.visit_id,
        drop_stacked_bar__20171106.DATE,
        drop_stacked_bar__20171106.business_unit,
        drop_stacked_bar__20171106.brand,
        drop_stacked_bar__20171106.audience,
        drop_stacked_bar__20171106.buy_type,
        drop_stacked_bar__20171106.partner_site_id,
        drop_stacked_bar__20171106.partner_site_name,
        drop_stacked_bar__20171106.partner_category,
        drop_stacked_bar__20171106.creative,
        drop_stacked_bar__20171106.ad_size,
        drop_stacked_bar__20171106.source_type,
        drop_stacked_bar__20171106.campaign_id,
        drop_stacked_bar__20171106.campaign_name,
        drop_stacked_bar__20171106.impressions_total,
        drop_stacked_bar__20171106.engagement_total,
        drop_stacked_bar__20171106.conversion_total,
        drop_stacked_bar__20171106.spend_total,
        drop_stacked_bar__20171106.ola_spend,
        drop_stacked_bar__20171106.ola_cpm,
        drop_stacked_bar__20171106.ola_impressions,
        drop_stacked_bar__20171106.ola_impressions_per_thousand,
        drop_stacked_bar__20171106.ola_clicks,
        drop_stacked_bar__20171106.ola_conversions,
        drop_stacked_bar__20171106.ola_cpc,
        drop_stacked_bar__20171106.ola_dollar_per_conversions,
        drop_stacked_bar__20171106.impressions_total_per_thousand,
        drop_stacked_bar__20171106.stacked_conversions_total,
        drop_stacked_bar__20171106.stacked_engagement_total,
        drop_stacked_bar__20171106.stacked_impressions_total_per_thousand,
        drop_stacked_bar__20171106.ola_stacked_conversion,
        drop_stacked_bar__20171106.ola_stacked_engagement,
        drop_stacked_bar__20171106.ola_stacked_impressions_per_thousand,
        drop_stacked_bar__20171106.email_delivered,
        drop_stacked_bar__20171106.email_opens,
        drop_stacked_bar__20171106.email_clicks,
        drop_stacked_bar__20171106.email_spend,
        drop_stacked_bar__20171106.email_stacked_clicks,
        drop_stacked_bar__20171106.email_stacked_opens,
        drop_stacked_bar__20171106.email_stacked_delivered,
        drop_stacked_bar__20171106.email_source_name
 FROM tableau.drop_stacked_bar__20171106
 ORDER BY drop_stacked_bar__20171106.full_visitor_id,
          drop_stacked_bar__20171106.visit_id,
          drop_stacked_bar__20171106.DATE,
          drop_stacked_bar__20171106.business_unit,
          drop_stacked_bar__20171106.brand,
          drop_stacked_bar__20171106.audience,
          drop_stacked_bar__20171106.buy_type,
          drop_stacked_bar__20171106.partner_site_id,
          drop_stacked_bar__20171106.partner_site_name,
          drop_stacked_bar__20171106.partner_category,
          drop_stacked_bar__20171106.creative,
          drop_stacked_bar__20171106.ad_size,
          drop_stacked_bar__20171106.source_type,
          drop_stacked_bar__20171106.campaign_id,
          drop_stacked_bar__20171106.campaign_name,
          drop_stacked_bar__20171106.impressions_total,
          drop_stacked_bar__20171106.engagement_total,
          drop_stacked_bar__20171106.conversion_total,
          drop_stacked_bar__20171106.spend_total,
          drop_stacked_bar__20171106.ola_spend,
          drop_stacked_bar__20171106.ola_cpm,
          drop_stacked_bar__20171106.ola_impressions,
          drop_stacked_bar__20171106.ola_impressions_per_thousand,
          drop_stacked_bar__20171106.ola_clicks,
          drop_stacked_bar__20171106.ola_conversions,
          drop_stacked_bar__20171106.ola_cpc,
          drop_stacked_bar__20171106.ola_dollar_per_conversions,
          drop_stacked_bar__20171106.impressions_total_per_thousand,
          drop_stacked_bar__20171106.stacked_conversions_total,
          drop_stacked_bar__20171106.stacked_engagement_total,
          drop_stacked_bar__20171106.stacked_impressions_total_per_thousand,
          drop_stacked_bar__20171106.ola_stacked_conversion,
          drop_stacked_bar__20171106.ola_stacked_engagement,
          drop_stacked_bar__20171106.ola_stacked_impressions_per_thousand,
          drop_stacked_bar__20171106.email_delivered,
          drop_stacked_bar__20171106.email_opens,
          drop_stacked_bar__20171106.email_clicks,
          drop_stacked_bar__20171106.email_spend,
          drop_stacked_bar__20171106.email_stacked_clicks,
          drop_stacked_bar__20171106.email_stacked_opens,
          drop_stacked_bar__20171106.email_stacked_delivered,
          drop_stacked_bar__20171106.email_source_name
SEGMENTED BY hash(drop_stacked_bar__20171106.impressions_total, drop_stacked_bar__20171106.engagement_total, drop_stacked_bar__20171106.conversion_total, drop_stacked_bar__20171106.spend_total, drop_stacked_bar__20171106.ola_spend, drop_stacked_bar__20171106.ola_cpm, drop_stacked_bar__20171106.ola_impressions_per_thousand, drop_stacked_bar__20171106.ola_cpc, drop_stacked_bar__20171106.ola_dollar_per_conversions, drop_stacked_bar__20171106.impressions_total_per_thousand, drop_stacked_bar__20171106.stacked_conversions_total, drop_stacked_bar__20171106.stacked_engagement_total, drop_stacked_bar__20171106.stacked_impressions_total_per_thousand, drop_stacked_bar__20171106.ola_stacked_engagement, drop_stacked_bar__20171106.ola_stacked_impressions_per_thousand, drop_stacked_bar__20171106.email_delivered, drop_stacked_bar__20171106.email_opens, drop_stacked_bar__20171106.email_clicks, drop_stacked_bar__20171106.email_spend, drop_stacked_bar__20171106.email_stacked_clicks, drop_stacked_bar__20171106.email_stacked_opens, drop_stacked_bar__20171106.email_stacked_delivered, drop_stacked_bar__20171106.visit_id, drop_stacked_bar__20171106.ad_size, drop_stacked_bar__20171106.source_type, drop_stacked_bar__20171106.full_visitor_id, drop_stacked_bar__20171106.DATE, drop_stacked_bar__20171106.ola_impressions, drop_stacked_bar__20171106.ola_clicks, drop_stacked_bar__20171106.ola_conversions, drop_stacked_bar__20171106.ola_stacked_conversion, drop_stacked_bar__20171106.business_unit) ALL NODES;

CREATE PROJECTION tableau.text_table_v1_v1_b0 /*+basename(text_table_v1_v1),createtype(L)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 business_unit,
 brand,
 audience,
 buy_type,
 partner_site_id,
 partner_site_name,
 partner_category,
 creative,
 ad_size,
 search_engine,
 campaign_id,
 campaign_name,
 ias_campaign_id,
 viewability,
 dollar_per_viewable_impression,
 percent_viewed_hover,
 innovid_campaign_id,
 video_starts,
 video_completion,
 video_completion_percent,
 owned_asset_visit,
 owned_asset_visit_descripton,
 bounce_rate,
 search_impressions,
 search_actual_cost,
 search_clicks,
 search_ctr,
 search_cpc,
 search_conversion_name,
 search_conversions,
 dollar_per_search_conversions,
 totals_visits,
 display_impressions,
 display_cpm,
 event_label,
 is_event_label_event,
 is_event_label_goal,
 display_media_cost,
 display_clicks,
 display_cpc,
 display_conversion_name,
 display_conversions,
 search_cpm,
 dollar_per_event,
 dollar_per_goal
)
AS
 SELECT drop_text_table__20171106.full_visitor_id,
        drop_text_table__20171106.visit_id,
        drop_text_table__20171106.DATE,
        drop_text_table__20171106.business_unit,
        drop_text_table__20171106.brand,
        drop_text_table__20171106.audience,
        drop_text_table__20171106.buy_type,
        drop_text_table__20171106.partner_site_id,
        drop_text_table__20171106.partner_site_name,
        drop_text_table__20171106.partner_category,
        drop_text_table__20171106.creative,
        drop_text_table__20171106.ad_size,
        drop_text_table__20171106.search_engine,
        drop_text_table__20171106.campaign_id,
        drop_text_table__20171106.campaign_name,
        drop_text_table__20171106.ias_campaign_id,
        drop_text_table__20171106.viewability,
        drop_text_table__20171106.dollar_per_viewable_impression,
        drop_text_table__20171106.percent_viewed_hover,
        drop_text_table__20171106.innovid_campaign_id,
        drop_text_table__20171106.video_starts,
        drop_text_table__20171106.video_completion,
        drop_text_table__20171106.video_completion_percent,
        drop_text_table__20171106.owned_asset_visit,
        drop_text_table__20171106.owned_asset_visit_descripton,
        drop_text_table__20171106.bounce_rate,
        drop_text_table__20171106.search_impressions,
        drop_text_table__20171106.search_actual_cost,
        drop_text_table__20171106.search_clicks,
        drop_text_table__20171106.search_ctr,
        drop_text_table__20171106.search_cpc,
        drop_text_table__20171106.search_conversion_name,
        drop_text_table__20171106.search_conversions,
        drop_text_table__20171106.dollar_per_search_conversions,
        drop_text_table__20171106.totals_visits,
        drop_text_table__20171106.display_impressions,
        drop_text_table__20171106.display_cpm,
        drop_text_table__20171106.event_label,
        drop_text_table__20171106.is_event_label_event,
        drop_text_table__20171106.is_event_label_goal,
        drop_text_table__20171106.display_media_cost,
        drop_text_table__20171106.display_clicks,
        drop_text_table__20171106.display_cpc,
        drop_text_table__20171106.display_conversion_name,
        drop_text_table__20171106.display_conversions,
        drop_text_table__20171106.search_cpm,
        drop_text_table__20171106.dollar_per_event,
        drop_text_table__20171106.dollar_per_goal
 FROM tableau.drop_text_table__20171106
 ORDER BY drop_text_table__20171106.full_visitor_id,
          drop_text_table__20171106.visit_id,
          drop_text_table__20171106.DATE,
          drop_text_table__20171106.business_unit,
          drop_text_table__20171106.brand,
          drop_text_table__20171106.audience,
          drop_text_table__20171106.buy_type,
          drop_text_table__20171106.partner_site_id,
          drop_text_table__20171106.partner_site_name,
          drop_text_table__20171106.partner_category,
          drop_text_table__20171106.creative,
          drop_text_table__20171106.ad_size,
          drop_text_table__20171106.search_engine,
          drop_text_table__20171106.campaign_id,
          drop_text_table__20171106.campaign_name,
          drop_text_table__20171106.ias_campaign_id,
          drop_text_table__20171106.viewability,
          drop_text_table__20171106.dollar_per_viewable_impression,
          drop_text_table__20171106.percent_viewed_hover,
          drop_text_table__20171106.innovid_campaign_id,
          drop_text_table__20171106.video_starts,
          drop_text_table__20171106.video_completion,
          drop_text_table__20171106.video_completion_percent,
          drop_text_table__20171106.owned_asset_visit,
          drop_text_table__20171106.owned_asset_visit_descripton,
          drop_text_table__20171106.bounce_rate,
          drop_text_table__20171106.search_impressions,
          drop_text_table__20171106.search_actual_cost,
          drop_text_table__20171106.search_clicks,
          drop_text_table__20171106.search_ctr,
          drop_text_table__20171106.search_cpc,
          drop_text_table__20171106.search_conversion_name,
          drop_text_table__20171106.search_conversions,
          drop_text_table__20171106.dollar_per_search_conversions,
          drop_text_table__20171106.totals_visits,
          drop_text_table__20171106.display_impressions,
          drop_text_table__20171106.display_cpm,
          drop_text_table__20171106.event_label,
          drop_text_table__20171106.is_event_label_event,
          drop_text_table__20171106.is_event_label_goal,
          drop_text_table__20171106.display_media_cost,
          drop_text_table__20171106.display_clicks,
          drop_text_table__20171106.display_cpc,
          drop_text_table__20171106.display_conversion_name,
          drop_text_table__20171106.display_conversions,
          drop_text_table__20171106.search_cpm,
          drop_text_table__20171106.dollar_per_event,
          drop_text_table__20171106.dollar_per_goal
SEGMENTED BY hash(drop_text_table__20171106.is_event_label_event, drop_text_table__20171106.is_event_label_goal, drop_text_table__20171106.percent_viewed_hover, drop_text_table__20171106.video_completion_percent, drop_text_table__20171106.search_ctr, drop_text_table__20171106.search_cpc, drop_text_table__20171106.dollar_per_search_conversions, drop_text_table__20171106.display_cpm, drop_text_table__20171106.display_cpc, drop_text_table__20171106.search_cpm, drop_text_table__20171106.dollar_per_event, drop_text_table__20171106.dollar_per_goal, drop_text_table__20171106.visit_id, drop_text_table__20171106.ad_size, drop_text_table__20171106.search_engine, drop_text_table__20171106.ias_campaign_id, drop_text_table__20171106.full_visitor_id, drop_text_table__20171106.DATE, drop_text_table__20171106.viewability, drop_text_table__20171106.innovid_campaign_id, drop_text_table__20171106.video_starts, drop_text_table__20171106.video_completion, drop_text_table__20171106.bounce_rate, drop_text_table__20171106.search_impressions, drop_text_table__20171106.search_actual_cost, drop_text_table__20171106.search_clicks, drop_text_table__20171106.search_conversions, drop_text_table__20171106.totals_visits, drop_text_table__20171106.display_impressions, drop_text_table__20171106.display_media_cost, drop_text_table__20171106.display_clicks, drop_text_table__20171106.display_conversions) ALL NODES;

CREATE PROJECTION tableau.word_cloud_v1_b0 /*+basename(word_cloud_v1),createtype(L)*/ 
(
 full_visitor_id,
 visit_id,
 DATE,
 business_unit,
 brand,
 audience,
 buy_type,
 partner_id,
 partner_category,
 partner_name,
 creative,
 ad_size,
 search_engine,
 campaign_id,
 campaign_name,
 display_impressions,
 display_impressions_per_thousand,
 display_clicks,
 display_conversions,
 display_actual_media_cost,
 display_cpm,
 display_cpc,
 hits_event_info_event_category,
 hits_event_info_event_action,
 hits_event_info_event_label,
 is_event_label_event,
 is_event_label_goal,
 dollar_per_event,
 dollar_per_goal,
 search_impressions,
 search_impressions_per_thousand,
 search_clicks,
 search_conversions,
 actual_search_cost,
 average_cpc,
 dollar_per_search_impressions,
 search_keyword,
 search_ad_group,
 daily_visitors,
 total_media_cost_actual,
 search_ctr,
 display_ctr
)
AS
 SELECT drop_word_cloud__20171106.full_visitor_id,
        drop_word_cloud__20171106.visit_id,
        drop_word_cloud__20171106.DATE,
        drop_word_cloud__20171106.business_unit,
        drop_word_cloud__20171106.brand,
        drop_word_cloud__20171106.audience,
        drop_word_cloud__20171106.buy_type,
        drop_word_cloud__20171106.partner_id,
        drop_word_cloud__20171106.partner_category,
        drop_word_cloud__20171106.partner_name,
        drop_word_cloud__20171106.creative,
        drop_word_cloud__20171106.ad_size,
        drop_word_cloud__20171106.search_engine,
        drop_word_cloud__20171106.campaign_id,
        drop_word_cloud__20171106.campaign_name,
        drop_word_cloud__20171106.display_impressions,
        drop_word_cloud__20171106.display_impressions_per_thousand,
        drop_word_cloud__20171106.display_clicks,
        drop_word_cloud__20171106.display_conversions,
        drop_word_cloud__20171106.display_actual_media_cost,
        drop_word_cloud__20171106.display_cpm,
        drop_word_cloud__20171106.display_cpc,
        drop_word_cloud__20171106.hits_event_info_event_category,
        drop_word_cloud__20171106.hits_event_info_event_action,
        drop_word_cloud__20171106.hits_event_info_event_label,
        drop_word_cloud__20171106.is_event_label_event,
        drop_word_cloud__20171106.is_event_label_goal,
        drop_word_cloud__20171106.dollar_per_event,
        drop_word_cloud__20171106.dollar_per_goal,
        drop_word_cloud__20171106.search_impressions,
        drop_word_cloud__20171106.search_impressions_per_thousand,
        drop_word_cloud__20171106.search_clicks,
        drop_word_cloud__20171106.search_conversions,
        drop_word_cloud__20171106.actual_search_cost,
        drop_word_cloud__20171106.average_cpc,
        drop_word_cloud__20171106.dollar_per_search_impressions,
        drop_word_cloud__20171106.search_keyword,
        drop_word_cloud__20171106.search_ad_group,
        drop_word_cloud__20171106.daily_visitors,
        drop_word_cloud__20171106.total_media_cost_actual,
        drop_word_cloud__20171106.search_ctr,
        drop_word_cloud__20171106.display_ctr
 FROM tableau.drop_word_cloud__20171106
 ORDER BY drop_word_cloud__20171106.full_visitor_id,
          drop_word_cloud__20171106.visit_id,
          drop_word_cloud__20171106.DATE,
          drop_word_cloud__20171106.business_unit,
          drop_word_cloud__20171106.brand,
          drop_word_cloud__20171106.audience,
          drop_word_cloud__20171106.buy_type,
          drop_word_cloud__20171106.partner_id,
          drop_word_cloud__20171106.partner_category,
          drop_word_cloud__20171106.partner_name,
          drop_word_cloud__20171106.creative,
          drop_word_cloud__20171106.ad_size,
          drop_word_cloud__20171106.search_engine,
          drop_word_cloud__20171106.campaign_id,
          drop_word_cloud__20171106.campaign_name,
          drop_word_cloud__20171106.display_impressions,
          drop_word_cloud__20171106.display_impressions_per_thousand,
          drop_word_cloud__20171106.display_clicks,
          drop_word_cloud__20171106.display_conversions,
          drop_word_cloud__20171106.display_actual_media_cost,
          drop_word_cloud__20171106.display_cpm,
          drop_word_cloud__20171106.display_cpc,
          drop_word_cloud__20171106.hits_event_info_event_category,
          drop_word_cloud__20171106.hits_event_info_event_action,
          drop_word_cloud__20171106.hits_event_info_event_label,
          drop_word_cloud__20171106.is_event_label_event,
          drop_word_cloud__20171106.is_event_label_goal,
          drop_word_cloud__20171106.dollar_per_event,
          drop_word_cloud__20171106.dollar_per_goal,
          drop_word_cloud__20171106.search_impressions,
          drop_word_cloud__20171106.search_impressions_per_thousand,
          drop_word_cloud__20171106.search_clicks,
          drop_word_cloud__20171106.search_conversions,
          drop_word_cloud__20171106.actual_search_cost,
          drop_word_cloud__20171106.average_cpc,
          drop_word_cloud__20171106.dollar_per_search_impressions,
          drop_word_cloud__20171106.search_keyword,
          drop_word_cloud__20171106.search_ad_group,
          drop_word_cloud__20171106.daily_visitors,
          drop_word_cloud__20171106.total_media_cost_actual,
          drop_word_cloud__20171106.search_ctr,
          drop_word_cloud__20171106.display_ctr
SEGMENTED BY hash(drop_word_cloud__20171106.campaign_id) ALL NODES;

CREATE PROJECTION tableau.zip3_state_b0 /*+basename(zip3_state),createtype(L)*/ 
(
 zip3,
 state,
 popularity
)
AS
 SELECT drop_zip3_state.zip3,
        drop_zip3_state.state,
        drop_zip3_state.popularity
 FROM tableau.drop_zip3_state
 ORDER BY drop_zip3_state.zip3
SEGMENTED BY hash(drop_zip3_state.zip3) ALL NODES;

CREATE PROJECTION tableau.dataset_dim__super__v1a17Q4
(
 id,
 account_id,
 account_name,
 property_id,
 property_name,
 property_internal_id,
 property_level,
 website_url,
 profile_id,
 profile_name,
 profile_type,
 brand,
 audience,
 is_active ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_dataset_dim.id,
        drop_dataset_dim.account_id,
        drop_dataset_dim.account_name,
        drop_dataset_dim.property_id,
        drop_dataset_dim.property_name,
        drop_dataset_dim.property_internal_id,
        drop_dataset_dim.property_level,
        drop_dataset_dim.website_url,
        drop_dataset_dim.profile_id,
        drop_dataset_dim.profile_name,
        drop_dataset_dim.profile_type,
        drop_dataset_dim.brand,
        drop_dataset_dim.audience,
        drop_dataset_dim.is_active
 FROM tableau.drop_dataset_dim
 ORDER BY drop_dataset_dim.id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.dataset_dim__brand__v1a17Q4_node0001 /*+basename(dataset_dim__brand__v1a17Q4),createtype(D)*/ 
(
 id,
 account_id,
 account_name,
 property_id,
 property_name,
 property_internal_id,
 property_level,
 website_url,
 profile_id,
 profile_name,
 profile_type,
 brand ENCODING RLE,
 audience,
 is_active ENCODING BLOCKDICT_COMP
)
AS
 SELECT drop_dataset_dim.id,
        drop_dataset_dim.account_id,
        drop_dataset_dim.account_name,
        drop_dataset_dim.property_id,
        drop_dataset_dim.property_name,
        drop_dataset_dim.property_internal_id,
        drop_dataset_dim.property_level,
        drop_dataset_dim.website_url,
        drop_dataset_dim.profile_id,
        drop_dataset_dim.profile_name,
        drop_dataset_dim.profile_type,
        drop_dataset_dim.brand,
        drop_dataset_dim.audience,
        drop_dataset_dim.is_active
 FROM tableau.drop_dataset_dim
 ORDER BY drop_dataset_dim.brand,
          drop_dataset_dim.id
UNSEGMENTED ALL NODES;

CREATE PROJECTION tableau.stacked_bar__super__v1a17Q4_b0 /*+basename(stacked_bar__super__v1a17Q4)*/ 
(
 full_visitor_id,
 visit_id,
 DATE ENCODING DELTARANGE_COMP,
 business_unit ENCODING RLE,
 brand ENCODING RLE,
 audience ENCODING RLE,
 buy_type,
 partner_site_id ENCODING RLE,
 partner_site_name,
 partner_category,
 creative,
 ad_size,
 source_type ENCODING RLE,
 campaign_id ENCODING RLE,
 campaign_name,
 impressions_total ENCODING BLOCKDICT_COMP,
 engagement_total ENCODING BLOCKDICT_COMP,
 conversion_total ENCODING BLOCKDICT_COMP,
 spend_total,
 ola_spend,
 ola_cpm,
 ola_impressions,
 ola_impressions_per_thousand,
 ola_clicks ENCODING BLOCKDICT_COMP,
 ola_conversions ENCODING BLOCKDICT_COMP,
 ola_cpc,
 ola_dollar_per_conversions,
 impressions_total_per_thousand ENCODING BLOCKDICT_COMP,
 stacked_conversions_total ENCODING BLOCKDICT_COMP,
 stacked_engagement_total ENCODING BLOCKDICT_COMP,
 stacked_impressions_total_per_thousand ENCODING BLOCKDICT_COMP,
 ola_stacked_conversion,
 ola_stacked_engagement ENCODING BLOCKDICT_COMP,
 ola_stacked_impressions_per_thousand,
 email_delivered,
 email_opens,
 email_clicks,
 email_spend,
 email_stacked_clicks,
 email_stacked_opens,
 email_stacked_delivered,
 email_source_name
)
AS
 SELECT drop_stacked_bar.full_visitor_id,
        drop_stacked_bar.visit_id,
        drop_stacked_bar.DATE AS date,
        drop_stacked_bar.business_unit,
        drop_stacked_bar.brand,
        drop_stacked_bar.audience,
        drop_stacked_bar.buy_type,
        drop_stacked_bar.partner_site_id,
        drop_stacked_bar.partner_site_name,
        drop_stacked_bar.partner_category,
        drop_stacked_bar.creative,
        drop_stacked_bar.ad_size,
        drop_stacked_bar.source_type,
        drop_stacked_bar.campaign_id,
        drop_stacked_bar.campaign_name,
        drop_stacked_bar.impressions_total,
        drop_stacked_bar.engagement_total,
        drop_stacked_bar.conversion_total,
        drop_stacked_bar.spend_total,
        drop_stacked_bar.ola_spend,
        drop_stacked_bar.ola_cpm,
        drop_stacked_bar.ola_impressions,
        drop_stacked_bar.ola_impressions_per_thousand,
        drop_stacked_bar.ola_clicks,
        drop_stacked_bar.ola_conversions,
        drop_stacked_bar.ola_cpc,
        drop_stacked_bar.ola_dollar_per_conversions,
        drop_stacked_bar.impressions_total_per_thousand,
        drop_stacked_bar.stacked_conversions_total,
        drop_stacked_bar.stacked_engagement_total,
        drop_stacked_bar.stacked_impressions_total_per_thousand,
        drop_stacked_bar.ola_stacked_conversion,
        drop_stacked_bar.ola_stacked_engagement,
        drop_stacked_bar.ola_stacked_impressions_per_thousand,
        drop_stacked_bar.email_delivered,
        drop_stacked_bar.email_opens,
        drop_stacked_bar.email_clicks,
        drop_stacked_bar.email_spend,
        drop_stacked_bar.email_stacked_clicks,
        drop_stacked_bar.email_stacked_opens,
        drop_stacked_bar.email_stacked_delivered,
        drop_stacked_bar.email_source_name
 FROM tableau.drop_stacked_bar
 ORDER BY drop_stacked_bar.audience,
          drop_stacked_bar.business_unit,
          drop_stacked_bar.source_type,
          drop_stacked_bar.brand,
          drop_stacked_bar.campaign_id,
          drop_stacked_bar.partner_site_id,
          drop_stacked_bar.full_visitor_id,
          drop_stacked_bar.DATE
SEGMENTED BY hash(drop_stacked_bar.full_visitor_id) ALL NODES;

CREATE PROJECTION tableau.text_table__super__v1a17Q4_b0 /*+basename(text_table__super__v1a17Q4)*/ 
(
 full_visitor_id,
 visit_id,
 DATE ENCODING DELTARANGE_COMP,
 business_unit ENCODING RLE,
 brand ENCODING RLE,
 audience ENCODING RLE,
 buy_type,
 partner_site_id ENCODING RLE,
 partner_site_name,
 partner_category,
 creative,
 ad_size,
 search_engine ENCODING RLE,
 campaign_id ENCODING RLE,
 campaign_name,
 ias_campaign_id,
 viewability,
 dollar_per_viewable_impression,
 percent_viewed_hover,
 innovid_campaign_id,
 video_starts,
 video_completion,
 video_completion_percent,
 owned_asset_visit,
 owned_asset_visit_descripton,
 bounce_rate ENCODING BLOCKDICT_COMP,
 search_impressions ENCODING BLOCKDICT_COMP,
 search_actual_cost,
 search_clicks ENCODING BLOCKDICT_COMP,
 search_ctr,
 search_cpc,
 search_conversion_name,
 search_conversions ENCODING BLOCKDICT_COMP,
 dollar_per_search_conversions,
 totals_visits ENCODING BLOCKDICT_COMP,
 display_impressions ENCODING BLOCKDICT_COMP,
 display_cpm,
 event_label,
 is_event_label_event ENCODING COMMONDELTA_COMP,
 is_event_label_goal,
 display_media_cost,
 display_clicks ENCODING BLOCKDICT_COMP,
 display_cpc,
 display_conversion_name,
 display_conversions ENCODING BLOCKDICT_COMP,
 search_cpm,
 dollar_per_event,
 dollar_per_goal
)
AS
 SELECT drop_text_table.full_visitor_id,
        drop_text_table.visit_id,
        drop_text_table.DATE AS date,
        drop_text_table.business_unit,
        drop_text_table.brand,
        drop_text_table.audience,
        drop_text_table.buy_type,
        drop_text_table.partner_site_id,
        drop_text_table.partner_site_name,
        drop_text_table.partner_category,
        drop_text_table.creative,
        drop_text_table.ad_size,
        drop_text_table.search_engine,
        drop_text_table.campaign_id,
        drop_text_table.campaign_name,
        drop_text_table.ias_campaign_id,
        drop_text_table.viewability,
        drop_text_table.dollar_per_viewable_impression,
        drop_text_table.percent_viewed_hover,
        drop_text_table.innovid_campaign_id,
        drop_text_table.video_starts,
        drop_text_table.video_completion,
        drop_text_table.video_completion_percent,
        drop_text_table.owned_asset_visit,
        drop_text_table.owned_asset_visit_descripton,
        drop_text_table.bounce_rate,
        drop_text_table.search_impressions,
        drop_text_table.search_actual_cost,
        drop_text_table.search_clicks,
        drop_text_table.search_ctr,
        drop_text_table.search_cpc,
        drop_text_table.search_conversion_name,
        drop_text_table.search_conversions,
        drop_text_table.dollar_per_search_conversions,
        drop_text_table.totals_visits,
        drop_text_table.display_impressions,
        drop_text_table.display_cpm,
        drop_text_table.event_label,
        drop_text_table.is_event_label_event,
        drop_text_table.is_event_label_goal,
        drop_text_table.display_media_cost,
        drop_text_table.display_clicks,
        drop_text_table.display_cpc,
        drop_text_table.display_conversion_name,
        drop_text_table.display_conversions,
        drop_text_table.search_cpm,
        drop_text_table.dollar_per_event,
        drop_text_table.dollar_per_goal
 FROM tableau.drop_text_table
 ORDER BY drop_text_table.audience,
          drop_text_table.search_engine,
          drop_text_table.business_unit,
          drop_text_table.brand,
          drop_text_table.campaign_id,
          drop_text_table.partner_site_id,
          drop_text_table.full_visitor_id,
          drop_text_table.DATE
SEGMENTED BY hash(drop_text_table.full_visitor_id) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

