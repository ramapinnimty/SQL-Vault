-- Copying data from one table to another (new table). This is very useful as we do not want to code redundantly to insert multiple values.
-- Syntax: `CREATE TABLE new_table_name AS` ...

USE sql_store;

CREATE TABLE orders_archived AS
SELECT * FROM orders; -- This is a "sub-query" i.e, it is part of another SQL statement.
-- NOTE: When we use this technique, MySQL will not assign any attributes from the original table (i.e, Auto Increment the PK by default etc.) (Tip: click the 'design' icon to check this).

-- Copying a subset of records from the 'orders' table into the 'orders_archived' table.
-- Tip: Use the SELECT statement as a "sub-query" to the INSERT statement.
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01';


-- Exercise --
-- Create a copy of the 'invoices' table with all columns except the 'name' column replacing the 'client_id' column.
-- Also, return only the rows that have a valid 'payment_date' i.e, NOT NULL.
USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT
	i.invoice_id,
    i.number,
	c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c
	ON i.client_id = c.client_id -- (or) `USING (client_id)`
    AND i.payment_date IS NOT NULL; -- (or) `WHERE payment_date IS NOT NULL`
