/*
Video: Course 4 – timestamp 46:27
----------------------------------------
-----SQL-TASK-----
Retrieve only 3 customers.
*/

------My-solution-----

SELECT top 3 *
FROM customers

------------------------------------------------------
/*
Video: Course 4 – timestamp 47:08
----------------------------------------
-----SQL-TASK-----
Retrieve the top 3 customers with the highest scores.
*/

------My-solution-----

SELECT top 3 *
FROM customers
order by score desc

