USE d0102k17;

CREATE TABLE classes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone_number VARCHAR(10) NOT NULL,
    address TEXT DEFAULT 'VN',
    birthday DATE CHECK (birthday > '2008-01-01'),
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female'),
    parent_number VARCHAR(10),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

SELECT * FROM students;
DROP TABLE students;

INSERT INTO students(name, phone_number, address, birthday, email, gender, parent_number)
VALUES ('A', '0123456789', 'HN', '2008-02-01', 'a@gmail.com', 'Male', '0147852369');
INSERT INTO students(name, phone_number, address, birthday, email, gender, parent_number)
VALUES ('B', '0123456788', 'HN', '2008-02-02', 'b@gmail.com', 'Male', '0147852368');

DELETE FROM students WHERE id = 2;