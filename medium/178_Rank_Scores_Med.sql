-- https://leetcode.com/problems/rank-scores/
-- Problem: 178. Rank Scores Med
-- Difficulty: Medium
-- Concepts: DENSE_RANK() rank tai number and next one is start from n+1
select
score,
DENSE_RANK() OVER ( order by score desc) as 'rank'
from scores