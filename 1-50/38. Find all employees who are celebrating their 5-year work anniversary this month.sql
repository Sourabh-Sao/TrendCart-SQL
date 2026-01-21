select first_name
from employees
where MONTH(hire_date)=MONTH(CURRENT_DATE()) and 
(YEAR(CURRENT_DATE())-YEAR(hire_date))=5
