CREATE TABLE order_items(
    order_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT order_item_pk PRIMARY KEY (order_id, product_serial),
    CONSTRAINT order_item_order_fk FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT order_item_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);