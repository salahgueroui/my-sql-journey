/*
Video: Course 22 – SQL Window Functions Basics
Topic: RANK Function
Timestamp: 50:17
----------------------------------------
-------------- SQL TASK --------------
Rank customers based on their total sales.
----------------------------------------
*/

-------- My-Solution --------

-- Write your query here

select RANK() over (order by sum(Sales) ) RANK,
	CustomerID,
	sum(Sales) Total_sales
from Sales.Orders
group by CustomerID