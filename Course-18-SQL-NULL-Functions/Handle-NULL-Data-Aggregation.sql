/*
Video: Course 18 – SQL NULL Functions
Topic: COALESCE / ISNULL / NULL Handling
Timestamp: 16:15
----------------------------------------
-------------- SQL TASK --------------
Find the average scores of the customers.
----------------------------------------
*/

-------- My-Solution --------

select avg(ISNULL(score,0) )as avg_score
from Sales.Customers