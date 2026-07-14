/*
Problem:1164. Product Price at a Given Date

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/product-price-at-a-given-date/

Concepts:

*/

-- Write your PostgreSQL query statement below
WITH UniqueProducts AS (
  SELECT DISTINCT product_id 
  FROM Products
),
RankedProducts AS (
  SELECT
    product_id,
    new_price,
    RANK() OVER(
      PARTITION BY product_id
      ORDER BY change_date DESC
    ) AS rank
  FROM Products
  WHERE change_date <= '2019-08-16'
),
ProductToLatestPrice AS (
  SELECT product_id, new_price
  FROM RankedProducts
  WHERE rank = 1
)
SELECT
  u.product_id,
  COALESCE(p.new_price, 10) AS price
FROM UniqueProducts u
LEFT JOIN ProductToLatestPrice p
  ON u.product_id = p.product_id;