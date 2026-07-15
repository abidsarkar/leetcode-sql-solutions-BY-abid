/*
Problem: 1251. Average Selling Price

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/average-selling-price/

Concepts:

*/

-- Write your solution here
SELECT
  a.product_id,
  IFNULL(
    ROUND(
      SUM(a.price * b.units) / SUM(b.units),
      2
    ),
    0
  ) AS average_price
FROM Prices a
LEFT JOIN UnitsSold b
  ON (
    a.product_id = b.product_id
    AND b.purchase_date BETWEEN a.start_date AND a.end_date)
GROUP BY 1;
-- Write your PostgreSQL query statement below
select
a.product_id,
coalesce(round(
    sum(a.price*b.units)::numeric/sum(b.units)::numeric,2
),0) as average_price
from Prices a
Left join UnitsSold b
ON (a.product_id = b.product_id and b.purchase_date between a.start_date and a.end_date)
group by 1