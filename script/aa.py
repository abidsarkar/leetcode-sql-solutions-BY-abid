import os

# Root folder
ROOT = "LeetCode-SQL-Solutions"

# Easy Problems
easy_problems = [
    (175, "Combine-Two-Tables"),
    (176, "Second-Highest-Salary"),
    (181, "Employees-Earning-More-Than-Their-Managers"),
    (182, "Duplicate-Emails"),
    (183, "Customers-Who-Never-Order"),
    (196, "Delete-Duplicate-Emails"),
    (197, "Rising-Temperature"),
    (511, "Game-Play-Analysis-I"),
    (577, "Employee-Bonus"),
    (584, "Find-Customer-Referee"),
    (586, "Customer-Placing-the-Largest-Number-of-Orders"),
    (595, "Big-Countries"),
    (596, "Classes-More-Than-5-Students"),
    (603, "Consecutive-Available-Seats"),
    (607, "Sales-Person"),
    (610, "Triangle-Judgement"),
    (619, "Biggest-Single-Number"),
    (620, "Not-Boring-Movies"),
    (627, "Swap-Salary"),
    (1050, "Actors-and-Directors-Who-Cooperated-At-Least-Three-Times"),
    (1068, "Product-Sales-Analysis-I"),
    (1075, "Project-Employees-I"),
    (1084, "Sales-Analysis-III"),
    (1148, "Article-Views-I"),
    (1179, "Reformat-Department-Table"),
    (1211, "Queries-Quality-and-Percentage"),
    (1251, "Average-Selling-Price"),
    (1280, "Students-and-Examinations"),
    (1378, "Replace-Employee-ID-With-The-Unique-Identifier"),
    (1484, "Group-Sold-Products-By-The-Date"),
    (1527, "Patients-With-a-Condition"),
    (1581, "Customer-Who-Visited-but-Did-Not-Make-Any-Transactions"),
    (1661, "Average-Time-of-Process-per-Machine"),
    (1683, "Invalid-Tweets"),
]

# Create root directories
folders = [
    "Easy",
    "Medium",
    "Hard",
    "Notes",
    "Resources"
]

for folder in folders:
    os.makedirs(os.path.join(ROOT, folder), exist_ok=True)

# Create files for each Easy problem
for pid, title in easy_problems:
    folder_name = f"{pid}-{title}"
    problem_path = os.path.join(ROOT, "Easy", folder_name)

    os.makedirs(problem_path, exist_ok=True)

    files = {
        "solution.sql": f"""/*
Problem: {pid}. {title.replace('-', ' ')}

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/{title.lower()}/

Concepts:

*/

-- Write your solution here
""",

        "README.md": f"""# {pid}. {title.replace('-', ' ')}

**Difficulty:** Easy

## Problem Link

https://leetcode.com/problems/{title.lower()}/

## SQL Concepts

- 

## Notes

""",

        "explanation.md": f"""# Explanation

## Approach

Explain your solution here.

---

## SQL Concepts

- 

---

## Complexity

- Time:
- Space:
"""
    }

    for filename, content in files.items():
        file_path = os.path.join(problem_path, filename)

        if not os.path.exists(file_path):
            with open(file_path, "w", encoding="utf-8") as f:
                f.write(content)

# Additional Notes Files
notes = [
    "JOINS.md",
    "WINDOW_FUNCTIONS.md",
    "CTE.md",
    "SUBQUERIES.md",
    "AGGREGATE_FUNCTIONS.md",
    "INTERVIEW_NOTES.md",
    "INDEXES.md",
    "STRING_FUNCTIONS.md",
    "DATE_FUNCTIONS.md"
]

for note in notes:
    note_path = os.path.join(ROOT, "Notes", note)
    if not os.path.exists(note_path):
        open(note_path, "w").close()

# Resources
resource_files = [
    "Useful_Links.md",
    "SQL_CheatSheet.pdf"
]

for resource in resource_files:
    resource_path = os.path.join(ROOT, "Resources", resource)
    if not os.path.exists(resource_path):
        open(resource_path, "w").close()

print("=" * 60)
print("✅ LeetCode SQL Repository Structure Created Successfully!")
print(f"📂 Root Folder: {ROOT}")
print(f"🟢 Easy Problems Created: {len(easy_problems)}")
print("=" * 60)