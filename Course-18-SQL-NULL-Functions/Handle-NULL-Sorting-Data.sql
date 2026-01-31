/*
Video: Course 18 – SQL NULL Functions
Topic: COALESCE / ISNULL / NULL Handling
Timestamp: 32:40
----------------------------------------
-------------- SQL TASK --------------
Sort the customers from lowest to highest scores,
with NULL values appearing last.
----------------------------------------
*/

-------- My-Solution --------

select *
from Sales.Customers
order by case when Score is null then 1 else 0 end,Score