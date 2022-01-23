-- Both `!=` and `<>` are NOT EQUAL operators.
-- [IMP] Standard SQL format: YYYY-MM-DD ; For now, treat it like a string.

-- USE sql_store;

SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE state = 'VA'; -- [IMP] It doesn't matter if we use 'VA' or 'va'.

-- Select all the people who DO NOT reside in Virginia.
WHERE state <> 'va';

-- Select all the people who are born AFTER Jan 01, 1990.
WHERE birth_date > '1990-01-01';


-- Exercise --
-- Get the orders placed in 2019.

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';