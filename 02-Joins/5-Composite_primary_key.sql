-- There will be times when we cannot uniquely identify records in a given table (i.e, where there is no primary key).
-- Thus, in such scenarios, we use a combination of these columns to uniquely identify records.
-- This is called a "Composite Primary Key" that contains more than one column.

USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;