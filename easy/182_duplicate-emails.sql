-- https://leetcode.com/problems/duplicate-emails/
-- Problem: 182. Duplicate Emails
-- Difficulty: Easy
-- Concepts: group by and having count aggregation
select email as Email 
from person
group by email
having count(*)>1