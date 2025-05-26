--Task 5.1
SELECT 
  emp.employee_id,
  emp.first_name,
  emp.last_name,
  emp.position_title,
  emp.salary,
  emp.start_date,
  emp.end_date,
  mgr.first_name || ' ' || mgr.last_name AS manager,
  CASE
    WHEN emp.end_date IS NULL THEN 'true'
    ELSE 'false'
  END AS is_active
FROM employees emp
LEFT JOIN employees mgr
  ON emp.manager_id = mgr.employee_id
ORDER BY emp.employee_id;


-- TASK 5.2
CREATE VIEW v_employees_info
AS
SELECT 
  emp.employee_id,
  emp.first_name,
  emp.last_name,
  emp.position_title,
  emp.salary,
  emp.start_date,
  emp.end_date,
  mgr.first_name || ' ' || mgr.last_name AS manager,
  CASE
    WHEN emp.end_date IS NULL THEN 'true'
    ELSE 'false'
  END AS is_active
FROM employees emp
LEFT JOIN employees mgr
  ON emp.manager_id = mgr.employee_id
ORDER BY emp.employee_id;
