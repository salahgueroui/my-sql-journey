/*
Video: Course 9 – Advanced SQL Joins
Timestamp: 13:52
----------------------------------------
-------------- SQL TASK --------------
Get all customers along with their orders,
but only for customers who have placed an order
(Without Using INNER JOIN)
----------------------------------------
*/

-------- My-Solution --------

select *
from customers c
left join orders o
on c.id = o.customer_id
where o.customer_id is not null

----------------------------------
select *
from customers c,orders o
where c.id = o.customer_id