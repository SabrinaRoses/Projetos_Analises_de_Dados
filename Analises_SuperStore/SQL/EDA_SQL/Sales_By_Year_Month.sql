-- Sales by year and month

select * from superstore;

with sales_by_month as (
	SELECT 
		extract(year FROM OrderDate_Temp) as _year,
		extract(month FROM OrderDate_temp) As _month,
		round(sum(Sales),2) total_sales,
        rank() over(partition by extract(year from OrderDate_Temp)
					order by SUM(Sales) DESC) as rank_sales
	from superstore
    group by _year, _month
)
select _year, _month, total_sales, rank_sales
from sales_by_month
where rank_sales = 1
order by total_sales desc;
    