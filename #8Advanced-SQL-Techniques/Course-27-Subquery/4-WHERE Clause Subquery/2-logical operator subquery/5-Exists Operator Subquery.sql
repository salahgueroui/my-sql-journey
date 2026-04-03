/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 1:10:48
----------------------------------------
-------------- SQL TASK --------------
Show the order details for customers in Germany.
----------------------------------------
*/

-------- My-Solution --------

select * 
from Sales.Orders o
where exists (select c.CustomerID
			 from Sales.Customers c
			 where Country='Germany' and
					o.customerid=c.customerid)