/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Retrieve the start and end of the month
for each order using date functions.

For each order, display:
- OrderID
- CreationTime
- Start of the month
- End of the month

Notes:
- Use DATETRUNC to get the start of the month
- Use EOMONTH to get the end of the month
----------------------------------------
*/

-------- My-Solution --------

select CreationTime,
	   cast(DATETRUNC(month,CreationTime)as date)as start_of_month, 
	   eomonth(CreationTime) as end_of_month
FROM sales.Orders
