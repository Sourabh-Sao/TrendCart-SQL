
select payment_method,COUNT(*) as total_ordr,
COUNT(CASE WHEN status='Completed' THEN  1 END) as completed_ordr,
COUNT(CASE WHEN status='Cancelled' THEN  1 END) as cancelled_ordr,
ROUND((COUNT(
    CASE 
        WHEN status='Cancelled' THEN  1 END
)*100)/COUNT(*),2) as cancellation_rate
from orders
GROUP BY 1
order by cancellation_rate desc
