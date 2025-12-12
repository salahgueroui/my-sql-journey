/*
Video: Course 7 – timestamp 35:57
----------------------------------------
-----SQL-TASK-----
Find all customers whose first name starts with 'M'.
*/

------My-solution---------

select *
from customers
where first_name like 'm%'
