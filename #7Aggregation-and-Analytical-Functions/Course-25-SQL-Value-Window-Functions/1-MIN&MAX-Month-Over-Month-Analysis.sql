/*
Video: Course 25 – SQL Value Window Functions
Topic: Month-over-Month (MoM) Analysis
Timestamp: 14:15
----------------------------------------
-------------- SQL TASK --------------
Analyze the month-over-month (MoM) performance
by finding the percentage change in sales
between the current and previous month
----------------------------------------
*/

-------- My-Solution --------

SELECT *,
       CurrentMonthSales - PreviousMonthSales AS MoM_Change,
       CASE
           WHEN PreviousMonthSales IS NOT NULL THEN
               CAST(
                   ROUND(
                       CAST(CurrentMonthSales - PreviousMonthSales AS FLOAT)
                       / PreviousMonthSales * 100, 1
                   ) AS VARCHAR(20)
               ) + '%'
           ELSE NULL
       END AS MoM_Perc
FROM (
    SELECT
        MONTH(OrderDate) AS OrderMonth,
        SUM(Sales) AS CurrentMonthSales,
        LAG(SUM(Sales)) OVER (ORDER BY MONTH(OrderDate)) AS PreviousMonthSales
    FROM Sales.Orders
    GROUP BY MONTH(OrderDate)
) t;