-- Problem: The Company

-- Question:
-- For each company, display the company code, founder name,
-- and the total number of lead managers, senior managers,
-- managers, and employees.
-- Duplicate records may exist, so count each manager and employee only once.
-- Sort the result by company_code in ascending order.

SELECT c.company_code,
       c.founder,
       COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
       COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
       COUNT(DISTINCT m.manager_code) AS total_managers,
       COUNT(DISTINCT e.employee_code) AS total_employees
FROM company AS c
LEFT JOIN lead_manager AS lm
  ON c.company_code = lm.company_code
LEFT JOIN senior_manager AS sm
  ON lm.lead_manager_code = sm.lead_manager_code
LEFT JOIN manager AS m
  ON sm.senior_manager_code = m.senior_manager_code
LEFT JOIN employee AS e
  ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC;
