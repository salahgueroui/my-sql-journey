/*
Video: Course 18 – SQL NULL Functions
Topic: NULLIF (Division by Zero)
Timestamp: 41:04
----------------------------------------
-------------- SQL TASK --------------
Find the sales price for each order
by dividing the sales by the quantity.
----------------------------------------
*/

-------- My-Solution --------

select Sales,Quantity,
(sales/nullif(Quantity,0)) as sales_price
from Sales.Orders