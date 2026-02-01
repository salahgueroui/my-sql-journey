/*
Video: Course 18 – SQL NULL Functions
Topic: COALESCE / ISNULL / NULL Handling
Timestamp: 19:54
----------------------------------------
-------------- SQL TASK --------------
Display the full name of customers in a single field
by merging their first and last names,
and add 10 bonus points to each customer's score.
----------------------------------------
*/

-------- My-Solution --------

select *,(isnull(FirstName,'')+' '+isnull(LastName,'')) as fullname
,isnull((score+10),10)newscore
from Sales.Customers