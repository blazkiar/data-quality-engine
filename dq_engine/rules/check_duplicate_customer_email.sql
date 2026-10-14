-- Rule: check duplicate customer email
-- Purpose: ensure customer_email is unique
SELECT customer_email, COUNT(*) AS occurrences
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;
