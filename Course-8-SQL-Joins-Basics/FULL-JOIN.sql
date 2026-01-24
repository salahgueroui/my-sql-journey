/*
Video: Course 8 – SQL Joins Basics
Timestamp: 36:10
----------------------------------------
-------------- SQL TASK --------------
Get all customers and all orders,
even if there’s no match
----------------------------------------
*/

-------- My-Solution --------

select c.id,c.first_name,o.order_id,o.sales
from customers c 
full join orders o
on c.id=o.customer_id