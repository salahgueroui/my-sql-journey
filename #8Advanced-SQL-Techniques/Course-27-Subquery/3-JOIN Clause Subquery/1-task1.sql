/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 30:25
----------------------------------------
-------------- SQL TASK --------------
Show all customer details and find the total orders for each customer.
----------------------------------------
*/

-------- My-Solution --------

SELECT c.*,COALESCE(TotalOrders,0) TotalOrders
FROM Sales.Customers c
LEFT JOIN (
    SELECT CustomerID,
           COUNT(*) AS TotalOrders
    FROM Sales.Orders
    GROUP BY CustomerID
) o
ON c.CustomerID = o.CustomerID;