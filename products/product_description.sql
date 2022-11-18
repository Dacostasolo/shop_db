CREATE TABLE product_descriptions(
    description_serial VARCHAR(250) NOT NULL,
    description_text VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_description_pk PRIMARY KEY (description_serial, product_serial),
    CONSTRAINT product_description_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);