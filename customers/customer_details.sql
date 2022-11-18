CREATE TABLE customers(
    customer_id VARCHAR(250) NOT NULL,
    customer_name VARCHAR(250) NOT NULL,
    customer_email VARCHAR(250) NOT NULL,
    customer_phone VARCHAR(250) NOT NULL,
    customer_address VARCHAR(250) NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);