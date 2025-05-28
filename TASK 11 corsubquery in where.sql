--TASK 11

select
first_name,
position_title,
salary
from employees e1
WHERE salary = (SELECT MAX(salary)
				from employees e2
				WHERE e1.position_title=e2.position_title)


