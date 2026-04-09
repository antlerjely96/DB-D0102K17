/* Subquery: Câu query lồng trong câu query
	SELECT field_name FROM table_name WHERE field_name = (SELECT field_name FROM table_name);
*/

USE d0102k17;

SELECT * FROM students;
SELECT * FROM marks;
/* Lấy thông tin sinh viên có điểm cao nhất */
SELECT MAX(mark) AS max_mark FROM marks;
SELECT student_id FROM marks WHERE mark = (SELECT MAX(mark) AS max_mark FROM marks);
SELECT * FROM students WHERE id IN (SELECT student_id FROM marks WHERE mark = (SELECT MAX(mark) AS max_mark FROM marks));