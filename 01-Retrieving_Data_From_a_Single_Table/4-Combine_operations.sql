-- `AND` operator returns a row only if both the conditions are true.
-- `OR` operator returns a row if atleast one of the conditions is true.
-- Order of precedence for Logical operators `AND` & `OR`: AND > OR.
-- `NOT` operator is used to negate an expression.

USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000;

WHERE birth_date > '1990-01-01' OR points > 1000;

WHERE birth_date > '1990-01-01' OR 
		(points > 1000 AND state = 'VA');

-- Customers who were born BEFORE (<=) 1990 AND have less than (<=) 1000 points
WHERE NOT (birth_date > '1990-01-01' OR points > 1000);


-- Exercise --
-- From the order_items table, get the items for order #6 where the total price is greater than 30.

SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price > 30);