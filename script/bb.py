import os

# Root folder
ROOT = "LeetCode-SQL-Solutions"

# ===========================
# Medium Problems
# ===========================

medium_problems = [
    (177, "Nth-Highest-Salary"),
    (178, "Rank-Scores"),
    (180, "Consecutive-Numbers"),
    (184, "Department-Highest-Salary"),
    (570, "Managers-with-at-Least-5-Direct-Reports"),
    (585, "Investments-in-2016"),
    (602, "Friend-Requests-II-Who-Has-the-Most-Friends"),
    (608, "Tree-Node"),
    (626, "Exchange-Seats"),
    (1045, "Customers-Who-Bought-All-Products"),
    (1070, "Product-Sales-Analysis-III"),
    (1076, "Project-Employees-II"),
    (1077, "Project-Employees-III"),
    (1193, "Monthly-Transactions-I"),
    (1204, "Last-Person-to-Fit-in-the-Bus"),
    (1321, "Restaurant-Growth"),
    (1341, "Movie-Rating"),
    (1393, "Capital-Gain-Loss"),
    (1454, "Active-Users"),
    (1633, "Percentage-of-Users-Attended-a-Contest"),
    (1731, "The-Number-of-Employees-Which-Report-to-Each-Employee"),
    (1789, "Primary-Department-for-Each-Employee"),
    (1907, "Count-Salary-Categories"),
    (1934, "Confirmation-Rate"),
]

# ===========================
# Hard Problems
# ===========================

hard_problems = [
    (185, "Department-Top-Three-Salaries"),
    (262, "Trips-and-Users"),
    (569, "Median-Employee-Salary"),
    (571, "Find-Median-Given-Frequency-of-Numbers"),
    (601, "Human-Traffic-of-Stadium"),
]

# ===================================================
# Function to create problem folders and template files
# ===================================================

def create_problem_structure(difficulty, problems):
    difficulty_path = os.path.join(ROOT, difficulty)
    os.makedirs(difficulty_path, exist_ok=True)

    for pid, title in problems:
        folder_name = f"{pid}-{title}"
        problem_path = os.path.join(difficulty_path, folder_name)

        os.makedirs(problem_path, exist_ok=True)

        files = {
            "solution.sql": f"""/*
Problem: {pid}. {title.replace("-", " ")}

Difficulty: {difficulty}

LeetCode:
https://leetcode.com/problems/{title.lower()}/

Concepts:

*/

-- Write your SQL solution here

""",

            "README.md": f"""# {pid}. {title.replace("-", " ")}

**Difficulty:** {difficulty}

---

## Problem

https://leetcode.com/problems/{title.lower()}/

---

## SQL Concepts

- 

---

## Notes

Write your observations here.

""",

            "explanation.md": f"""# Explanation

## Problem

{pid}. {title.replace("-", " ")}

---

## Approach

Explain your approach here.

---

## SQL Concepts Used

- 

---

## Complexity

**Time Complexity:** 

**Space Complexity:** 

"""
        }

        for filename, content in files.items():
            filepath = os.path.join(problem_path, filename)

            if not os.path.exists(filepath):
                with open(filepath, "w", encoding="utf-8") as f:
                    f.write(content)

# ===========================
# Create folders
# ===========================

create_problem_structure("Medium", medium_problems)
create_problem_structure("Hard", hard_problems)

print("=" * 60)
print("✅ Medium & Hard folders created successfully!")
print(f"📂 Root Folder: {ROOT}")
print(f"🟡 Medium Problems: {len(medium_problems)}")
print(f"🔴 Hard Problems: {len(hard_problems)}")
print("=" * 60)