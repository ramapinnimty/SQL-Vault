-- Instead of having multiple `OR` operators, use a single `IN` operator (where order doesn't matter).

USE sql_store;

SELECT *
FROM customers
WHERE state = 'VA' OR state = 'FL' OR state = 'GA';

WHERE state IN ('VA', 'FL', 'GA');

-- Get people from states other than 'VA', 'FL', 'GA'
WHERE state NOT IN ('VA', 'FL', 'GA');


-- Exercise --
-- Return products with quantity in stock equal to 49, 38, 72.

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);