USE sql2025;

CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    score DECIMAL(5, 2),
    city VARCHAR(50)
);

INSERT INTO students (id, name, age, score, city) VALUES
(1, 'An', 20, 7.5, 'Hà Nội'),
(2, 'Bình', 22, 8.0, 'Đà Nẵng'),
(3, 'Cường', 21, 5.5, 'Hà Nội'),
(4, 'Dũng', 23, 9.0, 'TP.HCM'),
(5, 'Hoa', 20, 6.0, 'Huế');

SELECT * FROM students
WHERE id = 1;

-- Tăng điểm của sinh viên An thêm 0.5.
UPDATE students 
SET score = score + 0.5
WHERE id = 1;

-- Đổi city của sinh viên Bình thành 'Huế' và tăng age thêm 1.
UPDATE students
SET city = 'Huế', age = age + 1
WHERE id = 2;

-- Tất cả sinh viên ở 'Hà Nội' được cộng thêm 1 điểm vào score.
UPDATE students
SET score = score + 1
WHERE city = 'Hà Nội';

-- Tăng age của tất cả sinh viên thêm 1.
UPDATE students
SET age = age + 1;

-- Những sinh viên có score < 6 và ở 'Huế' sẽ được tăng điểm lên thành 6.0.
UPDATE students
SET score = 6.0
WHERE city = 'Huế' and score < 6;

-- Bài 6 – Update dựa trên dữ liệu bảng khác
CREATE TABLE bonus (
    student_id INT,
    bonus_point DECIMAL(5,2)
);

INSERT INTO bonus VALUES
(1, 0.5),
(3, 1.0),
(5, 0.7);

-- Hãy cập nhật score trong bảng students bằng cách cộng thêm bonus_point từ bảng bonus dựa trên id.
SELECT * FROM students
JOIN bonus ON students.id = bonus.student_id
WHERE students.id = bonus.student_id;

UPDATE students
JOIN bonus ON students.id = bonus.student_id
SET score = score + bonus.bonus_point
WHERE students.id = bonus.student_id;

-- Tăng score của sinh viên có age = nhỏ nhất trong bảng thêm 2.0 điểm.
UPDATE students
SET score = score + 2
WHERE age = (
	SELECT min_age 
    FROM (
		SELECT MIN(age) AS min_age
        FROM students
    ) AS tmp
);

-- SELECT * FROM students;
-- DROP TABLE students;
-- DROP TABLE bonus
