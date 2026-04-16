/*
Video: SQL CTE (Common Table Expression)
Topic: Nested CTEs
----------------------------------------
-------------- SQL TASK --------------
Rank customers based on their total sales.
----------------------------------------
*/

-------- My-Solution --------

with seles_per_customer as
(
select CustomerID,sum(Sales) as total_sales_per_customer 
from Sales.Orders
group by CustomerID
)
,rank_customer as 
(select rank() over(order by total_sales_per_customer desc) rank_,* 
from seles_per_customer )
 
select * from rank_customer

-- segment customers based on their total sales

with seles_per_customer as
(
select CustomerID,sum(Sales) as total_sales_per_customer 
from Sales.Orders
group by CustomerID
)
,segment_customer as 
(select *, case when total_sales_per_customer > 100 then 'high' 
            when total_sales_per_customer > 50 then 'medium' 
            else 'low' end as segment 
from seles_per_customer )

select * from segment_customer


 

