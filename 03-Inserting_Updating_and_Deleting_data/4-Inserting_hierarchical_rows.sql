-- Inserting data into "multiple" tables.
-- 'orders' table and 'order_items' table follow a parent-child relationship since an order can have "one or more" items.
-- Here, 'orders' table is the Parent & 'order_items' table is the Child.

USE sql_store;

-- Insert an order and all its related items.
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

-- `LAST_INSERT_ID()` is an in-built SQL function used to get the ID of the newly inserted record.
-- Use `LAST_INSERT_ID()` on the `order_id` column to get the newly inserted order using the ABOVE query in Lines 8-9.
INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
       (LAST_INSERT_ID(), 2, 1, 3.95);