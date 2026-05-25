alter PROCEDURE GetCustomerSummary @country nvarchar(50)='usa'
AS
BEGIN
    SELECT
        country,
        COUNT(*) AS TotalCustomers,
        AVG(Score) AS AvgScore
    FROM Sales.Customers
    WHERE Country = @country
    group by country;
select c.country,
       count(orderid) TotalOrders,
       sum(sales) TotalSales
from sales.orders o
join sales.Customers c
on o.CustomerID=c.CustomerID
where c.Country=@country
group by c.Country
END;

--execute the stored procedure to see the results
exec GetCustomerSummary 'germany'--passing a different value for the parameter
exec GetCustomerSummary--using the default value for the parameter