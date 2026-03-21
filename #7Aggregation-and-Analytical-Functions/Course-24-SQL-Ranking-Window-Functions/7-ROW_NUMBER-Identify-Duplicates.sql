/*
Video: Course 24 – SQL Ranking Window Functions
Topic: ROW_NUMBER() – Identify Duplicates
Timestamp: 30:29
----------------------------------------
-------------- SQL TASK --------------
Identify duplicate rows in the table 'Orders Archive'
and return a clean result without any duplicates
----------------------------------------
*/

-------- My-Solution --------
select *
from
(
select ROW_NUMBER() over(partition by orderid order by creationtime desc) rn,*
from Sales.OrdersArchive
)t
where rn=1  
