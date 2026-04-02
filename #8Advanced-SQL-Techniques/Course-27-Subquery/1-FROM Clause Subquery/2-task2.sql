/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 17:03
----------------------------------------
-------------- SQL TASK --------------
Rank customers based on their total amount of sales.
----------------------------------------
*/

-------- My-Solution --------

select rank() over(order by c_total_amount desc ) customerrank,
	   CustomerID,
	   c_total_amount
from(
	select customerid,sum(Sales) c_total_amount
	from sales.Orders
	group by CustomerID
	)t