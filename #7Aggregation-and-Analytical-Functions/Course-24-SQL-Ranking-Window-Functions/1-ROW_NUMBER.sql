/*
Video: Course 24 – SQL Ranking Window Functions
Topic: ROW_NUMBER()
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
	   row_number() over (order by Sales desc) SalesRank_row
FROM Sales.Orders
