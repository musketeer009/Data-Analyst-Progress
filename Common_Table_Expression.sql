
SELECT * FROM practicetable;

# SIMPLE
WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal
    FROM employees
)
SELECT *
FROM employees
WHERE salary > (SELECT avg_sal FROM avg_salary);

# MULTIPLE CTE
WITH order_counts AS (
    SELECT customer_id, COUNT(*) AS total_orders
    FROM orders
    GROUP BY customer_id
),
order_revenue AS (
    SELECT customer_id, SUM(amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT oc.customer_id, oc.total_orders, orv.total_revenue
FROM order_counts oc
JOIN order_revenue orv
ON oc.customer_id = orv.customer_id;


# RECURSIVE CTE
WITH RECURSIVE numbers AS (
    SELECT 1 AS n  -- anchor member
    UNION ALL   -- combined anchor and recursive  union all dont check for duplicates here
    SELECT n + 1  -- recursive member
    FROM numbers
    WHERE n < 10
)
SELECT * FROM numbers;

