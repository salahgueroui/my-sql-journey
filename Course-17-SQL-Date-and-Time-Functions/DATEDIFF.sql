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

