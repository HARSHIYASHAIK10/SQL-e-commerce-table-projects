BEGIN TRANSACTION;

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES (1004, 3, '2024-05-01', 25500.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price)
VALUES (5, 1004, 104, 1, 25000.00);

COMMIT;

BEGIN TRANSACTION;

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES (1005, 3, '2024-05-02', 1000.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price)
VALUES (6, 1005, 9999, 1, 1000.00);

ROLLBACK;

BEGIN TRANSACTION;

INSERT INTO customers (customer_id, customer_name, email, city, signup_date)
VALUES (99, 'Temp User', 'temp@example.com', 'Delhi', '2024-06-01');

SAVEPOINT after_temp_customer;

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES (9999, 99, '2024-06-02', 0.00);

ROLLBACK TO after_temp_customer;

COMMIT;
