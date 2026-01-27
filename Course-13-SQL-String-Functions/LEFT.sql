/*
Video: Course 13 – SQL String Functions
Timestamp: 18:20
----------------------------------------
-------------- SQL TASK --------------
Retrieve the first two characters
of each first name
----------------------------------------
*/

-------- My-Solution --------

select left (first_name,2) as first_2_char
from customers