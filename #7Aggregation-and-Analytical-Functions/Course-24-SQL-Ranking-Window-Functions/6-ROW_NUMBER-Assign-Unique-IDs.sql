/*
Video: Course 24 – SQL Ranking Window Functions
Topic: ROW_NUMBER() – Assign Unique IDs
Timestamp: 28:00
----------------------------------------
-------------- SQL TASK --------------
Assign a unique ID to the rows in OrdersArchive table
----------------------------------------
*/

-------- My-Solution --------

select ROW_NUMBER() over(order by orderid,orderdate)as id,*
from Sales.OrdersArchive

