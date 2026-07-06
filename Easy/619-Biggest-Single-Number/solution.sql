/*
Problem: 619. Biggest Single Number

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/biggest-single-number/

Concepts:

*/

-- Write your solution here
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS SingleNumbers;
