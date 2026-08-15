-- Problem: Weather Observation Station 6

-- Question:
-- Query the list of CITY names starting with vowels
-- (a, e, i, o, or u) from STATION.
-- The result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('i', 'e', 'a', 'o', 'u');
