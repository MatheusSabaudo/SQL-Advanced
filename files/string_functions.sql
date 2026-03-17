-- Single Row functions
    -- String
    -- Numeric
    -- Date & Time
    -- NULL

-- Multi Row Functions
    -- Aggregate
    -- Window

-- Strings:
    --Manipulation
        -- Concat
        -- Upper
        -- Lower
        -- Trim
        -- Replace
    
    -- Calculation
        -- len
    
    -- String Extraction
        -- Left
        -- Right
        -- Substring




-- Concat
SELECT
    first_name,
    country,
    CONCAT(first_name, ' - ', country) AS "name_country"
FROM customers

-- UPPER & lower
SELECT
    first_name,
    country,
    UPPER(first_name),
    LOWER(country)
FROM customers

-- Trim
SELECT
    first_name,
    country,
    TRIM(first_name) AS "name_without_spaces"
FROM customers

-- Replace
SELECT
    first_name,
    country,
    REPLACE(CONCAT(first_name, ' - ', country),' - ', ' / ') AS "new_name_country"
FROM customers

-- LEN
SELECT 
    first_name,
    LENGTH(first_name) AS "len_firstname"
FROM customers

-- LEFT & RIGHT
SELECT
    first_name,
    country,
    UPPER(LEFT(country, 2)) AS "country_code",
    RIGHT(first_name, 2) AS "last_2letters"
FROM customers

-- Substring
SELECT
    first_name,
    SUBSTRING(TRIM(first_name), 2 , LENGTH(first_name)) AS sub_name  -- from the second char till len(first_name)
FROM customers