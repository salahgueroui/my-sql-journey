/*
Video: Course 7 – timestamp 12:15
----------------------------------------
-----SQL-TASK-----
Retrieve all customers who are from the USA AND have a score greater than 500.
*/

------My-solution-----

select *
from customers
where score > 500 and country='usa'
