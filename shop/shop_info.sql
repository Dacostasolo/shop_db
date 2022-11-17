CREATE TABLE shop_info(
    shop_id VARCHAR(250) NOT NULL,
    shop_name VARCHAR(250) NOT NULL,
    shop_address VARCHAR(250) NOT NULL,
    shop_phone VARCHAR(250) NOT NULL,
    shop_email VARCHAR(250) NOT NULL,
    shop_logo VARCHAR(250) NOT NULL,
    CONSTRAINT shop_info_pk PRIMARY KEY (shop_id)
);