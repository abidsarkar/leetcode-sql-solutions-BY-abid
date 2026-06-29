/*
Problem: 178. Rank Scores

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/rank-scores/

Concepts:

*/

-- Write your SQL solution here

select
score,
DENSE_RANK() OVER ( order by score desc) as 'rank'
from scores