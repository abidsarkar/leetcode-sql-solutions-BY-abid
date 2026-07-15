/*
Problem: 1211. Queries Quality and Percentage

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/queries-quality-and-percentage/

Concepts:

*/

-- Write your solution here
SELECT
  query_name,
  ROUND(AVG(rating / position), 2) AS quality,
  ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY 1;
-- in postgresql
SELECT
  query_name,
  ROUND(AVG(rating::NUMERIC / position), 2) AS quality,
  ROUND(AVG((rating < 3)::INT)::NUMERIC * 100, 2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY 1;
