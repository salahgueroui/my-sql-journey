/*
Video: Course 25 – SQL Value Window Functions
Topic: LEAD() & LAG()
Timestamp: 21:25
----------------------------------------
-------------- SQL TASK --------------
Analyze customer loyalty by ranking customers
based on the average number of days between orders.
----------------------------------------
*/

-------- My-Solution --------


select CustomerID,abs(avg(difday)) avgday,
rank() over(order by coalesce(abs(avg(difday)),5555)) loyalty_rank
from
(
SELECT CustomerID,OrderDate,
LAG(OrderDate) OVER (PARTITION BY CUSTOMERID ORDER BY CUSTOMERID) AS last_date,
DATEDIFF(day,OrderDate,LAG(OrderDate) OVER (PARTITION BY CUSTOMERID ORDER BY CUSTOMERID)) difday

FROM Sales.Orders
)t
group by CustomerID