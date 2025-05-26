--TASK 7

SELECT 
division,
ROUND(AVG(salary), 2)
FROM employees e
LEFT JOIN departments d
ON e.departament_id = d.department_id
GROUP BY division
