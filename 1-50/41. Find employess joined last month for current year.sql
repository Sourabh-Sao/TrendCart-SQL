
select *
from employees
where month(hire_date)=month(DATE_SUB((CURRENT_DATE),INTERVAL 1 MONTH))
and YEAR(hire_date)=YEAR(CURRENT_DATE)
