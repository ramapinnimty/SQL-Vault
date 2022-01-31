USE sql_hr;

-- Query to select the name of each employee and their manager. This is "Self Join".
SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

-- The problem with the above query is that it does not return the record for the manager himself (whose `reports_to` value is `null`).

SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employees m -- Only change is here
	ON e.reports_to = m.employee_id;