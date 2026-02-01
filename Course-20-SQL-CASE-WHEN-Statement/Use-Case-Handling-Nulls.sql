/*
Video: Course 20 – SQL CASE WHEN Statement
Topic: Handling NULLs
Timestamp: 26:13
----------------------------------------
-------------- SQL TASK --------------
Find the average scores of customers
and treat NULLs as 0.

Additionally, provide details such as:
- CustomerID
- LastName
----------------------------------------
*/

-------- My-Solution --------

select CustomerID,LastName,Score,
case	
	when Score is null then 0
	else Score
end clean_score,
avg(case	
	when Score is null then 0
	else Score
end ) over()avg_customer
from Sales.Customers

/*select CustomerID,
       LastName,
       avg(isnull(Score,0)) over()avg_customer
from Sales.Customers
*/
