/*
Problem: 511. Game Play Analysis I

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/game-play-analysis-i/

Concepts:

*/

-- Write your solution here
select
player_id  ,
min(event_date) as first_login 
from Activity
group by player_id