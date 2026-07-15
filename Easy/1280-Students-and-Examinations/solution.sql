/*
Problem: 1280. Students and Examinations

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/students-and-examinations/

Concepts:

*/

-- Write your solution here
SELECT
  a.student_id,
  a.student_name,
  b.subject_name,
  COUNT(c.student_id) AS attended_exams
FROM Students a
CROSS JOIN Subjects b
LEFT JOIN Examinations c
  ON (
    a.student_id = c.student_id
    AND b.subject_name = c.subject_name)
GROUP BY 1, 2, 3
ORDER BY a.student_id, b.subject_name;