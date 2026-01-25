/*
Video: Course 11 – SQL SET Operators
Timestamp: 16:48
----------------------------------------
-------------- SQL TASK --------------
Combine the data from employees and
customers into one table
----------------------------------------
*/

-------- My-Solution --------

select FirstName,LastName
from Sales.Employees
union
select FirstName,LastName
from Sales.Customers
