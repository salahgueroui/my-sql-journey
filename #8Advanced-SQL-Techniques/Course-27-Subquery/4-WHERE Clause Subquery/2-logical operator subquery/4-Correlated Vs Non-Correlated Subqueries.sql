/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 1:01:20
----------------------------------------
-------------- SQL TASK --------------
Show all customer details and find the total orders for each customer.
----------------------------------------
*/

-------- My-Solution --------

select *,(select count(OrderID)
		  from Sales.Orders o
		  where o.CustomerID=c.CustomerID)as Total_Order
from Sales.Customers c