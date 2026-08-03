/*
Problem: 3475- Dna Pattern Recognition

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/dna-pattern-recognition/description/
Concepts:

*/

-- Write your SQL solution here
SELECT
  *,
  dna_sequence ~ '^ATG' AS has_start,
  dna_sequence ~ 'TAA$|TAG$|TGA$' AS has_stop,
  dna_sequence ~ 'ATAT' AS has_atat,
  dna_sequence ~ 'GGG' AS has_ggg
FROM Samples
ORDER BY sample_id;
