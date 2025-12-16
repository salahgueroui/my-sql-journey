/*
Video: Course 7 – timestamp 36:42
----------------------------------------
-----SQL-TASK-----
Find all customers whose first name ends with 'n'.
*/

------My-solution-------

select *
from customers
where first_name like '%n'
