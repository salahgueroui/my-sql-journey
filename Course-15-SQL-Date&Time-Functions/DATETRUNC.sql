/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Truncate CreationTime to different
date levels using DATETRUNC.

For each order, display:
- OrderID
- CreationTime
- CreationTime truncated to YEAR
- CreationTime truncated to DAY
- CreationTime truncated to MINUTE
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   CreationTime,
	   DATETRUNC(YEAR,CreationTime) year,
	   DATETRUNC(DAY,CreationTime) day,
	   DATETRUNC(MINUTE,CreationTime) minute
from Sales.Orders

/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Count orders grouped by month using DATETRUNC.
----------------------------------------
*/

-------- My-Solution --------

select DATETRUNC(month,CreationTime) as month,
	   count(*)
FROM sales.Orders
group by DATETRUNC(month,CreationTime)


