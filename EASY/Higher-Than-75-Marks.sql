-- Problem: Higher Than 75 Marks

-- Question:
-- Query the Name of any student in STUDENTS who scored higher than 75 marks.
-- Order the output by the last three characters of each name.If two or more students have names ending in the same last three characters,sort them by ascending ID.

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3) ASC,
         id ASC;
