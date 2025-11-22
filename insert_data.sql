INSERT INTO customers (customer_id, customer_name, email, city, signup_date) VALUES
(1, 'Harshiya Shaik', 'harshiya@example.com', 'Hyderabad', '2024-01-10'),
(2, 'Rahul Kumar', 'rahul@example.com', 'Bangalore', '2024-02-18'),
(3, 'Fatima Khan', 'fatima@example.com', 'Chennai', '2024-03-05');

INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Headphones', 'Electronics', 2000.00),
(103, 'T-Shirt', 'Fashion', 500.00),
(104, 'Smartphone', 'Electronics', 25000.00);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1001, 1, '2024-04-10', 59000.00),
(1002, 1, '2024-04-12', 4000.00),
(1003, 2, '2024-04-15', 2500.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price) VALUES
(1, 1001, 101, 1, 55000.00),
(2, 1001, 102, 2, 2000.00),
(3, 1002, 102, 2, 2000.00),
(4, 1003, 103, 5, 500.00);

INSERT INTO payments (payment_id, order_id, payment_date, amount, payment_method) VALUES
(201, 1001, '2024-04-11', 59000.00, 'Credit Card'),
(202, 1002, '2024-04-13', 4000.00, 'UPI'),
(203, 1003, '2024-04-16', 2500.00, 'Debit Card');
