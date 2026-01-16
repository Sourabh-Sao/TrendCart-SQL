

with cte as (
	select *,
    row_number() over(order by num) as seq,
	(num-row_number() over(order by num)) as diff
    from number
)select diff,count(diff) as length
from cte
group by diff
order by 2 desc
limit 1; 
