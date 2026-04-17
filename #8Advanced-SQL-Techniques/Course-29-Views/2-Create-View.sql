-- CREATE VIEW: creates a virtual table based on a query,
-- so you can reuse it  like a regular table.
create view Sales.V_Monthly_Summary as
(
SELECT 
        MONTH(OrderDate) AS month,
        SUM(Sales) AS sales,
        count(OrderID) totalorders,
        sum(Quantity) totalquantities
    FROM sales.Orders
    GROUP BY MONTH(OrderDate)
)