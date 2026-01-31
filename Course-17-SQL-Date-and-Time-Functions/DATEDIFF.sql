/*
Video: Course 17 – SQL Date & Time Functions
Timestamp: 07:05
----------------------------------------
-------------- SQL TASK --------------
Calculate the age of employees.
----------------------------------------
*/

-------- My-Solution --------

select EmployeeID,DATEDIFF(year,BirthDate,getdate()) age_employee 
from Sales.Employees

/*
Video: Course 17 – SQL Date & Time Functions
Timestamp: 08:57
----------------------------------------
-------------- SQL TASK --------------
Find the average shipping duration in days for each month.
----------------------------------------
*/

-------- My-Solution --------

SELECT 
    FORMAT(OrderDate, 'MMM') AS [month],
    AVG(DATEDIFF(day, OrderDate, ShipDate)) AS avg_shipping
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM'), MONTH(OrderDate)

/*
Video: Course 17 – SQL Date & Time Functions
Timestamp: 11:38
----------------------------------------
-------------- SQL TASK --------------
Find the number of days between each order
and the previous order.
----------------------------------------
*/

-------- My-Solution --------

SELECT OrderDate,
	   LAG(OrderDate)over(order by orderdate) previous_order,
	   DATEDIFF(day,LAG(OrderDate)over(order by orderdate),OrderDate)
FROM Sales.Orders