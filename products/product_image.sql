CREATE TABLE product_images(
    image_name VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_image_pk PRIMARY KEY (image_name, product_serial),
    CONSTRAINT product_image_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);