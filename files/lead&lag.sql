-- Active: 1775062032803@@127.0.0.1@5432@sql-advanced
SELECT
    order_date,
    order_status,
    LAG(order_status) OVER (ORDER BY order_date)
FROM orders

SELECT
    order_date,
    order_status,
    LEAD(order_status) OVER (ORDER BY order_date)
FROM orders