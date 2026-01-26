select first_name,join_date,DATE(order_date)
from customers c
join orders 
USING(customer_id)
WHERE order_date BETWEEN 
DATE_ADD(join_date, INTERVAL 1 MONTH) 
AND 
DATE_ADD(join_date, INTERVAL 2 MONTH)
