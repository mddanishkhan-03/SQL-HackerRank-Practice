-- Problem: Weather Observation Station 10

-- Question:
-- Query the list of CITY names from STATION that do not end with vowels.
-- The result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) NOT IN ('a','e','i','o','u');
