/*
Video: Course 17 – SQL Date & Time Functions
Timestamp: —
----------------------------------------
-------------- SQL TASK --------------
Use DATEADD on OrderDate to calculate:

- Date 10 days before the order date
- Date 3 months after the order date
- Date 2 years after the order date

----------------------------------------
*/

-------- My-Solution --------

select DATEADD(day,-10,OrderDate) tendaysbefor,
       DATEADD(month,+3,OrderDate) threemonthsafter,
       DATEADD(year,+2,OrderDate) twoyearsafter
from sales.orders