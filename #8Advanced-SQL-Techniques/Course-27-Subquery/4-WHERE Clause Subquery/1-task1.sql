/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 37:43
----------------------------------------
-------------- SQL TASK --------------
Find the products that have a price higher than the 
average price of all products.
----------------------------------------
*/

-------- My-Solution --------

select ProductID,Product,Price 
from sales.Products
where price > (select avg(price) from Sales.Products)