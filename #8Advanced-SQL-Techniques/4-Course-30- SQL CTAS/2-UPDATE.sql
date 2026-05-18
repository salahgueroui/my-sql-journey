--update table
if object_id('Sales.MonthlyOrders','U') is not null
    drop table Sales.MonthlyOrders
go    

select DATENAME(MONTH,OrderDate) ordermonth,
	   count(OrderDate) totalorders
into Sales.MonthlyOrders
from Sales.Orders
group by DATENAME(MONTH,OrderDate)