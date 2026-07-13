/*
Problem: 1070. Product Sales Analysis III

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/product-sales-analysis-iii/

Concepts:

*/

-- Write your SQL solution here

select
product_id ,
year as first_year  ,
quantity ,
price
from Sales
where (year,product_id) in (

select
min(year) as year,
product_id
from Sales
group by product_id)