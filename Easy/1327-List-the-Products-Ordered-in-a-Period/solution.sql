/*
Problem: 11327. List the Products Ordered in a Period

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
select
product_name,
sum(unit) AS unit 
from Products a
JOIN Orders b
ON a.product_id = b.product_id
WHERE to_char(order_date, 'MM')::int = 2 
  AND to_char(order_date, 'YYYY')::int = 2020
group by 1,a.product_id
having sum(unit) >99
--
# Write your MySQL query statement below
select
product_name,
sum(unit) AS unit 
from Products a
JOIN Orders b
ON a.product_id = b.product_id
where month(order_date) = 2 and year(order_date) = 2020
group by 1,a.product_id
having sum(unit) >99