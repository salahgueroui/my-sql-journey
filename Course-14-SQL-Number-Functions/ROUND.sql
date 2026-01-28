/*
Video: Course 14 – SQL Number Functions
Timestamp: 02:55
----------------------------------------
-------------- SQL TASK --------------
Round the number 3.516 to:
- 2 decimal places
- 1 decimal place
- 0 decimal places
----------------------------------------
*/

-------- My-Solution --------

select
3.516 num,
ROUND(3.516,2) round_2,
ROUND(3.516,1) round_1,
ROUND(3.516,0) round_0