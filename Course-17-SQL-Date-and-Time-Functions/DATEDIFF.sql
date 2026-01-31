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