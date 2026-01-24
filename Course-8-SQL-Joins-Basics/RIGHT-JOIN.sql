/*
Video: Course 8 – SQL Joins Basics
Timestamp: 31:28
----------------------------------------
-------------- SQL TASK --------------
Get all customers along with their orders,
including orders without matching customers
----------------------------------------
*/

-------- My-Solution --------

select c.id,c.first_name,o.order_id,o.sales
from customers c
right join orders o 
on c.id=o.customer_id