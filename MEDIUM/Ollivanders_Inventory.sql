-- Problem: Ollivander's Inventory
-- Source: HackerRank
-- Topic: JOIN, WHERE, MIN, Correlated Subquery, ORDER BY

-- Question:
-- Harry Potter and his friends are at Ollivander's with Ron, finally
-- replacing Charlie's old broken wand.
--
-- Hermione decides the best way to choose is by determining the minimum
-- number of gold galleons needed to buy each non-evil wand of high power
-- and age.
--
-- Write a query to print the id, age, coins_needed, and power of the
-- wands that Ron's interested in.
--
-- Sort the result by descending power.
-- If more than one wand has the same power, sort by descending age.

SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM Wands AS w
JOIN Wands_Property AS wp
    ON w.code = wp.code
WHERE wp.is_evil = 0
  AND w.coins_needed = (
      SELECT MIN(w2.coins_needed)
      FROM Wands AS w2
      JOIN Wands_Property AS wp2
          ON w2.code = wp2.code
      WHERE wp2.is_evil = 0
        AND wp2.age = wp.age
        AND w2.power = w.power
  )
ORDER BY
    w.power DESC,
    wp.age DESC;
