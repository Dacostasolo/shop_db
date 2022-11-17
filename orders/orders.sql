CREATE TABLE orders(
    order_id VARCHAR(250) NOT NULL,
    order_date DATETIME NOT NULL,
    order_status VARCHAR(250) NOT NULL,
    user_id VARCHAR(250) NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (order_id),
    CONSTRAINT order_user_fk FOREIGN KEY (user_id) REFERENCES users(user_id)
);