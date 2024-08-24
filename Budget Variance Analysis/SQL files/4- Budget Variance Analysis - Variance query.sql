USE budget_variance_depi;

-- Total Budget and Total Actual
SELECT 
    SUM(Aspen + Carlota + Quad) AS total_budget,
	SUM(sales) AS total_actual
FROM
    budget,actual;
    
-- A new table output of Budget Variance
WITH actual_sales AS (
    -- Total Actual Sales by month
    SELECT
        DATE_FORMAT(date, '%Y-%m') AS mo,
        SUM(sales) AS actual
    FROM
        actual
    GROUP BY
        mo
),
budget_totals AS (
    -- Total Budget by month
    SELECT 
        DATE_FORMAT(EOMonth, '%Y-%m') AS mo,
        (Aspen + Carlota + Quad) AS budget
    FROM
        budget
)
SELECT
    b.mo,
    b.budget,
    a.actual,
    (b.budget - a.actual) AS variance
FROM
    budget_totals b
LEFT JOIN
    actual_sales a
ON
    b.mo = a.mo
ORDER BY
    b.mo;
-- Budget Variance and Budget Variance %
WITH actual_sales AS (
    -- Total Actual Sales by month
    SELECT
        DATE_FORMAT(date, '%Y-%m') AS mo,
        SUM(sales) AS actual
    FROM
        actual
    GROUP BY
        mo
),
budget_totals AS (
    -- Total Budget by month
    SELECT 
        DATE_FORMAT(EOMonth, '%Y-%m') AS mo,
        (Aspen + Carlota + Quad) AS budget
    FROM
        budget
)
-- Calculate the total variance and variance percentage
SELECT
    SUM(b.budget - COALESCE(a.actual, 0)) AS total_variance,
    (SUM(b.budget - COALESCE(a.actual, 0)) / SUM(b.budget)) * 100 AS variance_percentage
FROM
    budget_totals b
LEFT JOIN
    actual_sales a
ON
    b.mo = a.mo;
