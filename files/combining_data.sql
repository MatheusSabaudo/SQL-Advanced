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
