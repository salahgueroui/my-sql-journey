create PROCEDURE GetCustomerSummary
    @country NVARCHAR(50) = 'usa'
AS
BEGIN
    DECLARE @TotalCustomers INT, @AvgScore FLOAT;

    SELECT
        @TotalCustomers = COUNT(*),
        @AvgScore = AVG(Score)
    FROM Sales.Customers
    WHERE Country = @country;

    PRINT 'The total customers from ' + @country + ': ' + CAST(@TotalCustomers AS NVARCHAR);
    PRINT 'The average score from ' + @country + ': ' + CAST(@AvgScore AS NVARCHAR);

    SELECT c.Country,
           COUNT(o.OrderID) AS TotalOrders,
           SUM(o.Sales) AS TotalSales
    FROM Sales.Orders o
    JOIN Sales.Customers c
        ON o.CustomerID = c.CustomerID
    WHERE c.Country = @country
    GROUP BY c.Country;
END;
GO
-- Execute the stored procedure to see the results
EXEC GetCustomerSummary @country = 'germany';
EXEC GetCustomerSummary; -- using the default value for the parameter