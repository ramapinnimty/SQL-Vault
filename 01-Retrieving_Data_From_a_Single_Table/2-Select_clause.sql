-- PEMDAS applies in SQL too!
-- Use `AS` keyword to give the newly created column an alias.
-- Use '' or "" to surround a column name if it has spaces.

USE sql_store;

-- Use `DISTINCT` keyword to remove the duplicates.
SELECT DISTINCT
    first_name,
    last_name,
    points,
    (points + 10) * 100 AS 'discount factor'
FROM
    customers;


-- EXERCISE --
-- Return all the products with
-- 		name
-- 		unit price
-- 		new price (unit price * 1.1) i.e, increase the price of each product by 10%

SELECT name, unit_price, (unit_price * 1.1) AS 'new price'
FROM products;