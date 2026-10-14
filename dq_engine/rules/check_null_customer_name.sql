-- Rule: check null customer name
-- Purpose: ensure customer_name is always populated
SELECT COUNT(*) AS null_customer_name
FROM customers
WHERE customer_name IS NULL
  AND is_active = 1;
