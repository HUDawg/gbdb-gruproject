# Task 1: ER Diagram — GradeBook Database

This document describes the Entity-Relationship (ER) diagram for the GradeBook Database. The ERD is represented below using a crows foot notation. In this design, grades are tied to students and assignments, not directly to professors. The professor’s role is represented indirectly through the course.

## Entity Descriptions

| Entity            | Description                                                          |
| ----------------- | -------------------------------------------------------------------- |
| **Student**       | A student enrolled at the university                                 |
| **Professor**     | A professor who teaches courses                                      |
| **Course**        | A course offered by a department in a given semester/year            |
| **Enrollment**    | Links a student to a course (resolves the many-to-many relationship) |
| **GradeCategory** | A grading category for a course (e.g., Homework 20%, Tests 50%)      |
| **Assignment**    | An individual assignment belonging to a category within a course     |
| **Grade**         | A student's score on a specific assignment                           |

## Relationships

- A **Student** can enroll in zero or many **Courses** (via Enrollment), and each Enrollment belongs to one and only one Student and one and only one Course

- A **Professor** can teach zero or many **Courses**, and each Course is taught by one and only one Professor

- A **Course** has one or many **GradeCategories**, and each GradeCategory belongs to one and only one Course

- A **GradeCategory** contains one or many **Assignments**, and each Assignment belongs to one and only one GradeCategory

- A **Course** includes one or many **Assignments**, and each Assignment belongs to one and only one Course

- A **Student** can receive zero or many **Grades**, and each Grade belongs to one and only one Student

- An **Assignment** can have zero or many **Grades**, and each Grade corresponds to one and only one Assignment

##  ER Diagram

<img width="2102" height="1360" alt="image" src="https://github.com/user-attachments/assets/c75b56a5-a17f-49c2-ae18-671de1e163be" />


## Key Constraints

- **Primary Keys (PK):** Each table has a unique integer primary key.
- **Foreign Keys (FK):** Enforce referential integrity between related tables.
- **GradeCategory.weight:** All weights per course must sum to **100%**.
- **Grade.score:** Can be NULL if the assignment has not been submitted yet.
