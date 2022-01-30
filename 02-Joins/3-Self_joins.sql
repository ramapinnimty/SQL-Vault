-- In SQL, we can join a table with itself.
-- The only difference is that we should use different aliases.

-- Query to select the name of each employee and their manager.
USE sql_hr;

SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
JOIN employees m -- Use another alias
	ON e.reports_to = m.employee_id;