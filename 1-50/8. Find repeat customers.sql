--* Question 8: Find repeat customers (customers with >1 order) and their second order date.

with cte as (
    select first_name,order_date,
    ROW_NUMBER() OVER(PARTITION BY first_name order by order_date ) as rno
    from customers
    join orders
    USING(customer_id)
)select first_name as Customer_Name,
order_date as Second_order_date
from cte 
where rno=2;
