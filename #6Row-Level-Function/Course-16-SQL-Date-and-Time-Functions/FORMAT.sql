/*
Video: Course 16 – SQL Date & Time Functions (FORMAT)
Timestamp: 10:37
----------------------------------------
-------------- SQL TASK --------------
Show CreationTime using the following format:
Day Wed Jan Q1 2025 12:34:56 PM
----------------------------------------
*/

-------- My-Solution --------

select OrderID,CreationTime,
'date ' + format(CreationTime,'ddd ')
+format(CreationTime,'MMM ')
+' Q'+datename(QUARTER,CreationTime) + format(CreationTime,' yyyy hh:mm:ss tt')
from Sales.Orders