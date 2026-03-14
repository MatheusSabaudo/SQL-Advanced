-- PERSONS
INSERT INTO persons (id, person_name, birth_date, cell) VALUES
(1, 'Luca Bianchi', '1990-05-12', '3201111111'),
(2, 'Marco Rossi', '1988-03-21', '3202222222'),
(3, 'Giulia Ferrari', '1995-07-30', '3203333333'),
(4, 'Anna Romano', '1992-11-15', '3204444444'),
(5, 'Paolo Ricci', '1985-01-09', '3205555555'),
(6, 'Sara Conti', '1998-06-19', '3206666666'),
(7, 'Davide Greco', '1991-09-03', '3207777777'),
(8, 'Chiara Bruno', '1994-04-28', '3208888888'),
(9, 'Stefano Gallo', '1987-12-02', '3209999999'),
(10, 'Elena Costa', '1993-08-14', '3201234567');


-- CUSTOMERS
INSERT INTO customers (cust_id, first_name, country, score) VALUES
(1, 'Luca', 'Italy', 120),
(2, 'Marco', 'Italy', 90),
(3, 'Anna', 'Germany', 150),
(4, 'John', 'USA', 200),
(5, 'Maria', 'Spain', 130),
(6, 'Laura', 'France', 170),
(7, 'David', 'UK', 80),
(8, 'Elena', 'Italy', 140),
(9, 'Carlos', 'Portugal', 110),
(10, 'Sophie', 'Belgium', 160);


-- EMPLOYEES
INSERT INTO employees (id, first_name, last_name, department, birth_date, gender, salary, manager_id) VALUES
(1, 'Alessandro', 'Rossi', 'Sales', '1985-02-10', 'M', 35000, NULL),
(2, 'Martina', 'Bianchi', 'Sales', '1990-07-18', 'F', 28000, 1),
(3, 'Davide', 'Conti', 'IT', '1988-05-22', 'M', 40000, NULL),
(4, 'Chiara', 'Ricci', 'HR', '1992-10-11', 'F', 30000, NULL),
(5, 'Paolo', 'Greco', 'IT', '1987-04-09', 'M', 38000, 3),
(6, 'Sara', 'Ferrari', 'Marketing', '1993-06-15', 'F', 31000, NULL),
(7, 'Lorenzo', 'Romano', 'Sales', '1991-03-05', 'M', 27000, 1),
(8, 'Elisa', 'Costa', 'HR', '1989-09-27', 'F', 29000, 4),
(9, 'Matteo', 'Gallo', 'IT', '1994-12-14', 'M', 35000, 3),
(10, 'Francesca', 'Bruno', 'Marketing', '1995-01-30', 'F', 30000, 6);


-- PRODUCTS
INSERT INTO products (prod_id, product, category, price) VALUES
(1, 'Laptop Pro 15', 'Electronics', 1500),
(2, 'Wireless Mouse', 'Electronics', 25),
(3, 'Office Chair', 'Furniture', 200),
(4, 'Standing Desk', 'Furniture', 450),
(5, 'Mechanical Keyboard', 'Electronics', 120),
(6, 'Monitor 27"', 'Electronics', 300),
(7, 'Desk Lamp', 'Furniture', 40),
(8, 'USB-C Hub', 'Electronics', 60),
(9, 'Notebook A4', 'Stationery', 5),
(10, 'Pen Set', 'Stationery', 12);


-- ORDERS
INSERT INTO orders (order_id, prod_id, cust_id, sales_id, order_date, ship_date, order_status, ship_address, bill_address, quantity, creation_time) VALUES
(1, 1, 1, 2, '2026-01-05', '2026-01-07', 'Shipped', 'Via Roma 10', 'Via Roma 10', 1, '2026-01-05'),
(2, 2, 2, 2, '2026-01-06', '2026-01-08', 'Shipped', 'Via Milano 22', 'Via Milano 22', 2, '2026-01-06'),
(3, 3, 3, 7, '2026-01-07', '2026-01-10', 'Delivered', 'Via Torino 3', 'Via Torino 3', 1, '2026-01-07'),
(4, 4, 4, 7, '2026-01-08', '2026-01-11', 'Delivered', 'Via Napoli 8', 'Via Napoli 8', 1, '2026-01-08'),
(5, 5, 5, 2, '2026-01-09', '2026-01-12', 'Processing', 'Via Firenze 19', 'Via Firenze 19', 3, '2026-01-09'),
(6, 6, 6, 7, '2026-01-10', '2026-01-13', 'Processing', 'Via Genova 45', 'Via Genova 45', 2, '2026-01-10'),
(7, 7, 7, 2, '2026-01-11', '2026-01-14', 'Shipped', 'Via Bari 12', 'Via Bari 12', 1, '2026-01-11'),
(8, 8, 8, 7, '2026-01-12', '2026-01-15', 'Delivered', 'Via Palermo 4', 'Via Palermo 4', 2, '2026-01-12'),
(9, 9, 9, 2, '2026-01-13', '2026-01-16', 'Delivered', 'Via Venezia 16', 'Via Venezia 16', 10, '2026-01-13'),
(10, 10, 10, 7, '2026-01-14', '2026-01-17', 'Processing', 'Via Bologna 21', 'Via Bologna 21', 5, '2026-01-14');


-- ORDERS ARCHIVE
INSERT INTO orders_archive (order_id, prod_id, cust_id, sales_id, order_date, ship_date, order_status, ship_address, bill_address, quantity, creation_time) VALUES
(101, 1, 3, 2, '2025-10-01', '2025-10-03', 'Delivered', 'Via Roma 10', 'Via Roma 10', 1, '2025-10-01'),
(102, 2, 4, 2, '2025-10-05', '2025-10-06', 'Delivered', 'Via Milano 22', 'Via Milano 22', 2, '2025-10-05'),
(103, 3, 5, 7, '2025-10-07', '2025-10-09', 'Delivered', 'Via Torino 3', 'Via Torino 3', 1, '2025-10-07'),
(104, 4, 6, 7, '2025-10-10', '2025-10-12', 'Delivered', 'Via Napoli 8', 'Via Napoli 8', 1, '2025-10-10'),
(105, 5, 7, 2, '2025-10-11', '2025-10-13', 'Delivered', 'Via Firenze 19', 'Via Firenze 19', 2, '2025-10-11'),
(106, 6, 8, 7, '2025-10-12', '2025-10-14', 'Delivered', 'Via Genova 45', 'Via Genova 45', 1, '2025-10-12'),
(107, 7, 9, 2, '2025-10-13', '2025-10-15', 'Delivered', 'Via Bari 12', 'Via Bari 12', 3, '2025-10-13'),
(108, 8, 10, 7, '2025-10-14', '2025-10-16', 'Delivered', 'Via Palermo 4', 'Via Palermo 4', 2, '2025-10-14'),
(109, 9, 1, 2, '2025-10-15', '2025-10-17', 'Delivered', 'Via Venezia 16', 'Via Venezia 16', 6, '2025-10-15'),
(110, 10, 2, 7, '2025-10-16', '2025-10-18', 'Delivered', 'Via Bologna 21', 'Via Bologna 21', 4, '2025-10-16');