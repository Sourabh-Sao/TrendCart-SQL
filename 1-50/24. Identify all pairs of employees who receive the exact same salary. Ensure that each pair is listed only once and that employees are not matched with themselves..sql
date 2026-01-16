select e1.first_name,e2.first_name,e1.salary
from employees e1
join employees e2
on e1.salary=e2.salary and e1.employee_id<e2.employee_id;
