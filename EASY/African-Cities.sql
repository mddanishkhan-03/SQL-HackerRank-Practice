-- Problem: African Cities

-- Question:
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT c.name
FROM CITY AS c
JOIN COUNTRY AS co
  ON c.CountryCode = co.Code
  AND co.Continent = 'Africa';
