CREATE TABLE admin(
    admin_id VARCHAR(250) NOT NULL,
    admin_name VARCHAR(250) NOT NULL,
    admin_password VARCHAR(250) NOT NULL,
    CONSTRAINT admin_pk PRIMARY KEY (admin_id)
);