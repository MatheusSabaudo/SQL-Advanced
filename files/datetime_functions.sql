-- Date & Time Functions (PostgreSQL)

    -- Part Extraction:
        -- EXTRACT(DAY FROM date)
        -- EXTRACT(MONTH FROM date)
        -- EXTRACT(YEAR FROM date)
        -- EXTRACT() / DATE_PART()
        -- TO_CHAR(date, 'Day')
        -- DATE_TRUNC()
        -- DATE_TRUNC('month', date) + INTERVAL '1 month - 1 day'
    
    -- Format & Casting
        -- TO_CHAR()
        -- CAST() / ::
        -- CAST() / ::

    -- Calculations
        -- date + INTERVAL
        -- AGE() / date - date
    
    -- Validation
        -- (not needed – PostgreSQL uses strict typing)


-- year-mm-dd
SELECT 
    '2026-03-19' AS "HardCoded",
    NOW() AS "Today"

-- extract day, month and year
SELECT
    creation_time,
    EXTRACT(DAY FROM creation_time)   AS day,
    EXTRACT(MONTH FROM creation_time) AS month,
    EXTRACT(YEAR FROM creation_time)  AS year
FROM orders;

-- extract week or quarter
SELECT
    creation_time,
    DATE_PART('week', creation_time) AS week,
    DATE_PART('quarter', creation_time) AS quarter
FROM orders;

-- name of the day or month
SELECT
    creation_time,
    TO_CHAR(creation_time, 'Day') AS WeekDay,
    TO_CHAR(creation_time, 'Week') AS Week,
    TO_CHAR(creation_time, 'Month') AS Month
FROM orders;

-- DATE_TRUNC
SELECT
    creation_time,
    DATE_TRUNC('day', creation_time)
FROM orders;

-- Get the last day of the month
SELECT 
    creation_time,
    DATE_TRUNC('month', creation_time) + INTERVAL '1 month - 1 day' AS end_of_month
FROM orders;

-- Get the first day of the month
SELECT 
    creation_time,
    CAST(DATE_TRUNC('month', creation_time) AS DATE) AS FirstDayOfMonth
FROM orders;