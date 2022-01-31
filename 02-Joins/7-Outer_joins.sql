-- Usecase: When we want to see all the customers whether or not they placed an order.

-- In SQL, we have two types of 'Outer Joins': LEFT JOIN & RIGHT JOIN.
-- 'LEFT JOIN' returns all records from the left table whether the provided condition is true or not.
-- 'RIGHT JOIN' returns all records from the right table whether the provided condition is true or not.
-- NOTE: The keyword `OUTER` is optional just like the `INNER` keyword. So, no need to use `LEFT OUTER JOIN` or `RIGHT OUTER JOIN`.

-- Traditional 'Inner Join' returns only customers who placed an order.
USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Left Join
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o -- Only addition is here
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Right Join
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM orders o
RIGHT JOIN customers c -- Only addition is here
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


-- Exercise --
-- Return all the products with their name and quantity whether or not they were ordered.
SELECT
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;