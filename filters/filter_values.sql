CREATE TABLE filter_values(
    filter_id int NOT NULL,
    filter_value varchar(250) NOT NULL,
    CONSTRAINT filter_value_pk PRIMARY KEY(filter_id,filter_value),
    CONSTRAINT filter_value_filter_id FOREIGN KEY(filter_id) REFERENCES filters(filter_id)
);