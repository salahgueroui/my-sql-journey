/*
Video: Course 6 – timestamp 10:11
----------------------------------------
------------- SQL-TASK ---------------
Copy data from 'customers' table into 'persons'
*/

--------- My-solution ---------

INSERT INTO persons (id,person_name,birth_date,phone)
SELECT
	id,
	first_name,
	 NULL,
	'Unknown'
FROM customers

