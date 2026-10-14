-- Rule: check null order date
-- Purpose: ensure every order has a valid order_date
SELECT COUNT(*) AS null_order_date
FROM orders
WHERE order_date IS NULL;
