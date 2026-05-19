--Rowstore Index
--nonclustered index
create nonclustered rowstore index idx_Rowstore_CustomerID 
on sales.DBCustomers (CustomerID)
--nonclustered and rowstore is default
create index idx_Rowstore_CustomerID 
on sales.DBCustomers (CustomerID)

--clustered index
create clustered rowstore index idx_Rowstore_CustomerID 
on sales.DBCustomers (CustomerID)



--Columnstore Index
--nonclustered columnstore index
create nonclustered columnstore index idx_Columnstore_CS_FirstName 
on sales.DBCustomers (FirstName)
--clustered columnstore index
create clustered columnstore index idx_Columnstore_CS
on sales.DBCustomers
--you can't specify column names in columnstore index
--multiple columnstore index is not allowed in a table in sql server


