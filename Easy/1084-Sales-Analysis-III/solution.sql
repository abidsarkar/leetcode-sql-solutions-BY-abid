/*
Problem: 1084. Sales Analysis III

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/sales-analysis-iii/

Concepts:

*/

-- Write your solution here
select
product_id,
product_name
from Product
where product_id not in (select product_id from sales where sale_date not between ('2019-01-01') and ('2019-03-31'))
and product_id in (select distinct(product_id) from sales)