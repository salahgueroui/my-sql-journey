/*
Video: Course 18 – SQL NULL Functions
Topic: LEFT / RIGHT Anti Join
Timestamp: 49:07
----------------------------------------
-------------- SQL TASK --------------
List all details for customers who have not placed any orders.
----------------------------------------
*/

-------- My-Solution --------

select c.CustomerID,c.FirstName,c.LastName,c.Country,c.Score
from Sales.Customers c
left join Sales.Orders o
on c.CustomerID=o.CustomerID
where OrderID is null