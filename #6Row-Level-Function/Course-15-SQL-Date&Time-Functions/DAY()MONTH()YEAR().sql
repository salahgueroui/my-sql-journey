/*
Video: Course 15 – SQL Date & Time Functions
Timestamp: ~00:30
----------------------------------------
-------------- SQL TASK --------------
Extract date parts from CreationTime:

For each order, display:
- OrderID
- CreationTime
- Year
- Month
- Day
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   CreationTime,
	   year(CreationTime) year,
	   MONTH(CreationTime) month,
	   DAY(CreationTime) day
from Sales.Orders