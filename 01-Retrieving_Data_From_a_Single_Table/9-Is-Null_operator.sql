-- `IS NULL` is to used to look up records that miss an attribute.

USE sql_store;

SELECT *
FROM customers

-- Customers who do not have a phone number
WHERE phone IS NULL;

-- Customers who have a phone number
WHERE phone IS NOT NULL;


-- Exercise --
-- Get the orders that are not shipped yet.
SELECT *
FROM orders
WHERE shipped_date IS NULL; -- or shipper_id IS NULL;