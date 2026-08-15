-- Problem: Weather Observation Station 19

-- Question:
-- Query the greatest value of Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate the answer to 4 decimal places.

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;
