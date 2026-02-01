/*
Video: Course 8 – SQL Joins Basics
Timestamp: 33:08
----------------------------------------
-------------- SQL TASK --------------
Get all customers along with their orders,
including orders without matching customers
(Using LEFT JOIN)
----------------------------------------
*/

-------- My-Solution --------

select c.id,c.first_name,o.order_id,o.sales
from orders o
left join customers c
on c.id=o.customer_id