CREATE TABLE properties(
    property_serial VARCHAR(250) NOT NULL,
    property_name VARCHAR(250) NOT NULL,
    property_type VARCHAR(250) NOT NULL,
    CONSTRAINT property_pk PRIMARY KEY (propery_serial, property_name, property_type)
);