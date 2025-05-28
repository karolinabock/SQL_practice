--TASK 12

select
sum(salary),
count(employee_id),
round(avg(salary), 2),
department,
division,
position_title
from employees e
LEFT JOIN departments d
on d.department_id = e.departament_id
GROUP BY 
ROLLUP(4, 5, 6)
