/*
Video: Course 20 – SQL CASE WHEN Statement
Topic: Conditional Aggregation
Timestamp: 30:00
----------------------------------------
-------------- SQL TASK --------------
Count how many times each customer
has made an order with sales greater than 30.
----------------------------------------
*/

-------- My-Solution --------

select 
CustomerID,sum(case
	when Sales>30 then 1
	else 0
end )total_order
from Sales.Orders
group by customerID
order by CustomerID