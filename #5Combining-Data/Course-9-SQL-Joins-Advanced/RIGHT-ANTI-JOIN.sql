/*
Video: Course 9 – Advanced SQL Joins
Timestamp: 05:33
----------------------------------------
-------------- SQL TASK --------------
Get all orders without matching customers
----------------------------------------
*/

-------- My-Solution --------

select *
from customers c 
right join orders o
on c.id=o.customer_id
where c.id is null