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