CREATE TABLE shop_orders(
    order_id VARCHAR(250) NOT NULL,
    order_date DATETIME NOT NULL,
    order_status VARCHAR(250) NOT NULL,
    shop_id VARCHAR(250) NOT NULL,
    CONSTRAINT shop_order_pk PRIMARY KEY (order_id),
    CONSTRAINT shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);