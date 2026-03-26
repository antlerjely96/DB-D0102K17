USE d0102k17;

INSERT INTO classes(name) VALUES ('class 1'), ('class 2'), ('class 3');
INSERT INTO classes(name) VALUES ('class 4');


INSERT INTO students(name, phone_number, address, birthday, email, gender, parent_number, class_id)
VALUES ('student 1', '0123456789', 'HN', '2009-01-01', 'std1@gmail.com', 'Male', '0111111111', 1),
('student 2', '0123456788', 'HN', '2009-01-02', 'std2@gmail.com', 'FeMale', '0111111112', 2),
('student 3', '0123456787', 'HP', '2009-01-03', 'std3@gmail.com', 'FeMale', '0111111113', 3),
('student 4', '0123456786', 'HN', '2009-01-04', 'std4@gmail.com', 'Male', '0111111114', 1);
INSERT INTO students(name, phone_number, address, birthday, email, gender, parent_number, class_id)
VALUES ('student 5', '0123456789', 'HN', '2009-01-01', 'std5@gmail.com', 'Male', '0111111111', null);

SELECT * FROM classes;
SELECT * FROM students;

/* INNER JOIN
	SELECT A.field_names_A, B.field_names_B FROM A INNER JOIN B
    ON A.PK_A = B.FK_B;
*/
/* INNER JOIN classes với students */
SELECT students.*, classes.name AS class_name
FROM classes INNER JOIN students
ON classes.id = students.class_id;

/* LEFT JOIN
	SELECT A.field_names_A, B.field_names_B FROM A LEFT JOIN B
    ON A.PK_A = B.FK_B;
*/

SELECT students.*, classes.name AS class_name
FROM classes LEFT JOIN students
ON classes.id = students.class_id;

/* RIGHT JOIN
	SELECT A.field_names_A, B.field_names_B FROM A RIGHT JOIN B
    ON A.PK_A = B.FK_B;
*/
SELECT students.*, classes.name AS class_name
FROM classes RIGHT JOIN students
ON classes.id = students.class_id;

/* FULL JOIN = LEFT JOIN UNION RIGHT JOIN */