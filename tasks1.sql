-- =========================================================
-- PROJECT QUERIES (TASKS 6–12)
-- =========================================================
USE GradeBookDB;

/* 6. Show all student grades for Course 1 */
SELECT 
    g.student_id,
    s.first_name,
    s.last_name,
    a.assignment_id,
    a.title,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN Enrollment e 
    ON g.student_id = e.student_id
   AND a.course_id = e.course_id
WHERE e.course_id = 1
ORDER BY g.student_id, a.assignment_id;


/*  7. Add one additional assignment for Course 1  */
-- NOTE:
-- Grade weights are applied per assignment in this query.
-- This means totals may exceed 100.
-- A category-based calculation is used later for final grades.
-- Task 7: Additional assignment added to Homework category
-- Enables Task 12 (drop lowest score)

INSERT INTO Assignment (course_id, category_id, title, description)
SELECT
    1,
    gc.category_id,
    'Homework Set 2',
    'Second homework assignment for Course 1.'
FROM GradeCategory gc
WHERE gc.course_id = 1
  AND gc.name = 'Homework'
  AND NOT EXISTS (
      SELECT 1
      FROM Assignment a
      WHERE a.course_id = 1
        AND a.title = 'Homework Set 2'
  )
LIMIT 1;

/* Add Grades to Assignment for students */
INSERT INTO Grade (student_id, assignment_id, score, comments)
SELECT
    e.student_id,
    a.assignment_id,
    ROUND(
        GREATEST(
            35,
            LEAST(
                100,
                (
                    CASE
                        WHEN MOD(e.student_id, 10) IN (1, 2) THEN 95
                        WHEN MOD(e.student_id, 10) IN (3, 4) THEN 85
                        WHEN MOD(e.student_id, 10) IN (5, 6, 7) THEN 75
                        WHEN MOD(e.student_id, 10) IN (8, 9) THEN 65
                        ELSE 55
                    END
                    + 0
                    + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                )
            )
        ),
        2
    ) AS score,
    'Homework Set 2 graded.' AS comments
FROM Enrollment e
JOIN Assignment a
    ON a.course_id = e.course_id
WHERE e.course_id = 1
  AND a.title = 'Homework Set 2'
  AND NOT EXISTS (
      SELECT 1
      FROM Grade g
      WHERE g.student_id = e.student_id
        AND g.assignment_id = a.assignment_id
  );

/* Verfiy Insert Assignment */
SELECT
    a.assignment_id,
    a.course_id,
    a.category_id,
    gc.name AS category_name,
    a.title,
    a.description
FROM Assignment a
JOIN GradeCategory gc ON a.category_id = gc.category_id
WHERE a.course_id = 1
ORDER BY a.assignment_id;

/*  Verify Insert Score */
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    a.assignment_id,
    a.title,
    gc.name AS category_name,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc ON a.category_id = gc.category_id
WHERE a.course_id = 1
  AND a.title = 'Homework Set 2'
ORDER BY g.student_id;


/* 8. Change the percentages of the categories for a course */
-- Each course has original:
-- Participation (10%)
-- Homework (25%)
-- Midterm Exam (30%)
-- Final Project (35%)
-- Total = 100%

UPDATE GradeCategory
SET weight = CASE name
    WHEN 'Participation' THEN 20
    WHEN 'Homework' THEN 25
    WHEN 'Midterm Exam' THEN 25
    WHEN 'Final Project' THEN 30
END
WHERE course_id = 1;


/* 9. Add 2 points to the score of each student on an assignment */
/* Show student score before update */
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    g.assignment_id,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
WHERE g.assignment_id = 1
ORDER BY g.student_id;

/* Add 2 pts to assignment */
UPDATE Grade
SET score = score + 2
WHERE assignment_id = 1;

/* Show student score after update*/
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    g.assignment_id,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
WHERE g.assignment_id = 1
ORDER BY g.student_id;

/* 10. Increase scores by 2 points for Assignment 1
   only for students whose last name contains Q */

SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    a.assignment_id,
    a.title,
    c.course_id,
    c.course_number,
    c.course_name,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN Course c ON a.course_id = c.course_id
WHERE s.last_name LIKE '%Q%'
ORDER BY a.assignment_id, g.student_id;

UPDATE Grade
SET score = score + 2
WHERE student_id IN (
    SELECT student_id
    FROM Student
    WHERE last_name LIKE '%Q%'
);

SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    a.assignment_id,
    a.title,
    c.course_id,
    c.course_number,
    c.course_name,
    g.score
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN Course c ON a.course_id = c.course_id
WHERE s.last_name LIKE '%Q%'
ORDER BY a.assignment_id, g.student_id;

/* 11. Compute final weighted grade for Student 1 */
SELECT
    g.student_id,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade
FROM Grade g
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc ON a.category_id = gc.category_id
WHERE g.student_id = 1
GROUP BY g.student_id;

/* 12. Compute the grade for a student, where the lowest score for a given category is dropped. */

SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name,

    -- BEFORE DROP
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade_before_drop,

    -- AFTER DROP
    (
        SELECT ROUND(SUM(category_score), 2)
        FROM (
            SELECT
                gc2.category_id,
                gc2.weight,
                CASE
                    WHEN COUNT(*) = 1 THEN
                        AVG(g2.score) * (gc2.weight / 100)
                    ELSE
                        ((SUM(g2.score) - MIN(g2.score)) / (COUNT(*) - 1)) * (gc2.weight / 100)
                END AS category_score
            FROM Grade g2
            JOIN Assignment a2 ON g2.assignment_id = a2.assignment_id
            JOIN GradeCategory gc2 ON a2.category_id = gc2.category_id
            WHERE g2.student_id = g.student_id
              AND a2.course_id = c.course_id
            GROUP BY gc2.category_id, gc2.weight
        ) AS category_calc
    ) AS final_grade_after_drop

FROM Grade g
JOIN Student s
    ON g.student_id = s.student_id
JOIN Assignment a
    ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc
    ON a.category_id = gc.category_id
JOIN Course c
    ON a.course_id = c.course_id

WHERE g.student_id = 1
  AND c.course_id = 1

GROUP BY
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name;


