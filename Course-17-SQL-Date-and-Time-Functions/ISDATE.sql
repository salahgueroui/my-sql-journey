/*
Video: Course 17 – SQL Date & Time Functions
Topic: ISDATE
Timestamp: 21:53
----------------------------------------
-------------- SQL TASK --------------
Validate order dates using ISDATE.

For each record:
- Check whether OrderDate is a valid date
- If the date is valid, convert it to DATE
- If the date is not valid, return NULL

----------------------------------------
*/

-------- My-Solution --------

select
orderdate,
isdate(orderdate),
case when isdate(orderdate)=1 then cast(orderdate as date)
end neworderdate
from
(select '2025-08-20' as orderdate union
 select	'2025-08-21' union
 select '2025-08-22' union
 select	'2025-08'
)t
