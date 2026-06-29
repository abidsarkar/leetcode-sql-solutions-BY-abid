/*
Problem: 182. Duplicate Emails

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/duplicate-emails/

Concepts:

*/

-- Write your solution here
select email as Email 
from person
group by email
having count(*)>1