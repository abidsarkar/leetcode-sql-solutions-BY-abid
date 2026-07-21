/*
Problem: 1661. Average Time of Process per Machine

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/average-time-of-process-per-machine/

Concepts:

*/

-- Write your solution here
SELECT
  a.machine_id,
  ROUND(
    AVG(b.timestamp - a.timestamp),
    3
  ) AS processing_time
FROM Activity  a
INNER JOIN Activity AS b
  USING (machine_id, process_id)
WHERE
  a.activity_type = 'start'
  AND b.activity_type = 'end'
GROUP BY 1;

