-- Join the 'order_items' table in the 'sql_store' DB with the 'products' table in the 'sql_inventory' DB.

USE sql_store;

SELECT *
FROM order_items oi
JOIN sql_inventory.products p -- 'products' is part of 'sql_inventory' DB
	ON oi.product_id = p.product_id;