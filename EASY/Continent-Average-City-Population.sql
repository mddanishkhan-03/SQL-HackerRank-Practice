-- Problem: Average Population of Each Continent

-- Question:
-- Given the CITY and COUNTRY tables, query the names of all the continentsand their respective average city populations rounded down to the nearest integer.
-- CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT co.Continent,
       FLOOR(AVG(c.Population))
FROM CITY AS c
JOIN COUNTRY AS co
  ON c.CountryCode = co.Code
GROUP BY co.Continent;
