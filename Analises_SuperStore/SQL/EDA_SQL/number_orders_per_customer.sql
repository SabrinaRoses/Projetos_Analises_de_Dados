-- Number of orders per customer

select * from superstore;

select CustomerID, CustomerName, count(OrderID) as qu
FROM superstore
group by  CustomerID, CustomerName,quantity
order by quantity DESC;