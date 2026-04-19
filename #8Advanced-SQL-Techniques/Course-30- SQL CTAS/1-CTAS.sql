--create table as select
--create a new table called monthlyorders 
--with total orders per month
--using CTAS
select DATENAME(MONTH,OrderDate) ordermonth,
	   count(OrderDate) totalorders
into Sales.MonthlyOrders
from Sales.Orders
group by DATENAME(MONTH,OrderDate)
