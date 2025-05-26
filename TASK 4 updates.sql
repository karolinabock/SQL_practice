--TASK 4.1
UPDATE employees 
SET position_title = 'Senior SQL Analyst', salary = 7200
WHERE first_name = 'Jack' AND last_name = 'Franklin'

--TASK 4.2
UPDATE employees
SET position_title = 'Customer Specialist'
WHERE position_title = 'Customer Support'

--TASK 4.3
UPDATE employees
SET salary = salary * 1.06
WHERE position_title IN ('SQL Analyst', 'Senior SQL Analyst')

--TASK 4.4
SELECT 
ROUND(AVG(salary),2)
from employees
WHERE position_title = 'SQL Analyst'

