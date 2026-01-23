
select *
from employees
where month(hire_date)=month(DATE_SUB((CURRENT_DATE),INTERVAL 1 MONTH))
and YEAR(hire_date)=YEAR(CURRENT_DATE)

--or

SELECT *
FROM employees
WHERE hire_date >= LAST_DAY(CURRENT_DATE() - INTERVAL 2 MONTH) + INTERVAL 1 DAY
  AND hire_date <= LAST_DAY(CURRENT_DATE() - INTERVAL 1 MONTH);
