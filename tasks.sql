-- =============================================================
-- GradeBook Database: tasks.sql
-- Task 4: Compute average/highest/lowest score of an assignment
-- Task 5: List all students in a given course
-- =============================================================

USE GradeBookDB;

-- =============================================================
-- TASK 4: Compute the average, highest, and lowest score
--         of an assignment (example: assignment_id = 1)
-- =============================================================

SELECT
    a.assignment_id,
    a.title                      AS assignment_title,
    c.course_name,
    AVG(g.score)                 AS average_score,
    MAX(g.score)                 AS highest_score,
    MIN(g.score)                 AS lowest_score
FROM Grade g
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN Course c     ON a.course_id = c.course_id
WHERE g.assignment_id = 1
  AND g.score IS NOT NULL
GROUP BY a.assignment_id, a.title, c.course_name;

-- To check a different assignment, change the value after WHERE g.assignment_id =
-- Example for assignment 3 (Statistics Midterm):
SELECT
    a.assignment_id,
    a.title                      AS assignment_title,
    c.course_name,
    AVG(g.score)                 AS average_score,
    MAX(g.score)                 AS highest_score,
    MIN(g.score)                 AS lowest_score
FROM Grade g
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN Course c     ON a.course_id = c.course_id
WHERE g.assignment_id = 3
  AND g.score IS NOT NULL
GROUP BY a.assignment_id, a.title, c.course_name;


-- =============================================================
-- TASK 5: List all students enrolled in a given course
--         (example: course_id = 1, Statistics)
-- =============================================================

SELECT DISTINCT
    s.student_id,
    s.first_name,
    s.last_name,
    s.email,
    c.course_name,
    c.semester,
    c.year
FROM Student s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Course c     ON e.course_id = c.course_id
WHERE e.course_id = 1
ORDER BY s.last_name, s.first_name;

-- To list students in a different course, change the value after WHERE e.course_id =
-- Example for course_id = 2 (Calculus):
SELECT DISTINCT
    s.student_id,
    s.first_name,
    s.last_name,
    s.email,
    c.course_name,
    c.semester,
    c.year
FROM Student s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Course c     ON e.course_id = c.course_id
WHERE e.course_id = 2
ORDER BY s.last_name, s.first_name;
