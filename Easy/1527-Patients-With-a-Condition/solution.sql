/*
Problem: 1527. Patients With a Condition

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/patients-with-a-condition/

Concepts:

*/

-- Write your solution here
select
patient_id,
patient_name,
conditions
from Patients
where conditions LIKE 'DIAB1%'
  OR conditions LIKE '% DIAB1%';