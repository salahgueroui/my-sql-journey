/*
Video: Course 24 – SQL Ranking Window Functions
Topic: CUME_DIST()
Timestamp: 59:05
----------------------------------------
-------------- SQL TASK --------------
Find the products that fall within
the highest 40% of prices
----------------------------------------
*/

-------- My-Solution --------

select *,CONCAT(pr*100,'%') as pr_percentage
from
(
select Product,Price,
cume_dist() over(order by price desc) as pr
from sales.Products
)t
where pr <= 0.4
