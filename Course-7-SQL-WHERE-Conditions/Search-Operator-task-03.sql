/*
Video: Course 7 – timestamp 37:25
----------------------------------------
-----SQL-TASK-----
Find all customers whose first name contains 'r'.
*/

------My-solution-----

select *
from customers
where first_name like '%r%'
