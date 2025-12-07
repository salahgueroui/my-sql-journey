/*
Video: Course 5 – timestamp 0:53
----------------------------------------
-----SQL-TASK-----
Create a new table called persons with columns:
id, person_name, birth_date, and phone.
*/

------My-solution-----

create table persons (
	id int not null,
	person_name varchar(50) not null,
	birth_date date,
	phone varchar(15) not null,
	constraint pk_persons primary key(id)
)
