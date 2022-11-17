CREATE TABLE suppliers(
    supplier_id VARCHAR(250) NOT NULL,
    supplier_name VARCHAR(250) NOT NULL,
    supplier_email VARCHAR(250) NOT NULL,
    supplier_phone VARCHAR(250) NOT NULL,
    supplier_address VARCHAR(250) NOT NULL,
    CONSTRAINT supplier_pk PRIMARY KEY (supplier_id)
);