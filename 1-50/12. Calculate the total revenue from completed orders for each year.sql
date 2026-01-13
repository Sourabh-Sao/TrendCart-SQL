-- Calculate the total revenue (quantity × unit_price) from completed orders for each year (2022, 2023, 2024, 2025).
-- Show year and total_revenue (rounded to 2 decimals). Sort by year.

select YEAR(order_date)as year,sum(quantity*unit_price) as total_revenue
from orders
join order_items
USING(order_id)
where status='Completed'
GROUP BY year
order by year;
