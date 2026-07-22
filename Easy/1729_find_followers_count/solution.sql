/*
Problem: 1729. find followers count

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-followers-count/description/

Concepts:

*/

-- Write your solution here
select
user_id,
count(follower_id) as followers_count
from Followers
group by 1
order by 1 asc