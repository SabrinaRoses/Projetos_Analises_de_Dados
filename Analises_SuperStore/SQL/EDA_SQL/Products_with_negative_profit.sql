-- Products with negative profit

select * FROM superstore;

SELECT ProductName,
	ROUND(sum(Sales),2) as sales,
    ROUND(sum(Profit),2) as profit,
    SUM(Discount) as discount
    
from superstore
group by ProductName
having sum(Profit) <10
order by Profit;

select ProductName, MAX(discount) as max_discount, min(discount), sum(Sales) as sales, profit
from superstore
group by productName, profit, sales
having profit <0;