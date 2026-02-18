/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 49:20
----------------------------------------
-------------- SQL TASK --------------
Find the total sales for each order status,
only for two products 101 and 102.
----------------------------------------
*/

-------- My-Solution --------

select OrderID,OrderDate,OrderStatus,ProductID,
sum(Sales) over(order by orderstatus)
from Sales.Orders
where ProductID in (101,102)
