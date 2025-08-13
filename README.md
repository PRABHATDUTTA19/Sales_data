# Sales Trend Analysis Using Aggregations

## 1. Total Monthly Revenue
## This query aggregates total revenue over time, grouped by the month and year of the order. It's a great way to see if there are seasonal sales patterns.
```sql
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    SUM(revenue) AS total_monthly_revenue
FROM
    sales
GROUP BY
    sales_month
ORDER BY
    sales_month;
```
<img width="1317" height="525" alt="Screenshot 2025-08-13 202223" src="https://github.com/user-attachments/assets/81654349-a079-47b2-a55c-7e692daf34a1" />

## 2. Total Monthly Profit
## Similar to the revenue query, this calculates the total profit per month, allowing you to identify trends in profitability.

```sql
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    SUM(profit) AS total_monthly_profit
FROM
    sales
GROUP BY
    sales_month
ORDER BY
    sales_month;
```
<img width="1317" height="480" alt="Screenshot 2025-08-13 202248" src="https://github.com/user-attachments/assets/3e22f4b4-369c-495b-ba34-884ec8d88757" />


## 3. Total Sales by Channel
## This query breaks down revenue and quantity sold by each sales channel (e.g., Wholesale, Retail). This can show which channels are performing best.

```sql
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
```
<img width="507" height="147" alt="Screenshot 2025-08-13 201930" src="https://github.com/user-attachments/assets/09a4040d-6adf-40af-ae23-131470124639" />



## 4. Top 5 States by Total Revenue
## This query identifies the top-performing states based on total revenue.
```sql
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

```
<img width="384" height="212" alt="Screenshot 2025-08-13 202308" src="https://github.com/user-attachments/assets/67eb3834-0954-4029-9661-3394b6a73edd" />


## 5. Average Profit Margin by Product
## This calculates the average profit margin percentage for each product, helping you understand which products are most profitable.

```sql
SELECT
    product_name,
    AVG(profit_margin_pct) AS avg_profit_margin_percent
FROM
    sales
GROUP BY
    product_name
ORDER BY
    avg_profit_margin_percent DESC;
```
<img width="316" height="746" alt="Screenshot 2025-08-13 203455" src="https://github.com/user-attachments/assets/46a73405-9cf2-4762-97f4-fad69c9bfca3" />

