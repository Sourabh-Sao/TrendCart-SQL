
SELECT DISTINCT e1.department as ConsecutiveDepartment
from employees e1
join employees e2
on e1.employee_id+1=e2.employee_id and e1.department=e2.department
join employees e3
on e2.employee_id+2=e3.employee_id and e2.department=e3.department;
