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

-------------------------------------------------------------
/*
Video: Course 4 – timestamp 48:11
----------------------------------------
-----SQL-TASK-----
Retrieve the lowest 2 customers based on the score.
*/

------My-solution-----

SELECT top 2 *
FROM customers
order by score

---------------------------------------------------------------
/*
Video: Course 4 – timestamp 48:37
----------------------------------------
-----SQL-TASK-----
Get the two most recent orders.
*/

------My-solution-----

SELECt top 2 *
FROM orders
order by order_date desc

