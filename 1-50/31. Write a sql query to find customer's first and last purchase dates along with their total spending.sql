
select first_name,min(order_date) as first_purchase ,
MAX(order_date) as last_purchase,SUM(total_amount) as total_spending
from customers
join orders
USING(customer_id)
GROUP BY 1
HAVING COUNT(order_id)>1
order by total_spending DESC;
