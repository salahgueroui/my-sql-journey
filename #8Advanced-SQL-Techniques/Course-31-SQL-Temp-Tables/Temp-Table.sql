--step 1: load data into temp table
select *
into #tempOrders --create a temp table called tempOrders
from sales.orders

--step 2: transform data in temp table
delete from #tempOrders
where orderstatus = 'delivered'

--step 3: load data into permanent table
select *
into sales.deliveredOrders
from #tempOrders

