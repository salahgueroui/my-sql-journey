/*
Video: Course 4 – timestamp 38:14
---------------------------------------------
-----SQL-TASK-----
Find the average score for each country considering only customers with a score not equal to 0,
and return only those countries with an average score greater than 430.
*/

------My-solution-------
select country,
	   avg(score)as avg_score
from customers
where score != 0
group by country
having AVG(score)>430

