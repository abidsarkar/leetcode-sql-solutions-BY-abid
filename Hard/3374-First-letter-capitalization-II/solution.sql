/*
Problem: 3374. First letter capitalization II

Difficulty: Hard

LeetCode:
https://leetcode.com/problems/first-letter-capitalization-ii/
Concepts:

*/

-- Write your SQL solution here
SELECT 
    content_id,
    content_text AS original_text,
    INITCAP(content_text) AS converted_text
FROM user_content;