-- joining data

-- Combining Columns = Join
-- Combining Rows = SET Operators

-- Inner Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
INNER JOIN orders o
ON c.cust_id = o.cust_id

-- Left Join 
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id

-- Right Join 
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
RIGHT JOIN orders o
ON c.cust_id = o.cust_id

-- Full Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
FULL JOIN orders o
ON c.cust_id = o.cust_id

-- Left Anti Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id
WHERE o.cust_id IS NULL

-- Right Anti Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM orders o
RIGHT JOIN customers c
ON c.cust_id = o.cust_id
WHERE c.cust_id IS NULL

-- Full Anti Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
FULL JOIN orders o
ON c.cust_id = o.cust_id
WHERE c.cust_id IS NULL OR o.cust_id IS NULL

-- Cross Join
SELECT
    c.cust_id,
    c.first_name,
    c.country,
    o.order_id,
    o.order_status
FROM customers c
CROSS JOIN orders o

-- Multi table join

SELECT 
    o.quantity, 
    o.order_id, 
    p.product, 
    p.price, 
    c.first_name AS "Customer Name", 
    e.first_name AS "Sales person's name"
FROM orders o
LEFT JOIN products p
ON o.order_id = p.prod_id
LEFT JOIN customers c
ON o.order_id = c.cust_id
LEFT JOIN employees e
ON o.order_id = e.id