-- 175.combine-two-tables
-- https://leetcode.com/problems/combine-two-tables/description/
-- # Write your MySQL query statement below
select
a.firstName,
a.lastName ,
b.city,
b.state
from person a
LEFT JOIN address b
ON a.personId  = b.personId 