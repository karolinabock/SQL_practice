--TASK 6
SELECT 
position_title,
ROUND(AVG(salary)) as avg_sal
FROM employees
GROUP BY position_title
ORDER BY 2 desc