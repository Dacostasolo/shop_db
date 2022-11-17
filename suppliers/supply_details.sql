CREATE TABLE supply_details(
    supply_id VARCHAR(250) NOT NULL,
    supply_date DATETIME NOT NULL,
    supply_status VARCHAR(250) NOT NULL,
    supplier_id VARCHAR(250) NOT NULL,
    CONSTRAINT supply_details_pk PRIMARY KEY (supply_id),
    CONSTRAINT supply_details_supplier_fk FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);