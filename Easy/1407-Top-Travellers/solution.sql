/*
Problem: 1407.Top Travelers

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/top-travellers/description/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
select
distinct(a.name),
coalesce(sum(b.distance ),0) as travelled_distance 
from Users a
LEFT JOIN Rides b
ON a.id = b.user_id
group by 1,a.id
order by 2 desc, 1 asc
