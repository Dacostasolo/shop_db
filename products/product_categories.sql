CREATE TABLE product_categories (
    category_serial VARCHAR(250) NOT NULL,
    category_name VARCHAR(50) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (category_name, category_serial)
);