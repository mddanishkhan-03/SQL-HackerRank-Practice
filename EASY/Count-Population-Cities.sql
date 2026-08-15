-- Problem: Population Density Difference

-- Question:
-- Query a count of the number of cities in CITY having a population larger than 100000.

SELECT COUNT(ID)
FROM CITY
WHERE population > 100000;
