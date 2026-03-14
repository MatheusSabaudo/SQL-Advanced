CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	cell VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY(id)
);

ALTER TABLE persons
ADD email VARCHAR(100) NOT NULL

ALTER TABLE persons
DROP COLUMN cell

DROP TABLE persons

SELECT * FROM persons