CREATE PROCEDURE GetCustomerSummary
AS
BEGIN
    SELECT
        COUNT(*) AS TotalCustomers,
        AVG(Score) AS AvgScore
    FROM Sales.Customers
    WHERE Country = 'USA';
END;
--execute the stored procedure to see the results
exec GetCustomerSummary