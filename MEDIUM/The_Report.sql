-- Problem: The Report

-- Question:
-- Ketty gives Eve a task to generate a report containing three columns:Name, Grade and Mark.
-- Ketty doesn't want the names of those students who received a gradelower than 8.
-- The report must be in descending order by grade, meaning highergrades are listed first.
-- If there is more than one student with the same grade (8-10), order those students by their name alphabetically.
-- If the grade is lower than 8, use NULL as their name.
-- If there is more than one student with the same grade (1-7),order those students by their marks in ascending order.


SELECT
    CASE
        WHEN g.grade >= 8 THEN s.name
        ELSE NULL
    END AS name,
    g.grade,
    s.marks
FROM students AS s
JOIN grades AS g
    ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY
    g.grade DESC,
    CASE
        WHEN g.grade >= 8 THEN s.name
    END ASC,
    CASE
        WHEN g.grade < 8 THEN s.marks
    END ASC;
