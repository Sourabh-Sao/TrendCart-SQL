-- Calculate the total spend for each customer from completed orders only. Show: full name, number of completed orders , 
-- total_spend ,rank (using dense_rank) ,Only include customers with at least 2 completed orders. Show top 10 by total_spend descending.

select CONCAT(first_name," ",last_name) as Full_Name,
COUNT(order_id) as Completed_Orders_Count,
SUM(total_amount) as Total_spend,
DENSE_RANK() OVER(ORDER BY COUNT(order_id) desc,SUM(total_amount)desc) D_Rank
from customers
join orders
USING(customer_id)
where status='Completed'
GROUP BY Full_Name
HAVING COUNT(order_id)>=2
limit 10;
