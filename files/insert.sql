-- Active: 1773430941444@@127.0.0.1@5432@sql-advanced
DROP TABLE customers

CREATE TABLE customers (
	id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	score INT,
	CONSTRAINT pk_customers PRIMARY KEY(id)
)


-- INSERT INTO customers (id, first_name, country, score)
-- VALUES 
--     (6, 'Matteo', 'IT', NULL),
--     (7, 'Sam', 'USA', NULL)


-- insert data from 'customers' into 'persons'

INSERT INTO persons (id, person_name, birth_date, cell)
SELECT id, person_name, NULL, 'Unknown'