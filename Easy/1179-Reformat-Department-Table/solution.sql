/*
Problem: 1179. Reformat Department Table

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/reformat-department-table/

Concepts:

*/

-- Write your solution here
# Write your MySQL query statement below
SELECT
  id,
  SUM(IF(month = 'Jan', revenue, NULL)) AS Jan_Revenue,
  SUM(IF(month = 'Feb', revenue, NULL)) AS Feb_Revenue,
  SUM(IF(month = 'Mar', revenue, NULL)) AS Mar_Revenue,
  SUM(IF(month = 'Apr', revenue, NULL)) AS Apr_Revenue,
  SUM(IF(month = 'May', revenue, NULL)) AS May_Revenue,
  SUM(IF(month = 'Jun', revenue, NULL)) AS Jun_Revenue,
  SUM(IF(month = 'Jul', revenue, NULL)) AS Jul_Revenue,
  SUM(IF(month = 'Aug', revenue, NULL)) AS Aug_Revenue,
  SUM(IF(month = 'Sep', revenue, NULL)) AS Sep_Revenue,
  SUM(IF(month = 'Oct', revenue, NULL)) AS Oct_Revenue,
  SUM(IF(month = 'Nov', revenue, NULL)) AS Nov_Revenue,
  SUM(IF(month = 'Dec', revenue, NULL)) AS Dec_Revenue
FROM Department
GROUP BY 1;
-- in postgresql
SELECT
  id,
  SUM(revenue) FILTER (WHERE month = 'Jan') AS Jan_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Feb') AS Feb_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Mar') AS Mar_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Apr') AS Apr_Revenue,
  SUM(revenue) FILTER (WHERE month = 'May') AS May_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Jun') AS Jun_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Jul') AS Jul_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Aug') AS Aug_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Sep') AS Sep_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Oct') AS Oct_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Nov') AS Nov_Revenue,
  SUM(revenue) FILTER (WHERE month = 'Dec') AS Dec_Revenue
FROM Department
GROUP BY 1;
