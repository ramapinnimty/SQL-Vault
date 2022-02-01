USE sql_store;

INSERT INTO customers
-- Supply values for every column in the table
-- `DEFAULT` keyword lets the SQL Engine provide the default (or AI) values.
VALUES (
	DEFAULT,
    'John',
    'Smith',
    '1990-01-01',
    NULL, -- Here, using `DEFAULT` will also give the same result
    'my address',
    'my city',
    'CA',
    DEFAULT);

-- Optionally, we can also supply the columns into which we are trying to insert the values.
-- [IMP] Using this, we can even reorder/jumble the columns.
INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state)
VALUES (
    'John',
    'Smith',
    '1990-01-01',
    'my address',
    'my city',
    'CA');