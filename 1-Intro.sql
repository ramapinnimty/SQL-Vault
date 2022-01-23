-- THIS IS A COMMENT

-- Select a Database / Schema / Database schema
-- This can also be achieved by simply double clicking the DB in the GUI (selection appears "bolded").
USE sql_store;

-- Select all columns (using `*`) or specify individual column names
-- SELECT has multiple clauses (FROM, WHERE, ORDER BY etc.) that are optional.
-- The order of the clauses MATTERS!
SELECT *
-- Specify the Table(s)
FROM customers
-- Filter the rows/records
WHERE customer_id = 1
-- Sort the records according to a column
ORDER BY first_name;


-- TIPS: -
-- 1. SQL is case-insensitive. However, it is common practice to capitalize SQL keywords.
-- 2. When we have multiple statements, use `;` to terminate each statement.
-- 3. Use `CMD + SHIFT + RETURN` shortcut to execute the selected query or all queries (if no selection is made).
-- 4. It is best practice to put each clause on a new line.
