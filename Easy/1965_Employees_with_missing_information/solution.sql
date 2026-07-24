/*
Problem: 1965. Employees with missing information

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/employees-with-missing-information/description/

Concepts:

*/

-- Write your PostgreSQL query statement below
SELECT a.employee_id
FROM Employees a
LEFT JOIN Salaries b
  USING (employee_id)
WHERE b.salary IS NULL
UNION ALL
SELECT a.employee_id
FROM Salaries a
LEFT JOIN Employees b
  USING (employee_id)
WHERE b.name IS NULL
ORDER BY 1;