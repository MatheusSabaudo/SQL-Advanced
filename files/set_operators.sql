-- Union SET Operator
SELECT 
    first_name,
    last_name
FROM customers
UNION
SELECT
    first_name,
    last_name
FROM employees

-- Union All SET Operator
SELECT 
    first_name,
    last_name
FROM customers
UNION ALL
SELECT
    first_name,
    last_name
FROM employees

-- Except SET Operator
SELECT 
    first_name,
    last_name
FROM customers
EXCEPT
SELECT
    first_name,
    last_name
FROM employees

-- Intersect SET Operator
SELECT 
    first_name,
    last_name
FROM customers
INTERSECT
SELECT 
    first_name,
    last_name
FROM employees;