-- In SQL, by default, `JOIN` indicates `INNER JOIN`.
-- The `INNER JOIN` keyword selects records that have matching values in both tables.
-- `ON` phrase specifies the condition to join.
-- If we are using alias, MySQL expects us to use it everywhere; else we get an error.

USE sql_store;

-- We have to specify the table name for the common column (here 'customer_id') else, we get an error.
SELECT order_id, orders.customer_id, first_name, last_name -- or customers.customer_id
-- Join 'orders' table with the 'customers' table such that `orders.customer_id = customers.customer_id`
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;

-- We can instead write the above query using aliases
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;


-- Exercise --
SELECT order_id, oi.product_id, name, oi.quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id;