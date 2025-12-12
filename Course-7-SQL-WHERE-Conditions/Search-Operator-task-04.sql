/*
Video: Course 7 – timestamp 38:22
----------------------------------------
-----SQL-TASK-----
Find all customers whose first name has 'r' in the third position.
*/

------My-solution---------

select *
from customers
where first_name like '__r%'
