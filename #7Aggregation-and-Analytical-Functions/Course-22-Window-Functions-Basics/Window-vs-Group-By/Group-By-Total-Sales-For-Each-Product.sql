/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 06:28
----------------------------------------
-------------- SQL TASK --------------
Find the total sales for each product.
----------------------------------------
*/

-------- My-Solution --------


select
    ProductID,
	sum(sales) totalsales 
from Sales.Orders
group by ProductID