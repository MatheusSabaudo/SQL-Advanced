-- CASE WHEN
SELECT
    price,
    CASE
        WHEN price > 250 THEN 'High'
        WHEN price > 150 THEN 'Medium'
    ELSE
        'Low'
    END AS price_category
FROM products

-- DATA AGGREGATION

SELECT
    price_category,
    AVG(price)
FROM (
    SELECT
    price,
    CASE
        WHEN price > 1000 THEN 'High'
        WHEN price > 300 THEN 'Medium'
        ELSE 'Low'
    END AS price_category
    FROM products
)t
GROUP BY price_category
ORDER BY price_category ASC

-- DATA MAPPING
SELECT
    id,
    first_name,
    last_name,
    CASE 
        WHEN gender = 'M' THEN 'Male'  
        WHEN gender = 'F' THEN 'Female'
        ELSE 'Not Available'
    END AS gender
FROM employees


SELECT
    cust_id,
    first_name,
    CASE country
        WHEN 'Portugal' THEN 'PT'
        WHEN 'France' THEN 'FR'
        WHEN 'Spain' THEN 'SP'
        WHEN 'Belgium' THEN 'BE'
        WHEN 'Italy' THEN 'IT'
        WHEN 'USA' THEN 'US'
        WHEN 'Germany' THEN 'DE' 
        ELSE 'n/a'
    END AS country
FROM customers
