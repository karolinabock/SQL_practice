ALTER TABLE employees
ALTER COLUMN start_date SET DEFAULT CURRENT_DATE,
ADD COLUMN end_date DATE,
ADD constraint birth_check CHECK (birth_date < CURRENT_DATE)

ALTER TABLE departments
ALTER COLUMN department_id SET NOT NULL

ALTER TABLE employees
RENAME COLUMN job_position TO position_title