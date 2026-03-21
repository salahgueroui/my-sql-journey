/*
Video: Course 24 – SQL Ranking Window Functions
Topic: NTILE() – Equalizing Loads
Timestamp: 47:20
----------------------------------------
-------------- SQL TASK --------------
In order to export the data,
divide the orders into 2 groups
----------------------------------------
*/

-------- My-Solution --------

select OrderID,sales,
ntile(2)over(order by orderid)nt 
from sales.Orders
