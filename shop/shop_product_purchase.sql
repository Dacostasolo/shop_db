CREATE TABLE shop_product_purchase(
    shop_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    product_purchase_price DECIMAL(10, 2) NOT NULL,
    product_purchase_date DATETIME NOT NULL,
    CONSTRAINT shop_product_purchase_pk PRIMARY KEY (shop_id, product_serial, product_purchase_date),
    CONSTRAINT shop_product_purchase_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id),
    CONSTRAINT shop_product_purchase_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);