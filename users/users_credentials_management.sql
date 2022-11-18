CREATE TABLE user_credentials(
    user_id VARCHAR(250) not null,
    user_password VARCHAR(250) not null,
    CONSTRAINT user_credentials_pk PRIMARY key(user_id, user_password),
    CONSTRAINT user_credentials_user_fk FOREIGN KEY(user_id) REFERENCES users(user_id)
);