/*
Video: Course 16 – SQL Date & Time Functions (FORMAT / CONVERT)
Timestamp: —
----------------------------------------
-------------- SQL TASK --------------
Convert CreationTime to DATE only
----------------------------------------
*/

-------- My-Solution --------

select CreationTime,
convert(date,creationtime)
from sales.Orders