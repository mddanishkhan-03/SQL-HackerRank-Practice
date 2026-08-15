-- Problem: Weather Observation Station 7

-- Question:
-- Query the list of CITY names ending with vowels
-- (a, e, i, o, u) from STATION.
-- The result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) IN ('a', 'e', 'i', 'o', 'u');
