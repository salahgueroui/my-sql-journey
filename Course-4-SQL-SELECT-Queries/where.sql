/*
Video: Course 4 – timestamp 12:20
----------------------------------------
-----SQL-TASK-01-----
Retrieve customers with a score not equal to 0.
*/

------My-solution-----

select *
from customers
where score != 0

-------------------------------------------------------------
/*
Video: Course 4 – timestamp 14:04
----------------------------------------
-----SQL-TASK-02-----
Retrieve customers from Germany.
*/

------My-solution-----

select *
from customers
where country = 'Germany'
