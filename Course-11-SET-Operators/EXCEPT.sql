/*
Video: Course 11 – SQL SET Operators
Timestamp: 26:38
----------------------------------------
-------------- SQL TASK --------------
Find employees who are not customers
at the same time
----------------------------------------
*/

-------- My-Solution --------

select FirstName,LastName
from Sales.Employees
except
select FirstName,LastName
from Sales.Customers