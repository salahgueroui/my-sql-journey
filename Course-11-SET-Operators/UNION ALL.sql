/*
Video: Course 11 – SQL SET Operators
Timestamp: 23:02
----------------------------------------
-------------- SQL TASK --------------
Combine the data from employees and
customers into one table,
including duplicates
----------------------------------------
*/

-------- My-Solution --------


select FirstName,LastName
from Sales.Employees
union all
select FirstName,LastName
from Sales.Customers