/*
Video: Course 13 – SQL String Functions
Timestamp: 19:11
----------------------------------------
-------------- SQL TASK --------------
Retrieve the last two characters
of each first name
----------------------------------------
*/

-------- My-Solution -

select right (first_name,2) as last_2_char
from customers