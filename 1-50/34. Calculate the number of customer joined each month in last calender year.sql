
-- this is hardcoded
SELECT MONTH(join_date)as month,count(*) as hires
from customers
where YEAR(join_date)=2025
GROUP BY 1
order by 1;

-- Dynamic Version
SELECT MONTH(join_date) as month,count(*) as hires
from customers
where YEAR(join_date)=YEAR(CURRENT_DATE())-1
GROUP BY 1
order by 1;
