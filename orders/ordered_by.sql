CREATE TABLE ordered_by(
    order_id VARCHAR(250) NOT NULL,
    orderd_by VARCHAR(250) NOT NULL,
    ordered_table VARCHAR(250) NOT NULL,
    CONSTRAINT ordered_by_pk PRIMARY KEY (order_id, orderd_by, ordered_table),
    CONSTRAINT ordered_by_fk FOREIGN KEY (order_id) REFERENCES orders(order_id),
);