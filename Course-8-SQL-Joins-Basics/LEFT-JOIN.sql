/*
Video: Course 8 – SQL Joins Basics
Timestamp: 24:46
----------------------------------------
-------------- SQL TASK --------------
Get all customers along with their orders,
including those without orders
----------------------------------------
*/

-------- My-Solution --------

select *
from customers c
left join orders o
on c.id=o.customer_id