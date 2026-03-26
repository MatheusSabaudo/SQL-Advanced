-- REMOVE EMPTY SPACES
SELECT 
    *,
    TRIM(first_name),
    TRIM(country)
FROM customers

-- CONVERT EMPTY STRING INTO NULLS
SELECT 
    *,
    NULLIF(TRIM(first_name), ''),
    NULLIF(TRIM(country), '')
FROM customers

-- CONVERT NULLS INTO 'UNKNOWN'
SELECT 
    *,
    COALESCE(first_name, 'unknown'),
    COALESCE(country, 'unknown'),
    COALESCE(score, 0)
FROM customers
