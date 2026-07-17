/*
Problem: 1321. Restaurant Growth

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/restaurant-growth/

Concepts:

*/

-- Write your SQL solution here

WITH
  Dates AS (
    SELECT DISTINCT visited_on
    FROM Customer
    WHERE visited_on >= (
      SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
      FROM Customer
    )
  )
SELECT
  a.visited_on,
  SUM(b.amount) AS amount,
  ROUND(SUM(b.amount) / 7, 2) AS average_amount
FROM Dates a
LEFT JOIN Customer b
  ON (DATEDIFF(a.visited_on, b.visited_on) BETWEEN 0 AND 6)
GROUP BY 1;
-- in postgresql
SELECT 
    visited_on,
    amount,
    ROUND(average_amount::numeric, 2) AS average_amount
FROM (
    SELECT 
        visited_on,
        SUM(SUM(amount)) OVER(
            ORDER BY visited_on 
            RANGE BETWEEN INTERVAL '6 days' PRECEDING AND CURRENT ROW
        ) AS amount,
        AVG(SUM(amount)) OVER(
            ORDER BY visited_on 
            RANGE BETWEEN INTERVAL '6 days' PRECEDING AND CURRENT ROW
        ) AS average_amount,
        ROW_NUMBER() OVER(ORDER BY visited_on) as row_num
    FROM Customer
    GROUP BY visited_on
) t
WHERE row_num >= 7;
