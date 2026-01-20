
select MONTH(order_date),SUM(total_amount)
from orders
where YEAR(order_date)=YEAR(CURRENT_DATE())
GROUP BY 1
order by 2 DESC
limit 1;
