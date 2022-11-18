CREATE TABLE shop_expenses(
    shop_id VARCHAR(250) NOT NULL,
    shop_expense_title VARCHAR(250) NOT NULL,
    shop_expenses DECIMAL(10, 2) NOT NULL,
    shop_expenses_date DATETIME NOT NULL,
    CONSTRAINT shop_expenses_pk PRIMARY KEY (shop_id, shop_expense_title, shop_expenses_date),
    CONSTRAINT shop_expenses_shop_fk FOREIGN KEY (shop_id) REFERENCES shop_info(shop_id)
);