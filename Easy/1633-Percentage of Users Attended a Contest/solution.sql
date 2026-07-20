/*
Problem: 1633. Percentage of Users Attended a Contest

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
with total_visit as (select
contest_id, 
count(user_id) as total_visited
from Register b
group by 1
order by 2 desc, 1 asc),
total_user as(select
count(distinct(user_id)) as total_users
from Users)
select
contest_id,
round(total_visited::numeric/total_users::numeric,4)*100 as percentage 
from total_visit
cross join total_user
# Write your MySQL query statement below
	

SELECT
  contest_id,
  ROUND(
    COUNT(user_id) * 100 / (
      SELECT COUNT(*)
      FROM Users
    ),
    2
  ) AS percentage
FROM Register
GROUP BY 1
ORDER BY percentage DESC, contest_id;
