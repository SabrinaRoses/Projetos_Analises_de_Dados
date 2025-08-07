-- Top 10 Best_Selling Products
SELECT 
    *
FROM
    superstore;

SELECT 
    Category, ProductName, ROUND(SUM(Sales),2) sales
FROM
    superstore
GROUP BY Category, ProductName
ORDER BY sales DESC
LIMIT 10;
