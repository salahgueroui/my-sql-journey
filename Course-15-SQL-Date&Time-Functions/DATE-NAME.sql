/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Retrieve date names from CreationTime
using DATENAME.

For each order, display:
- OrderID
- CreationTime
- Month name
- Weekday name
-day name
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   datename(month,CreationTime) month,
	   datename(weekday,CreationTime) weekday,
	   datename(day,CreationTime) day
from Sales.Orders