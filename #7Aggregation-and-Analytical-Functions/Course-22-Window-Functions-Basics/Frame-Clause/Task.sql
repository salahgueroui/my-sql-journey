/*
Video: Course 22 – SQL Window Functions Basics
Topic: ROWS BETWEEN (Window Frame)
----------------------------------------
-------------- SQL TASK --------------

For each order:

- Show OrderID
- Show OrderDate
- Show OrderStatus
- Show Sales

Calculate the running total of sales
for each OrderStatus,

ordered by OrderDate,

using a window frame:
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING

----------------------------------------
*/

-------- My-Solution --------

select OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    sum (Sales) over (partition by orderstatus order by orderdate 
    rows between current row and 2 following) Tsales
from Sales.Orders