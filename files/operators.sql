-- comparison operators

SELECT *
FROM customers
WHERE country = 'Germany'

SELECT *
FROM customers
WHERE score > 150

SELECT *
FROM customers
WHERE score > 150 AND first_name = 'John'

SELECT *
FROM customers
WHERE score < 100 OR first_name = 'John'

SELECT *
FROM customers
WHERE NOT country = 'Germany'

SELECT *
FROM customers
WHERE score BETWEEN 150 AND 200

SELECT * 
FROM customers
WHERE country IN ('Germany', 'Italy')

SELECT * 
FROM customers
WHERE first_name LIKE 'M%' -- Starts with M

SELECT * 
FROM customers
WHERE first_name LIKE '%co' -- Ends with co

SELECT * 
FROM customers
WHERE first_name LIKE '%co%' -- Contains 'co'

SELECT * 
FROM customers
WHERE first_name LIKE '_a%' -- Second char should be a 'r' Example: maRco

