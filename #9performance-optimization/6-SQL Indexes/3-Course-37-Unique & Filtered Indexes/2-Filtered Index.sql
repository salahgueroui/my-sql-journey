create nonclustered index idx_customers_country
on sales.customers(country)
where country='usa'

--you cannot create a filtered index on a clustered index
--you cannot create a filtered index on a columnstore index