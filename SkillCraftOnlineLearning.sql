CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(120) UNIQUE,
    phone VARCHAR2(15),
    join_date DATE
);


CREATE TABLE instructors (
    instructor_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),                                                           
    specialization VARCHAR2(100),
    salary NUMBER(10,2)
);

DROP TABLE instructors  CASCADE CONSTRAINTS;



CREATE TABLE instructors (
    instructor_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),                                                           
    specialization VARCHAR2(100),
    salary NUMBER(10,2)
);                                                                                                      

CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    title VARCHAR2(150),
    course_level VARCHAR2(50),
    category VARCHAR2(100),
    instructor_id NUMBER,
    FOREIGN KEY (instructor_id)
    REFERENCES instructors(instructor_id)                                        
);

CREATE TABLE modules (
    module_id NUMBER PRIMARY KEY,
    course_id NUMBER,
    title VARCHAR2(150),
    order_no NUMBER,
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)                                                                                                               
);

CREATE TABLE lessons (
    lesson_id NUMBER PRIMARY KEY,
    module_id NUMBER,
    title VARCHAR2(150),
    duration NUMBER,
    type VARCHAR2(50),
    FOREIGN KEY (module_id)
    REFERENCES modules(module_id)
);

                                                                                                               
CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    enroll_date DATE,
    status VARCHAR2(20),
    FOREIGN KEY (student_id)
    REFERENCES students(student_id),
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);                                                                                         


CREATE TABLE payments (
    payment_id NUMBER PRIMARY KEY,
    enrollment_id NUMBER,
    amount NUMBER(10,2),
    status VARCHAR2(20),
    payment_date DATE,
    FOREIGN KEY (enrollment_id)
    REFERENCES enrollments(enrollment_id)
);                                                                                                               


CREATE TABLE assessments (
    assessment_id NUMBER PRIMARY KEY,
    course_id NUMBER,
    type VARCHAR2(50),
    total_marks NUMBER,
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);                                                                                        



CREATE TABLE assessment_scores (
    score_id NUMBER PRIMARY KEY,
    assessment_id NUMBER,
    student_id NUMBER,
    marks NUMBER,
    attempt_no NUMBER,
    FOREIGN KEY (assessment_id)
    REFERENCES assessments(assessment_id),
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
);
DROP TABLE assessment_scores CASCADE CONSTRAINTS;


CREATE TABLE assessment_scores (
    score_id NUMBER PRIMARY KEY,
    assessment_id NUMBER,
    student_id NUMBER,
    marks NUMBER,
    attempt_no NUMBER,
    FOREIGN KEY (assessment_id)
    REFERENCES assessments(assessment_id),
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
); 


CREATE TABLE certificates (
    cert_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    issue_date DATE,
    FOREIGN KEY (student_id)
    REFERENCES students(student_id),
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);                                                                                                                      

INSERT INTO instructors VALUES (1,'Arun','Java',45000);
INSERT INTO instructors VALUES (2,'Meena','Python',47000);
INSERT INTO instructors VALUES (3,'Karthik','Web Dev',50000);
INSERT INTO instructors VALUES (4,'Divya','UI/UX',42000);
INSERT INTO instructors VALUES (5,'Ravi','Data Science',55000);
INSERT INTO instructors VALUES (6,'Anu','AI',60000);
INSERT INTO instructors VALUES (7,'Suresh','Cloud',52000);
INSERT INTO instructors VALUES (8,'Priya','Testing',41000);
INSERT INTO instructors VALUES (9,'Vignesh','ML',58000);
INSERT INTO instructors VALUES (10,'Deepa','DBMS',46000);
INSERT INTO instructors VALUES (11,'Instructor11','Java',45000);
INSERT INTO instructors VALUES (12,'Instructor12','Python',47000);
INSERT INTO instructors VALUES (13,'Instructor13','Web',48000);
INSERT INTO instructors VALUES (14,'Instructor14','AI',50000);
INSERT INTO instructors VALUES (15,'Instructor15','Cloud',52000);
INSERT INTO instructors VALUES (16,'Instructor16','Testing',40000);
INSERT INTO instructors VALUES (17,'Instructor17','DBMS',43000);
INSERT INTO instructors VALUES (18,'Instructor18','ML',56000);
INSERT INTO instructors VALUES (19,'Instructor19','Data',54000);
INSERT INTO instructors VALUES (20,'Instructor20','UI',42000);
INSERT INTO instructors VALUES (21,'Instructor21','Java',45000);
INSERT INTO instructors VALUES (22,'Instructor22','Python',47000);
INSERT INTO instructors VALUES (23,'Instructor23','Web',48000);
INSERT INTO instructors VALUES (24,'Instructor24','AI',50000);
INSERT INTO instructors VALUES (25,'Instructor25','Cloud',52000);
INSERT INTO instructors VALUES (26,'Instructor26','Testing',40000);
INSERT INTO instructors VALUES (27,'Instructor27','DBMS',43000);
INSERT INTO instructors VALUES (28,'Instructor28','ML',56000);
INSERT INTO instructors VALUES (29,'Instructor29','Data',54000);
INSERT INTO instructors VALUES (30,'Instructor30','UI',42000);
INSERT INTO instructors VALUES (31,'Instructor31','Java',45000);
INSERT INTO instructors VALUES (32,'Instructor32','Python',47000);
INSERT INTO instructors VALUES (33,'Instructor33','Web',48000);
INSERT INTO instructors VALUES (34,'Instructor34','AI',50000);
INSERT INTO instructors VALUES (35,'Instructor35','Cloud',52000);
INSERT INTO instructors VALUES (36,'Instructor36','Testing',40000);
INSERT INTO instructors VALUES (37,'Instructor37','DBMS',43000);
INSERT INTO instructors VALUES (38,'Instructor38','ML',56000);
INSERT INTO instructors VALUES (39,'Instructor39','Data',54000);
INSERT INTO instructors VALUES (40,'Instructor40','UI',42000);
INSERT INTO instructors VALUES (41,'Instructor41','Java',45000);
INSERT INTO instructors VALUES (42,'Instructor42','Python',47000);
INSERT INTO instructors VALUES (43,'Instructor43','Web',48000);
INSERT INTO instructors VALUES (44,'Instructor44','AI',50000);
INSERT INTO instructors VALUES (45,'Instructor45','Cloud',52000);
INSERT INTO instructors VALUES (46,'Instructor46','Testing',40000);
INSERT INTO instructors VALUES (47,'Instructor47','DBMS',43000);
INSERT INTO instructors VALUES (48,'Instructor48','ML',56000);
INSERT INTO instructors VALUES (49,'Instructor49','Data',54000);
INSERT INTO instructors VALUES (50,'Instructor50','UI',42000);



select * from instructors;
INSERT INTO students VALUES (1,'Rahul','rahul1@gmail.com','9876543210',SYSDATE);
INSERT INTO students VALUES (2,'Sneha','sneha2@gmail.com','9876543211',SYSDATE);
INSERT INTO students VALUES (3,'Ajay','ajay3@gmail.com','9876543212',SYSDATE);
INSERT INTO students VALUES (4,'Kavya','kavya4@gmail.com','9876543213',SYSDATE);
INSERT INTO students VALUES (5,'Nithin','nithin5@gmail.com','9876543214',SYSDATE);
INSERT INTO students VALUES (6,'Student6','student6@gmail.com','9876543215',SYSDATE);
INSERT INTO students VALUES (7,'Student7','student7@gmail.com','9876543216',SYSDATE);
INSERT INTO students VALUES (8,'Student8','student8@gmail.com','9876543217',SYSDATE);
INSERT INTO students VALUES (9,'Student9','student9@gmail.com','9876543218',SYSDATE);
INSERT INTO students VALUES (10,'Student10','student10@gmail.com','9876543219',SYSDATE);

INSERT INTO students VALUES (11,'Student11','student11@gmail.com','9876543220',SYSDATE);
INSERT INTO students VALUES (12,'Student12','student12@gmail.com','9876543221',SYSDATE);
INSERT INTO students VALUES (13,'Student13','student13@gmail.com','9876543222',SYSDATE);
INSERT INTO students VALUES (14,'Student14','student14@gmail.com','9876543223',SYSDATE);
INSERT INTO students VALUES (15,'Student15','student15@gmail.com','9876543224',SYSDATE);

INSERT INTO students VALUES (16,'Student16','student16@gmail.com','9876543225',SYSDATE);
INSERT INTO students VALUES (17,'Student17','student17@gmail.com','9876543226',SYSDATE);
INSERT INTO students VALUES (18,'Student18','student18@gmail.com','9876543227',SYSDATE);
INSERT INTO students VALUES (19,'Student19','student19@gmail.com','9876543228',SYSDATE);
INSERT INTO students VALUES (20,'Student20','student20@gmail.com','9876543229',SYSDATE);

INSERT INTO students VALUES (21,'Student21','student21@gmail.com','9876543230',SYSDATE);
INSERT INTO students VALUES (22,'Student22','student22@gmail.com','9876543231',SYSDATE);
INSERT INTO students VALUES (23,'Student23','student23@gmail.com','9876543232',SYSDATE);
INSERT INTO students VALUES (24,'Student24','student24@gmail.com','9876543233',SYSDATE);
INSERT INTO students VALUES (25,'Student25','student25@gmail.com','9876543234',SYSDATE);

INSERT INTO students VALUES (26,'Student26','student26@gmail.com','9876543235',SYSDATE);
INSERT INTO students VALUES (27,'Student27','student27@gmail.com','9876543236',SYSDATE);
INSERT INTO students VALUES (28,'Student28','student28@gmail.com','9876543237',SYSDATE);
INSERT INTO students VALUES (29,'Student29','student29@gmail.com','9876543238',SYSDATE);
INSERT INTO students VALUES (30,'Student30','student30@gmail.com','9876543239',SYSDATE);
select * from students;

DELETE FROM students
WHERE student_id = 30;

INSERT INTO courses VALUES (1,'Java Basics','Beginner','Programming',1);
INSERT INTO courses VALUES (2,'Python Basics','Beginner','Programming',2);
INSERT INTO courses VALUES (3,'Web Development','Intermediate','Web',3);
INSERT INTO courses VALUES (4,'UI Design','Beginner','Design',4);
INSERT INTO courses VALUES (5,'Data Science','Advanced','Data',5);
INSERT INTO courses VALUES (6,'Machine Learning','Advanced','AI',6);
INSERT INTO courses VALUES (7,'Cloud Computing','Intermediate','Cloud',7);
INSERT INTO courses VALUES (8,'Software Testing','Beginner','Testing',8);
INSERT INTO courses VALUES (9,'Deep Learning','Advanced','AI',9);
INSERT INTO courses VALUES (10,'Database Systems','Intermediate','Database',10);

INSERT INTO courses VALUES (11,'Java Advanced','Advanced','Programming',11);
INSERT INTO courses VALUES (12,'Python Advanced','Advanced','Programming',12);
INSERT INTO courses VALUES (13,'Frontend Development','Intermediate','Web',13);
INSERT INTO courses VALUES (14,'UX Research','Beginner','Design',14);
INSERT INTO courses VALUES (15,'Big Data Analytics','Advanced','Data',15);

INSERT INTO courses VALUES (16,'Artificial Intelligence','Advanced','AI',16);
INSERT INTO courses VALUES (17,'DevOps Basics','Intermediate','Cloud',17);
INSERT INTO courses VALUES (18,'Automation Testing','Intermediate','Testing',18);
INSERT INTO courses VALUES (19,'Neural Networks','Advanced','AI',19);
INSERT INTO courses VALUES (20,'SQL Programming','Beginner','Database',20);

INSERT INTO courses VALUES (21,'Spring Framework','Advanced','Programming',21);
INSERT INTO courses VALUES (22,'Django Development','Intermediate','Programming',22);
INSERT INTO courses VALUES (23,'React JS','Intermediate','Web',23);
INSERT INTO courses VALUES (24,'Graphic Design','Beginner','Design',24);
INSERT INTO courses VALUES (25,'Data Visualization','Intermediate','Data',25);

INSERT INTO courses VALUES (26,'Computer Vision','Advanced','AI',26);
INSERT INTO courses VALUES (27,'AWS Fundamentals','Beginner','Cloud',27);
INSERT INTO courses VALUES (28,'Manual Testing','Beginner','Testing',28);
INSERT INTO courses VALUES (29,'Natural Language Processing','Advanced','AI',29);
INSERT INTO courses VALUES (30,'PL/SQL Programming','Intermediate','Database',30);
INSERT INTO courses VALUES (31,'React','Intermediate','Web',3);
INSERT INTO courses VALUES (32,'NodeJS','Intermediate','Web',3);
INSERT INTO courses VALUES (33,'JavaScript Advanced','Advanced','Web',3);


select * from courses;

INSERT INTO modules VALUES (1,1,'Module1',1);
INSERT INTO modules VALUES (2,2,'Module2',1);
INSERT INTO modules VALUES (3,3,'Module3',1);
INSERT INTO modules VALUES (4,4,'Module4',1);
INSERT INTO modules VALUES (5,5,'Module5',1);

INSERT INTO modules VALUES (6,6,'Module6',1);
INSERT INTO modules VALUES (7,7,'Module7',1);
INSERT INTO modules VALUES (8,8,'Module8',1);
INSERT INTO modules VALUES (9,9,'Module9',1);
INSERT INTO modules VALUES (10,10,'Module10',1);

INSERT INTO modules VALUES (11,11,'Module11',1);
INSERT INTO modules VALUES (12,12,'Module12',1);
INSERT INTO modules VALUES (13,13,'Module13',1);
INSERT INTO modules VALUES (14,14,'Module14',1);
INSERT INTO modules VALUES (15,15,'Module15',1);

INSERT INTO modules VALUES (16,16,'Module16',1);
INSERT INTO modules VALUES (17,17,'Module17',1);
INSERT INTO modules VALUES (18,18,'Module18',1);
INSERT INTO modules VALUES (19,19,'Module19',1);
INSERT INTO modules VALUES (20,20,'Module20',1);

INSERT INTO modules VALUES (21,21,'Module21',1);
INSERT INTO modules VALUES (22,22,'Module22',1);
INSERT INTO modules VALUES (23,23,'Module23',1);
INSERT INTO modules VALUES (24,24,'Module24',1);
INSERT INTO modules VALUES (25,25,'Module25',1);

INSERT INTO modules VALUES (26,26,'Module26',1);
INSERT INTO modules VALUES (27,27,'Module27',1);
INSERT INTO modules VALUES (28,28,'Module28',1);
INSERT INTO modules VALUES (29,29,'Module29',1);
INSERT INTO modules VALUES (30,30,'Module30',1);
select * from modules;

INSERT INTO lessons VALUES (1,1,'Lesson1',30,'Video');
INSERT INTO lessons VALUES (2,2,'Lesson2',35,'Video');
INSERT INTO lessons VALUES (3,3,'Lesson3',40,'Live');
INSERT INTO lessons VALUES (4,4,'Lesson4',25,'Video');
INSERT INTO lessons VALUES (5,5,'Lesson5',30,'Live');

INSERT INTO lessons VALUES (6,6,'Lesson6',45,'Video');
INSERT INTO lessons VALUES (7,7,'Lesson7',30,'Live');
INSERT INTO lessons VALUES (8,8,'Lesson8',35,'Video');
INSERT INTO lessons VALUES (9,9,'Lesson9',40,'Live');
INSERT INTO lessons VALUES (10,10,'Lesson10',30,'Video');

INSERT INTO lessons VALUES (11,11,'Lesson11',50,'Live');
INSERT INTO lessons VALUES (12,12,'Lesson12',30,'Video');
INSERT INTO lessons VALUES (13,13,'Lesson13',35,'Video');
INSERT INTO lessons VALUES (14,14,'Lesson14',40,'Live');
INSERT INTO lessons VALUES (15,15,'Lesson15',30,'Video');

INSERT INTO lessons VALUES (16,16,'Lesson16',45,'Live');
INSERT INTO lessons VALUES (17,17,'Lesson17',30,'Video');
INSERT INTO lessons VALUES (18,18,'Lesson18',35,'Live');
INSERT INTO lessons VALUES (19,19,'Lesson19',40,'Video');
INSERT INTO lessons VALUES (20,20,'Lesson20',30,'Live');

INSERT INTO lessons VALUES (21,21,'Lesson21',35,'Video');
INSERT INTO lessons VALUES (22,22,'Lesson22',40,'Live');
INSERT INTO lessons VALUES (23,23,'Lesson23',30,'Video');
INSERT INTO lessons VALUES (24,24,'Lesson24',45,'Live');
INSERT INTO lessons VALUES (25,25,'Lesson25',30,'Video');

INSERT INTO lessons VALUES (26,26,'Lesson26',35,'Live');
INSERT INTO lessons VALUES (27,27,'Lesson27',40,'Video');
INSERT INTO lessons VALUES (28,28,'Lesson28',30,'Live');
INSERT INTO lessons VALUES (29,29,'Lesson29',45,'Video');
INSERT INTO lessons VALUES (30,30,'Lesson30',30,'Live');
select * from lessons

INSERT INTO enrollments VALUES (1,1,1,SYSDATE,'active');
INSERT INTO enrollments VALUES (2,2,2,SYSDATE,'active');
INSERT INTO enrollments VALUES (3,3,3,SYSDATE,'active');
INSERT INTO enrollments VALUES (4,4,4,SYSDATE,'active');
INSERT INTO enrollments VALUES (5,5,5,SYSDATE,'active');

INSERT INTO enrollments VALUES (6,6,6,SYSDATE,'active');
INSERT INTO enrollments VALUES (7,7,7,SYSDATE,'active');
INSERT INTO enrollments VALUES (8,8,8,SYSDATE,'active');
INSERT INTO enrollments VALUES (9,9,9,SYSDATE,'active');
INSERT INTO enrollments VALUES (10,10,10,SYSDATE,'active');

INSERT INTO enrollments VALUES (11,11,11,SYSDATE,'active');
INSERT INTO enrollments VALUES (12,12,12,SYSDATE,'active');
INSERT INTO enrollments VALUES (13,13,13,SYSDATE,'active');
INSERT INTO enrollments VALUES (14,14,14,SYSDATE,'active');
INSERT INTO enrollments VALUES (15,15,15,SYSDATE,'active');

INSERT INTO enrollments VALUES (16,16,16,SYSDATE,'active');
INSERT INTO enrollments VALUES (17,17,17,SYSDATE,'active');
INSERT INTO enrollments VALUES (18,18,18,SYSDATE,'active');
INSERT INTO enrollments VALUES (19,19,19,SYSDATE,'active');
INSERT INTO enrollments VALUES (20,20,20,SYSDATE,'active');

INSERT INTO enrollments VALUES (21,21,21,SYSDATE,'active');
INSERT INTO enrollments VALUES (22,22,22,SYSDATE,'active');
INSERT INTO enrollments VALUES (23,23,23,SYSDATE,'active');
INSERT INTO enrollments VALUES (24,24,24,SYSDATE,'active');
INSERT INTO enrollments VALUES (25,25,25,SYSDATE,'active');

INSERT INTO enrollments VALUES (26,26,26,SYSDATE,'active');
INSERT INTO enrollments VALUES (27,27,27,SYSDATE,'active');
INSERT INTO enrollments VALUES (28,28,28,SYSDATE,'active');
INSERT INTO enrollments VALUES (29,29,29,SYSDATE,'active');
INSERT INTO enrollments VALUES (30,30,30,SYSDATE,'active');
select * from enrollments;

INSERT INTO payments VALUES (1,1,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (2,2,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (3,3,900,'paid',SYSDATE);
INSERT INTO payments VALUES (4,4,1500,'paid',SYSDATE);
INSERT INTO payments VALUES (5,5,1100,'paid',SYSDATE);
INSERT INTO payments VALUES (6,6,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (7,7,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (8,8,1300,'paid',SYSDATE);
INSERT INTO payments VALUES (9,9,1400,'paid',SYSDATE);
INSERT INTO payments VALUES (10,10,1000,'paid',SYSDATE);

INSERT INTO payments VALUES (11,11,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (12,12,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (13,13,900,'paid',SYSDATE);
INSERT INTO payments VALUES (14,14,1500,'paid',SYSDATE);
INSERT INTO payments VALUES (15,15,1100,'paid',SYSDATE);
INSERT INTO payments VALUES (16,16,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (17,17,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (18,18,1300,'paid',SYSDATE);
INSERT INTO payments VALUES (19,19,1400,'paid',SYSDATE);
INSERT INTO payments VALUES (20,20,1000,'paid',SYSDATE);

INSERT INTO payments VALUES (21,21,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (22,22,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (23,23,900,'paid',SYSDATE);
INSERT INTO payments VALUES (24,24,1500,'paid',SYSDATE);
INSERT INTO payments VALUES (25,25,1100,'paid',SYSDATE);
INSERT INTO payments VALUES (26,26,1000,'paid',SYSDATE);
INSERT INTO payments VALUES (27,27,1200,'paid',SYSDATE);
INSERT INTO payments VALUES (28,28,1300,'paid',SYSDATE);
INSERT INTO payments VALUES (29,29,1400,'paid',SYSDATE);
INSERT INTO payments VALUES (30,30,1000,'paid',SYSDATE);

INSERT INTO payments VALUES (31,28,1300,'paid',SYSDATE);

INSERT INTO payments VALUES (32,29,1400,'paid',SYSDATE);

INSERT INTO payments VALUES (33,30,1000,'paid',SYSDATE);
select  * from payments;
INSERT INTO assessments VALUES (1,1,'Quiz',100);
INSERT INTO assessments VALUES (2,2,'Assignment',100);
INSERT INTO assessments VALUES (3,3,'Quiz',100);
INSERT INTO assessments VALUES (4,4,'Assignment',100);
INSERT INTO assessments VALUES (5,5,'Quiz',100);
INSERT INTO assessments VALUES (6,6,'Assignment',100);
INSERT INTO assessments VALUES (7,7,'Quiz',100);
INSERT INTO assessments VALUES (8,8,'Assignment',100);
INSERT INTO assessments VALUES (9,9,'Quiz',100);
INSERT INTO assessments VALUES (10,10,'Assignment',100);
INSERT INTO assessments VALUES (11,11,'Quiz',100);
INSERT INTO assessments VALUES (12,12,'Assignment',100);
INSERT INTO assessments VALUES (13,13,'Quiz',100);
INSERT INTO assessments VALUES (14,14,'Assignment',100);
INSERT INTO assessments VALUES (15,15,'Quiz',100);
INSERT INTO assessments VALUES (16,16,'Assignment',100);
INSERT INTO assessments VALUES (17,17,'Quiz',100);
INSERT INTO assessments VALUES (18,18,'Assignment',100);
INSERT INTO assessments VALUES (19,19,'Quiz',100);
INSERT INTO assessments VALUES (20,20,'Assignment',100);
INSERT INTO assessments VALUES (21,21,'Quiz',100);
INSERT INTO assessments VALUES (22,22,'Assignment',100);
INSERT INTO assessments VALUES (23,23,'Quiz',100);
INSERT INTO assessments VALUES (24,24,'Assignment',100);
INSERT INTO assessments VALUES (25,25,'Quiz',100);
INSERT INTO assessments VALUES (26,26,'Assignment',100);
INSERT INTO assessments VALUES (27,27,'Quiz',100);
INSERT INTO assessments VALUES (28,28,'Assignment',100);
INSERT INTO assessments VALUES (29,29,'Quiz',100);
INSERT INTO assessments VALUES (30,30,'Assignment',100);
select * from assessments;
INSERT INTO assessment_scores VALUES (1,1,1,85,1);
INSERT INTO assessment_scores VALUES (2,2,2,78,1);
INSERT INTO assessment_scores VALUES (3,3,3,90,1);
INSERT INTO assessment_scores VALUES (4,4,4,67,1);
INSERT INTO assessment_scores VALUES (5,5,5,88,1);
INSERT INTO assessment_scores VALUES (6,6,6,76,1);
INSERT INTO assessment_scores VALUES (7,7,7,92,1);
INSERT INTO assessment_scores VALUES (8,8,8,81,1);
INSERT INTO assessment_scores VALUES (9,9,9,74,1);
INSERT INTO assessment_scores VALUES (10,10,10,86,1);
INSERT INTO assessment_scores VALUES (11,11,11,79,1);
INSERT INTO assessment_scores VALUES (12,12,12,83,1);
INSERT INTO assessment_scores VALUES (13,13,13,91,1);
INSERT INTO assessment_scores VALUES (14,14,14,69,1);
INSERT INTO assessment_scores VALUES (15,15,15,87,1);
INSERT INTO assessment_scores VALUES (16,16,16,72,1);
INSERT INTO assessment_scores VALUES (17,17,17,95,1);
INSERT INTO assessment_scores VALUES (18,18,18,80,1);
INSERT INTO assessment_scores VALUES (19,19,19,77,1);
INSERT INTO assessment_scores VALUES (20,20,20,84,1);
INSERT INTO assessment_scores VALUES (21,21,21,89,1);
INSERT INTO assessment_scores VALUES (22,22,22,73,1);
INSERT INTO assessment_scores VALUES (23,23,23,93,1);
INSERT INTO assessment_scores VALUES (24,24,24,82,1);
INSERT INTO assessment_scores VALUES (25,25,25,75,1);
INSERT INTO assessment_scores VALUES (26,26,26,88,1);
INSERT INTO assessment_scores VALUES (27,27,27,90,1);
INSERT INTO assessment_scores VALUES (28,28,28,71,1);
INSERT INTO assessment_scores VALUES (29,29,29,85,1);
INSERT INTO assessment_scores VALUES (30,30,30,94,1);
select * from assessment_scores;

INSERT INTO certificates VALUES (1,1,1,SYSDATE);
INSERT INTO certificates VALUES (2,2,2,SYSDATE);
INSERT INTO certificates VALUES (3,3,3,SYSDATE);
INSERT INTO certificates VALUES (4,4,4,SYSDATE);
INSERT INTO certificates VALUES (5,5,5,SYSDATE);
INSERT INTO certificates VALUES (6,6,6,SYSDATE);
INSERT INTO certificates VALUES (7,7,7,SYSDATE);
INSERT INTO certificates VALUES (8,8,8,SYSDATE);
INSERT INTO certificates VALUES (9,9,9,SYSDATE);
INSERT INTO certificates VALUES (10,10,10,SYSDATE);
INSERT INTO certificates VALUES (11,11,11,SYSDATE);
INSERT INTO certificates VALUES (12,12,12,SYSDATE);
INSERT INTO certificates VALUES (13,13,13,SYSDATE);
INSERT INTO certificates VALUES (14,14,14,SYSDATE);
INSERT INTO certificates VALUES (15,15,15,SYSDATE);
INSERT INTO certificates VALUES (16,16,16,SYSDATE);
INSERT INTO certificates VALUES (17,17,17,SYSDATE);
INSERT INTO certificates VALUES (18,18,18,SYSDATE);
INSERT INTO certificates VALUES (19,19,19,SYSDATE);
INSERT INTO certificates VALUES (20,20,20,SYSDATE);
INSERT INTO certificates VALUES (21,21,21,SYSDATE);
INSERT INTO certificates VALUES (22,22,22,SYSDATE);
INSERT INTO certificates VALUES (23,23,23,SYSDATE);
INSERT INTO certificates VALUES (24,24,24,SYSDATE);
INSERT INTO certificates VALUES (25,25,25,SYSDATE);
INSERT INTO certificates VALUES (26,26,26,SYSDATE);
INSERT INTO certificates VALUES (27,27,27,SYSDATE);
INSERT INTO certificates VALUES (28,28,28,SYSDATE);
INSERT INTO certificates VALUES (29,29,29,SYSDATE);
INSERT INTO certificates VALUES (30,30,30,SYSDATE);
select * from certificates;

SELECT * FROM students
WHERE EXTRACT(YEAR FROM join_date) = 2024;



SELECT * FROM instructors
WHERE instructor_id NOT IN
(
SELECT instructor_id FROM courses
); 

SELECT * FROM courses
WHERE course_level = 'Advanced';

SELECT * FROM assessment_scores
WHERE marks < 40;



SELECT student_id,
COUNT(course_id) total_courses FROM enrollments
GROUP BY student_id
HAVING COUNT(course_id) > 3;

SELECT s.name student_name,
c.title course_name,
i.name instructor_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN instructors i ON c.instructor_id = i.instructor_id;

SELECT * FROM assessment_scores
WHERE marks < (
    SELECT AVG(marks) FROM assessment_scores
);
SELECT instructor_id
FROM courses WHERE title IN ('Web Development','UI Design')
GROUP BY instructor_id
HAVING COUNT(DISTINCT title) = 1;

SELECT course_id FROM enrollments
GROUP BY course_id
HAVING SUM(CASE WHEN status='inactive' THEN 1 ELSE 0 END) / COUNT(*) > 0.8;


SELECT * FROM students WHERE student_id NOT IN
(
    SELECT e.student_id
    FROM payments p
    JOIN enrollments e
    ON p.enrollment_id = e.enrollment_id
    WHERE p.status = 'failed'
);

SELECT * FROM (
    SELECT student_id,
    AVG(marks) avg_marks FROM assessment_scores
    GROUP BY student_id
    ORDER BY AVG(marks) DESC
)
WHERE ROWNUM <= 10;

SELECT c.category,
SUM(p.amount) total_revenue FROM payments p
JOIN enrollments e ON p.enrollment_id = e.enrollment_id
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.category;

SELECT *FROM (
    SELECT instructor_id,
    COUNT(*) total_courses FROM courses
    GROUP BY instructor_id
    ORDER BY COUNT(*) DESC
)
WHERE ROWNUM = 1;

SELECT TO_CHAR(enroll_date,'MON') month,
COUNT(*) total_enrollments FROM enrollments
GROUP BY TO_CHAR(enroll_date,'MON');

SELECT a.course_id, AVG(s.marks) avg_score FROM assessments a
JOIN assessment_scores s ON a.assessment_id = s.assessment_id
GROUP BY a.course_id
HAVING AVG(s.marks) < 50;

SELECT assessment_id, marks
FROM assessment_scores
ORDER BY assessment_id;
UPDATE assessment_scores
SET marks = 35
WHERE assessment_id IN (2,4,6,8);
UPDATE assessment_scores
SET marks = 40
WHERE assessment_id IN (10,12);
COMMIT;


SELECT a.course_id, AVG(s.marks) avg_score FROM assessments a
JOIN assessment_scores s ON a.assessment_id = s.assessment_id
GROUP BY a.course_id
HAVING AVG(s.marks) < 50;

SELECT TO_CHAR(SYSDATE,'MON') month,
COUNT(*) instructor_count,
SUM(salary) total_salary FROM instructors;


SELECT * FROM instructors
WHERE salary > (
   SELECT AVG(salary) FROM instructors
);

SELECT student_id, AVG(marks) FROM assessment_scores
GROUP BY student_id HAVING AVG(marks) >(
    SELECT AVG(marks)
    FROM assessment_scores
);

SELECT e.student_id FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY e.student_id
HAVING MIN(c.category)='AI'
AND MAX(c.category)='AI';

CREATE VIEW student_summary AS
SELECT s.name,
COUNT(e.course_id) course_count, 
COUNT(c.cert_id)*100/COUNT(e.course_id) completion_percent,
p.status payment_status FROM students s
JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN certificates c ON s.student_id = c.student_id
LEFT JOIN payments p ON e.enrollment_id = p.enrollment_id
GROUP BY s.name, p.status;
SELECT * FROM student_summary;


SELECT * FROM assessment_scores
WHERE marks < 40;





























































