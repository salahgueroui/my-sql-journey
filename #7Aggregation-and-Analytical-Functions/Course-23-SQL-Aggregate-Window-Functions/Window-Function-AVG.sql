/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: AVG() OVER()
----------------------------------------
-------------- SQL TASK --------------
Find the average sales across all orders
and the average sales for each product.
Additionally, provide details such as
order ID and order date.
----------------------------------------
*/

-------- My-Solution --------

SELECT orderid,
	   OrderDate,
	   ProductID,
	   Sales,
	   avg(Sales) over () AVG_Sales,
	   avg(Sales) over (partition by productid) AVG_per_products
FROM Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: AVG() OVER()
----------------------------------------
-------------- SQL TASK --------------
Find the average scores of customers.
Additionally, provide details such as
Customer ID and Last Name.
----------------------------------------
*/

-------- My-Solution --------

select CustomerID,
	   LastName,
       AVG(isnull(Score,0)) over() AVG_customer	   
from Sales.Customers

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: AVG() OVER()
Timestamp: 33:57
----------------------------------------
-------------- SQL TASK --------------
Find all orders where sales are higher 
than the average sales across all orders.
----------------------------------------
*/

-------- My-Solution --------

select *
from(
SELECT orderid,
	   OrderDate,
	   ProductID,
	   Sales,
	   avg(Sales) over () AVG_Sales
FROM Sales.Orders
)t
where Sales > AVG_Sales