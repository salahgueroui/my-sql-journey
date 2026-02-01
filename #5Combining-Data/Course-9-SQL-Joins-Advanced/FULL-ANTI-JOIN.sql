/*
Video: Course 9 – Advanced SQL Joins
Timestamp: 11:22
----------------------------------------
-------------- SQL TASK --------------
Find customers without orders
and orders without customers
----------------------------------------
*/

-------- My-Solution --------

select *
from orders o
full join customers c
on c.id=o.customer_id
where c.id is null
     or o.customer_id is null