-- Problem: Weather Observation Station 17

-- Question:
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round the answer to 4 decimal places.

SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1;
