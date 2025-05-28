SELECT employee_id,
salary,
start_date,
SUM(salary)
	OVER(ORDER BY start_date)
	from 
(select 
employee_id,
salary,
start_date
from employees
UNION
select 
employee_id,
salary * -1 as salary,
end_date
from v_employees_info
where is_active = 'false'
order by start_date)

