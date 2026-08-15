-- Problem: Weather Observation Station 9

-- Question:
-- Query the list of CITY names from STATION that do not start with vowels.
-- The result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('a','e','i','o','u');
