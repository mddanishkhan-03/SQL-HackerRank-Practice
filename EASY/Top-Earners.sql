-- Problem: Top Earners

-- Question:
-- Find the maximum total earnings for all employees and the total number of employees who have maximum total earnings. Total earnings = salary × months worked.

SELECT salary * months, COUNT(*)
FROM employee
GROUP BY salary * months
ORDER BY salary * months DESC
LIMIT 1;
