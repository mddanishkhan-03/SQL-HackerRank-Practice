-- Table: employees
-- Columns: employee_id, employee_name, department_id, salary

-- Question:
   Find employees whose salary is greater than
   the average salary of their own department.

SELECT e.employee_name, e.salary
FROM employees AS e
WHERE e.salary > (
  SELECT AVG(e2.salary)
  FROM employees AS e2
  WHERE e2.department_id = e.department_id
);
