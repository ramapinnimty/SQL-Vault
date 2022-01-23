-- `LIKE` operator is used to retrieve rows that match a specific pattern.
-- `%` to represent any number of characters. Also, it can be anywhere in the pattern.
-- `_` to represent a single character.

USE sql_store;

SELECT *
FROM customers

-- Retrieve people with their last name starting with 'b' with any number of characters after 'b'.
WHERE last_name LIKE 'b%'; -- it doesn't matter if it's an uppercase or a lowercase 'b'.

-- Customers with 'b' somewhere in their last name.
WHERE last_name LIKE '%b%';

-- Customers with their last name ending with 'y'.
WHERE last_name LIKE '%y';

-- Customers with their last name exactly six characters long starting with 'b' (and 4 underscores) & ending with 'y'.
WHERE last_name LIKE 'b____y';


-- Exercise --
-- Get the customers whose
-- 		1. addresses contain "TRAIL" or "AVENUE"

SELECT *
FROM customers
WHERE (address LIKE '%trail%') OR (address LIKE '%avenue%');

-- 		2. phone numbers end with 9
WHERE phone LIKE '%9';