SELECT 
    *
FROM
    superstore;

-- General KPIs: Total orders, sales, percentage profit margin.

SELECT 
    COUNT('Order ID') AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS percentage_profit_margin
FROM
    superstore;

    
