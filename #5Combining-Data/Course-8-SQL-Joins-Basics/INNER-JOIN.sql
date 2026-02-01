/*
Video: Course 8 - timestamp 13:22
----------------------------------------
-------------- SQL TASK --------------
Get all customers along with their orders, but only for customers who have placed an order
----------------------------------------
*/

-------- My-Solution --------
SELECT *
FROM customers c
INNER JOIN orders O
ON c.id = o.customer_id
