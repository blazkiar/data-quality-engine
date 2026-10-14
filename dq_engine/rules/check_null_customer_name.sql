-- Rule: check null customer name
-- Purpose: ensure customer_name is always populated
SELECT COUNT(*) AS null_active_customer_name,
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers WHERE is_active = 1) AS null_pct
FROM customers
WHERE customer_name IS NULL
  AND is_active = 1;
