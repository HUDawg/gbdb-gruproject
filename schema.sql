-- =============================================================
-- GradeBook Database: schema.sql
-- Task 2: Commands for creating tables
-- =============================================================

CREATE DATABASE IF NOT EXISTS GradeBookDB;
USE GradeBookDB;

-- Table 1: Student
CREATE TABLE Student (
    student_id   INT          PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Table 2: Professor
CREATE TABLE Professor (
    professor_id INT          PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Table 3: Course
CREATE TABLE Course (
    course_id     INT          PRIMARY KEY,
    department    VARCHAR(50)  NOT NULL,
    course_number VARCHAR(10)  NOT NULL,
    semester      VARCHAR(20)  NOT NULL,
    year          INT          NOT NULL,
    course_name   VARCHAR(100) NOT NULL
);

-- Table 4: Enrollment
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id    INT NOT NULL,
    professor_id  INT NOT NULL,
    course_id     INT NOT NULL,
    FOREIGN KEY (student_id)   REFERENCES Student(student_id),
    FOREIGN KEY (professor_id) REFERENCES Professor(professor_id),
    FOREIGN KEY (course_id)    REFERENCES Course(course_id)
);

-- Table 5: GradeCategory
CREATE TABLE GradeCategory (
    category_id INT          PRIMARY KEY,
    course_id   INT          NOT NULL,
    name        VARCHAR(50)  NOT NULL,
    weight      DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Table 6: Assignment
CREATE TABLE Assignment (
    assignment_id INT          PRIMARY KEY,
    course_id     INT          NOT NULL,
    category_id   INT          NOT NULL,
    title         VARCHAR(100) NOT NULL,
    description   TEXT,
    max_points    DECIMAL(6,2) NOT NULL DEFAULT 100.00,
    FOREIGN KEY (course_id)   REFERENCES Course(course_id),
    FOREIGN KEY (category_id) REFERENCES GradeCategory(category_id)
);

-- Table 7: Grade
CREATE TABLE Grade (
    grade_id      INT PRIMARY KEY,
    student_id    INT          NOT NULL,
    assignment_id INT          NOT NULL,
    score         DECIMAL(5,2),
    comments      TEXT,
    FOREIGN KEY (student_id)    REFERENCES Student(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignment(assignment_id)
);
