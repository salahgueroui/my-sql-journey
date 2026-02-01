/*
Video: Course 13 – SQL String Functions
Timestamp: 01:43
----------------------------------------
-------------- SQL TASK --------------
Concatenate first name and country
into one column
----------------------------------------
*/

-------- My-Solution --------

select concat(first_name,',',Country) name_country
from Customers