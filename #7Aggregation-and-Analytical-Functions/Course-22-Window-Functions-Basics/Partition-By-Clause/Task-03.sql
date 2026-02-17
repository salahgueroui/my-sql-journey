/*
Video: Course 22 – SQL Window Functions Basics
Topic: PARTITION BY
Timestamp: 25:02
----------------------------------------
-------------- SQL TASK --------------
Find the total sales across all orders.
Find the total sales for each product.
Additionally provide details such as:
- OrderID
- OrderDate
- ProductID
----------------------------------------
*/

-------- My-Solution --------

select
    orderID,
    orderdate,
    productid,
    sum(sales) over() totalsales,
    sum(sales) over(partition by productid) total_sales_by_product
from Sales.Orders
