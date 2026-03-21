/*
Video: Course 24 – SQL Ranking Window Functions
Topic: Runk()
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
	   Rank() over (order by Sales desc) SalesRank_rank
FROM Sales.Orders