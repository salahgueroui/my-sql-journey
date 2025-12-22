/*
Video: Course 7 – timestamp 6:00
----------------------------------------
-------------- SQL TASK --------------
Retrieve all customers who are NOT from Germany
----------------------------------------
*/

-------- My-Solution ----------------------

select *
from customers
where country != 'germany'
