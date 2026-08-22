-- Problem: Weather Observation Station 19

-- Question:
-- Consider P1(a, c) and P2(b, d) to be two points on a 2D plane.

-- a = minimum value of LAT_N
-- b = maximum value of LAT_N
-- c = minimum value of LONG_W
-- d = maximum value of LONG_W

-- Query the Euclidean Distance between points P1 and P2 and round the result to 4 decimal places.

SELECT ROUND(
    SQRT(
        POW(MIN(LAT_N) - MAX(LAT_N), 2)
        + POW(MIN(LONG_W) - MAX(LONG_W), 2)
    ),
    4
)
FROM STATION;
