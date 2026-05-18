/*
Video: SQL CTE (Common Table Expression)
Topic: CTE
----------------------------------------
-------------- SQL TASK --------------
Calculate total sales per customer using a CTE
and display the result.
----------------------------------------
*/

-------- My-Solution --------

with Total_sales AS
		(select customerid,sum(sales) Total_sales
		 from Sales.Orders
		 group by CustomerID
		 )

select c.CustomerID,
       c.FirstName,
	   c.LastName,
	   coalesce(cte.Total_sales,0) Total_sales
from Sales.Customers c
left join Total_sales cte
on cte.customerid=c.CustomerID