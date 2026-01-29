USE d0102k17;

CREATE TABLE students(
	id INT,
    name VARCHAR(100),
    phone_number VARCHAR(10),
    address TEXT,
    birthday DATE,
    email VARCHAR(100),
    gender ENUM('Male', 'Female'),
    parent_number VARCHAR(10)
);

/* Thêm 1 bản ghi có đầy đủ tất cả các trường */
INSERT INTO students VALUES (1, 'Student 1', '0123456789', 'HN', '2005-01-02', 'studentA@gmail.com', 'Male', '');
/* Thêm 1 bản ghi chỉ có id, name, phone_number, address, email */
INSERT INTO students(id, name, phone_number, address, email)
VALUES (2, 'Student 2', '0987654321', 'HN', 'studentB@gmail.com');
/* Thêm nhiều bản ghi, các bản ghi đều có đầy đủ các trường */
INSERT INTO students VALUES
(3, 'Student 3', '0147852369', 'HN', '2005-03-05', 'studentC@gmail.com', 'Male', '0111111111'),
(4, 'Student 4', '0963258741', 'HP', '2005-05-06', 'studentD@gmail.com', 'Female', '0222222222');
/* Thêm nhiều bản ghi, các bản ghi không thêm đầy đủ các trường */
INSERT INTO students(id, name, phone_number, email) VALUES
(5, 'Student 45', '0369852147', 'studentE@gmail.com'),
(6, 'Student 6', '0741258963', 'studentF@gmail.com');

/* Update name của bản ghi có id là 5 */
UPDATE students SET name = 'Student 5' WHERE id = 5;

/* DELETE bản ghi có id = 6 */
DELETE FROM students WHERE id = 6;