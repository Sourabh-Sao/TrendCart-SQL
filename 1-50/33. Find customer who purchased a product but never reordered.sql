
select customer_id,first_name
from customers c
join orders o
USING(customer_id)
where status='Completed'
GROUP BY 1,2 
HAVING COUNT(order_id)=1;
