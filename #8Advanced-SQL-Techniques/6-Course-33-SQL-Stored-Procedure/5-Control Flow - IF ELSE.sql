ALTER PROCEDURE GetCustomerSummary
    @country NVARCHAR(50) = 'usa'
AS
BEGIN
    DECLARE @TotalCustomers INT, @AvgScore FLOAT;
    --prepare the data by checking for null scores and updating them to 0 if found
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
  --calculate the total customers and average score for the specified country
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
--- Execute the stored procedure to see the results
EXEC GetCustomerSummary @country = 'germany';
EXEC GetCustomerSummary; -- using the default value for the parameter