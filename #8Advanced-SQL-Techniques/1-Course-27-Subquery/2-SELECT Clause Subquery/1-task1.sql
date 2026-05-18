/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 24:30
----------------------------------------
-------------- SQL TASK --------------
Show the product IDs, names, prices and total number of orders.
----------------------------------------
*/

-------- My-Solution --------

select ProductID,
	   Product,
	   Price,
	   (select count(*) from Sales.Orders) total_orders
from sales.Products