/*
Problem: 1693. Daily Leads and Partners

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/daily-leads-and-partners/description/

Concepts:

*/

-- Write your solution here
select
tweet_id
from Tweets
where length(content)>15