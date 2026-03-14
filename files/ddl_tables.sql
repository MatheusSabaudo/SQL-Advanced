CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	cell VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY(id)
);


CREATE TABLE customers (
	id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	score INT,
	CONSTRAINT pk_customers PRIMARY KEY(id)
);

CREATE TABLE employees (
	id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	department VARCHAR(30),
	birth_date DATE,
	gender VARCHAR(10),
	salary FLOAT,
	manager_id INT,
	CONSTRAINT pk_employees PRIMARY KEY(id)
);

CREATE TABLE orders (
	order_id INT NOT NULL,
	prod_id INT NOT NULL,
	cust_id INT NOT NULL,
	sales_id INT NOT NULL,
	order_date DATE NOT NULL,
	ship_date DATE,
	order_status VARCHAR(30) NOT NULL,
	ship_address VARCHAR(255) NOT NULL,
	bill_address VARCHAR(255) NOT NULL,
	quantity INT NOT NULL,
	creation_time DATE,
	CONSTRAINT pk_orders PRIMARY KEY(order_id)
);

CREATE TABLE orders_archive (
	order_id INT NOT NULL,
	prod_id INT NOT NULL,
	cust_id INT NOT NULL,
	sales_id INT NOT NULL,
	order_date DATE NOT NULL,
	ship_date DATE,
	order_status VARCHAR(30) NOT NULL,
	ship_address VARCHAR(255) NOT NULL,
	bill_address VARCHAR(255) NOT NULL,
	quantity INT NOT NULL,
	creation_time DATE,
	CONSTRAINT pk_orders_archive PRIMARY KEY(order_id)
);

CREATE TABLE products (
	prod_id INT NOT NULL,
	product VARCHAR(255) NOT NULL,
	category VARCHAR(255) NOT NULL,
	price FLOAT NOT NULL,
	CONSTRAINT pk_products PRIMARY KEY(prod_id)
)
