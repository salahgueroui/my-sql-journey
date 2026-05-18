-- =============================================
-- CTAS Use Cases
-- =============================================

-- #1 Use Case: Optimize Performance
--    > Store the result of a heavy query in a physical table to avoid
--    > recalculating it every time, improving read performance.

-- #2 Use Case: Creating a Snapshot
--    > Capture the current state of data at a specific point in time
--    > for auditing, comparison, or historical tracking purposes.

-- #3 Use Case: Physical Data Marts in DWH
--    > Build physical data marts in a Data Warehouse by materializing
--    > aggregated or filtered data into dedicated tables for reporting.

-- =============================================
-- How to Refresh CTAS?
-- =============================================
-- Since CTAS creates a static physical table, it does NOT auto-update.
-- To refresh the data, you need to:
--    1. DROP the existing table
--    2. Re-run the CTAS query
--
-- Example:
-- IF OBJECT_ID('Sales.MonthlyOrders','U') IS NOT NULL
--     DROP TABLE Sales.MonthlyOrders
-- GO
-- SELECT DATENAME(MONTH, OrderDate) ordermonth,
--        COUNT(OrderDate) totalorders
-- INTO Sales.MonthlyOrders
-- FROM Sales.Orders
-- GROUP BY DATENAME(MONTH, OrderDate)
