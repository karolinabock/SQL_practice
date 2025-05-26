--TASK 8

SELECT
employee_id,
first_name,
last_name,
position_title,
salary,
ROUND(AVG(salary)
	OVER(PARTITION BY position_title),2) as avg_position_salary
from employees
ORDER BY employee_id 


