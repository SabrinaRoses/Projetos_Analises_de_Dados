-- Profit by region

SELECT * FROM superstore;

Select Region, ROUND(SUM(Profit),2) as profit
from superstore
group by Region
order by profit desc;