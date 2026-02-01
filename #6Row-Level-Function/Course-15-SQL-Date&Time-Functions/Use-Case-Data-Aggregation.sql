/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
How many orders were placed each year?

*/

-------- My-Solution --------

select year(orderdate)as year,
       count(*)
from Sales.Orders
group by year(orderdate)

/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
How many orders were placed each month?
----------------------------------------
*/

-------- My-Solution --------

select month(orderdate)as month,
       count(*)
from Sales.Orders
group by month(orderdate)