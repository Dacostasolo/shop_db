CREATE TABLE supply_items(
    supply_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT supply_item_pk PRIMARY KEY (supply_id, product_serial),
    CONSTRAINT supply_item_supply_fk FOREIGN KEY (supply_id) REFERENCES supply_details(supply_id),
    CONSTRAINT supply_item_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);