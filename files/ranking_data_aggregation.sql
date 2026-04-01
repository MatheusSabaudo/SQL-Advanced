-- Integer-based Ranking
    -- Uses integers to set the rank using discrete values
    -- Should be used in questions like Find top 3 products

    -- Row_number()
    -- Rank()
    -- Dense_Rank()
    -- Ntile()

-- Percentage-Based Ranking
    -- Uses percentages to set the rank in a scale of 0 to 1, uses continuous values
    -- Should be used in questions like Find top 20% products

    -- Cume_Dist()
    -- Percent_rank()


-- ROW_NUMBER()
SELECT 
    order_id,
    prod_id,
    quantity,
    ROW_NUMBER() OVER(ORDER BY quantity DESC) QuantityRank_Row
FROM orders

-- RANK
SELECT 
    order_id,
    prod_id,
    quantity,
    RANK() OVER(ORDER BY quantity DESC) QuantityRank_Row
FROM orders

-- DENSE_RANK
SELECT 
    order_id,
    prod_id,
    quantity,
    DENSE_RANK() OVER(ORDER BY quantity DESC) QuantityRank_Row
FROM orders

-- NTILE
SELECT 
    *,
    CASE WHEN Bucket = 1 THEN 'High'
        WHEN Bucket = 2 THEN 'Medium'
        WHEN Bucket = 3 THEN 'Low'
        END AS Classification
    FROM (SELECT 
            order_id,
            prod_id,
            quantity,
            NTILE(3) OVER(ORDER BY quantity DESC) Bucket
        FROM orders
    )
    



-- CUME_DIST
SELECT 
    order_id,
    prod_id,
    quantity,
    CUME_DIST() OVER(ORDER BY quantity DESC)
FROM orders

-- PERCENT_RANK
SELECT 
    order_id,
    prod_id,
    quantity,
    ROUND(PERCENT_RANK() OVER(ORDER BY quantity DESC)::numeric, 3)
FROM orders