
USE bag_shop_db;

CREATE TABLE product_categories (
    category_serial VARCHAR(250) NOT NULL,
    category_name VARCHAR(50) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (category_name, category_serial)
);

CREATE TABLE products(
    product_serial VARCHAR(250) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    product_price DECIMAL(10,2) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_serial),
    CONSTRAINT product_category_fk FOREIGN KEY (product_category) REFERENCES product_Categories(category_name)
);

CREATE TABLE properties(
    property_serial VARCHAR(250) NOT NULL,
    property_name VARCHAR(250) NOT NULL,
    property_type VARCHAR(250) NOT NULL,
    CONSTRAINT property_pk PRIMARY KEY (property_serial,property_name, property_type)
);

CREATE TABLE product_properties(
    property_serial VARCHAR(250) NOT NULL,
    property_value VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_property_pk PRIMARY KEY (property_serial, property_value, product_serial),
    CONSTRAINT property_serial FOREIGN KEY (property_serial) REFERENCES products(property_serial),
    CONSTRAINT product_property_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);


CREATE TABLE product_images(
    image_name VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_image_pk PRIMARY KEY ,
    CONSTRAINT product_image_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);


CREATE TABLE product_reviews(
    review_serial VARCHAR(250) NOT NULL,
    review_text VARCHAR(250) NOT NULL,
    review_rating DECIMAL(10,2) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_review_pk PRIMARY KEY (review_serial, product_serial),
    CONSTRAINT product_review_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);


CREATE TABLE product_descriptions(
    description_serial VARCHAR(250) NOT NULL,
    description_text VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    CONSTRAINT product_description_pk PRIMARY KEY (description_serial, product_serial),
    CONSTRAINT product_description_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);

CREATE TABLE users(
    user_id VARCHAR(250) NOT NULL,
    user_name VARCHAR(250) NOT NULL,
    user_password VARCHAR(250) NOT NULL,
    user_email VARCHAR(250) NOT NULL,
    user_phone VARCHAR(250) NOT NULL,
    user_address VARCHAR(250) NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (user_id)
);


CREATE TABLE orders(
    order_id VARCHAR(250) NOT NULL,
    order_date DATETIME NOT NULL,
    order_status VARCHAR(250) NOT NULL,
    user_id VARCHAR(250) NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (order_id),
    CONSTRAINT order_user_fk FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE order_items(
    order_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT order_item_pk PRIMARY KEY (order_id, product_serial),
    CONSTRAINT order_item_order_fk FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT order_item_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);

CREATE TABLE suppliers(
    supplier_id VARCHAR(250) NOT NULL,
    supplier_name VARCHAR(250) NOT NULL,
    supplier_email VARCHAR(250) NOT NULL,
    supplier_phone VARCHAR(250) NOT NULL,
    supplier_address VARCHAR(250) NOT NULL,
    CONSTRAINT supplier_pk PRIMARY KEY (supplier_id)
);


CREATE TABLE supplier_products(
    supplier_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT supplier_product_pk PRIMARY KEY (supplier_id, product_serial),
    CONSTRAINT supplier_product_supplier_fk FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    CONSTRAINT supplier_product_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);



CREATE TABLE supply_details(
    supply_id VARCHAR(250) NOT NULL,
    supply_date DATETIME NOT NULL,
    supply_status VARCHAR(250) NOT NULL,
    supplier_id VARCHAR(250) NOT NULL,
    CONSTRAINT supply_details_pk PRIMARY KEY (supply_id),
    CONSTRAINT supply_details_supplier_fk FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);


CREATE TABLE supply_items(
    supply_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT supply_item_pk PRIMARY KEY (supply_id, product_serial),
    CONSTRAINT supply_item_supply_fk FOREIGN KEY (supply_id) REFERENCES supply_details(supply_id),
    CONSTRAINT supply_item_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);


CREATE TABLE shop_info(
    shop_id VARCHAR(250) NOT NULL,
    shop_name VARCHAR(250) NOT NULL,
    shop_address VARCHAR(250) NOT NULL,
    shop_phone VARCHAR(250) NOT NULL,
    shop_email VARCHAR(250) NOT NULL,
    shop_logo VARCHAR(250) NOT NULL,
    CONSTRAINT shop_info_pk PRIMARY KEY (shop_id)
);

CREATE TABLE shop_orders(
    order_id VARCHAR(250) NOT NULL,
    order_date DATETIME NOT NULL,
    order_status VARCHAR(250) NOT NULL,
    shop_id VARCHAR(250) NOT NULL,
    CONSTRAINT shop_order_pk PRIMARY KEY (order_id),
    CONSTRAINT shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);



CREATE TABLE shop_order_items(
    order_id VARCHAR(250) NOT NULL,
    product_serial VARCHAR(250) NOT NULL,
    product_quantity INT NOT NULL,
    CONSTRAINT shop_order_item_pk PRIMARY KEY (order_id, product_serial),
    CONSTRAINT shop_order_item_order_fk FOREIGN KEY (order_id) REFERENCES shop_orders(order_id),
    CONSTRAINT shop_order_item_product_fk FOREIGN KEY (product_serial) REFERENCES products(product_serial)
);
















