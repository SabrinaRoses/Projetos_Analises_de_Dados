select  * from superstore;

select Category, ProductName, MAX(Profit) as profit
from superstore
group by Category, ProductName
order by profit desc
limit 10 ;

select profit
from superstore
order by profit desc;