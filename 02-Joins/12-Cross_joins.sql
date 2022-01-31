-- Usecase: When we want to combine/join every record of the 1st table with every record of the 2nd table.
-- Again, there is no need to specify any condition.

USE sql_store;

SELECT
	c.first_name AS customer,
    p.name AS product
-- (Line-10, Line-11) & Line-12 are identical.
FROM customers c
CROSS JOIN products p -- Explicit syntax for Cross Join
-- FROM customers c, products p -- Implicit syntax for Cross Join 
ORDER BY c.first_name;


-- Exercise --
-- Do a Cross Join between 'shippers' and 'products'.
	-- using the implicit syntax
    -- using the explicit syntax
SELECT
	sh.name AS shipper,
    p.name AS product
FROM products p, shippers sh
-- FROM products p
-- CROSS JOIN shippers sh
ORDER BY sh.name;