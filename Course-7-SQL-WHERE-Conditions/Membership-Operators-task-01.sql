/*
Video: Course 7 – timestamp 26:59
----------------------------------------
-----SQL-TASK-----
Retrieve all customers from either Germany OR USA.
*/

------My-solution-----

select *
from customers
where country in ('germany','usa')
