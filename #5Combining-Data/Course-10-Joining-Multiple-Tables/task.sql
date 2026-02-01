/*
Video: Course 10 – Joining Multiple Tables in SQL
Timestamp: 04:53
----------------------------------------
-------------- SQL TASK --------------
Using SalesDB, retrieve a list of all orders,
along with the related customer, product,
and employee details.

For each order, display:
- Order ID
- Customer's name
- Product name
- Sales amount
- Product price
- Salesperson's name
----------------------------------------
*/

-------- My-Solution --------

select o.OrderID,o.Sales,c.FirstName as cus_first_name,c.LastName as cus_last_name,p.Product as product_name,p.Price,e.FirstName as emp_first_name,e.LastName as emp_last_name
from sales.Orders o
left join Sales.Customers c on o.CustomerID=c.CustomerID
left join Sales.Products p on o.ProductID=p.ProductID
left join Sales.Employees e on o.SalesPersonID=e.EmployeeID
