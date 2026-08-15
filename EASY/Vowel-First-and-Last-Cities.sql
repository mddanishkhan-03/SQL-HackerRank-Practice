-- Problem: Weather Observation Station 8

-- Question:
-- Query the list of CITY names from STATION which have vowels
-- as both their first and last characters.
-- The result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('a','e','i','o','u')
  AND RIGHT(city, 1) IN ('a','e','i','o','u');
