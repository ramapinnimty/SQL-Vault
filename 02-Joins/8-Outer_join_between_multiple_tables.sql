-- As a best practice, avoid using Right Joins and use Left Joins instead as it will help ease visualization.

USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;


-- Exercise --
SELECT
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name AS status
FROM orders o
LEFT JOIN customers c -- Can also use INNER JOIN as every order HAS a customer associated with it
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id;