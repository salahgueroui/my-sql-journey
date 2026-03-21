/*
Video: Course 24 – SQL Ranking Window Functions
Topic: ROW_NUMBER() – Bottom N Analysis
Timestamp: 23:36
----------------------------------------
-------------- SQL TASK --------------
Find the lowest 2 customers
based on their total sales
----------------------------------------
*/

-------- My-Solution --------
select *
from
(
select 
CustomerID,
sum(Sales) total_sales,
ROW_NUMBER() over(order by sum(Sales)asc) rank_sales
from Sales.Orders
group by CustomerID
)t
where rank_sales<=2