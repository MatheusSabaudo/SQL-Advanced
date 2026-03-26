-- Replace Values
    -- COALESCE
    -- NULLIF

-- Check for Nulls
    -- IS NULL
    -- IS NOT NULL


-- COALESCE
SELECT
    ship_date,
    order_date,
    COALESCE(ship_date::TEXT, order_date::TEXT, 'Unknown')
FROM orders


-- NULLIF
SELECT
    p.price,
    o.quantity,
    ROUND((o.quantity / NULLIF(p.price, 0))::numeric, 3) AS QuantityDivPrice
FROM products p
LEFT JOIN orders o
ON p.prod_id = o.prod_id 


