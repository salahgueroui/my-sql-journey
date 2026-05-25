ALTER PROCEDURE GetCustomerSummary
    @country NVARCHAR(50) = 'usa'
AS
BEGIN
begin try
    DECLARE @TotalCustomers INT, @AvgScore FLOAT;
 if exists(select 1 from sales.Customers where score is null and Country=@country)
 begin
 print ('Updating Null Scores To 0')
 update sales.Customers
 set score=0
 where score is null and Country=@country;
 end 
 else
 begin
 print('No Null Scores Found')
 end;
    SELECT
        @TotalCustomers = COUNT(*),
        @AvgScore = AVG(Score)
    FROM Sales.Customers
    WHERE Country = @country;

    PRINT 'The total customers from ' + @country + ': ' + CAST(@TotalCustomers AS NVARCHAR);
    PRINT 'The average score from ' + @country + ': ' + CAST(@AvgScore AS NVARCHAR);

    SELECT c.Country,
           COUNT(o.OrderID) AS TotalOrders,
           SUM(o.Sales) AS TotalSales,
           1/0
    FROM Sales.Orders o
    JOIN Sales.Customers c
        ON o.CustomerID = c.CustomerID
    WHERE c.Country = @country
    GROUP BY c.Country;
end try
BEGIN CATCH
    PRINT('An error occured.');
    PRINT('Error Message: ' + ERROR_MESSAGE());
    PRINT('Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR));
    PRINT('Error Line: ' + CAST(ERROR_LINE() AS NVARCHAR));
    PRINT('Error Procedure: ' + ERROR_PROCEDURE());
END CATCH
END;
GO
--- Execute the stored procedure to see the results
EXEC GetCustomerSummary @country = 'germany';