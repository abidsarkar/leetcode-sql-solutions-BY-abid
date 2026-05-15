-- https://leetcode.com/problems/combine-two-tables/description/
-- Problem: 175.combine-two-tables
-- Difficulty: Easy
-- Concepts: LEFT Join
select
a.firstName,
a.lastName ,
b.city,
b.state
from person a
LEFT JOIN address b
ON a.personId  = b.personId 