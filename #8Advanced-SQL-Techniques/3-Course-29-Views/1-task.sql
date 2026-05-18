/*
Video: SQL Views (Visually Explained)
Timestamp: 20:24
----------------------------------------
-------------- SQL TASK --------------
Find the running total of sales for each month
----------------------------------------
*/

-------- My-Solution --

WITH spm AS (
    SELECT 
        MONTH(OrderDate) AS month,
        SUM(Sales) AS sales
    FROM sales.Orders
    GROUP BY MONTH(OrderDate)
),
mom as 
(SELECT 
    *,
    SUM(sales) OVER (ORDER BY month) AS running_total
FROM spm)

select * from mom

