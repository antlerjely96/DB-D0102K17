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

CREATE TABLE subjects(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE marks(
	student_id INT,
    subject_id INT,
    mark DECIMAL(4, 2),
    PRIMARY KEY(student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

INSERT INTO subjects(name) VALUES ('subject 1'), ('subject 2'), ('subject 3');
INSERT INTO marks VALUES (1, 1, 5.5), (1, 2, 4.4), (1, 3, 3.5), (2, 1, 6), (3, 2, 5);

SELECT * FROM classes;
SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM marks;

/* Join 3 bảng: Ví dụ 3 bảng A, B, C
	Join bảng A với B => Bảng kết quả 1
    Bảng kết quả 1 Join với C => Bảng kết quả 2
    Lưu ý: từng bảng trong số các bảng cần join với nhau phải có thể liên kết được với 1 bảng bất kỳ còn lại trong danh sách các bảng cần được Join

	Cấu trúc: A Join được với B, B join được với C
    SELECT table.fields FROM A INNER JOIN B ON A.PK = B.FK
    INNER JOIN C ON B.PK = C.FK;
*/

/* Lấy điểm của từng sinh viên theo từng môn học: Join 3 bảng students, subjects, marks */
SELECT students.*, marks.mark, subjects.name AS subject_name, classes.name AS class_name
FROM students INNER JOIN marks ON students.id = marks.student_id
INNER JOIN subjects ON subjects.id = marks.subject_id
INNER JOIN classes ON classes.id = students.class_id;
