/*
Problem: 1890. The Latest Login in 2020

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/the-latest-login-in-2020/description/

Concepts:

*/

-- Write your PostgreSQL query statement below
select
user_id,
max(time_stamp) as last_stamp
from Logins
where to_char(time_stamp,'YYYY') = '2020'
group by 1;
# Write your MySQL query statement below
select
user_id,
max(time_stamp) as last_stamp
from Logins
where year(time_stamp) = '2020'
group by 1