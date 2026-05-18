/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 43:25
----------------------------------------
-------------- SQL TASK --------------
Show the details of orders made by customers in Germany.
----------------------------------------
*/

-------- My-Solution --------

select *
from sales.Orders
where CustomerID in (select CustomerID 
                    from Sales.Customers 
                    where Country ='Germany')


/*
Video: Course 27 – SQL Subquery (Visually Explained)
Topic: Subqueries
Timestamp: 47:31
----------------------------------------
-------------- SQL TASK --------------
Show the details of orders for customers who are not from Germany.
----------------------------------------
*/

-------- My-Solution --------

select *
from sales.Orders
where CustomerID not in (select CustomerID 
                        from Sales.Customers 
                        where Country ='Germany')