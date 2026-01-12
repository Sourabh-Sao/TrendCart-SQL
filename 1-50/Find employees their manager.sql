--* Question 6: Find employees their manager.

select emp.first_name as Employee_Name,
manager.first_name as Manager_Name
from employees as emp
left join employees as manager
on emp.manager_id=manager.employee_id;
