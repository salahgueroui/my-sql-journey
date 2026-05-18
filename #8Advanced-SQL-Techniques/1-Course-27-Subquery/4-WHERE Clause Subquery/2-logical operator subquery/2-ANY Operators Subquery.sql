/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 51:14
----------------------------------------
-------------- SQL TASK --------------
Find female employees whose salaries are greater than the salaries of any male employees.
----------------------------------------
*/

-------- My-Solution --------

select * 
from Sales.Employees
where gender = 'F' and
	  Salary > ANY (select Salary 
					from Sales.Employees
					where Gender ='M')
