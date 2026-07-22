/*
Problem: 1731_The_number_of_employees_which_report_To_each_employee

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/

Concepts:

*/

-- Write your solution here
select
  a.employee_id,
  a.name,
  COUNT(b.employee_id) AS reports_count,
  ROUND(AVG(b.age)) AS average_age
FROM Employees AS a
INNER JOIN Employees AS b
  ON (b.reports_to = a.employee_id)
GROUP BY 1,2
ORDER BY 1;