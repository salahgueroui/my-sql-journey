/*
Video: Course 9 – Advanced SQL Joins
Timestamp: 01:47
----------------------------------------
-------------- SQL TASK --------------
Get all customers who haven't placed any order
----------------------------------------
*/

-------- My-Solution --------

select *
from customers c 
left join orders o
on c.id=o.customer_id
where o.customer_id is null