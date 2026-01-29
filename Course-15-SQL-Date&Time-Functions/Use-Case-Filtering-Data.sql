/*
Video: Course 15 – SQL Date & Time Functions
----------------------------------------
-------------- SQL TASK --------------
Show all orders that were placed during
the month of February
----------------------------------------
*/

-------- My-Solution --------

select *
from sales.Orders
where MONTH(OrderDate)=2