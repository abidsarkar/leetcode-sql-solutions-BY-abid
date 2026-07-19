/*
Problem: 1484. Group Sold Products By The Date

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/group-sold-products-by-the-date/

Concepts:

*/

-- Write your solution here
SELECT
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY 1;
-- Write your PostgreSQL query statement below
SELECT
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  STRING_AGG(DISTINCT product, ',' ) AS products
FROM Activities
GROUP BY 1
ORDER BY sell_date;
