-- TASK 6: Sales Trend Analysis Using Aggregations

-- 1. Total Monthly Revenue
-- This query aggregates total revenue over time, grouped by the month and year of the order.
-- It's a great way to see if there are seasonal sales patterns.
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    SUM(revenue) AS total_monthly_revenue
FROM
    sales
GROUP BY
    sales_month
ORDER BY
    sales_month;

-- 2. Total Monthly Profit
-- Similar to the revenue query, this calculates the total profit per month,
-- allowing you to identify trends in profitability.
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    SUM(profit) AS total_monthly_profit
FROM
    sales
GROUP BY
    sales_month
ORDER BY
    sales_month;

-- 3. Total Sales by Channel
-- This query breaks down revenue and quantity sold by each sales channel (e.g., Wholesale, Retail).
-- This can show which channels are performing best.
SELECT
    channel,
    SUM(revenue) AS total_revenue,
    SUM(quantity) AS total_quantity
FROM
    sales
GROUP BY
    channel
ORDER BY
    total_revenue DESC;

-- 4. Top 5 States by Total Revenue
-- This query identifies the top-performing states based on total revenue.
SELECT
    state_name,
    SUM(revenue) AS total_revenue
FROM
    sales
GROUP BY
    state_name
ORDER BY
    total_revenue DESC
LIMIT 5;

-- 5. Average Profit Margin by Product
-- This calculates the average profit margin percentage for each product,
-- helping you understand which products are most profitable.
SELECT
    product_name,
    AVG(profit_margin_pct) AS avg_profit_margin_percent
FROM
    sales
GROUP BY
    product_name
ORDER BY
    avg_profit_margin_percent DESC;
