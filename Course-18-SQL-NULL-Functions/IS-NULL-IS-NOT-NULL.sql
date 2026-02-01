/*
Video: Course 18 – SQL NULL Functions
Topic: IS NULL / IS NOT NULL
Timestamp: 45:17
----------------------------------------
-------------- SQL TASK --------------
Identify the customers who have no scores.
----------------------------------------
*/

-------- My-Solution --------

select *
from Sales.Customers
where score is null

/*
Video: Course 18 – SQL NULL Functions
Topic: IS NULL / IS NOT NULL
Timestamp: 46:10
----------------------------------------
-------------- SQL TASK --------------
List all customers who have scores.
----------------------------------------
*/

-------- My-Solution --------

select *
from Sales.Customers
where score is not null
