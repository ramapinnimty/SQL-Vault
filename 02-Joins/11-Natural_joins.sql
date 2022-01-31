-- Using 'NATURAL JOIN' is not recommended as sometimes it leads to unexpected results.
-- [IMP] With Natural Join we need not explicitly specify the column names as the DB Engine will look
-- for the common column (need to have the SAME name) between the tables and join them.

USE sql_store;

SELECT
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c;