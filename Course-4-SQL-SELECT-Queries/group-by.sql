/*
Video: Course 4 – timestamp 28:20
----------------------------------------
-----SQL-TASK-----
Find the total score for each country.
*/

------My-solution-----

select country,sum(score)as total_score
from customers
group by country
order by total_score DESC

--------------------------------------------------------

