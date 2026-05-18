/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 55:12
----------------------------------------
-------------- SQL TASK --------------
Find female employees whose salaries
 are greater than the salaries of all male employees.
----------------------------------------
*/

-------- My-Solution --------

select *
from Sales.Employees
where gender = 'F' and
	  Salary > ALL (select Salary 
					from Sales.Employees
					where Gender ='M')