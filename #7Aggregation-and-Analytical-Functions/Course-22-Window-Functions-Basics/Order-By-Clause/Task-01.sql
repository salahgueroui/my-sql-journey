/*
Video: Course 22 – SQL Window Functions Basics
Topic: ORDER BY (Window Ranking)
Timestamp: 30:45
----------------------------------------
-------------- SQL TASK --------------
Rank each order based on their sales
from highest to lowest.

Additionally provide:
- OrderID
- OrderDate
----------------------------------------
*/

-------- My-Solution --------


select
  OrderID,
  OrderDate,
  sales,
  RANK() over(order by sales desc) RankSlaes
from Sales.Orders