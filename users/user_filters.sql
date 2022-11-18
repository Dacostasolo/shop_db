CREATE TABLE user_filters (
 filter_id int not null,
 filter_values_id int not null,
 user_id VARCHAR(250) not null,
 CONSTRAINT user_filter PRIMARY KEY(filter_id,filter_values_id,user_id),
 CONSTRAINT user_filter_user_fk FOREIGN KEY(filter_id) REFERENCES filters(filter_id),
 CONSTRAINT user_filter_values_filter_fk FOREIGN KEY(filter_values_id) REFERENCES filter_values(filter_values_id)
);