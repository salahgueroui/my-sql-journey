create PROCEDURE GetCustomerSummary @country nvarchar(50)='usa'--default value for the parameter
AS
BEGIN
    SELECT
        country,
        COUNT(*) AS TotalCustomers,
        AVG(Score) AS AvgScore
    FROM Sales.Customers
    WHERE Country = @country
    group by country
END;

--execute the stored procedure to see the results
exec GetCustomerSummary 'germany'--passing a different value for the parameter

exec GetCustomerSummary--using the default value for the parameter
