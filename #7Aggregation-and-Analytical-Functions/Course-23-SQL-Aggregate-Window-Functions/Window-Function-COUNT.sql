/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() 
Timestamp: 07:22
----------------------------------------
-------------- SQL TASK --------------
Find the total number of orders.
----------------------------------------
*/

-------- My-Solution --------

select count(OrderID) total_order
from Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() OVER()
Timestamp: 08:34
----------------------------------------
-------------- SQL TASK --------------
Find the total number of orders,
additionally provide details such as order id & order date.
----------------------------------------
*/

-------- My-Solution --------

-- Write your query here

select OrderID,
	   OrderDate,
	   count(OrderID) over() total_order
from Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() OVER(PARTITION BY)
Timestamp: 09:20
----------------------------------------
-------------- SQL TASK --------------
Find the total orders for each customers.
----------------------------------------
*/

-------- My-Solution --------

select OrderID,
	   OrderDate,
	   CustomerID,
	   count(OrderID) over(partition by customerid) orderBycustomer
from Sales.Orders

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() OVER()
Timestamp: 11:10
----------------------------------------
-------------- SQL TASK --------------
Find the total number of customers,
additionally provide all customer's details.
----------------------------------------
*/

-------- My-Solution --------

select *,count(*) over() Total_customers
from Sales.Customers

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() OVER()
Timestamp: 12:05
----------------------------------------
-------------- SQL TASK --------------
Find the total number of scores for the customers.
----------------------------------------
*/

-------- My-Solution --------

select *,
	   count(*) over() Total_customers,
	   count(Score) over() Total_Score
from Sales.Customers

/*
Video: Course 23 – SQL Aggregate Window Functions
Topic: COUNT() OVER()
----------------------------------------
-------------- SQL TASK --------------
Check whether the table 'Orders' contains any duplicate rows 
using a window function.
----------------------------------------
*/

-------- My-Solution --------

SELECT orderid,
	   count(*) over (partition by orderid ) checkPK
FROM Sales.Orders



