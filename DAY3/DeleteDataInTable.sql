USE sql2025;

CREATE TABLE persons (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    score INT NOT NULL
);

INSERT INTO persons (name, age, score) VALUES
('An', 18, 85),
('Bình', 17, 90),
('Châu', 18, 78),
('Dũng', 16, 88),
('Hà', 19, 95),
('Linh', 15, 70),
('Minh', 17, 82),
('Ngọc', 18, 76);

DELETE FROM persons
WHERE name = 'Bình';

-- Xóa tất cả học sinh có age < 18
DELETE FROM persons
WHERE age < 18;

-- Xóa học sinh có score thấp nhất.
DELETE FROM persons
WHERE score = (
	SELECT score_min 
    FROM (
		SELECT MIN(score) AS score_min
        FROM persons
    ) AS tmp
);

-- Xóa học sinh có tuổi nhỏ nhất.
DELETE FROM persons
WHERE age = (
	SELECT min_age
    FROM (
		SELECT MIN(age) AS min_age
        FROM persons
    ) AS tmp
)
