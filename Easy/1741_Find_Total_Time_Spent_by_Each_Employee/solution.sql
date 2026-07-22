/*
Problem: 1741. Find Total Time Spent by Each Employee

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-total-time-spent-by-each-employee/description/

Concepts:

*/

-- Write your solution here
	

SELECT
  event_day AS day,
  emp_id,
  SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY 1, 2;
