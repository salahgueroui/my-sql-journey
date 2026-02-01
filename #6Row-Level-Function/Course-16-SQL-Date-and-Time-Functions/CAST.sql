/*
Video: Course 16 – SQL Date & Time Functions CAST
Timestamp: —
----------------------------------------
-------------- SQL TASK --------------
Convert CreationTime to DATE using CAST
(remove the time part)
----------------------------------------
*/

-------- My-Solution -------------

select CreationTime,
cast(creationtime as date)
from sales.Orders