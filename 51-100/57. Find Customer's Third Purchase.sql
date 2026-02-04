with cte as (
select customer_id,first_name,order_date,ROW_NUMBER() OVER(PARTITION BY customer_id,first_name order by order_date) as rno
from customers
join orders
USING(customer_id)
)select customer_id,first_name
from cte
where rno=3
