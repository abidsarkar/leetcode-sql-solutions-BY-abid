/*
Problem: 1978_employees_whose_manager_left_the_company

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/employees-whose-manager-left-the-company/description/

Concepts:

*/

-- Write your PostgreSQL query statement below
SELECT a.employee_id
FROM Employees AS a
LEFT JOIN Employees AS b
  ON (a.manager_id = b.employee_id)
WHERE
  a.salary < 30000
  AND a.manager_id IS NOT NULL
  AND b.employee_id IS NULL
ORDER BY 1;