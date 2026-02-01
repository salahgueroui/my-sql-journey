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

-------- My-Solution ------------


select 'orders'as sourcetable,* from Sales.Orders
union
select 'OrdersArchive' as sourcetable,* from Sales.OrdersArchive
order by OrderID