CREATE TABLE users(
    user_id VARCHAR(250) NOT NULL,
    user_name VARCHAR(250) NOT NULL,
    user_password VARCHAR(250) NOT NULL,
    user_email VARCHAR(250) NOT NULL,
    user_phone VARCHAR(250) NOT NULL,
    user_address VARCHAR(250) NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (user_id)
);