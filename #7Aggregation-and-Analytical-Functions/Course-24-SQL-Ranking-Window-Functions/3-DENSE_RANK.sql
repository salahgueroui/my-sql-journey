/*
Video: Course 24 – SQL Ranking Window Functions
Topic: DENSE_RANK()
----------------------------------------
-------------- SQL TASK --------------
Rank the orders based on their sales
from highest to lowest.
----------------------------------------
*/

-------- My-Solution --------

SELECT orderid,
	   OrderDate,
	   Sales,
	   dense_rank() over (order by Sales desc) SalesRank_dense
FROM Sales.Orders
