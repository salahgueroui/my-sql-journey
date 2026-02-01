/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Extract multiple date parts from CreationTime
using DATEPART.

For each order, display:
- OrderID
- CreationTime
- Year
- Month
- Day
- Hour
- Quarter
- Week
----------------------------------------
*/

-------- My-Solution --------


select OrderID,
	   CreationTime,
	   datepart(year,CreationTime) year,
	   datepart(MONTH,CreationTime) month,
	   datepart(DAY,CreationTime) day,
	   DATEPART(quarter,CreationTime) quarter,
	   DATEPART(hour,CreationTime) hour,
	   DATEPART(week,CreationTime) week
from Sales.Orders