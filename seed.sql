-- =============================================================
-- GradeBook Database: seed.sql
-- Task 2: INSERT values into all tables
-- Task 3: SELECT * to show table contents
-- =============================================================

USE GradeBookDB;

-- -----------------------------------------------
-- INSERT DATA
-- -----------------------------------------------

INSERT INTO Student (student_id, first_name, last_name, email, phone_number) VALUES
(1,  'John',        'Doe',       'john.doe@example.com',             '123-456-7890'),
(2,  'Jane',        'Smith',     'jane.smith@example.com',           '987-654-3210'),
(3,  'Michael',     'Johnson',   'michael.johnson@example.com',      '555-123-4567'),
(4,  'Emily',       'Brown',     'emily.brown@example.com',          '999-888-7777'),
(5,  'David',       'Taylor',    'david.taylor@example.com',         '444-555-6666'),
(6,  'Jessica',     'Clark',     'jessica.clark@example.com',        '777-999-8888'),
(7,  'Christopher', 'Anderson',  'christopher.anderson@example.com', '222-333-4444'),
(8,  'Sarah',       'Martinez',  'sarah.martinez@example.com',       '666-777-8888'),
(9,  'Ryan',        'Harris',    'ryan.harris@example.com',          '111-222-3333'),
(10, 'Amanda',      'Young',     'amanda.young@example.com',         '888-999-0000');

INSERT INTO Professor (professor_id, first_name, last_name, email, phone_number) VALUES
(1, 'Michael', 'Johnson', 'prof.johnson@example.com', '555-123-4567'),
(2, 'Emily',   'Brown',   'prof.brown@example.com',   '999-888-7777'),
(3, 'David',   'Taylor',  'prof.taylor@example.com',  '444-555-6666'),
(4, 'Jessica', 'Clark',   'prof.clark@example.com',   '777-999-8888');

INSERT INTO Course (course_id, department, course_number, semester, year, course_name) VALUES
(1, 'Mathematics', 'MATH101', 'Fall',   2024, 'Statistics'),
(2, 'Mathematics', 'MATH102', 'Fall',   2024, 'Calculus'),
(3, 'Mathematics', 'MATH103', 'Spring', 2025, 'Algebra'),
(4, 'Biology',     'BIO101',  'Fall',   2024, 'Biology'),
(5, 'Chemistry',   'CHEM101', 'Spring', 2025, 'Chemistry'),
(6, 'Physics',     'PHYS101', 'Fall',   2024, 'Physics'),
(7, 'Psychology',  'PSYC101', 'Spring', 2025, 'Psychology'),
(8, 'Mathematics', 'MATH104', 'Fall',   2024, 'Discrete Mathematics');

INSERT INTO Enrollment (enrollment_id, student_id, professor_id, course_id) VALUES
(1,  1,  1, 1),
(2,  2,  2, 2),
(3,  3,  3, 3),
(4,  4,  4, 4),
(5,  5,  1, 5),
(6,  6,  2, 6),
(7,  7,  3, 7),
(8,  8,  4, 8),
(9,  9,  1, 1),
(10, 10, 2, 2);

INSERT INTO GradeCategory (category_id, course_id, name, weight) VALUES
(1,  1, 'Participation', 10.00), (2,  1, 'Homework', 20.00), (3,  1, 'Tests', 50.00), (4,  1, 'Projects', 20.00),
(5,  2, 'Participation', 10.00), (6,  2, 'Homework', 25.00), (7,  2, 'Tests', 45.00), (8,  2, 'Projects', 20.00),
(9,  3, 'Participation', 10.00), (10, 3, 'Homework', 30.00), (11, 3, 'Tests', 40.00), (12, 3, 'Projects', 20.00),
(13, 4, 'Participation', 10.00), (14, 4, 'Homework', 25.00), (15, 4, 'Tests', 50.00), (16, 4, 'Projects', 15.00),
(17, 5, 'Participation', 10.00), (18, 5, 'Homework', 30.00), (19, 5, 'Tests', 40.00), (20, 5, 'Projects', 20.00),
(21, 6, 'Participation', 10.00), (22, 6, 'Homework', 20.00), (23, 6, 'Tests', 50.00), (24, 6, 'Projects', 20.00),
(25, 7, 'Participation', 10.00), (26, 7, 'Homework', 25.00), (27, 7, 'Tests', 45.00), (28, 7, 'Projects', 20.00),
(29, 8, 'Participation', 10.00), (30, 8, 'Homework', 30.00), (31, 8, 'Tests', 40.00), (32, 8, 'Projects', 20.00);

INSERT INTO Assignment (assignment_id, course_id, category_id, title, description, max_points) VALUES
(1,  1, 1,  'Participation Assignment', 'Active participation in Statistics class.',          100.00),
(2,  1, 2,  'Homework Assignment',      'Statistics homework problems from chapter 1.',        100.00),
(3,  1, 3,  'Midterm Exam',             'Statistics midterm exam covering chapters 1-3.',      100.00),
(4,  1, 4,  'Project Proposal',         'Statistics project proposal for the semester.',       100.00),
(5,  2, 5,  'Participation Assignment', 'Active participation in Calculus class.',             100.00),
(6,  2, 6,  'Homework Assignment',      'Calculus homework provided in class.',                100.00),
(7,  2, 7,  'Midterm Exam',             'Calculus midterm exam covering calculus topics.',     100.00),
(8,  2, 8,  'Project Proposal',         'Calculus project proposal for the semester.',         100.00),
(9,  3, 9,  'Participation Assignment', 'Active participation in Algebra class.',              100.00),
(10, 3, 10, 'Homework Assignment',      'Algebra homework problems from the textbook.',        100.00),
(11, 3, 11, 'Midterm Exam',             'Algebra midterm exam covering algebra topics.',       100.00),
(12, 3, 12, 'Project Proposal',         'Algebra project proposal for the semester.',          100.00),
(13, 4, 13, 'Participation Assignment', 'Active participation in Biology class.',              100.00),
(14, 4, 14, 'Lab Report',               'Biology lab report based on conducted experiments.',  100.00),
(15, 4, 15, 'Midterm Exam',             'Biology midterm exam covering biology topics.',       100.00),
(16, 4, 16, 'Research Proposal',        'Biology research proposal for the semester.',         100.00),
(17, 5, 17, 'Participation Assignment', 'Active participation in Chemistry class.',            100.00),
(18, 5, 18, 'Lab Report',               'Chemistry lab report based on experiments.',          100.00),
(19, 5, 19, 'Midterm Exam',             'Chemistry midterm exam covering chemistry topics.',   100.00),
(20, 5, 20, 'Research Proposal',        'Chemistry research proposal for the semester.',       100.00),
(21, 6, 21, 'Participation Assignment', 'Active participation in Physics class.',              100.00),
(22, 6, 22, 'Homework Assignment',      'Physics homework problems from the textbook.',        100.00),
(23, 6, 23, 'Midterm Exam',             'Physics midterm exam covering physics topics.',       100.00),
(24, 6, 24, 'Project Proposal',         'Physics project proposal for the semester.',          100.00),
(25, 7, 25, 'Participation Assignment', 'Active participation in Psychology class.',           100.00),
(26, 7, 26, 'Research Paper',           'Research paper on a psychology topic.',               100.00),
(27, 7, 27, 'Midterm Exam',             'Psychology midterm exam covering psychology topics.', 100.00),
(28, 7, 28, 'Research Proposal',        'Psychology research proposal for the semester.',      100.00),
(29, 8, 29, 'Participation Assignment', 'Active participation in Discrete Mathematics class.', 100.00),
(30, 8, 30, 'Problem Set',              'Discrete Mathematics problem set.',                   100.00),
(31, 8, 31, 'Midterm Exam',             'Discrete Mathematics midterm exam.',                  100.00),
(32, 8, 32, 'Project Proposal',         'Discrete Mathematics project proposal.',              100.00);

INSERT INTO Grade (grade_id, student_id, assignment_id, score, comments) VALUES
(1,  1, 1,  95.50, 'Excellent participation in Statistics.'),
(2,  1, 2,  88.75, 'Good effort on Statistics homework.'),
(3,  1, 3,  85.00, 'Well done on the Statistics midterm.'),
(4,  1, 4,  NULL,  'Please submit your Statistics project proposal.'),
(5,  2, 5,  92.00, 'Great participation in Calculus.'),
(6,  2, 6,  80.25, 'Good work on Calculus homework.'),
(7,  2, 7,  87.50, 'Well done on the Calculus midterm.'),
(8,  2, 8,  NULL,  'Remember to submit your Calculus project proposal.'),
(9,  3, 9,  90.75, 'Excellent participation in Algebra.'),
(10, 3, 10, 85.50, 'Good effort on Algebra homework.'),
(11, 3, 11, 92.00, 'Well done on the Algebra midterm.'),
(12, 3, 12, NULL,  'Submit your Algebra project proposal.'),
(13, 4, 13, 88.00, 'Great participation in Biology.'),
(14, 4, 14, 82.25, 'Well-written Biology lab report.'),
(15, 4, 15, 90.50, 'Excellent Biology midterm performance.'),
(16, 4, 16, NULL,  'Submit your Biology research proposal.'),
(17, 5, 17, 85.75, 'Active participation in Chemistry.'),
(18, 5, 18, 79.50, 'Detailed Chemistry lab report.'),
(19, 5, 19, 88.25, 'Well done on the Chemistry midterm.'),
(20, 5, 20, NULL,  'Submit your Chemistry research proposal.'),
(21, 6, 21, 91.25, 'Great participation in Physics.'),
(22, 6, 22, 84.75, 'Good work on Physics homework.'),
(23, 6, 23, 89.00, 'Well done on the Physics midterm.'),
(24, 6, 24, NULL,  'Submit your Physics project proposal.'),
(25, 7, 25, 86.50, 'Active participation in Psychology.'),
(26, 7, 26, 81.25, 'Well-researched Psychology paper.'),
(27, 7, 27, 88.75, 'Well done on the Psychology midterm.'),
(28, 7, 28, NULL,  'Submit your Psychology research proposal.'),
(29, 8, 29, 89.75, 'Excellent participation in Discrete Mathematics.'),
(30, 8, 30, 83.00, 'Good work on the Discrete Mathematics problem set.'),
(31, 8, 31, 90.25, 'Well done on the Discrete Mathematics midterm.'),
(32, 8, 32, NULL,  'Submit your Discrete Mathematics project proposal.');

-- -----------------------------------------------
-- Task 3: Show table contents
-- -----------------------------------------------

SELECT * FROM Student;
SELECT * FROM Professor;
SELECT * FROM Course;
SELECT * FROM Enrollment;
SELECT * FROM GradeCategory;
SELECT * FROM Assignment;
SELECT * FROM Grade;
