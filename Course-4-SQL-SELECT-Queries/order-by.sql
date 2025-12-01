/*
Video: Course 4 – timestamp 18:23
----------------------------------------
-----SQL-TASK-----
Retrieve all customers and sort the results by the highest score first.
*/

------My-solution-----

select *
from customers
order by score desc

------------------------------------------------------------------------------
/*
Video: Course 4 – timestamp 19:40
----------------------------------------
-----SQL-TASK-----
Retrieve all customers and sort the results by the lowest score first.
*/

------My-solution-----

select *
from customers
order by score
