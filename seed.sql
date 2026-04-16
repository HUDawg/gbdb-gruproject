-- =============================================================
-- GradeBook Database: seed.sql
-- Task 2: INSERT values into all tables
-- Task 3: SELECT * to show table contents
-- =============================================================

-- =========================================================
-- DATA INSERTS
-- =========================================================
-- Insert 20 professors (one per course)

INSERT INTO Professor (first_name, last_name, email, phone_number) VALUES
('Alma','Bennett','alma.bennett@college.edu','301-555-2001'),
('Bruce','Carson','bruce.carson@college.edu','301-555-2002'),
('Cynthia','Donovan','cynthia.donovan@college.edu','301-555-2003'),
('Derek','Everett','derek.everett@college.edu','301-555-2004'),
('Elaine','Farley','elaine.farley@college.edu','301-555-2005'),
('Frederick','Goodwin','frederick.goodwin@college.edu','301-555-2006'),
('Gloria','Hollis','gloria.hollis@college.edu','301-555-2007'),
('Harold','Iverson','harold.iverson@college.edu','301-555-2008'),
('Irene','Jamison','irene.jamison@college.edu','301-555-2009'),
('Julian','Keating','julian.keating@college.edu','301-555-2010'),
('Kendra','Lennox','kendra.lennox@college.edu','301-555-2011'),
('Leon','Montgomery','leon.montgomery@college.edu','301-555-2012'),
('Monica','North','monica.north@college.edu','301-555-2013'),
('Neil','Prescott','neil.prescott@college.edu','301-555-2014'),
('Opal','Rutherford','opal.rutherford@college.edu','301-555-2015'),
('Preston','Sinclair','preston.sinclair@college.edu','301-555-2016'),
('Renee','Templeton','renee.templeton@college.edu','301-555-2017'),
('Sidney','Vaughn','sidney.vaughn@college.edu','301-555-2018'),
('Theresa','Whitaker','theresa.whitaker@college.edu','301-555-2019'),
('Victor','Callahan','victor.callahan@college.edu','301-555-2020');


-- Each course is assigned to exactly one professor
-- (enforces 1-to-many: Professor → Course)

INSERT INTO Course (professor_id, department, course_number, semester, year, course_name) VALUES
(1,'Mathematics','MATH201','Fall',2025,'Calculus I'),
(2,'Mathematics','MATH202','Spring',2025,'Linear Algebra'),
(3,'Mathematics','MATH301','Fall',2026,'Probability Theory'),
(4,'Mathematics','MATH320','Spring',2026,'Discrete Structures'),
(5,'Biology','BIO110','Fall',2025,'General Biology I'),
(6,'Biology','BIO220','Spring',2025,'Genetics'),
(7,'Biology','BIO310','Fall',2026,'Microbiology'),
(8,'Biology','BIO330','Spring',2026,'Ecology'),
(9,'Chemistry','CHEM101','Fall',2025,'General Chemistry I'),
(10,'Chemistry','CHEM210','Spring',2025,'Organic Chemistry I'),
(11,'Chemistry','CHEM320','Fall',2026,'Analytical Chemistry'),
(12,'Chemistry','CHEM340','Spring',2026,'Biochemistry'),
(13,'Physics','PHYS111','Fall',2025,'College Physics I'),
(14,'Physics','PHYS221','Spring',2025,'University Physics I'),
(15,'Physics','PHYS310','Fall',2026,'Modern Physics'),
(16,'Physics','PHYS330','Spring',2026,'Thermodynamics'),
(17,'Computer Science','CS101','Fall',2025,'Introduction to Programming'),
(18,'Computer Science','CS210','Spring',2025,'Data Structures'),
(19,'Computer Science','CS320','Fall',2026,'Database Systems'),
(20,'Computer Science','CS350','Spring',2026,'Computer Networks');


-- Insert 200 students with unique email and phone
-- Includes diverse last names for testing (e.g., 'Q' cases)

INSERT INTO Student (first_name, last_name, email, phone_number)
VALUES
    ('Aaron', 'Allen', 'aaron.allen1@studentmail.edu', '202-555-1001'),
    ('Aaliyah', 'Baker', 'aaliyah.baker2@studentmail.edu', '202-555-1002'),
    ('Adrian', 'Brooks', 'adrian.brooks3@studentmail.edu', '202-555-1003'),
    ('Aisha', 'Collins', 'aisha.collins4@studentmail.edu', '202-555-1004'),
    ('Alex', 'Diaz', 'alex.diaz5@studentmail.edu', '202-555-1005'),
    ('Alexa', 'Edwards', 'alexa.edwards6@studentmail.edu', '202-555-1006'),
    ('Amari', 'Foster', 'amari.foster7@studentmail.edu', '202-555-1007'),
    ('Amaya', 'Garcia', 'amaya.garcia8@studentmail.edu', '202-555-1008'),
    ('Andre', 'Hayes', 'andre.hayes9@studentmail.edu', '202-555-1009'),
    ('Angela', 'Irwin', 'angela.irwin10@studentmail.edu', '202-555-1010'),
    ('Anthony', 'Jacobs', 'anthony.jacobs11@studentmail.edu', '202-555-1011'),
    ('Aria', 'Keller', 'aria.keller12@studentmail.edu', '202-555-1012'),
    ('Ashton', 'Lane', 'ashton.lane13@studentmail.edu', '202-555-1013'),
    ('Aubrey', 'Mitchell', 'aubrey.mitchell14@studentmail.edu', '202-555-1014'),
    ('Austin', 'Nguyen', 'austin.nguyen15@studentmail.edu', '202-555-1015'),
    ('Ava', 'Owens', 'ava.owens16@studentmail.edu', '202-555-1016'),
    ('Benjamin', 'Parker', 'benjamin.parker17@studentmail.edu', '202-555-1017'),
    ('Brianna', 'Quinn', 'brianna.quinn18@studentmail.edu', '202-555-1018'),
    ('Bryce', 'Reed', 'bryce.reed19@studentmail.edu', '202-555-1019'),
    ('Cameron', 'Stewart', 'cameron.stewart20@studentmail.edu', '202-555-1020'),
    ('Carla', 'Turner', 'carla.turner21@studentmail.edu', '202-555-1021'),
    ('Carlos', 'Underwood', 'carlos.underwood22@studentmail.edu', '202-555-1022'),
    ('Carmen', 'Valdez', 'carmen.valdez23@studentmail.edu', '202-555-1023'),
    ('Carter', 'Walker', 'carter.walker24@studentmail.edu', '202-555-1024'),
    ('Celeste', 'Xu', 'celeste.xu25@studentmail.edu', '202-555-1025'),
    ('Charles', 'Young', 'charles.young26@studentmail.edu', '202-555-1026'),
    ('Chloe', 'Zuniga', 'chloe.zuniga27@studentmail.edu', '202-555-1027'),
    ('Christian', 'Anderson', 'christian.anderson28@studentmail.edu', '202-555-1028'),
    ('Claire', 'Bennett', 'claire.bennett29@studentmail.edu', '202-555-1029'),
    ('Connor', 'Cruz', 'connor.cruz30@studentmail.edu', '202-555-1030'),
    ('Daniel', 'Dawson', 'daniel.dawson31@studentmail.edu', '202-555-1031'),
    ('Daniela', 'Ellis', 'daniela.ellis32@studentmail.edu', '202-555-1032'),
    ('David', 'Franklin', 'david.franklin33@studentmail.edu', '202-555-1033'),
    ('Delilah', 'Griffin', 'delilah.griffin34@studentmail.edu', '202-555-1034'),
    ('Destiny', 'Howard', 'destiny.howard35@studentmail.edu', '202-555-1035'),
    ('Dominic', 'Ingram', 'dominic.ingram36@studentmail.edu', '202-555-1036'),
    ('Eden', 'Jenkins', 'eden.jenkins37@studentmail.edu', '202-555-1037'),
    ('Eli', 'Kim', 'eli.kim38@studentmail.edu', '202-555-1038'),
    ('Elijah', 'Lopez', 'elijah.lopez39@studentmail.edu', '202-555-1039'),
    ('Elise', 'Morris', 'elise.morris40@studentmail.edu', '202-555-1040'),
    ('Ella', 'Nelson', 'ella.nelson41@studentmail.edu', '202-555-1041'),
    ('Emily', 'Ortiz', 'emily.ortiz42@studentmail.edu', '202-555-1042'),
    ('Eric', 'Price', 'eric.price43@studentmail.edu', '202-555-1043'),
    ('Ethan', 'Quarles', 'ethan.quarles44@studentmail.edu', '202-555-1044'),
    ('Eva', 'Roberts', 'eva.roberts45@studentmail.edu', '202-555-1045'),
    ('Evan', 'Sanders', 'evan.sanders46@studentmail.edu', '202-555-1046'),
    ('Faith', 'Thomas', 'faith.thomas47@studentmail.edu', '202-555-1047'),
    ('Gabriel', 'Usher', 'gabriel.usher48@studentmail.edu', '202-555-1048'),
    ('Gabriella', 'Vasquez', 'gabriella.vasquez49@studentmail.edu', '202-555-1049'),
    ('Gavin', 'Ward', 'gavin.ward50@studentmail.edu', '202-555-1050'),
    ('Genesis', 'Bailey', 'genesis.bailey51@studentmail.edu', '202-555-1051'),
    ('Gianna', 'Campbell', 'gianna.campbell52@studentmail.edu', '202-555-1052'),
    ('Grace', 'Donovan', 'grace.donovan53@studentmail.edu', '202-555-1053'),
    ('Hailey', 'Evans', 'hailey.evans54@studentmail.edu', '202-555-1054'),
    ('Hannah', 'Flores', 'hannah.flores55@studentmail.edu', '202-555-1055'),
    ('Hudson', 'Green', 'hudson.green56@studentmail.edu', '202-555-1056'),
    ('Hunter', 'Hughes', 'hunter.hughes57@studentmail.edu', '202-555-1057'),
    ('Ian', 'Iverson', 'ian.iverson58@studentmail.edu', '202-555-1058'),
    ('Isaac', 'Johnson', 'isaac.johnson59@studentmail.edu', '202-555-1059'),
    ('Isabella', 'King', 'isabella.king60@studentmail.edu', '202-555-1060'),
    ('Jace', 'Lewis', 'jace.lewis61@studentmail.edu', '202-555-1061'),
    ('Jack', 'Morgan', 'jack.morgan62@studentmail.edu', '202-555-1062'),
    ('Jackson', 'Norris', 'jackson.norris63@studentmail.edu', '202-555-1063'),
    ('Jada', 'Oliver', 'jada.oliver64@studentmail.edu', '202-555-1064'),
    ('Jaden', 'Perez', 'jaden.perez65@studentmail.edu', '202-555-1065'),
    ('Jasmine', 'Quade', 'jasmine.quade66@studentmail.edu', '202-555-1066'),
    ('Javier', 'Ramirez', 'javier.ramirez67@studentmail.edu', '202-555-1067'),
    ('Jayla', 'Scott', 'jayla.scott68@studentmail.edu', '202-555-1068'),
    ('Jeremiah', 'Taylor', 'jeremiah.taylor69@studentmail.edu', '202-555-1069'),
    ('Jessica', 'Ulrich', 'jessica.ulrich70@studentmail.edu', '202-555-1070'),
    ('Joel', 'Vaughn', 'joel.vaughn71@studentmail.edu', '202-555-1071'),
    ('John', 'White', 'john.white72@studentmail.edu', '202-555-1072'),
    ('Jordan', 'Xavier', 'jordan.xavier73@studentmail.edu', '202-555-1073'),
    ('Jose', 'York', 'jose.york74@studentmail.edu', '202-555-1074'),
    ('Joseph', 'Zimmerman', 'joseph.zimmerman75@studentmail.edu', '202-555-1075'),
    ('Joshua', 'Adams', 'joshua.adams76@studentmail.edu', '202-555-1076'),
    ('Julia', 'Bryant', 'julia.bryant77@studentmail.edu', '202-555-1077'),
    ('Julian', 'Carter', 'julian.carter78@studentmail.edu', '202-555-1078'),
    ('Justin', 'Douglas', 'justin.douglas79@studentmail.edu', '202-555-1079'),
    ('Kai', 'Emerson', 'kai.emerson80@studentmail.edu', '202-555-1080'),
    ('Kayla', 'Fleming', 'kayla.fleming81@studentmail.edu', '202-555-1081'),
    ('Kevin', 'Gibson', 'kevin.gibson82@studentmail.edu', '202-555-1082'),
    ('Kiara', 'Horton', 'kiara.horton83@studentmail.edu', '202-555-1083'),
    ('Kyle', 'Innes', 'kyle.innes84@studentmail.edu', '202-555-1084'),
    ('Laila', 'James', 'laila.james85@studentmail.edu', '202-555-1085'),
    ('Landon', 'Knight', 'landon.knight86@studentmail.edu', '202-555-1086'),
    ('Lauren', 'Lawson', 'lauren.lawson87@studentmail.edu', '202-555-1087'),
    ('Layla', 'Miles', 'layla.miles88@studentmail.edu', '202-555-1088'),
    ('Leah', 'Nash', 'leah.nash89@studentmail.edu', '202-555-1089'),
    ('Leo', 'Odom', 'leo.odom90@studentmail.edu', '202-555-1090'),
    ('Liam', 'Porter', 'liam.porter91@studentmail.edu', '202-555-1091'),
    ('Lila', 'Quincy', 'lila.quincy92@studentmail.edu', '202-555-1092'),
    ('Logan', 'Ross', 'logan.ross93@studentmail.edu', '202-555-1093'),
    ('Lucas', 'Simmons', 'lucas.simmons94@studentmail.edu', '202-555-1094'),
    ('Lucy', 'Tucker', 'lucy.tucker95@studentmail.edu', '202-555-1095'),
    ('Luna', 'Ussery', 'luna.ussery96@studentmail.edu', '202-555-1096'),
    ('Lydia', 'Vincent', 'lydia.vincent97@studentmail.edu', '202-555-1097'),
    ('Mackenzie', 'Walters', 'mackenzie.walters98@studentmail.edu', '202-555-1098'),
    ('Madeline', 'Xiong', 'madeline.xiong99@studentmail.edu', '202-555-1099'),
    ('Marcus', 'Yates', 'marcus.yates100@studentmail.edu', '202-555-1100'),
    ('Aaron', 'Baker', 'aaron.baker101@studentmail.edu', '202-555-1101'),
    ('Aaliyah', 'Brooks', 'aaliyah.brooks102@studentmail.edu', '202-555-1102'),
    ('Adrian', 'Collins', 'adrian.collins103@studentmail.edu', '202-555-1103'),
    ('Aisha', 'Diaz', 'aisha.diaz104@studentmail.edu', '202-555-1104'),
    ('Alex', 'Edwards', 'alex.edwards105@studentmail.edu', '202-555-1105'),
    ('Alexa', 'Foster', 'alexa.foster106@studentmail.edu', '202-555-1106'),
    ('Amari', 'Garcia', 'amari.garcia107@studentmail.edu', '202-555-1107'),
    ('Amaya', 'Hayes', 'amaya.hayes108@studentmail.edu', '202-555-1108'),
    ('Andre', 'Irwin', 'andre.irwin109@studentmail.edu', '202-555-1109'),
    ('Angela', 'Jacobs', 'angela.jacobs110@studentmail.edu', '202-555-1110'),
    ('Anthony', 'Keller', 'anthony.keller111@studentmail.edu', '202-555-1111'),
    ('Aria', 'Lane', 'aria.lane112@studentmail.edu', '202-555-1112'),
    ('Ashton', 'Mitchell', 'ashton.mitchell113@studentmail.edu', '202-555-1113'),
    ('Aubrey', 'Nguyen', 'aubrey.nguyen114@studentmail.edu', '202-555-1114'),
    ('Austin', 'Owens', 'austin.owens115@studentmail.edu', '202-555-1115'),
    ('Ava', 'Parker', 'ava.parker116@studentmail.edu', '202-555-1116'),
    ('Benjamin', 'Quinn', 'benjamin.quinn117@studentmail.edu', '202-555-1117'),
    ('Brianna', 'Reed', 'brianna.reed118@studentmail.edu', '202-555-1118'),
    ('Bryce', 'Stewart', 'bryce.stewart119@studentmail.edu', '202-555-1119'),
    ('Cameron', 'Turner', 'cameron.turner120@studentmail.edu', '202-555-1120'),
    ('Carla', 'Underwood', 'carla.underwood121@studentmail.edu', '202-555-1121'),
    ('Carlos', 'Valdez', 'carlos.valdez122@studentmail.edu', '202-555-1122'),
    ('Carmen', 'Walker', 'carmen.walker123@studentmail.edu', '202-555-1123'),
    ('Carter', 'Xu', 'carter.xu124@studentmail.edu', '202-555-1124'),
    ('Celeste', 'Young', 'celeste.young125@studentmail.edu', '202-555-1125'),
    ('Charles', 'Zuniga', 'charles.zuniga126@studentmail.edu', '202-555-1126'),
    ('Chloe', 'Anderson', 'chloe.anderson127@studentmail.edu', '202-555-1127'),
    ('Christian', 'Bennett', 'christian.bennett128@studentmail.edu', '202-555-1128'),
    ('Claire', 'Cruz', 'claire.cruz129@studentmail.edu', '202-555-1129'),
    ('Connor', 'Dawson', 'connor.dawson130@studentmail.edu', '202-555-1130'),
    ('Daniel', 'Ellis', 'daniel.ellis131@studentmail.edu', '202-555-1131'),
    ('Daniela', 'Franklin', 'daniela.franklin132@studentmail.edu', '202-555-1132'),
    ('David', 'Griffin', 'david.griffin133@studentmail.edu', '202-555-1133'),
    ('Delilah', 'Howard', 'delilah.howard134@studentmail.edu', '202-555-1134'),
    ('Destiny', 'Ingram', 'destiny.ingram135@studentmail.edu', '202-555-1135'),
    ('Dominic', 'Jenkins', 'dominic.jenkins136@studentmail.edu', '202-555-1136'),
    ('Eden', 'Kim', 'eden.kim137@studentmail.edu', '202-555-1137'),
    ('Eli', 'Lopez', 'eli.lopez138@studentmail.edu', '202-555-1138'),
    ('Elijah', 'Morris', 'elijah.morris139@studentmail.edu', '202-555-1139'),
    ('Elise', 'Nelson', 'elise.nelson140@studentmail.edu', '202-555-1140'),
    ('Ella', 'Ortiz', 'ella.ortiz141@studentmail.edu', '202-555-1141'),
    ('Emily', 'Price', 'emily.price142@studentmail.edu', '202-555-1142'),
    ('Eric', 'Quarles', 'eric.quarles143@studentmail.edu', '202-555-1143'),
    ('Ethan', 'Roberts', 'ethan.roberts144@studentmail.edu', '202-555-1144'),
    ('Eva', 'Sanders', 'eva.sanders145@studentmail.edu', '202-555-1145'),
    ('Evan', 'Thomas', 'evan.thomas146@studentmail.edu', '202-555-1146'),
    ('Faith', 'Usher', 'faith.usher147@studentmail.edu', '202-555-1147'),
    ('Gabriel', 'Vasquez', 'gabriel.vasquez148@studentmail.edu', '202-555-1148'),
    ('Gabriella', 'Ward', 'gabriella.ward149@studentmail.edu', '202-555-1149'),
    ('Gavin', 'Bailey', 'gavin.bailey150@studentmail.edu', '202-555-1150'),
    ('Genesis', 'Campbell', 'genesis.campbell151@studentmail.edu', '202-555-1151'),
    ('Gianna', 'Donovan', 'gianna.donovan152@studentmail.edu', '202-555-1152'),
    ('Grace', 'Evans', 'grace.evans153@studentmail.edu', '202-555-1153'),
    ('Hailey', 'Flores', 'hailey.flores154@studentmail.edu', '202-555-1154'),
    ('Hannah', 'Green', 'hannah.green155@studentmail.edu', '202-555-1155'),
    ('Hudson', 'Hughes', 'hudson.hughes156@studentmail.edu', '202-555-1156'),
    ('Hunter', 'Iverson', 'hunter.iverson157@studentmail.edu', '202-555-1157'),
    ('Ian', 'Johnson', 'ian.johnson158@studentmail.edu', '202-555-1158'),
    ('Isaac', 'King', 'isaac.king159@studentmail.edu', '202-555-1159'),
    ('Isabella', 'Lewis', 'isabella.lewis160@studentmail.edu', '202-555-1160'),
    ('Jace', 'Morgan', 'jace.morgan161@studentmail.edu', '202-555-1161'),
    ('Jack', 'Norris', 'jack.norris162@studentmail.edu', '202-555-1162'),
    ('Jackson', 'Oliver', 'jackson.oliver163@studentmail.edu', '202-555-1163'),
    ('Jada', 'Perez', 'jada.perez164@studentmail.edu', '202-555-1164'),
    ('Jaden', 'Quade', 'jaden.quade165@studentmail.edu', '202-555-1165'),
    ('Jasmine', 'Ramirez', 'jasmine.ramirez166@studentmail.edu', '202-555-1166'),
    ('Javier', 'Scott', 'javier.scott167@studentmail.edu', '202-555-1167'),
    ('Jayla', 'Taylor', 'jayla.taylor168@studentmail.edu', '202-555-1168'),
    ('Jeremiah', 'Ulrich', 'jeremiah.ulrich169@studentmail.edu', '202-555-1169'),
    ('Jessica', 'Vaughn', 'jessica.vaughn170@studentmail.edu', '202-555-1170'),
    ('Joel', 'White', 'joel.white171@studentmail.edu', '202-555-1171'),
    ('John', 'Xavier', 'john.xavier172@studentmail.edu', '202-555-1172'),
    ('Jordan', 'York', 'jordan.york173@studentmail.edu', '202-555-1173'),
    ('Jose', 'Zimmerman', 'jose.zimmerman174@studentmail.edu', '202-555-1174'),
    ('Joseph', 'Adams', 'joseph.adams175@studentmail.edu', '202-555-1175'),
    ('Joshua', 'Bryant', 'joshua.bryant176@studentmail.edu', '202-555-1176'),
    ('Julia', 'Carter', 'julia.carter177@studentmail.edu', '202-555-1177'),
    ('Julian', 'Douglas', 'julian.douglas178@studentmail.edu', '202-555-1178'),
    ('Justin', 'Emerson', 'justin.emerson179@studentmail.edu', '202-555-1179'),
    ('Kai', 'Fleming', 'kai.fleming180@studentmail.edu', '202-555-1180'),
    ('Kayla', 'Gibson', 'kayla.gibson181@studentmail.edu', '202-555-1181'),
    ('Kevin', 'Horton', 'kevin.horton182@studentmail.edu', '202-555-1182'),
    ('Kiara', 'Innes', 'kiara.innes183@studentmail.edu', '202-555-1183'),
    ('Kyle', 'James', 'kyle.james184@studentmail.edu', '202-555-1184'),
    ('Laila', 'Knight', 'laila.knight185@studentmail.edu', '202-555-1185'),
    ('Landon', 'Lawson', 'landon.lawson186@studentmail.edu', '202-555-1186'),
    ('Lauren', 'Miles', 'lauren.miles187@studentmail.edu', '202-555-1187'),
    ('Layla', 'Nash', 'layla.nash188@studentmail.edu', '202-555-1188'),
    ('Leah', 'Odom', 'leah.odom189@studentmail.edu', '202-555-1189'),
    ('Leo', 'Porter', 'leo.porter190@studentmail.edu', '202-555-1190'),
    ('Liam', 'Quincy', 'liam.quincy191@studentmail.edu', '202-555-1191'),
    ('Lila', 'Ross', 'lila.ross192@studentmail.edu', '202-555-1192'),
    ('Logan', 'Simmons', 'logan.simmons193@studentmail.edu', '202-555-1193'),
    ('Lucas', 'Tucker', 'lucas.tucker194@studentmail.edu', '202-555-1194'),
    ('Lucy', 'Ussery', 'lucy.ussery195@studentmail.edu', '202-555-1195'),
    ('Luna', 'Vincent', 'luna.vincent196@studentmail.edu', '202-555-1196'),
    ('Lydia', 'Walters', 'lydia.walters197@studentmail.edu', '202-555-1197'),
    ('Mackenzie', 'Xiong', 'mackenzie.xiong198@studentmail.edu', '202-555-1198'),
    ('Madeline', 'Yates', 'madeline.yates199@studentmail.edu', '202-555-1199'),
    ('Marcus', 'Allen', 'marcus.allen200@studentmail.edu', '202-555-1200');


-- =========================================================
-- ENROLLMENT
-- Assigns 10 students per course (200 students, 20 courses)
-- =========================================================
-- Uses recursive sequence:
-- student_id 1–10 → course 1
-- student_id 11–20 → course 2
-- etc.

INSERT INTO Enrollment (student_id, course_id)
WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 200
)
SELECT
    n,
    CEILING(n / 10)
FROM seq;

-- =========================================================
-- GRADE CATEGORIES
-- =========================================================
-- Each course has:
-- Participation (10%)
-- Homework (25%)
-- Midterm Exam (30%)
-- Final Project (35%)
-- Total = 100%

INSERT INTO GradeCategory (course_id, name, weight)
SELECT c.course_id, cat.name, cat.weight
FROM Course c
CROSS JOIN (
    SELECT 'Participation' AS name, 10.00 AS weight
    UNION ALL SELECT 'Homework', 25.00
    UNION ALL SELECT 'Midterm Exam', 30.00
    UNION ALL SELECT 'Final Project', 35.00
) AS cat
ORDER BY c.course_id;



-- =========================================================
-- ASSIGNMENTS
-- =========================================================
-- Each category gets one assignment initially
-- (expanded later for Task 7 to support drop-lowest logic)

INSERT INTO Assignment (course_id, category_id, title, description)
SELECT
    gc.course_id,
    gc.category_id,
    CASE gc.name
        WHEN 'Participation' THEN 'Class Participation'
        WHEN 'Homework' THEN 'Homework Set 1'
        WHEN 'Midterm Exam' THEN 'Midterm Exam'
        WHEN 'Final Project' THEN 'Final Project'
    END AS title,
    CASE gc.name
        WHEN 'Participation' THEN 'Participation grade based on attendance, discussion, and class engagement.'
        WHEN 'Homework' THEN 'Homework assignment covering core concepts from the course.'
        WHEN 'Midterm Exam' THEN 'Midterm assessment covering the first half of the course.'
        WHEN 'Final Project' THEN 'Final project requiring research, analysis, and presentation of course material.'
    END AS description
FROM GradeCategory gc
ORDER BY gc.course_id, gc.category_id;



-- =========================================================
-- GRADE GENERATION
-- =========================================================

-- Grades are generated using:
-- 1. Student performance tiers (based on student_id)
-- 2. Assignment difficulty adjustments by category
-- 3. Small deterministic variation

-- This creates realistic grade distributions:
-- strong / average / weak students

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
                    /* student performance base */
                    CASE
                        WHEN MOD(e.student_id, 10) IN (1, 2) THEN 95
                        WHEN MOD(e.student_id, 10) IN (3, 4) THEN 85
                        WHEN MOD(e.student_id, 10) IN (5, 6, 7) THEN 75
                        WHEN MOD(e.student_id, 10) IN (8, 9) THEN 65
                        ELSE 55
                    END

                    /* assignment difficulty adjustment */
                    +
                    CASE gc.name
                        WHEN 'Participation' THEN 5
                        WHEN 'Homework' THEN 0
                        WHEN 'Midterm Exam' THEN -10
                        WHEN 'Final Project' THEN -5
                    END

                    /* assignment-specific variation */
                    + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                )
            )
        ),
        2
    ) AS score,
    CASE
        WHEN
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
                        + CASE gc.name
                            WHEN 'Participation' THEN 5
                            WHEN 'Homework' THEN 0
                            WHEN 'Midterm Exam' THEN -10
                            WHEN 'Final Project' THEN -5
                        END
                        + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                    )
                )
            ) >= 90 THEN 'Excellent work.'
        WHEN
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
                        + CASE gc.name
                            WHEN 'Participation' THEN 5
                            WHEN 'Homework' THEN 0
                            WHEN 'Midterm Exam' THEN -10
                            WHEN 'Final Project' THEN -5
                        END
                        + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                    )
                )
            ) >= 80 THEN 'Good performance.'
        WHEN
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
                        + CASE gc.name
                            WHEN 'Participation' THEN 5
                            WHEN 'Homework' THEN 0
                            WHEN 'Midterm Exam' THEN -10
                            WHEN 'Final Project' THEN -5
                        END
                        + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                    )
                )
            ) >= 70 THEN 'Satisfactory work.'
        WHEN
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
                        + CASE gc.name
                            WHEN 'Participation' THEN 5
                            WHEN 'Homework' THEN 0
                            WHEN 'Midterm Exam' THEN -10
                            WHEN 'Final Project' THEN -5
                        END
                        + MOD(a.assignment_id * 3 + e.student_id, 8) - 4
                    )
                )
            ) >= 60 THEN 'Needs improvement.'
        ELSE 'Unsatisfactory performance.'
    END AS comments
FROM Enrollment e
JOIN Assignment a
    ON e.course_id = a.course_id
JOIN GradeCategory gc
    ON a.category_id = gc.category_id
ORDER BY e.student_id, a.assignment_id;

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

-- =========================================================
-- VERIFICATION QUERIES
-- =========================================================

SELECT COUNT(*) AS total_students FROM Student;
SELECT COUNT(*) AS total_professors FROM Professor;
SELECT COUNT(*) AS total_courses FROM Course;
SELECT COUNT(*) AS total_enrollments FROM Enrollment;
SELECT COUNT(*) AS total_grade_categories FROM GradeCategory;
SELECT COUNT(*) AS total_assignments FROM Assignment;
SELECT COUNT(*) AS total_grades FROM Grade;

/* Students Enrolled Per Course */
SELECT course_id, COUNT(*) AS enrolled_students
FROM Enrollment
GROUP BY course_id
ORDER BY course_id;


SELECT
    g.student_id,
    ROUND(SUM(g.score * gc.weight / 100), 2) AS final_grade
FROM Grade g
JOIN Assignment a ON g.assignment_id = a.assignment_id
JOIN GradeCategory gc ON a.category_id = gc.category_id
WHERE g.student_id = 1
GROUP BY g.student_id;


/* See Grades totals per Letter Grade */
SELECT
    CASE
        WHEN score >= 90 THEN 'A'
        WHEN score >= 80 THEN 'B'
        WHEN score >= 70 THEN 'C'
        WHEN score >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade,
    COUNT(*) AS total
FROM Grade
GROUP BY
    CASE
        WHEN score >= 90 THEN 'A'
        WHEN score >= 80 THEN 'B'
        WHEN score >= 70 THEN 'C'
        WHEN score >= 60 THEN 'D'
        ELSE 'F'
    END
ORDER BY letter_grade;

/* Course Legend */
SELECT
    c.course_id,
    c.professor_id,
    p.first_name AS professor_first_name,
    p.last_name AS professor_last_name,
    c.department,
    c.course_number,
    c.semester,
    c.year,
    c.course_name
FROM Course c
JOIN Professor p ON c.professor_id = p.professor_id
ORDER BY c.course_id;

/* Assignment Legend  */
SELECT
    a.assignment_id,
    a.course_id,
    c.course_number,
    c.course_name,
    a.category_id,
    gc.name AS category_name,
    gc.weight,
    a.title,
    a.description
FROM Assignment a
JOIN Course c ON a.course_id = c.course_id
JOIN GradeCategory gc ON a.category_id = gc.category_id
ORDER BY a.assignment_id;

/* Enrollmeent Legend */
SELECT 
    e.enrollment_id,
    e.student_id,
    s.first_name,
    s.last_name,
    e.course_id,
    c.course_number,
    c.course_name
FROM Enrollment e
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id
ORDER BY e.enrollment_id;

