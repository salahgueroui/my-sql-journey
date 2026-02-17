/*
Video: Course 22 – SQL Window Functions Basics
Timestamp: 05:22
----------------------------------------
-------------- SQL TASK --------------
Find the total sales across all orders.
----------------------------------------
*/

-------- My-Solution --------

select sum(sales) totalsales 
from Sales.Orders
