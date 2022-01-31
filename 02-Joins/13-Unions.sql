-- We can combine ROWS from multiple tables i.e, we can use the `UNION` operator to combine records from two queries.

USE sql_store;

-- Return orders in the current year and label them as 'Active'.
SELECT
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
-- Return orders in the previous years and label them as 'Archive'.
SELECT
	order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- Furthermore, we can use UNION on queries from multiple tables.
-- Note that the number of columns returned from each query should be equal.
-- Also, the column name(s) from the 1st query determines the name(s) in the result query.
SELECT first_name AS full_name
FROM customers
UNION
SELECT name
FROM shippers;


-- Exercise --
-- If points < 2000 --> 'Bronze' ; 2000<=points<=3000 --> 'Silver' ; points > 3000 --> 'Gold'
SELECT
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;