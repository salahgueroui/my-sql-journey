/*
Video: Course 13 – SQL String Functions
Timestamp: 12:40
----------------------------------------
-------------- SQL TASK --------------
Remove dashes (-) from phone number
----------------------------------------
*/

-------- My-Solution --------

select
'123-456-7890' as phone , 
REPLACE('123-456-7890','-','') as clean_phone

/*
Video: Course 13 – SQL String Functions
Timestamp: 13:50
----------------------------------------
-------------- SQL TASK --------------
Replace file extension from txt to csv
----------------------------------------
*/

-------- My-Solution --------

select
'text.txt' as file_name, 
REPLACE('text.txt','txt','csv') as new_file_name