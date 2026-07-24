/*
Problem: 2356_Number_Of_unique_subjects_taught_by_each_teacher

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/

Concepts:

*/

-- Write your PostgreSQL query statement below
select
teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by 1;