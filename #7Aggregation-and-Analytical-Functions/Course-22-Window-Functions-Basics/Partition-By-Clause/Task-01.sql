/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 21:59
----------------------------------------
-------------- SQL TASK --------------
Find the total sales across all orders,
additionally provide details such as order_id & order_date.
----------------------------------------
*/

-------- My-Solution --------


select
    orderID,
    orderdate,
    sum(sales) over() totalsales 
from Sales.Orders