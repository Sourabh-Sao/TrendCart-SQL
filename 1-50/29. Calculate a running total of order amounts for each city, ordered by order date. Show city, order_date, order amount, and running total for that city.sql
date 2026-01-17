select shipping_city as city,
order_date,
total_amount,
SUM(total_amount) OVER(PARTITION BY shipping_city ORDER BY order_date,order_id) cumulative_sum
from orders;
