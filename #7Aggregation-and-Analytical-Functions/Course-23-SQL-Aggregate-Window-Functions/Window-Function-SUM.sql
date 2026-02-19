/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: SUM() OVER()
----------------------------------------
-------------- SQL TASK --------------
Find the total sales across all orders
and the total sales for each product.
Additionally, provide details such as order ID and order date.
----------------------------------------
*/

-------- My-Solution --------

SELECT orderid,
	   OrderDate,
	   ProductID,
	   Sales,
	   sum(Sales) over () Total_Sales,
	   sum(Sales) over (partition by productid) Sales_per_products
FROM Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: SUM() OVER()
----------------------------------------
-------------- SQL TASK --------------
Find the percentage contribution of
each product's sales to the total sales.
----------------------------------------
*/

-------- My-Solution --------

SELECT orderid,
	   OrderDate,
	   ProductID,
	   Sales,
	   sum(Sales) over () TotalSales,
	   round (cast(Sales as float )*100/sum(Sales) over (),2) PercentageOfTotal 
FROM Sales.Orders