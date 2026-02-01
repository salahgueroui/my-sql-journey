/*
Video: Course 13 – SQL String Functions
Timestamp: 07:34
----------------------------------------
-------------- SQL TASK --------------
Find customers whose first name
contains leading or trailing spaces
----------------------------------------
*/

-------- My-Solution --------

select first_name
from customers
where first_name != trim(first_name)