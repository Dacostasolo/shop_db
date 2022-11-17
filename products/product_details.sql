CREATE TABLE products(
    product_serial VARCHAR(250) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_serial),
    CONSTRAINT product_category_fk FOREIGN KEY (product_category) REFERENCES product_Categories(category_name)
);