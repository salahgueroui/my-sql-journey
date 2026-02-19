/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: MIN() & MAX() OVER()
Timestamp: 39:12
----------------------------------------
-------------- SQL TASK --------------
Find the highest and lowest sales across all orders
and the highest and lowest sales for each product.
Additionally, provide details such as order ID and order date.
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   OrderDate,
	   ProductID,
	   Sales,
	   MAX(Sales) over() Max_Sales,
	   MIN(Sales) over() Min_Sales,
	   MAX(Sales) over(partition by productid) MaxSalesByProduct,
	   MIN(Sales) over(partition by productid) MinSalesByProduct
FROM Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: MIN() & MAX() OVER()
Timestamp: 41:33
----------------------------------------
-------------- SQL TASK --------------
Show the employees with the highest salaries.
----------------------------------------
*/

-------- My-Solution --------

select *
from (
select *,MAX(Salary) over() highest_Salary
from Sales.Employees
)t where Salary = highest_Salary