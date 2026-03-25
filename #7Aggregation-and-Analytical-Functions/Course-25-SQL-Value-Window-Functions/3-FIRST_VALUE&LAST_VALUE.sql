/*
Video: Course 25 – SQL Value Window Functions
Topic: FIRST_VALUE() & LAST_VALUE()
Timestamp: 35:13
----------------------------------------
-------------- SQL TASK --------------
Find the lowest and highest sales for each product.
----------------------------------------
*/

-------- My-Solution --------
# using first value and last value

select productid,sales, 
FIRST_VALUE(Sales) over(partition by productid order by sales ) lowest_sales ,
last_VALUE(sales) over(partition by productid order by sales rows between current row and UNBOUNDED FOLLOWING) highest_sales
from Sales.Orders
order by ProductID

# using min and max

select ProductID,Sales,
max(sales) over(partition by productid) highet_sales,
min(sales) over(partition by productid) low_sales
from sales.Orders
order by ProductID