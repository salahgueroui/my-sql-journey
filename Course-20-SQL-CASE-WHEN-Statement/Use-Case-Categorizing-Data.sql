/*
Video: Course 20 – SQL CASE WHEN Statement
Topic: Categorizing Data
Timestamp: 11:34
----------------------------------------
-------------- SQL TASK --------------
Generate a report showing the total sales for each category:

- High: If the sales are higher than 50
- Medium: If the sales are between 20 and 50
- Low: If the sales are equal to or lower than 20

Sort the result from lowest to highest.
----------------------------------------
*/

-------- My-Solution --------


select category,sum(sales) as total_sales
from (select OrderID,Sales,
		case 
		when Sales > 50 then 'high'  
		when sales between 21 and 50 then 'medium'
    	else 'low'
	end category
	from Sales.Orders)t
group by category
order by sum(sales) desc