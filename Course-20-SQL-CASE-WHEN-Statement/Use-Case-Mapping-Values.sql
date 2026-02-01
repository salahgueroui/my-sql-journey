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

/*
Video: Course 20 – SQL CASE WHEN Statement
Topic: Mapping Values
Timestamp: 20:02
----------------------------------------
-------------- SQL TASK --------------
Retrieve customer details with
abbreviated country code.
----------------------------------------
*/

-------- My-Solution --------

select *, 
case
	when Country ='Germany' then 'DE'
	when Country ='usa' then 'US'
end 
from Sales.Customers