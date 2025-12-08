/*
Video: Course 6 – timestamp 14:59
----------------------------------------
-------------- SQL TASK --------------
Change the score of customer with ID 6 to 0.
----------------------------------------
*/

-------- My-Solution --------

UPDATE customers
SET SCORE = 0
WHERE id=6

--------------------------------------------
/*
Video: Course 6 – timestamp 17:27
----------------------------------------
-------------- SQL TASK --------------
Change the score of customer with ID 10 to 0
and update the country to 'UK'
----------------------------------------
*/

-------- My-Solution --------

UPDATE customers
SET SCORE = 0,
	country='uk'
WHERE id=10

-------------------------------------------
/*
Video: Course 6 – timestamp 18:25
----------------------------------------
-------------- SQL TASK --------------
Update all customers with a NULL score
by setting their score to 0
----------------------------------------
*/

-------- My-Solution --------


