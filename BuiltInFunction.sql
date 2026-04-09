/* Built-in function: 
	- Là những hàm được xây dựng sẵn trong MySQL.
	- Mỗi built-in function có 1 chức năng nhất định và không thể thay đổi chức năng của nó
    - Built-in function áp dụng cho 1 hoặc 1 số trường trong 1 bảng => tạo ra 1 trường mới (ảo)
    - Cấu trúc:
		SELECT built-in(value)
        SELECT built-in(field_name) FROM table_name;
*/

USE d0102k17;

SELECT NOW();
SELECT YEAR('2026-04-09');
/* Lấy điểm cao nhất trong bảng marks */
SELECT MAX(mark) AS max_mark FROM marks;

SELECT * FROM marks;

/* GROUP BY: Nhóm các bản ghi có giống nhau ở 1 hoặc nhiều trường tương ứng
	- Cấu trúc:
		SELECT field_name, built-in function FROM table_name GROUP BY field_name;
    - Lưu ý:
		SELECT trường nào thì bắt buộc phải group by trường đó (trừ built-in function) và ngược lại
*/

/* Lấy điểm trung bình của từng sinh viên */
SELECT marks.student_id, students.name, AVG(marks.mark) AS average_mark FROM marks
INNER JOIN students ON students.id = marks.student_id
GROUP BY marks.student_id, students.name
HAVING AVG(marks.mark) >= 5;

/* 1 số built-in function hay dùng:
	MAX(field_name): tìm max
    MIN(field_name): tìm min
    COUNT(field_name): đếm số bản ghi
    SUM(field_name): Tính tổng
    AVG(field_name): Tính trung bình
    DATEDIFF(day1, day2): Tính số ngày giữa day1 và day2
*/

/* HAVING: Kiểm tra điều kiện
*/
