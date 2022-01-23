USE sql_store;

SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000;

WHERE points BETWEEN 1000 AND 3000; -- Note: Range is INCLUSIVE!


-- Exercise --
-- Return customers born between 01/01/1990 and 01/01/2000.

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';