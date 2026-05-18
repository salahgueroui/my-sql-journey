--create index on sales.DBCustomers table on CustomerID column
create clustered index idx_DBCustomers_CustomerID 
on sales.DBCustomers (CustomerID)


select * from sales.DBCustomers
where lastname = 'brown'
--create nonclustered index on sales.DBCustomers table on LastName column
create nonclustered index idx_DBCustomers_LastName 
on sales.DBCustomers (LastName)


select * from sales.DBCustomers
where lastname = 'anna'
--create nonclustered index on sales.DBCustomers table on FirstName column
create index idx_DBCustomers_FirstName 
on sales.DBCustomers (FirstName)




