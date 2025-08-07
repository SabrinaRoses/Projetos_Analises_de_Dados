-- Sales by Category and Sub-Category
SELECT 
    *
FROM
    superstore;

SELECT 
    Category,
    SubCategory,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM
    superstore
GROUP BY Category , subCategory
ORDER BY total_sales DESC;
