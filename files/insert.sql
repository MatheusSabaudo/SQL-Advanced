DROP TABLE customers

CREATE TABLE customers (
	id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	score INT,
	CONSTRAINT pk_customers PRIMARY KEY(id)
)


INSERT INTO customers (id, first_name, country, score)
VALUES 
    (6, 'Matteo', 'IT', NULL),
    (7, 'Sam', 'USA', NULL)