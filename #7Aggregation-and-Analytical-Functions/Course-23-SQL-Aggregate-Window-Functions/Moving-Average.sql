/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: Moving Average (Window Frame)
Timestamp: 55:25
----------------------------------------
-------------- SQL TASK --------------
Calculate the moving average of sales
for each product over time.
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   OrderDate,
	   ProductID,
	   avg(Sales) over (partition by productid ) AvgSalesByProducts,
	   avg(Sales) over (partition by productid order by orderdate ) MovingAvg
FROM Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: Moving Average with Window Frame
Timestamp: 59:36
----------------------------------------
-------------- SQL TASK --------------
Calculate the moving average of sales 
for each product over time, including 
only the next order.
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   OrderDate,
	   ProductID,
	   Sales,
	   avg(Sales) over (partition by productid ) AvgSalesByProducts,
	    avg(Sales) over (partition by productid order by orderdate) MovingAvg,
	   avg(Sales) over (partition by productid order by orderdate 
	   rows between current row and 1following) RollingAvg
FROM Sales.Orders