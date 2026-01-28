/*
Video: Course 13 – SQL String Functions
Timestamp: 21:46
----------------------------------------
-------------- SQL TASK --------------
Retrieve a list of customers' first names
removing the first character
----------------------------------------
*/

-------- My-Solution --------

select first_name,substring(trim(first_name),2,len(first_name)) as sub_name
from customers