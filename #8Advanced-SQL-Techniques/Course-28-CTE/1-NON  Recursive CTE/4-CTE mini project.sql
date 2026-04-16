--step 1 find the total sales per customer
with cte_total_sales 
as(select CustomerID,sum(Sales) total_sales
   from Sales.Orders
   group by CustomerID)
--step 2 Find thr last order date for each customer.
,cte_last_order
as(select customerid,max(OrderDate) last_order
   from Sales.Orders
   group by CustomerID)
--step 3 Rank customers based on their total sales.
,cte_rank_customer
as(select customerid,RANK() over(order by total_sales desc) rank_customer
   from cte_total_sales)
-- segment customers based on their total sales
,cte_segment_customer
as(select CustomerID,case
					 when total_sales>100 then 'hight'
					 when total_sales>80 then 'medium'
					 else 'low' end as segment
   from cte_total_sales)
--main
select c.CustomerID,
	   firstname,
	   lastname,
	   cts.total_sales,
	   clo.last_order,
	   crc.rank_customer,
	   csc.segment
from Sales.Customers c
left join cte_total_sales cts
on cts.CustomerID=c.CustomerID
left join cte_last_order clo
on clo.CustomerID = c.CustomerID
left join cte_rank_customer crc
on crc.CustomerID=c.CustomerID
left join cte_segment_customer csc
on csc.CustomerID=c.CustomerID