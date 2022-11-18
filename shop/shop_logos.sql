CREATE TABLE shop_logo(
    shop_id VARCHAR(250) NOT NULL,
    shop_logo VARCHAR(250) NOT NULL,
    CONSTRAINT shop_logo_pk PRIMARY KEY (shop_id),
    CONSTRAINT shop_logo_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);