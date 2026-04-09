-- =========================================================
-- HELPER
-- =========================================================

/*  Show grade categories for Course 1  WORKS */ 
SELECT category_id, course_id, name, weight
FROM GradeCategory
WHERE course_id = 1
ORDER BY category_id;

/* Compute final weighted grades for all students */
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade
FROM Grade g
JOIN Student s ON g.student_id = s.student_id
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc ON a.category_id = gc.category_id
GROUP BY g.student_id, s.first_name, s.last_name
ORDER BY g.student_id;

/*  Show course roster counts */
SELECT
    c.course_id,
    c.department,
    c.course_number,
    c.course_name,
    COUNT(e.student_id) AS enrolled_students
FROM Course c
LEFT JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id, c.department, c.course_number, c.course_name
ORDER BY c.course_id;

/*  Show professor assigned to each course */
SELECT DISTINCT
    c.course_id,
    c.department,
    c.course_number,
    c.course_name,
    p.professor_id,
    p.first_name,
    p.last_name
FROM Course c
JOIN Enrollment e ON c.course_id = e.course_id
JOIN Professor p ON e.professor_id = p.professor_id
ORDER BY c.course_id;

/*  Show all students with Q in last name */
SELECT student_id, first_name, last_name, email
FROM Student
WHERE last_name LIKE '%Q%'
ORDER BY last_name, first_name;

/* Verification counts */
SELECT COUNT(*) AS total_students FROM Student;
SELECT COUNT(*) AS total_professors FROM Professor;
SELECT COUNT(*) AS total_courses FROM Course;
SELECT COUNT(*) AS total_enrollments FROM Enrollment;
SELECT COUNT(*) AS total_grade_categories FROM GradeCategory;
SELECT COUNT(*) AS total_assignments FROM Assignment;
SELECT COUNT(*) AS total_grades FROM Grade;


-- =========================================================
-- Extra 
-- =========================================================

/* Final Grade Query for all Students*/
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade
FROM Grade g
JOIN Student s
    ON g.student_id = s.student_id
JOIN Assignment a
    ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc
    ON a.category_id = gc.category_id
JOIN Course c
    ON a.course_id = c.course_id
GROUP BY
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name
ORDER BY
    c.course_id,
    g.student_id;



/* Final Grade Query for one Student*/
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade
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
GROUP BY
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name;

/* Final Letter Grade Query for one Student*/
SELECT
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade,
    CASE
        WHEN ROUND(SUM(g.score * gc.weight / 100), 2) >= 90 THEN 'A'
        WHEN ROUND(SUM(g.score * gc.weight / 100), 2) >= 80 THEN 'B'
        WHEN ROUND(SUM(g.score * gc.weight / 100), 2) >= 70 THEN 'C'
        WHEN ROUND(SUM(g.score * gc.weight / 100), 2) >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade
FROM Grade g
JOIN Student s
    ON g.student_id = s.student_id
JOIN Assignment a
    ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc
    ON a.category_id = gc.category_id
JOIN Course c
    ON a.course_id = c.course_id
GROUP BY
    g.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.course_number,
    c.course_name
ORDER BY
    c.course_id,
    g.student_id;




