/*
Video: SQL CTE (Common Table Expression)
Topic: Multiple CTEs
----------------------------------------
-------------- SQL TASK --------------
Find total sales and last order date for each customer.
----------------------------------------
*/

-------- My-Solution --------

with Total_sales AS
		(select customerid,sum(sales) Total_sales
		 from Sales.Orders
		 group by CustomerID
		 )
,last_order as
        (select customerid,
				max(OrderDate) last_order_
		from sales.Orders
		group by CustomerID
		)
select c.CustomerID,
       c.FirstName,
	   c.LastName,
	   coalesce(cte.Total_sales,0) Total_sales,
	   lo.last_order_
from Sales.Customers c
left join Total_sales cte
on cte.customerid=c.CustomerID
left join last_order lo
on lo.customerid=c.customerid
