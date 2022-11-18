CREATE DATABASE bag_shop_db;

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
    CONSTRAINT order_pk PRIMARY KEY (order_id),
);

-- CREATE ordered_by TABLE;

CREATE TABLE ordered_by(
    order_id VARCHAR(250) NOT NULL,
    orderd_by VARCHAR(250) NOT NULL,
    ordered_table VARCHAR(250) NOT NULL,
    CONSTRAINT ordered_by_pk PRIMARY KEY (order_id, orderd_by, ordered_table),
    CONSTRAINT ordered_by_fk FOREIGN KEY (order_id) REFERENCES orders(order_id),
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

-- Create table for shop workers;

CREATE TABLE shop_workers(
    worker_id VARCHAR(250) NOT NULL,
    worker_name VARCHAR(250) NOT NULL,
    worker_bdate DATE NOT NULL,
    worker_email VARCHAR(250) NOT NULL,
    worker_phone VARCHAR(250) NOT NULL,
    worker_address VARCHAR(250) NOT NULL,
    worker_salary DECIMAL(10,2) NOT NULL,
    worker_relations_name VARCHAR(250) NOT NULL,
    worker_relations_phone VARCHAR(250) NOT NULL,
    worker_relations_address VARCHAR(250) NOT NULL,
    shop_id VARCHAR(250) NOT NULL,
    CONSTRAINT shop_worker_pk PRIMARY KEY (worker_id),
    CONSTRAINT shop_worker_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);

CREATE TABLE worker_working_init(
    worker_id VARCHAR(250) NOT NULL,
    worker_begin_date DATETIME NOT NULL,
    worker_end_date DATETIME NOT NULL,
    CONSTRAINT worker_working_init_pk PRIMARY KEY (worker_id, worker_begin_date),
)

-- Create table for shop worker attendance;

CREATE TABLE shop_worker_attendance(
    worker_id VARCHAR(250) NOT NULL,
    attendance_date DATETIME NOT NULL,
    attendance_status VARCHAR(250) NOT NULL,
    CONSTRAINT shop_worker_attendance_pk PRIMARY KEY (worker_id, attendance_date),
    CONSTRAINT shop_worker_attendance_worker_fk FOREIGN KEY (worker_id) REFERENCES shop_workers(worker_id)
);

-- Create table for shop managers;

CREATE TABLE shop_managers(
   shop_worker_id VARCHAR(250) NOT NULL,
   shop_id VARCHAR(250) NOT NULL,
    CONSTRAINT shop_admin_pk PRIMARY KEY (shop_worker_id, shop_id),
);

-- Create table for shop daily earnings;

CREATE TABLE shop_earnings(
    shop_id VARCHAR(250) NOT NULL,
    shop_earnings DECIMAL(10,2) NOT NULL,
    shop_earnings_date DATETIME NOT NULL,
    CONSTRAINT shop_earnings_pk PRIMARY KEY (shop_id, shop_earnings_date),
    CONSTRAINT shop_earnings_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);

-- Create table for shop daily expenses;

CREATE TABLE shop_expenses(
    shop_id VARCHAR(250) NOT NULL,
    shop_expnense_title VARCHAR(250) NOT NULL,
    shop_expenses DECIMAL(10,2) NOT NULL,
    shop_expenses_date DATETIME NOT NULL,
    CONSTRAINT shop_expenses_pk PRIMARY KEY (shop_id, shop_expenses_date),
    CONSTRAINT shop_expenses_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);

-- Create table for shop daily sales;

CREATE TABLE shop_sales(
    shop_id VARCHAR(250) NOT NULL,
    shop_sales DECIMAL(10,2) NOT NULL,
    shop_sales_date DATETIME NOT NULL,
    CONSTRAINT shop_sales_pk PRIMARY KEY (shop_id, shop_sales_date),
    CONSTRAINT shop_sales_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);

-- Creating admin TABLE

CREATE TABLE admin(
    admin_id VARCHAR(250) NOT NULL,
    admin_name VARCHAR(250) NOT NULL,
    admin_password VARCHAR(250) NOT NULL,
    CONSTRAINT admin_pk PRIMARY KEY (admin_id)
);


-- Creating table shop logo;

CREATE TABLE shop_logo(
    shop_id VARCHAR(250) NOT NULL,
    shop_logo VARCHAR(250) NOT NULL,
    CONSTRAINT shop_logo_pk PRIMARY KEY (shop_id),
    CONSTRAINT shop_logo_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);

-- Creating Customers TABLE;

CREATE TABLE customers(
    customer_id VARCHAR(250) NOT NULL,
    customer_name VARCHAR(250) NOT NULL,
    customer_email VARCHAR(250) NOT NULL,
    customer_phone VARCHAR(250) NOT NULL,
    customer_address VARCHAR(250) NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);

























