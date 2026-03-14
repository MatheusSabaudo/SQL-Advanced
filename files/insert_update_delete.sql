-- Active: 1773430941444@@127.0.0.1@5432@sql-advanced
DROP TABLE customers

CREATE TABLE customers (
	cust_id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	score INT,
	CONSTRAINT pk_customers PRIMARY KEY(cust_id)
)


INSERT INTO customers (id, first_name, country, score)
VALUES 
    (6, 'Matteo', 'IT', NULL),
    (7, 'Sam', 'USA', NULL)


insert data from 'customers' into 'persons'

INSERT INTO persons (id, person_name, birth_date, cell)
SELECT 
	cust_id, 
	first_name, 
	NULL, 
	'Unknown'
FROM customers

UPDATE customers
SET score = 0
WHERE cust_id = 6

UPDATE customers
SET score = 0
WHERE score IS NULL

DELETE FROM customers
WHERE cust_id > 5

TRUNCATE TABLE persons