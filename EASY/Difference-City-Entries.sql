-- Problem: Weather Observation Station 4

-- Question:
-- Find the difference between the total number of CITY entries in the tableand the number of distinct CITY entries in the table.

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;
