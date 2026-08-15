-- Problem: Asian Population

-- Question:
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(c.population)
FROM CITY AS c
JOIN COUNTRY AS co
  ON c.CountryCode = co.Code
WHERE co.Continent = 'Asia';
