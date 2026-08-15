-- Problem: The Blunder

-- Question:
-- Calculate the difference between the actual average monthly salary and the average salary calculated after removing all zeros from the salary values.
-- Round the result up to the next integer.

SELECT CEIL(
    AVG(SALARY) - AVG(REPLACE(SALARY, '0', ''))
)
FROM EMPLOYEES;
