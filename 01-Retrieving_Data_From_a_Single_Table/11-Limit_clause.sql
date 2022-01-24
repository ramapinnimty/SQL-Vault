-- `LIMIT` clause is used to limit the number of records returned by the SQL query.
-- Optionally we can even supply an 'Offset' which is very useful for "pagination".
-- [V.IMP] The `LIMIT` clause should always come at the end of the query.

USE sql_store;

SELECT *
FROM customers
-- Only return the first 3 customers.
LIMIT 3; -- If this number is greater than #records, we get all the records.

-- Skip the first 6 records and then pick the next 3 records.
LIMIT 6, 3;


-- Exercise --
-- Get the top-3 loyal customers (sorted by points)
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;