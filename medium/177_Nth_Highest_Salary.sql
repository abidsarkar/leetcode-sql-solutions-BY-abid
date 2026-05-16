-- https://leetcode.com/problems/nth-highest-salary/description/
-- Problem: 177. Nth Highest Salary
-- Difficulty: Medium
-- Concepts: function use and offset to skip
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE offsetVal INT;
  SET offsetVal = N - 1;
  RETURN (
      # Write your MySQL query statement below.
    SELECT DISTINCT salary
      FROM Employee
      ORDER BY salary DESC
      LIMIT 1 offset offsetVal
  );
END