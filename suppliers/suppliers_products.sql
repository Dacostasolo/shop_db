CREATE TABLE supplier_products(
    supplier_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT supplier_product_pk PRIMARY KEY (supplier_id, product_serial),
    CONSTRAINT supplier_product_supplier_fk FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    CONSTRAINT supplier_product_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);