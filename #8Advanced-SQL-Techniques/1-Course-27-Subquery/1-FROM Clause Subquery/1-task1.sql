/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 12:02
----------------------------------------
-------------- SQL TASK --------------
Find the products that have a price higher than the average price of all products.
----------------------------------------
*/

-------- My-Solution --------

select ProductID,t.Product
from
(
select *,
avg(Price) over() avg_price
from Sales.Products
)t
where price>t.avg_price