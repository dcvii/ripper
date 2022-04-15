CREATE SCHEMA product;

CREATE TABLE product.source
(
    source_id int NOT NULL,
    source_code varchar(20),
    name varchar(100),
    active char(1),
    create_date date DEFAULT now(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT PK_vendor_1 PRIMARY KEY (source_id) DISABLED
);


CREATE TABLE product.basket_item
(
    basket_id int NOT NULL,
    entity_type varchar(20) NOT NULL,
    entity_id int NOT NULL,
    create_date date DEFAULT now(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT PK_basket_item PRIMARY KEY (entity_type, basket_id, entity_id) ENABLED
);


CREATE TABLE product.basket_price
(
    basket_id int,
    price_type varchar(10),
    first_valid_date date,
    last_valid_date date,
    unit_price float,
    create_date date DEFAULT now(),
    create_user varchar(50) DEFAULT "current_user"()
);


CREATE TABLE product.source_product
(
    source_id int,
    feed_id int NOT NULL,
    feed_version int NOT NULL,
    entity_type varchar(20),
    entity_id int NOT NULL,
    source_file_code varchar(80),
    source_product_code varchar(100) NOT NULL,
    source_product_name varchar(300),
    source_product_description varchar(300),
    source_product_mfg_name varchar(100),
    source_client_num varchar(80),
    source_report_num varchar(80),
    source_indication varchar(20),
    create_date date DEFAULT "sysdate"(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT UQ_source_product UNIQUE (feed_version, source_client_num, source_report_num, source_file_code, feed_id, source_product_code, entity_id) ENABLED
);


CREATE TABLE product.basket
(
    basket_id int NOT NULL,
    name varchar(300) NOT NULL,
    description varchar(500),
    teva_product_code varchar(100),
    basket_type varchar(100) NOT NULL,
    create_date date DEFAULT "sysdate"(),
    create_user varchar(50) DEFAULT "current_user"(),
    calculate_rollup_flag boolean DEFAULT false,
    calculate_deciles_flag boolean DEFAULT false,
    CONSTRAINT PK_product_basket PRIMARY KEY (basket_id) ENABLED
);


CREATE TABLE product.normalization_factor
(
    source_id int NOT NULL,
    entity_type varchar(20) NOT NULL,
    entity_id int NOT NULL,
    divisor numeric(37,15),
    multiplier numeric(37,15),
    less_than_this_make_it_one numeric(37,15),
    start_date date NOT NULL,
    end_date date,
    create_date date DEFAULT now(),
    create_user varchar(50) DEFAULT "current_user"(),
    CONSTRAINT PK_normalization_factor PRIMARY KEY (entity_type, source_id, entity_id, start_date) ENABLED
);


CREATE TABLE product.promotional_item
(
    promotional_item_id  IDENTITY ,
    feed_id int,
    feed_version int,
    name varchar(80),
    type varchar(255),
    description varchar(255),
    entity_type varchar(20),
    entity_id int,
    source_item_id varchar(18),
    source_name varchar(80),
    source_type varchar(255),
    source_description varchar(255),
    source_product_id varchar(100),
    source_product_line varchar(80)
);


CREATE TABLE product.mb_source_prod_06102020
(
    source_id int,
    feed_id int,
    feed_version int,
    entity_type varchar(20),
    entity_id int,
    source_file_code varchar(80),
    source_product_code varchar(100),
    source_product_name varchar(300),
    source_product_description varchar(300),
    source_product_mfg_name varchar(100),
    source_client_num varchar(80),
    source_report_num varchar(80),
    source_indication varchar(20),
    create_date date,
    create_user varchar(50)
);