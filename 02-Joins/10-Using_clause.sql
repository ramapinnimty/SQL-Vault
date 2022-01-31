-- If we have the same column names in the two tables we are joining, we can make use of the `USING` clause.

USE sql_store;

SELECT
	o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c
	-- ON o.customer_id = c.customer_id;
    USING (customer_id) -- identical to what we have on Line-11
LEFT JOIN shippers sh
	USING (shipper_id);

-- What if we have a Composite Key? i.e, we are dealing with multiple columns.
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	-- ON oi.order_id = oin.order_id
    -- AND oi.product_id = oin.product_id;
    USING (order_id, product_id); -- identical to what we have on Line-20 & Line-21


-- Exercise --
USE sql_invoicing;

SELECT
	p.date,
	c.name AS client,
    p.amount,
    pm.name AS payment_method
FROM payments p
JOIN clients c
	-- ON p.client_id = c.client_id
    USING (client_id) -- shorthand to what we have on Line-35
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id