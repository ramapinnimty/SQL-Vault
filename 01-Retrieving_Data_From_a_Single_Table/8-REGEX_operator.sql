-- `REGEXP` is an alternative to the old `LIKE` operator and is extremely powerful for searching.
-- `^` is used to indicate the beginning of a string.
-- `$` is used to indicate the end of a string.
-- `|` is used to represent an `OR` operation and multiple search patterns.
-- `[]` is a shorthand for an `|` on all of the contents (i.e, [abc] matches a or b or c). Also, `[]` can be used before or after.

USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'field'; -- exactly same as `WHERE last_name LIKE '%field%`

-- Customers whose last name begins with 'field'
WHERE last_name REGEXP '^field';

-- Customers whose last name ends with 'field'
WHERE last_name REGEXP 'field$';

-- Customers whose last name starts with 'field' or has 'mac' or'rose' in it.
WHERE last_name REGEXP '^field|mac|rose';

-- 'ge' or 'ie' or 'me'
WHERE last_name REGEXP '[gim]e';

-- We can also have a range without the need to specify the characters explicitly.
WHERE last_name REGEXP '[a-h]e';


-- Exercise --
-- Get the customers whose
-- 		1. first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- 		2. last names end with EY or ON
WHERE last_name REGEXP 'EY$|ON$';

-- 		3. last names start with MY or contains SE
WHERE last_name REGEXP '^MY|SE';

-- 		4. last names contain B followed by R or U
WHERE last_name REGEXP 'B[RU]'; -- or 'br|bu'
