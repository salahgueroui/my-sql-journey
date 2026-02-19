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
