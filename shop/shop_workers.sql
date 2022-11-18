
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