CREATE TABLE product_properties(
    property_serial VARCHAR(250) NOT NULL,
    property_value VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_property_pk PRIMARY KEY (property_serial, property_value, product_serial),
    CONSTRAINT property_serial FOREIGN KEY (property_serial) REFERENCES products(property_serial),
    CONSTRAINT product_property_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);