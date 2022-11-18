CREATE TABLE product_reviews(
    review_serial VARCHAR(250) NOT NULL,
    review_text VARCHAR(250) NOT NULL,
    review_rating DECIMAL(10, 2) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_review_pk PRIMARY KEY (review_serial, product_serial),
    CONSTRAINT product_review_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);