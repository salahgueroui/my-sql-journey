/*
Video: Course 24 – SQL Ranking Window Functions
Topic: NTILE() – Bucketing Data
Timestamp: 38:20
----------------------------------------
-------------- SQL TASK --------------
Divide the orders into 5 buckets
based on their sales
----------------------------------------
*/

-------- My-Solution --------

select 
orderid,
sales,
NTILE(5) over(order by sales desc)
from Sales.Orders