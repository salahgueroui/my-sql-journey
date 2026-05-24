--SQL Hints
--Instructions added to a query to force SQL Server to execute it in a specific way, usually to improve performance.

select o.sales,
	   c.country
from sales.orders o
left join sales.customers c
on o.customerid=c.customerid
option (hash join)--Forces SQL Server to use a hash join for the join operation, which can be more efficient for large datasets.


select o.sales,
	   c.country
from sales.orders o 
left join sales.customers c with(forceseek)--Forces SQL Server to use an index seek operation on the customers table, which can be more efficient than a scan if the index is well-designed.
on o.customerid=c.customerid

select o.sales,
	   c.country
from sales.orders o 
left join sales.customers c with(index([PK_customers]))--Forces SQL Server to use the specified index (PK_customers) for the join operation, which can improve performance if that index is appropriate for the query.
on o.customerid=c.customerid

--Tips | SQL Hints
--1-Test SQL hints in all environments (DEV, TEST, PROD), because performance can vary between systems.
--2-SQL hints are temporary workarounds, not permanent solutions.
  --You still need to identify the root cause and fix it properly.