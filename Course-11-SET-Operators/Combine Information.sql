/*
Video: Course 11 – SQL SET Operators
Timestamp: 36:40
----------------------------------------
-------------- SQL TASK --------------
Orders are stored in separate tables
(Orders and OrdersArchive).

Combine all orders into one report
without duplicates
----------------------------------------
*/

-------- My-Solution --------


select * from Sales.Orders
union
select * from Sales.OrdersArchive