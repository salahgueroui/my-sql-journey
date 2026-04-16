/*
## SQL TASK

## Instructions
## - Display the employee hierarchy.

## Requirements
## - Show each employee
## - Indicate their level within the organization

## Your task:
## Build a query that represents the hierarchy and assigns a level to each employee.

## MY SOLUTION:
*/

with cte_emp_hierarchy
as (select EmployeeID,
		   FirstName,
		   ManagerID,
		   1 as level
	from Sales.Employees
	where ManagerID is null
	union all 
	select e.EmployeeID,
		   e.FirstName,
		   e.ManagerID,
		   level+1
	from Sales.Employees e
	inner join cte_emp_hierarchy ceh
	on e.ManagerID=ceh.EmployeeID
	)

select * from cte_emp_hierarchy