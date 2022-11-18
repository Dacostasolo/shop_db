CREATE TABLE shop_earnings(
    shop_id VARCHAR(250) NOT NULL,
    shop_earnings DECIMAL(10, 2) NOT NULL,
    shop_earnings_date DATETIME NOT NULL,
    CONSTRAINT shop_earnings_pk PRIMARY KEY (shop_id, shop_earnings_date),
    CONSTRAINT shop_earnings_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);