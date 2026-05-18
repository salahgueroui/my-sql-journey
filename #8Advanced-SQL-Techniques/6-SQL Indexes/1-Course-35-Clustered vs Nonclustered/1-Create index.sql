--create index on sales.DBCustomers table on CustomerID column
create clustered index idx_DBCustomers_CustomerID 
on sales.DBCustomers (CustomerID)
