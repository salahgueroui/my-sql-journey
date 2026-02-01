/*
Video: Course 7 – timestamp 16:18
----------------------------------------
-----SQL-TASK-----
Retrieve all customers who are either from the USA OR have a score greater than 500.
*/

------My-solution-----

select *
from customers
where score > 500 or country='usa'
