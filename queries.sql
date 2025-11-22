SELECT * FROM customers;

SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;

SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;

SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

SELECT p.category, SUM(p.price * o.quantity) AS category_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;

SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2;

SELECT p.product_name, SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
