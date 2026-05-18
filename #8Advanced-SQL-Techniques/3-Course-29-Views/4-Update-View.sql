-- CREATE OR ALTER VIEW: updates an existing view 
-- or creates it if it doesn't exist.
CREATE OR ALTER VIEW Sales.V_Monthly_Summary AS
(
SELECT 
        MONTH(OrderDate) AS month,
        SUM(Sales) AS sales,
        count(OrderID) totalorders,
        sum(Quantity) totalquantities
    FROM sales.Orders
    GROUP BY MONTH(OrderDate)
)
