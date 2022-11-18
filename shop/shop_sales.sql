CREATE TABLE shop_sales(
    shop_id VARCHAR(250) NOT NULL,
    shop_sales DECIMAL(10, 2) NOT NULL,
    shop_sales_date DATETIME NOT NULL,
    CONSTRAINT shop_sales_pk PRIMARY KEY (shop_id, shop_sales_date),
    CONSTRAINT shop_sales_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);