-- "Cross Join": Every record in one table will be joined with every record in the other table.

USE sql_store;

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

-- We can use 'Implicit Join' to rewrite the above query as below.
-- [IMP] This is not recommended as if we forget to include the `WHERE` keyword, we get a "Cross Join".

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;