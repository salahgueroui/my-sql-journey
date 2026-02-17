/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 23:19
----------------------------------------
-------------- SQL TASK --------------
Find the total sales for each product,
additionally provide details such as order_id & order_date.
----------------------------------------
*/

-------- My-Solution --------

select
    orderID,
    orderdate,
    ProductID,
    sum(sales) over(partition by productid) totalsales 
from Sales.Orders