/*
Video: Course 24 – SQL Ranking Window Functions
Topic: ROW_NUMBER() – Top N Analysis
Timestamp: 20:22
----------------------------------------
-------------- SQL TASK --------------
Find the top highest sales for each product.
----------------------------------------
*/

-------- My-Solution --------

select *
from(
SELECT orderid,
	   ProductID,
	   Sales,
	   row_number() over (partition by ProductID order by Sales desc) SalesRank_dense
FROM Sales.Orders
)t
where SalesRank_dense = 1