/*
Video: Course 11 – SQL SET Operators
Timestamp: 31:05
----------------------------------------
-------------- SQL TASK --------------
Find employees who are also customers
----------------------------------------
*/

-------- My-Solution --------

select FirstName,LastName
from Sales.Employees
intersect
select FirstName,LastName
from Sales.Customers