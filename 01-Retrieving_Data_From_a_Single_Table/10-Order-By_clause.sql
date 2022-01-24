-- `ORDER BY` is used to sort data by a single or multiple column(s).
-- The 'Primary Key' column is used to sort data by default.
-- [V.V.IMP] In MySQL, we can sort data by any column(s) whether or not it is in the SELECT clause. 

USE sql_store;

SELECT *
FROM customers

ORDER BY first_name;

ORDER BY first_name DESC; -- `DESC` sorts in Descending order

-- First sort by state and then sort by first name within each state
ORDER BY state DESC, first_name;

-- We can also sort data by an alias.
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name;

-- TIP: Try to avoid sorting by the column index (or position) like below -
-- ORDER BY 1, 2;


-- Exercise --
-- Select all the items with order_id #2 and sort them by their total price in descending order
SELECT *, unit_price * quantity AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;