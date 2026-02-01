/*
Video: Course 20 – SQL CASE WHEN Statement
Topic: Mapping Values
Timestamp: 17:58
----------------------------------------
-------------- SQL TASK --------------
Retrieve employee details with gender
displayed as full text.
----------------------------------------
*/

-------- My-Solution --------

select EmployeeID,Gender,
case
	when Gender='M' then 'Male'
	when Gender='F' then 'Female'
end full_text
from Sales.Employees
