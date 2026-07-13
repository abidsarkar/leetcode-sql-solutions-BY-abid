/*
Problem: 1148. Article Views I

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/article-views-i/

Concepts:

*/

-- Write your solution here
select
distinct(author_id) as id
from Views
where author_id  = viewer_id  
order by 1 asc