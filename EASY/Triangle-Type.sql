-- Problem: Triangle Type

-- Question:
-- Write a query identifying the type of each record in the TRIANGLES table
-- using its three side lengths.
--
-- Equilateral: 3 sides of equal length.
-- Isosceles: 2 sides of equal length.
-- Scalene: 3 sides of differing lengths.
-- Not A Triangle: A, B, and C do not form a triangle.

SELECT CASE
    WHEN A + B <= C OR B + C <= A OR A + C <= B THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR B = C OR C = A THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES;
