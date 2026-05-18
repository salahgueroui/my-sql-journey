/*
Video: SQL CTE (Common Table Expression)
Topic: Recursive CTE
----------------------------------------
-------------- SQL TASK --------------
Generate a series of numbers from 1 to 20 using a recursive CTE.
----------------------------------------
*/

-------- My-Solution --------

with number as (select 1 as num
			    union all
				select num+1
				from number
				where num < 20)
select *
from number