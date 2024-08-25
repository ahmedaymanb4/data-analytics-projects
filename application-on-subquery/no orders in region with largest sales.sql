-- THE QUESTION using subquery..
    -- the region with the largest sales amount (total_amt_usd), 
    -- how many orders were placed?

-- SYSTEMATIC STEPS taken to solve it (pseudocode):
  -- to find & group the total_amt_usd by region
  -- to compare total_amt_usd by region & get the max one
  -- to count the orders for that region

-- THE COMPLETE query..
SELECT COUNT(*) 
FROM orders
WHERE account_id IN (
    SELECT id 
    FROM accounts 
    WHERE sales_rep_id IN (
        SELECT id 
        FROM sales_reps 
        WHERE region_id = (
            SELECT region_id
            FROM (
                SELECT region_id, SUM(total_amt_usd) AS total_sales
                FROM orders o
                JOIN accounts a ON o.account_id = a.id
                JOIN sales_reps s ON a.sales_rep_id = s.id
                GROUP BY region_id
                ORDER BY total_sales DESC
                LIMIT 1
            ) AS max_sales_region
        )
    )
);
