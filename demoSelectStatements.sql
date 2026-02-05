USE d0102k17;

/* Lấy toàn bộ dữ liệu từ bảng students */
SELECT * FROM students;
/* Lấy id, name, phone_number của tất cả các sinh viên */
SELECT id, name, phone_number FROM students;
/* Lấy thông tin của các sinh viên có giới tính là Male */
SELECT * FROM students WHERE gender = 'Male';
/* Lấy thông tin địa chỉ của các sv, loại bỏ các địa chỉ trùng nhau */
SELECT DISTINCT(address) FROM students;
SELECT DISTINCT(address), id, name FROM students;
/* Lấy thông tin của các sinh viên có giới tính = Male, đồng thời địa chỉ là HN */
SELECT * FROM students WHERE gender = 'Male' AND address = 'HN';
/* Lấy thông tin các sinh viên có giới tính là Male hoặc address HP */
SELECT * FROM students WHERE gender = 'Male' OR address = 'HP';
/* Lấy thông tin các sinh viên có địa chỉ nằm trong tập hợp ('HN', 'HP', 'TPHCM') */
SELECT * FROM students WHERE address IN ('HN', 'HP', 'TPHCM');
/* Lấy thông tin các sinh viên có địa chỉ không nằm trong tập hợp ('HN', 'HP', 'TPHCM') */
SELECT * FROM students WHERE address NOT IN ('HN', 'HP', 'TPHCM');
/* Tìm kiếm các sinh viên có tên bắt đầu bằng std */
SELECT * FROM students WHERE name LIKE 'std%';
/* Tìm kiếm các sinh viên có tên kết thúc bằng 2 */
SELECT * FROM students WHERE name LIKE '%2';
/* Tìm kiếm các sinh viên có tên chứa chuỗi tud */
SELECT * FROM students WHERE name LIKE '%tud%';
/* Sắp xếp sinh viên theo tên */
SELECT * FROM students ORDER BY name ASC; /* tắng dần */
SELECT * FROM students ORDER BY name DESC; /* giảm dần */
/* Lấy 3 sinh viên từ vị trí 1 */
SELECT * FROM students LIMIT 3 OFFSET 1;
SELECT * FROM students LIMIT 1, 3;
/* Lấy các sinh viên không có ngày sinh (birthday null) */
SELECT * FROM students WHERE birthday IS NULL;
/* Lấy các sinh viên có ngày sinh (birthday not null) */
SELECT * FROM students WHERE birthday IS NOT NULL;