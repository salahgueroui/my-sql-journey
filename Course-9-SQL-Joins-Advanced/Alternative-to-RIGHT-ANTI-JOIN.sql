/*
Video: Course 9 – Advanced SQL Joins
Timestamp: 07:38
----------------------------------------
-------------- SQL TASK --------------
Get all orders without matching customers
(Using LEFT JOIN)
----------------------------------------
*/

-------- My-Solution --------

select *
from orders o
left join customers c
on c.id=o.customer_id
where c.id is null