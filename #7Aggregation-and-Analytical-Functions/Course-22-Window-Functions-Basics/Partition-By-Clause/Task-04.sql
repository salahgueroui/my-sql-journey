/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 26:02
----------------------------------------
-------------- SQL TASK --------------
Find the total sales for each combination of:
- Product
- Order Status
----------------------------------------
*/

-------- My-Solution --------

select
  ProductID,
  OrderStatus,
  sum(Sales) over(partition by productid,orderstatus) totalsales
from Sales.Orders
order by ProductID,OrderStatus desc