CREATE SCHEMA product;

CREATE SEQUENCE product.BASKET_ID_SEQ  CACHE      1 ;
CREATE SEQUENCE product.BASKET_ID_SEQ_test  CACHE      1 ;

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


CREATE PROJECTION product.basket_item__super__v1a17Q3
(
 basket_id ENCODING COMMONDELTA_COMP,
 entity_type ENCODING RLE,
 entity_id ENCODING DELTARANGE_COMP,
 create_date,
 create_user
)
AS
 SELECT basket_item.basket_id,
        basket_item.entity_type,
        basket_item.entity_id,
        basket_item.create_date,
        basket_item.create_user
 FROM product.basket_item
 ORDER BY basket_item.entity_type,
          basket_item.basket_id,
          basket_item.entity_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.basket_item__entity_id__v1a17Q3_node0001 /*+basename(basket_item__entity_id__v1a17Q3),createtype(D)*/ 
(
 basket_id ENCODING DELTARANGE_COMP,
 entity_type,
 entity_id ENCODING COMMONDELTA_COMP,
 create_date,
 create_user
)
AS
 SELECT basket_item.basket_id,
        basket_item.entity_type,
        basket_item.entity_id,
        basket_item.create_date,
        basket_item.create_user
 FROM product.basket_item
 ORDER BY basket_item.entity_id,
          basket_item.entity_type,
          basket_item.basket_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.basket_item__basket_id__v1a17Q3_node0001 /*+basename(basket_item__basket_id__v1a17Q3),createtype(D)*/ 
(
 basket_id ENCODING RLE,
 entity_type ENCODING RLE,
 entity_id ENCODING DELTARANGE_COMP,
 create_date,
 create_user
)
AS
 SELECT basket_item.basket_id,
        basket_item.entity_type,
        basket_item.entity_id,
        basket_item.create_date,
        basket_item.create_user
 FROM product.basket_item
 ORDER BY basket_item.basket_id,
          basket_item.entity_type,
          basket_item.entity_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.normalization_factor__super__v1a17Q3
(
 source_id ENCODING RLE,
 entity_type ENCODING RLE,
 entity_id,
 divisor ENCODING BLOCKDICT_COMP,
 multiplier,
 less_than_this_make_it_one ENCODING BLOCKDICT_COMP,
 start_date ENCODING COMMONDELTA_COMP,
 end_date ENCODING COMMONDELTA_COMP,
 create_date,
 create_user
)
AS
 SELECT normalization_factor.source_id,
        normalization_factor.entity_type,
        normalization_factor.entity_id,
        normalization_factor.divisor,
        normalization_factor.multiplier,
        normalization_factor.less_than_this_make_it_one,
        normalization_factor.start_date,
        normalization_factor.end_date,
        normalization_factor.create_date,
        normalization_factor.create_user
 FROM product.normalization_factor
 ORDER BY normalization_factor.entity_type,
          normalization_factor.source_id,
          normalization_factor.entity_id,
          normalization_factor.start_date
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.normalization_factor__source_id__v1b17Q3_node0001 /*+basename(normalization_factor__source_id__v1b17Q3),createtype(D)*/ 
(
 source_id ENCODING RLE,
 entity_type,
 entity_id,
 divisor ENCODING BLOCKDICT_COMP,
 multiplier ENCODING RLE,
 less_than_this_make_it_one ENCODING BLOCKDICT_COMP,
 start_date ENCODING COMMONDELTA_COMP,
 end_date ENCODING COMMONDELTA_COMP,
 create_date,
 create_user
)
AS
 SELECT normalization_factor.source_id,
        normalization_factor.entity_type,
        normalization_factor.entity_id,
        normalization_factor.divisor,
        normalization_factor.multiplier,
        normalization_factor.less_than_this_make_it_one,
        normalization_factor.start_date,
        normalization_factor.end_date,
        normalization_factor.create_date,
        normalization_factor.create_user
 FROM product.normalization_factor
 ORDER BY normalization_factor.source_id,
          normalization_factor.start_date,
          normalization_factor.entity_type,
          normalization_factor.less_than_this_make_it_one,
          normalization_factor.end_date,
          normalization_factor.divisor,
          normalization_factor.multiplier,
          normalization_factor.entity_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.source_product__super__v1b17Q3_node0001 /*+basename(source_product__super__v1b17Q3),createtype(D)*/ 
(
 source_id ENCODING COMMONDELTA_COMP,
 feed_id ENCODING COMMONDELTA_COMP,
 feed_version ENCODING COMMONDELTA_COMP,
 entity_type,
 entity_id ENCODING COMMONDELTA_COMP,
 source_file_code,
 source_product_code,
 source_product_name,
 source_product_description,
 source_product_mfg_name,
 source_client_num,
 source_report_num,
 source_indication,
 create_date,
 create_user
)
AS
 SELECT source_product.source_id,
        source_product.feed_id,
        source_product.feed_version,
        source_product.entity_type,
        source_product.entity_id,
        source_product.source_file_code,
        source_product.source_product_code,
        source_product.source_product_name,
        source_product.source_product_description,
        source_product.source_product_mfg_name,
        source_product.source_client_num,
        source_product.source_report_num,
        source_product.source_indication,
        source_product.create_date,
        source_product.create_user
 FROM product.source_product
 ORDER BY source_product.entity_id,
          source_product.feed_version,
          source_product.source_product_mfg_name,
          source_product.entity_type,
          source_product.source_indication,
          source_product.source_client_num,
          source_product.source_file_code,
          source_product.source_id,
          source_product.source_report_num,
          source_product.feed_id,
          source_product.source_product_description,
          source_product.source_product_name,
          source_product.source_product_code
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.source_product__unique__v1b17Q3
(
 source_id ENCODING COMMONDELTA_COMP,
 feed_id ENCODING COMMONDELTA_COMP,
 feed_version ENCODING COMMONDELTA_COMP,
 entity_type,
 entity_id ENCODING COMMONDELTA_COMP,
 source_file_code,
 source_product_code,
 source_product_name,
 source_product_description,
 source_product_mfg_name,
 source_client_num,
 source_report_num,
 source_indication,
 create_date,
 create_user
)
AS
 SELECT source_product.source_id,
        source_product.feed_id,
        source_product.feed_version,
        source_product.entity_type,
        source_product.entity_id,
        source_product.source_file_code,
        source_product.source_product_code,
        source_product.source_product_name,
        source_product.source_product_description,
        source_product.source_product_mfg_name,
        source_product.source_client_num,
        source_product.source_report_num,
        source_product.source_indication,
        source_product.create_date,
        source_product.create_user
 FROM product.source_product
 ORDER BY source_product.feed_version,
          source_product.source_client_num,
          source_product.source_file_code,
          source_product.source_report_num,
          source_product.feed_id,
          source_product.entity_id,
          source_product.source_product_code
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.basket_price_b0 /*+basename(basket_price),createtype(L)*/ 
(
 basket_id,
 price_type,
 first_valid_date,
 last_valid_date,
 unit_price,
 create_date,
 create_user
)
AS
 SELECT basket_price.basket_id,
        basket_price.price_type,
        basket_price.first_valid_date,
        basket_price.last_valid_date,
        basket_price.unit_price,
        basket_price.create_date,
        basket_price.create_user
 FROM product.basket_price
 ORDER BY basket_price.basket_id,
          basket_price.price_type,
          basket_price.first_valid_date,
          basket_price.last_valid_date,
          basket_price.unit_price
SEGMENTED BY hash(basket_price.basket_id, basket_price.first_valid_date, basket_price.last_valid_date, basket_price.unit_price, basket_price.price_type) ALL NODES;

CREATE PROJECTION product.basket__super__v1b17Q3
(
 basket_id ENCODING COMMONDELTA_COMP,
 name,
 description,
 teva_product_code,
 basket_type,
 create_date,
 create_user,
 calculate_rollup_flag,
 calculate_deciles_flag
)
AS
 SELECT basket.basket_id,
        basket.name,
        basket.description,
        basket.teva_product_code,
        basket.basket_type,
        basket.create_date,
        basket.create_user,
        basket.calculate_rollup_flag,
        basket.calculate_deciles_flag
 FROM product.basket
 ORDER BY basket.basket_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.basket__product_code__v1a17Q3
(
 basket_id ENCODING DELTARANGE_COMP,
 name,
 description,
 teva_product_code,
 basket_type ENCODING RLE,
 create_date,
 create_user,
 calculate_rollup_flag,
 calculate_deciles_flag
)
AS
 SELECT basket.basket_id,
        basket.name,
        basket.description,
        basket.teva_product_code,
        basket.basket_type,
        basket.create_date,
        basket.create_user,
        basket.calculate_rollup_flag,
        basket.calculate_deciles_flag
 FROM product.basket
 ORDER BY basket.basket_type,
          basket.teva_product_code,
          basket.basket_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.basket__basket_type__v1b17Q3_node0001 /*+basename(basket__basket_type__v1b17Q3),createtype(D)*/ 
(
 basket_id ENCODING COMMONDELTA_COMP,
 name,
 description,
 teva_product_code,
 basket_type ENCODING RLE,
 create_date,
 create_user,
 calculate_rollup_flag,
 calculate_deciles_flag
)
AS
 SELECT basket.basket_id,
        basket.name,
        basket.description,
        basket.teva_product_code,
        basket.basket_type,
        basket.create_date,
        basket.create_user,
        basket.calculate_rollup_flag,
        basket.calculate_deciles_flag
 FROM product.basket
 ORDER BY basket.basket_type,
          basket.basket_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION product.vendor_b0 /*+basename(vendor),createtype(L)*/ 
(
 source_id,
 source_code,
 name,
 active,
 create_date,
 create_user
)
AS
 SELECT source.source_id,
        source.source_code,
        source.name,
        source.active,
        source.create_date,
        source.create_user
 FROM product.source
 ORDER BY source.source_id
SEGMENTED BY hash(source.source_id) ALL NODES;

CREATE PROJECTION product.promotional_item_v1_b0 /*+basename(promotional_item_v1),createtype(L)*/ 
(
 promotional_item_id,
 feed_id,
 feed_version,
 name,
 type,
 description,
 entity_type,
 entity_id,
 source_item_id,
 source_name,
 source_type,
 source_description,
 source_product_id,
 source_product_line
)
AS
 SELECT promotional_item.promotional_item_id,
        promotional_item.feed_id,
        promotional_item.feed_version,
        promotional_item.name,
        promotional_item.type,
        promotional_item.description,
        promotional_item.entity_type,
        promotional_item.entity_id,
        promotional_item.source_item_id,
        promotional_item.source_name,
        promotional_item.source_type,
        promotional_item.source_description,
        promotional_item.source_product_id,
        promotional_item.source_product_line
 FROM product.promotional_item
 ORDER BY promotional_item.type,
          promotional_item.name
SEGMENTED BY hash(promotional_item.promotional_item_id, promotional_item.feed_id, promotional_item.feed_version, promotional_item.entity_id, promotional_item.source_item_id, promotional_item.entity_type, promotional_item.name, promotional_item.source_name, promotional_item.source_product_line, promotional_item.source_product_id, promotional_item.type, promotional_item.description, promotional_item.source_type, promotional_item.source_description) ALL NODES;

CREATE PROJECTION product.mb_source_prod_06102020_b0 /*+basename(mb_source_prod_06102020),createtype(A)*/ 
(
 source_id,
 feed_id,
 feed_version,
 entity_type,
 entity_id,
 source_file_code,
 source_product_code,
 source_product_name,
 source_product_description,
 source_product_mfg_name,
 source_client_num,
 source_report_num,
 source_indication,
 create_date,
 create_user
)
AS
 SELECT mb_source_prod_06102020.source_id,
        mb_source_prod_06102020.feed_id,
        mb_source_prod_06102020.feed_version,
        mb_source_prod_06102020.entity_type,
        mb_source_prod_06102020.entity_id,
        mb_source_prod_06102020.source_file_code,
        mb_source_prod_06102020.source_product_code,
        mb_source_prod_06102020.source_product_name,
        mb_source_prod_06102020.source_product_description,
        mb_source_prod_06102020.source_product_mfg_name,
        mb_source_prod_06102020.source_client_num,
        mb_source_prod_06102020.source_report_num,
        mb_source_prod_06102020.source_indication,
        mb_source_prod_06102020.create_date,
        mb_source_prod_06102020.create_user
 FROM product.mb_source_prod_06102020
 ORDER BY mb_source_prod_06102020.entity_id,
          mb_source_prod_06102020.feed_version,
          mb_source_prod_06102020.source_product_mfg_name,
          mb_source_prod_06102020.entity_type,
          mb_source_prod_06102020.source_indication,
          mb_source_prod_06102020.source_client_num,
          mb_source_prod_06102020.source_file_code,
          mb_source_prod_06102020.source_id,
          mb_source_prod_06102020.source_report_num,
          mb_source_prod_06102020.feed_id,
          mb_source_prod_06102020.source_product_description,
          mb_source_prod_06102020.source_product_name,
          mb_source_prod_06102020.source_product_code
SEGMENTED BY hash(mb_source_prod_06102020.source_id, mb_source_prod_06102020.feed_id, mb_source_prod_06102020.feed_version, mb_source_prod_06102020.entity_id, mb_source_prod_06102020.create_date, mb_source_prod_06102020.entity_type, mb_source_prod_06102020.source_indication, mb_source_prod_06102020.create_user) ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);

